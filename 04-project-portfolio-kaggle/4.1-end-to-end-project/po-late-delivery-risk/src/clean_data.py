import pandas as pd
import numpy as np
import yaml

def standardize_categorical(df: pd.DataFrame, columns: list):
    df = df.copy()
    
    for col in columns:
        df[col] = (
            df[col].
            str.strip().
            str.lower().
            str.title()
        )
    return df

def parsing_date(df: pd.DataFrame, columns: list):
    df = df.copy()
    
    for col in columns:
        df[col] = pd.to_datetime(
            df[col],
            errors="coerce")
    return df

from collections.abc import Sequence


def drop_duplicated(
    df: pd.DataFrame,
    subset: Sequence[str]
) -> pd.DataFrame:
    """
    Remove duplicate rows based on specified columns.

    Parameters
    ----------
    df : pd.DataFrame
        Input DataFrame.
    subset : Sequence[str]
        Columns used to identify duplicate rows.

    Returns
    -------
    pd.DataFrame
        DataFrame with duplicate rows removed.
    """

    df = df.copy()

    df = df.drop_duplicates(
        subset=subset
    )

    return df