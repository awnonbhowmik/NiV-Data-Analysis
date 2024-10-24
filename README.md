# Nipah Virus Data Analysis

## Contributors
- Awnon Bhowmik
- Mehedi Hasan
- Mahmudul Hasan

## Overview
This project focuses on analyzing the temporal trends, environmental factors, and population dynamics associated with Nipah virus outbreaks in Bangladesh from 2001 to 2024. The goal is to identify key patterns in the data, explore correlations between variables, and gain insights into the influence of rural and urban population changes on infection rates.

## Objectives
1. **Trend Analysis**: Explore the temporal patterns in the number of infections and deaths over the 24-year period.
2. **Correlation Analysis**: Investigate the relationship between environmental factors (e.g., temperature, humidity, rainfall), population dynamics (rural and urban), and the occurrence of Nipah virus outbreaks.
3. **Visualizations**: Generate heatmaps, scatter plots, and pairplots to visually interpret relationships in the data.

## Data Description
The dataset used in this analysis includes:
- **Year**: Year of the recorded outbreak.
- **Max Temperature (°C)**: Maximum temperature for the year.
- **Min Temperature (°C)**: Minimum temperature for the year.
- **Dry Bulb Temperature (°C)**: Average temperature for the year.
- **Rainfall (mm)**: Total annual rainfall.
- **Humidity (%)**: Average annual humidity.
- **Infected**: Number of infected individuals.
- **Deaths**: Number of deaths due to Nipah virus.
- **Urban Population**: Population living in urban areas.
- **Rural Population**: Population living in rural areas.
- **Population Density (P/Km²)**: Population density in people per square kilometer.

## Methodology
1. **Data Preprocessing**:
   - Cleaned and normalized environmental and population variables.
   - Identified and treated outliers to ensure data consistency.

2. **Trend Analysis**:
   - Used moving averages to smooth short-term fluctuations and highlight long-term trends in infections and deaths.

3. **Correlation Analysis**:
   - Calculated Pearson correlation coefficients to assess relationships between environmental factors, population changes, and the number of infections.
   - Generated heatmaps and scatter plots to visually interpret relationships.

4. **Visualizations**:
   - Created pairplots to visualize relationships between variables like temperature, humidity, population dynamics, and infection rates.
   - Plotted seasonal decompositions for infections and deaths to observe trends and fluctuations over time.

## Key Findings
- **Trend Analysis**: The analysis revealed cyclical patterns in Nipah virus outbreaks, with notable peaks in specific years. The year 2023 had the highest number of infections and deaths since 2016.
- **Correlation Analysis**: A strong positive correlation (0.97) between infections and deaths was observed. Urban population showed a negative correlation with infections and deaths (-0.34), while rural population showed a moderate positive correlation with infections (0.42). This suggests that rural areas may be more vulnerable to outbreaks.
- **Population Dynamics**: The rural population has been steadily decreasing from 2001 to 2024, except for a slight increase in 2023, coinciding with a spike in infections. This highlights the potential impact of demographic shifts on transmission.
- **Environmental Factors**: Climate factors like humidity and maximum temperature exhibited a strong negative correlation (-0.78), while rainfall and minimum temperature showed a moderate positive correlation (0.66). These factors could influence the bat populations and, consequently, human exposure to the virus.

## Conclusion
The analysis indicates that environmental and population factors play a critical role in the dynamics of Nipah virus transmission. Areas with higher rural populations and certain climatic conditions (e.g., high humidity, rainfall) may be more susceptible to outbreaks. While the visualizations and correlations offer valuable insights, further analysis is needed to understand these relationships fully.

## Limitations
- The dataset covers 24 years, which may not capture all variabilities in Nipah virus outbreaks.
- The analysis does not account for other potential factors like healthcare infrastructure or socio-economic conditions, which could influence transmission.

## Future Work
- Incorporate socio-economic and healthcare infrastructure data to provide a more comprehensive analysis.
- Explore advanced modeling techniques (e.g., machine learning) to improve prediction accuracy for future outbreaks.
- Develop scenario-based models to assess how future environmental and policy changes might affect virus transmission.

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
