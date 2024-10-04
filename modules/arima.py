from .dataset import Dataset
from darts import TimeSeries
from darts.models import AutoARIMA
from darts.metrics.metrics import rmse, mae
import matplotlib.pyplot as plt
import seaborn as sns
import os

sns.set_theme(style="whitegrid")


class ARIMA:

    def __init__(self, ds: Dataset, out_dir: str = "images") -> None:
        self.ds: Dataset = ds
        self.out_dir: str = out_dir

    def get_ds(self) -> Dataset:
        return self.ds

    def generate_results(self, trend_col: str):
        df = self.ds.get_df()

        series = TimeSeries.from_dataframe(df, "Year", trend_col)
        train, val = series[:20], series[20:]

        model = AutoARIMA()
        model.fit(train)
        prediction = model.predict(len(val) + 6)

        # Calculate MAE
        res_1 = mae(val, prediction)
        print(f"MAE: {res_1:.2f}")

        # Calculate RMSE
        res_2 = rmse(val, prediction)
        print(f"RMSE: {res_2:.2f}")

        series.plot(label=f"Observed {trend_col}")
        prediction.plot(label=f"Forecasted {trend_col}")
        plt.ylabel(f"{trend_col}")
        plt.title("ARIMA Model")
        plt.legend()

        # Save the plot
        output_path = os.path.join(self.out_dir, f"arima_forecast_{trend_col}.eps")
        plt.savefig(output_path, dpi=220, format="eps")

        output_path = os.path.join(self.out_dir, f"arima_forecast_{trend_col}.png")
        plt.savefig(output_path, dpi=220, format="png")

        plt.show()
