# Nipah Virus Data Analysis

## Contributors
- Awnon Bhowmik
- Mehedi Hasan
- Mahmudul Hasan

## Overview
This project focuses on analyzing the temporal trends and environmental factors associated with Nipah virus outbreaks in Bangladesh from 2001 to 2022. The goal is to identify key patterns in the data and develop a predictive model to forecast potential outbreaks for the next decade.

## Objectives
1. **Trend Analysis**: Explore the temporal patterns in the number of infections and deaths over the 22-year period.
2. **Correlation Analysis**: Investigate the relationship between environmental factors (e.g., temperature, humidity, rainfall) and the occurrence of Nipah virus outbreaks.
3. **Predictive Modeling**: Develop a time series model to predict future outbreaks based on historical data.

## Data Description
The dataset used in this analysis includes:
- **Year**: Year of the recorded outbreak.
- **Max Temperature (°C)**: Maximum average temperature for the year.
- **Min Temperature (°C)**: Minimum average temperature for the year.
- **Rainfall (mm)**: Total annual rainfall.
- **Humidity (%)**: Average annual humidity.
- **Infected**: Number of infected individuals.
- **Deaths**: Number of deaths due to Nipah virus.

## Methodology
1. **Data Preprocessing**:
   - Cleaned and normalized environmental variables.
   - Identified and treated outliers to ensure data consistency.
   
2. **Trend Analysis**:
   - Used moving averages to smooth short-term fluctuations and highlight long-term trends.
   - Analyzed yearly changes in the number of infections and deaths.

3. **Correlation Analysis**:
   - Calculated Pearson correlation coefficients to assess the relationship between environmental factors and the number of cases.
   - Visualized correlations using scatter plots and heatmaps.

4. **Predictive Modeling**:
   - Applied ARIMA (Auto-Regressive Integrated Moving Average) model to forecast future outbreaks.
   - Evaluated model performance using metrics like Mean Absolute Error (MAE) and Root Mean Square Error (RMSE).

## Key Findings
- **Trend Analysis**: Revealed cyclical patterns in Nipah virus outbreaks, with significant peaks in specific years.
- **Correlation Analysis**: Significant positive correlations were found between maximum temperature, humidity, and the number of infections, indicating their potential role in influencing outbreaks.
- **Predictive Modeling**: The ARIMA model provides short-term forecasts with reasonable accuracy but is limited by high uncertainty for long-term predictions.

## Conclusion
The analysis indicates that environmental factors play a critical role in the dynamics of Nipah virus transmission. While the predictive model offers insights for the near future, it must be used cautiously due to uncertainties associated with long-term predictions.

## Limitations
- The dataset only covers 22 years, which may not capture the full variability of the outbreaks.
- Future environmental changes and public health interventions could significantly alter the transmission dynamics, affecting the model's accuracy.

## Future Work
- Incorporate more comprehensive data, including socio-economic and health infrastructure variables.
- Explore advanced machine learning techniques for better prediction accuracy.
- Develop scenario-based models to account for different future environmental and policy conditions.

## Getting Started

### Prerequisites
- Python 3.6+
- Jupyter Notebook
- Required Python libraries: `pandas`, `numpy`, `matplotlib`, `seaborn`, `statsmodels`

### Installation
Clone the repository and install the required dependencies:
```bash
git clone https://github.com/yourusername/nipah-virus-analysis.git
cd nipah-virus-analysis
pip install -r requirements.txt
```

## License

ALL RIGHTS RESERVED
