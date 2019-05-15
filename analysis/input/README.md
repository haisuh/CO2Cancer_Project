# Input Directory

This directory should contain unedited data files directly from the source. I typically put different data sources into different sub-directories and include any relevant data documentation in the same directory. 

Following the guidelines of [Code and Data](https://web.stanford.edu/~gentzkow/research/CodeAndData.xhtml#magicparlabel-270), this directory is dedicated to raw data from other sources ONLY. Datasets in this input directory should NEVER be edited. If newer data extracts are used, older raw data should just be replaced and changes commmitted. Constructed datasets should NEVER be placed in this directory. 

The data for this project is from the world development indicators, from the following link: https://databank.worldbank.org/data/source/world-development-indicators?savedlg=1&l=en#

The data includes the following 12 variables with brief descriptions:
1. country name: all countries are selected
2. country code
3. time: year from 2008 to 2018
4. time code
5. pm2.5: air pollution, mean annual exposure (micrograms per cubic meter)
6. mortality rate: attributed to household and ambient air pollution, age-standardized (per 100,000 population)
7. life expectancy: at birth, total (years)
8. co2 emissions: metric tons per capita
9. gdp per capita: (current US$)
10. gdp per capita growth: (annual %)
11. urban population: (% of total)
12. mortality: from CVD, cancer, diabetes or CRD between exact ages 30 and 70 (%)
