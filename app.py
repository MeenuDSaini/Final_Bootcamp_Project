import streamlit as st
import pickle
import pandas as pd
from PIL import Image

# Load the model
xgb_reg = pickle.load(open('xgb_reg.pkl', 'rb'))

# Load the LabelEncoder
le_country = pickle.load(open('le_country.pkl', 'rb'))


# Set the title with Markdown for font size and color
st.markdown("<h1 style='font-size: 40px; color: blue;'>Life Expectancy and Country Predictor</h1>", unsafe_allow_html=True)
st.sidebar.header('Country Data')
image = Image.open('capture.jpg')
st.image(image, width=800)

# Define the selected features
selected_features = ['Status_Developing', 'Country','Adult_Mortality', 'Infant_Deaths', 'Alcohol', 'HepatitisB', 'Measles', 'BMI', 'Under_Five_Deaths', 'Polio', 'Tot_Exp', 'HIV/AIDS', 'GDP', 'Population', 'thinness_5to9_years', 'Income_Comp_Of_Resources', 'Schooling']

min_values = {'Status_Developing': 0,'Country': 0, 'Adult_Mortality': 0, 'Infant_Deaths': 0, 'Alcohol': 0, 'HepatitisB': 0, 'Measles': 0, 'BMI': 0, 'Under_Five_Deaths': 0, 'Polio': 0, 'Tot_Exp': 0, 'HIV/AIDS': 0, 'GDP': 0, 'Population': 0, 'thinness_5to9_years': 0, 'Income_Comp_Of_Resources': 0, 'Schooling': 0}
max_values = {'Status_Developing': 1,'Country': 192, 'Adult_Mortality': 1000, 'Infant_Deaths': 2000, 'Alcohol': 20, 'HepatitisB': 100, 'Measles': 150000, 'BMI': 100, 'Under_Five_Deaths': 2500, 'Polio': 100, 'Tot_Exp': 20, 'HIV/AIDS': 55, 'GDP': 120000, 'Population': 1000000000, 'thinness_5to9_years': 30, 'Income_Comp_Of_Resources': 1, 'Schooling': 30}

# FUNCTION
def user_report():
    user_report_data = {}
    for feature in selected_features:
        user_report_data[feature] = st.sidebar.slider(f'{feature}', min_values[feature], max_values[feature], min_values[feature])

    report_data = pd.DataFrame(user_report_data, index=[0])
    return report_data

user_data = user_report()
st.header('Country Data')
st.write(user_data)

life_expectancy = xgb_reg.predict(user_data[selected_features].values)
rounded_life_expectancy = round(life_expectancy[0])
st.subheader('Life Expectancy')
st.write(f"<div style='font-size: 24px; color: red;'>{rounded_life_expectancy}</div>", unsafe_allow_html=True)  # Display the predicted life expectancy

country_label = int(round(life_expectancy[0]))
country = le_country.inverse_transform([country_label])
st.subheader('Country')
# Set the font size using CSS style
st.write(f"<div style='font-size: 24px; color: red;'>{country[0]}</div>", unsafe_allow_html=True) # Display the predicted country 
