import pandas as pd


class Dataset:
    def __init__(self, file_path: str):
        self.df = self._clean_data(file_path)

    def get_df(self) -> pd.DataFrame:
        return self.df

    def get_death_df(self) -> pd.DataFrame:
        return self.df["Death"]

    def get_infected_df(self) -> pd.DataFrame:
        return self.df["Infected"]

    # Internal class method
    # 1. Ensures Year, Infected and Death columns have int type
    # 2. Rounds all other columns to 2 decimal places
    def _clean_data(self, file_path: str) -> pd.DataFrame:

        df = pd.read_excel(file_path)

        # Apply formatting for other columns
        df = df.round(
            {col: 2 for col in df.columns if col not in ["Year", "Infected", "Death"]}
        )

        df.set_index("Year")

        df.index = pd.period_range(start=2001, end=2024, freq="Y")

        return df
