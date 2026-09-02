import yaml
import pandas as pd
from pathlib import Path


def load_config(config_path: str = "config/config.yaml") -> dict:
    with open(config_path) as f:
        return yaml.safe_load(f)


def time_based_split(df: pd.DataFrame, date_column: str, split_date: str,) -> tuple[pd.DataFrame, pd.DataFrame]:
    df = df.copy()
    df[date_column] = pd.to_datetime(df[date_column])
    cutoff = pd.to_datetime(split_date)
    return df[df[date_column] < cutoff].copy(), df[df[date_column] >= cutoff].copy()


def save_splits(train_df: pd.DataFrame, test_df: pd.DataFrame, train_path: str, test_path: str,) -> None:
    for path in [train_path, test_path]:
        Path(path).parent.mkdir(parents=True, exist_ok=True)
    train_df.to_csv(train_path, index=False)
    test_df.to_csv(test_path, index=False)


def main() -> None:
    config = load_config()

    df = pd.read_csv(config["paths"]["interim_data"])

    train_df, test_df = time_based_split(
        df,
        date_column=config["split"]["date_column"],
        split_date=config["split"]["split_date"],
    )

    save_splits(
        train_df, test_df,
        config["paths"]["train_data"],
        config["paths"]["test_data"],
    )

    total = len(train_df) + len(test_df)
    target = config["columns"]["target"]
    print(f"Train : {len(train_df):,} baris ({len(train_df)/total*100:.1f}%) | late rate: {train_df[target].mean():.3f}")
    print(f"Test  : {len(test_df):,} baris ({len(test_df)/total*100:.1f}%) | late rate: {test_df[target].mean():.3f}")
    print(f"Saved > {config['paths']['train_data']}")
    print(f"Saved > {config['paths']['test_data']}")


if __name__ == "__main__":
    main()