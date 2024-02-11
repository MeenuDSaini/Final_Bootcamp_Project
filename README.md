# Final_Bootcamp_Project
---
# Title: Life Expectancy Analysis: Illuminating Global Health Trends
---
**Aim**:
To analyze factors influencing life expectancy, providing insights into public health and societal trends.

**Objective**: 
1. Examine global life expectancy trends.
2. Identify key factors influencing life expectancy.
3. Conduct correlation analysis to identify relationships with key determinants (e.g., GDP, education, immunization etc.) using statistical tool - **Hypothesis testing**, and **SQL**.
4. Visualize trends and disparities across countries through an interactive **PowerBI dashboard**.
5. Utilize advanced statistical and machine learning techniques to build models predicting life expectancy with Country and showcase the predictions on a **Streamlit App- Life Expectancy and Country Predictor**.

**Target Audience**:
1. **Policymakers**: Contribute valuable insights to improving healthcare infrastructure, education systems and socio-economic conditions.
2. **Data professionals**: Analyze health and societal issues.
3. **Wider community members**: Understand and address global health challenges.
4. **Pharmaceutical companies**: Gain insights into healthcare trends and opportunities.

**Dataset overview**:
1. Dataset: Life Expectancy dataset 'https://www.kaggle.com/datasets/mryasirturi/life-expentancy-dataset' 
2. 193 countries  included 
3. Time period:  2000-2015
4. Features in five categories:
      1. **Socio Economic factors** like GDP, BMI, Schooling, Alcohol, Population,Total Expenditure and Percentage Expenditure and Income composition of Resources etc.
          **These features give information regarding economic status, social conditions and education system of different countries.**
      2. **Immunization Coverage**: Hepatitis B, Polio and Diphtheria
          **These features give information of effectiveness of immunization programs of countries**
      3. **Disease Prevalence**: HIV/ AIDS and Measles
         **These features tells us about prevalence of these diseases, that are still concern in many countries and how effective are the disease control programs of different countries.**
      4. **Malnutrition**: Thinness 1-19 Years and Thinness 5-9 Years
         **These features gives information about prevailing malnutrition conditions specially in children of countries.**
      5. **Mortality status**: Adult mortality, infants deaths and under-five deaths
         **Adult mortality tells us about effectiveness of overall heath programs, infant deaths and under-five deaths tells bout the effectiveness of immunization programs of different countries.**
         
Here is the complete detail of dataset:
Country: Explore the global tapestry with data from diverse nations.
Year: Unlock the passage of time and its impact on health trends.
Status: Understand the development status, whether "Developed" or "Developing," that shapes the course of health.
Life Expectancy: Peer into the crystal ball of population health, revealing how long people can expect to live.
Adult Mortality: Gauge the probabilities of survival between ages 15 and 60 per 1,000 population.
Infant Deaths: Delve into infant health with the number of infant deaths per 1,000 live births.
Alcohol: Raise a glass to insights on average alcohol consumption in liters per capita.
Percentage Expenditure: Unearth health expenditure as a percentage of a country's GDP.
Hepatitis B: Measure immunization coverage for Hepatitis B.
Measles: Examine the impact of this preventable disease with the number of reported cases per 1,000 population.
BMI: Step onto the scales of national health with the average Body Mass Index.
Under-Five Deaths: Shine a spotlight on child mortality with the number of deaths under age five per 1,000 live births.
Polio: Inspect immunization coverage for Polio.
Total Expenditure: Track the total health expenditure as a percentage of GDP.
Diphtheria: Assess immunization coverage for Diphtheria.
HIV/AIDS: Witness the prevalence of HIV/AIDS as a percentage of the population.
GDP: Follow the financial pulse of a nation with Gross Domestic Product data.
Population: Witness the ebb and flow of a nation's populace.
Thinness 1-19 Years: Explore the prevalence of thinness among children and adolescents aged 1-19.
Thinness 5-9 Years: Zoom in on thinness among children aged 5-9.
Income Composition of Resources: Decode the composite index reflecting income distribution and resource access.
Schooling: Measure the gift of knowledge with data on average years of schooling.
         
**Tools used for this project**:

**API**: Utilized to fetch and integrate external data, specifically the **"life-expectancy-dataset" from Kaggle**, into the project.

**Hypotheses Testing**: Employed for statistical analysis to validate assumptions and draw meaningful conclusions on the following:
                        1. Impact of Country Development Status on Life Expectancy.
                        2. Correlation between years of schooling, population, alcohol consumption, and life expectancy.
**SQL**: Applied for efficient and structured data querying and management to address various queries related to different features, categorized by country development status, with life expectancy.

**Power BI**: Used for data visualization and business intelligence, offering interactive and insightful dashboards.

**Machine learning models**: Implemented to predict or classify specific outcomes based on the provided data.
                             The accuracy of three machine learning models, namely **Linear Regression, Random Forest Regressor, and XGBoost Regressor**, was assessed. Based on the accuracy score, 
                             the **XGBoost Regressor model** was determined as the best choice for predicting life expectancy in respective countries.

**Streamlit App**: Developed for creating an interactive web application namely **Life Expectancy and Country Predictor**, enhancing the user interface and experience.

---
## Conclusion:
Developed nations have higher life expectancies because they invest more in their economies, health services, and education. These countries also do a better job of vaccinating people, which leads to fewer diseases like measles and HIV/AIDS. This results in lower rates of infant, child, and adult deaths.

The findings suggest that developing countries need to improve their vaccination programs and healthcare strategies to boost life expectancy. Additionally, the high number of malnourished children in these countries calls for urgent action to provide better nutrition.

To make a positive change, it's essential for governments, health agencies, and international groups to work together. Pharmaceutical companies can also contribute by developing affordable vaccines and medicines for diseases affecting these regions. This not only improves people's health but also creates business opportunities that benefit both companies and communities.

In short, by focusing on better healthcare, more vaccinations, and addressing malnutrition, we can work towards closing the health gap between richer and poorer nations, creating a fairer and healthier world for everyone.
---
**Acknowlegement**:
I would like to express my heartfelt gratitude to my mentor, **Sabina Firtala**, whose guidance and wealth of knowledge have been invaluable throughout my journey. Her mentorship has played a pivotal role in shaping my understanding and skills.

I extend my sincere appreciation to the YouTubers whose insightful and educational tutorials have been a constant source of inspiration and learning. Their dedication to sharing knowledge has significantly enriched my understanding of the subject matter.

I am deeply thankful for the knowledge and encouragement I have received from these individuals.





