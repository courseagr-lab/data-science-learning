# src/data/split_data.py
"""
Time-based train/test split untuk PO Late Delivery Risk Prediction.
Split berdasarkan order_date (bukan random) karena tujuan project adalah
memprediksi PO di masa depan menggunakan data historis.
"""

import pandas as pd
import yaml
from pathlib import Path


def load_config(config_path: str = "config/config.yaml") -> dict:
    with open(config_path) as f:
        return yaml.safe_load(f)


def time_based_split(
    df: pd.DataFrame,
    date_column: str,
    split_date: str,
) -> tuple[pd.DataFrame, pd.DataFrame]:
    """
    Split dataframe jadi train/test berdasarkan tanggal.
    Train  = semua baris dengan date_column < split_date
    Test   = semua baris dengan date_column >= split_date
    """
    df = df.copy()
    df[date_column] = pd.to_datetime(df[date_column])
    cutoff = pd.to_datetime(split_date)          # variabel baru, bukan reassign

    train_df = df[df[date_column] < cutoff].copy()
    test_df = df[df[date_column] >= cutoff].copy()

    return train_df, test_df


def validate_split(train_df: pd.DataFrame, test_df: pd.DataFrame, target: str) -> None:
    """Sanity check sebelum split disimpan."""
    print("=" * 50)
    print("SPLIT SUMMARY")
    print("=" * 50)
    print(f"Train: {len(train_df)} baris "
          f"({train_df['order_date'].min().date()} s/d {train_df['order_date'].max().date()})")
    print(f"Test : {len(test_df)} baris "
          f"({test_df['order_date'].min().date()} s/d {test_df['order_date'].max().date()})")

    train_late_rate = train_df[target].mean()
    test_late_rate = test_df[target].mean()
    print(f"\nLate rate train: {train_late_rate:.3f}")
    print(f"Late rate test : {test_late_rate:.3f}")

    if abs(train_late_rate - test_late_rate) > 0.05:
        print("\n⚠️  WARNING: late rate train vs test beda cukup jauh (>5pp).")
        print("   Ini normal untuk time-based split (bisa ada tren musiman),")
        print("   tapi catat di README sebagai known limitation.")

    # pastikan tidak ada supplier yang cuma muncul di test tanpa histori di train
    train_suppliers = set(train_df["supplier_id"].unique())
    test_suppliers = set(test_df["supplier_id"].unique())
    unseen_suppliers = test_suppliers - train_suppliers
    if unseen_suppliers:
        print(f"\n⚠️  {len(unseen_suppliers)} supplier di test tidak pernah muncul di train: "
              f"{unseen_suppliers}")
        print("   Ini realistis (supplier baru), tapi model perlu strategi fallback untuk kasus ini.")


def main():
    config = load_config()

    raw_path = config["paths"]["interim_data"]  # hasil dari 00_data_cleaning (structural cleaning)
    target = config["columns"]["target"]

    df = pd.read_csv(raw_path)

    # split point: ambil 6 bulan terakhir sebagai test (~sesuai rentang data Jan2024-Jun2025)
    split_date = "2025-01-01"

    train_df, test_df = time_based_split(df, date_column="order_date", split_date=split_date)

    validate_split(train_df, test_df, target)

    out_dir = Path("data/processed")
    out_dir.mkdir(parents=True, exist_ok=True)

    train_path = out_dir / "train.csv"
    test_path = out_dir / "test.csv"

    train_df.to_csv(train_path, index=False)
    test_df.to_csv(test_path, index=False)

    print(f"\n✅ Saved: {train_path}")
    print(f"✅ Saved: {test_path}")


if __name__ == "__main__":
    main()