SELECT * FROM life_expectancy.`life expectancy data`;

-- 1) Top countries with high Life expectancy--
/*Answer: Belgium, France, Germany, Italy, Portugal, Spain, Austria, Greece, Italy, Luxembourg */

SELECT distinct Country, `Life expectancy`
FROM life_expectancy.`life expectancy data`
ORDER BY `Life expectancy` DESC
LIMIT 10;

-- 2) List of countries with low Life expectancy--
-- Answer: Zimbabwe, Lesotho, Sierra Leone, Swaziland, Botswana, Angola, Central African Republic, Uganda, Nigeria*/

SELECT Country, MIN(`Life expectancy`) AS min_life_expectancy
FROM life_expectancy.`life expectancy data`
GROUP BY Country
ORDER BY min_life_expectancy ASC
LIMIT 10;

/* 3) Average life expectancy of Developed & Developing countries*/
-- Answer: Developing - 67.69, Developed - 78.69 --

SELECT Status, avg(`Life expectancy`) AS avg_life_expectancy
FROM life_expectancy.`life expectancy data`
GROUP BY Status;

-- 4) Avg immunization coverage of Hepatitis B in countries --
-- Answer: Developing - 77.73, Developed -	87.88 -- -- The result shows that Hepatitis B immunization covered more in Developed countries as compared to developing countries. --

SELECT Status, round(avg(`Hepatitis B`),2) AS avg_Hepatitis_B
FROM life_expectancy.`life expectancy data`
GROUP BY Status;

-- 5) Avg immunization coverage of Polio in Developed and Developing countries --
-- Answer: Developing - 81.69, Developed - 94.49 -- -- The result shows that Polio immunization covered more in Developing countries as compared to developed countries. --

SELECT Status, round(avg(Polio),2) AS avg_Polio
FROM life_expectancy.`life expectancy data`
GROUP BY Status;


-- 6) List of Developed Countries with max immunization coverage of Polio --
-- Answer: Belgium, Cyprus, Latvia, Luxembourg, Malta, Poland, Romania, Spain(Belgium to Spain have 99 cases), Austria (98), Lithuania(98) --

SELECT Country, Status, round(max(Polio),2) AS max_Polio
FROM life_expectancy.`life expectancy data`
WHERE Status = 'Developed'
GROUP BY Country, Status 
ORDER BY max_Polio DESC
LIMIT 10;

-- 7) List of Developing Countries with max immunization coverage of Polio --
-- Answer:# Country	Status	max_Polio
Brazil	Developing	99
Albania	Developing	99
Seychelles	Developing	99
Sri Lanka	Developing	99
Argentina	Developing	99
Greece	Developing	99
Fiji	Developing	99
France	Developing	99
Belarus	Developing	99
Uzbekistan	Developing	99
--

SELECT Country, Status, round(max(Polio),2) AS max_Polio
FROM life_expectancy.`life expectancy data`
WHERE Status = 'Developing'
GROUP BY Country, Status
ORDER BY max_Polio DESC
LIMIT 10;

-- 8) Avg Diphtheria immunization coverage in Developed and Developing countries --
-- Answer: Developing - 82.35, Developed - 94.64 -- -- The result shows that Diphtheria immunization coverage less in Developing countries as compared to developed countries. --

SELECT Status, round(avg(Diphtheria),2) AS avg_Diphtheria
FROM life_expectancy.`life expectancy data`
GROUP BY Status;


-- 9) List of Developed Countries with max Diphtheria cases  --
-- Answer: Belgium, Cyprus, Latvia, Luxembourg, Malta, Poland, Romania, Spain(Belgium to Spain have 99 cases), Austria (98), Lithuania(98) -- 

SELECT Country, Status, round(max(Diphtheria),2) AS max_Diphtheria
FROM life_expectancy.`life expectancy data`
WHERE Status = 'Developed'
GROUP BY Country, Status 
ORDER BY max_Diphtheria DESC
LIMIT 10;

-- 10) List of Developing Countries with max Diptheria cases  --
-- Answer:# C# Country	Status	max_Diphtheria
Brazil	Developing	99
Albania	Developing	99
Uzbekistan	Developing	99
Ukraine	Developing	99
Mongolia	Developing	99
Turkmenistan	Developing	99
Tunisia	Developing	99
Bangladesh	Developing	99
Belarus	Developing	99
Mexico	Developing	99
--

SELECT Country, Status, round(max(Diphtheria),2) AS max_Diphtheria
FROM life_expectancy.`life expectancy data`
WHERE Status = 'Developing'
GROUP BY Country, Status 
ORDER BY max_Diphtheria DESC
LIMIT 10;

-- 11) Avg reported cases of Measles in Developed and Developing countries --
-- Answer: Developing - 2525.41, Developed - 474.93 -- -- The result shows that Measles case are much more in Developing countries as compared to developed countries. --

SELECT Status, round(avg(Measles),2) AS avg_Measles
FROM life_expectancy.`life expectancy data`
GROUP BY Status;


-- 12) List of Developed Countries with max reported cases of Measles. --
-- Answer: Bulgaria (22004), Italy(10982), Romania(7450), Germany(6024), Spain(3802), Netherlands(2632), Belgium(576), Austria(448), Ireland, Australia --

SELECT Country, Status, round(max(Measles),2) AS max_Measles
FROM life_expectancy.`life expectancy data`
WHERE Status = 'Developed'
GROUP BY Country 
ORDER BY max_Measles DESC
LIMIT 10;

-- 13) List of Developing Countries with max reported cases of Measles. --
-- Answer:# Country	Status	max_Measles
China	Developing	131441
Malawi	Developing	118712
Nigeria	Developing	110927
India	Developing	79563
Madagascar	Developing	62233
Philippines	Developing	58848
Burkina Faso	Developing	54118
Uganda	Developing	49871
Ukraine	Developing	42724
Turkey	Developing	30509
 --

SELECT Country, Status, round(max(Measles),2) AS max_Measles
FROM life_expectancy.`life expectancy data`
WHERE Status = 'Developing'
GROUP BY Country 
ORDER BY max_Measles DESC
LIMIT 10;

-- 14) Avg HIV/AIDS cases in Developed and Developing countries --
-- Answer: Developing - 2.31, Developed - 0.1 -- -- The result shows that HIV/AIDS cases are more in Developing countries as compared to developed countries. Though the cases are very very less as compared to other diseases.--

SELECT Status, round(avg(`HIV/AIDS`),2) AS avg_HIV_AIDS
FROM life_expectancy.`life expectancy data`
GROUP BY Status;

-- 15) List of Developed Countries with HIV/AIDS cases  --
-- Answer: Australia	Developed	0.1
Austria	Developed	0.1
Belgium	Developed	0.1
Bulgaria	Developed	0.1
Croatia	Developed	0.1
Cyprus	Developed	0.1
Germany	Developed	0.1
Ireland	Developed	0.1
Italy	Developed	0.1
Latvia	Developed	0.1 
--

SELECT Country, Status, round(max(`HIV/AIDS`),2) AS max_HIV_AIDS
FROM life_expectancy.`life expectancy data`
WHERE Status = 'Developed'
GROUP BY Country, Status 
ORDER BY max_HIV_AIDS DESC
LIMIT 10;

-- 16) List of Developing Countries with max HIV/AIDS cases  --
-- Answer:Swaziland	Developing	50.6
Zimbabwe	Developing	43.5
Botswana	Developing	38.8
Lesotho	Developing	34.8
South Africa	Developing	29.7
Malawi	Developing	24.7
Zambia	Developing	17
Mozambique	Developing	16.3
Kenya	Developing	15.7
Gabon	Developing	10.9
--

SELECT Country, Status, round(max(`HIV/AIDS`),2) AS max_HIV_AIDS
FROM life_expectancy.`life expectancy data`
WHERE Status = 'Developing'
GROUP BY Country, Status 
ORDER BY max_HIV_AIDS DESC
LIMIT 10;


-- 17) Average Alcohol consumption in Developed & Developing countries--
-- Answer: Developing - 3.52, Developed - 10.44 -- -- This shows Alcohol consumption is almost 3 times in Developed countries as compared to developing countries.--

SELECT Status, round(avg(Alcohol),2) AS avg_alcohol_consumption
FROM life_expectancy.`life expectancy data`
GROUP BY Status;

-- 17(a) Developed Countries with max Alcohol consumption and max life expectancy. --
-- Answer:# Country	Status	max_alcohol_consumption	max_life_expectancy
Portugal	Developed	14.21	89
Germany	Developed	12.91	89
Belgium	Developed	12.6	89
Spain	Developed	12.26	89
Italy	Developed	9.78	89
Austria	Developed	13.2	88
Luxembourg	Developed	13.14	88
Malta	Developed	8.84	87
Ireland	Developed	11.88	86
Australia	Developed	10.76	86
--
SELECT Country, Status, round(max(Alcohol),2) AS max_alcohol_consumption, round(max(`Life expectancy`),2) AS max_life_expectancy
FROM life_expectancy.`life expectancy data`
WHERE Status = 'Developed'
GROUP BY Country, Status
ORDER BY max_life_expectancy DESC, max_alcohol_consumption DESC
LIMIT 10;

-- 17(b) Developing Countries with min Alcohol consumption and max life expectancy. --
-- Answer: # Country	Status	min_alcohol_consumption	max_life_expectancy
France	Developing	11.1	89
Greece	Developing	7.46	88
Canada	Developing	7.7	87
Israel	Developing	2.23	84
Chile	Developing	6.76	83
Costa Rica	Developing	3.34	79.5
Samoa	Developing	0.01	79
Guatemala	Developing	1.88	79
Maldives	Developing	0.01	78.2
Azerbaijan	Developing	0.01	78
Conclusion: Alcohol consumption is not affecting Life expectancy much. 
--
SELECT Country, Status, round(min(Alcohol),2) AS min_alcohol_consumption, round(max(`Life expectancy`),2) AS max_life_expectancy
FROM life_expectancy.`life expectancy data`
WHERE Status = 'Developing'
GROUP BY Country, Status
ORDER BY max_life_expectancy DESC, min_alcohol_consumption ASC
LIMIT 10;

-- 18) List of countries with high GDP --
-- Answer: Luxembourg -	119172.74, Australia - 67792.34, Sweden	- 59593.29, Ireland - 52567.53, Canada, Netherlands	- 52157.47, Austria	- 51386.38, Belgium	, Germany, France)

SELECT Country, round(Max(GDP),2) AS High_GDP
FROM life_expectancy.`life expectancy data`
GROUP BY Country
ORDER BY High_GDP DESC
LIMIT 10;

-- 19) List of countries with high GDP and Life Expectancy --
-- Answer: Luxembourg (119172.74, 88), Australia (67792.34,	86), Sweden	(59593.29, 82.3), Ireland (52567.53, 86) Canada (52496.69, 87),Netherlands (52157.47, 81.7), Austria (51386.38, 88), Belgium (48424.59, 89), Germany (45699.2, 89), France (45413.66,89) */
/* The trend shows that there is positive relation between GDP and Life expectancy but it is not mendatory that the country with the highest GDP will have highest Life expectancy. */

SELECT Country, round(Max(GDP),2) AS High_GDP, round(MAX(`Life expectancy`),2) AS max_life_expectancy
FROM life_expectancy.`life expectancy data`
GROUP BY Country
ORDER BY High_GDP DESC, max_life_expectancy DESC
LIMIT 10;

-- 20) Is there any correlation between schooling and Life Expectancy --
/* Answer: # Country	Max_Schools	max_life_expectancy
Belgium	18.8	89
Spain	17.6	89
Germany	17	89
Portugal	16.8	89
Italy	16.6	89
France	16.2	89
Greece	17.2	88
Austria	16.1	88
Luxembourg	13.9	88
Canada	15.9	87

This shows that life expectancy has positive relation with schooling. Generally the countries with high life expectancy have max school. */

SELECT Country, round(Max(Schooling),2) AS Max_Schools, round(MAX(`Life expectancy`),2) AS max_life_expectancy
FROM life_expectancy.`life expectancy data`
GROUP BY Country
ORDER BY max_life_expectancy DESC, Max_Schools DESC
LIMIT 10;

-- 21) What is average BMI of countries? --
/* Answer: Developing	35.68
Developed	52.34*/

SELECT Status, round(avg(BMI),2) AS avg_BMI
FROM life_expectancy.`life expectancy data`
GROUP BY Status;

-- 22) Countries with highest percentage of health expenditure and GDP. --
/* Answer: # Country, max_percentage_expenditure, max_GDP
Luxembourg, 18961.35, 119172.74
Australia, 11734.85, 67792.34
Sweden, 11477.67, 59593.29
Canada, 9748.64, 52496.69
Austria, 8350.19, 51386.38
Germany, 8285.26, 45699.2
Belgium, 7191.05, 48424.59
France, 7002.79, 45413.66
Ireland, 6616.7, 52567.53
Spain, 5596.54, 35578.74
*/
SELECT Country, round(Max(`percentage expenditure`),2) AS max_percentage_expenditure, round(MAX(GDP),2) AS max_GDP
FROM life_expectancy.`life expectancy data`
GROUP BY Country
ORDER BY max_percentage_expenditure DESC, max_GDP DESC
LIMIT 10;

-- 23) Countries with highest percentage of under-five deaths. --
/* # Country	max_under_five_deaths
India	2100
Nigeria	893
China	608
Pakistan	466
Ethiopia	286
Bangladesh	264
Indonesia	237
Uganda	181
Angola	138
Mozambique	132
*/
SELECT Country, round(Max(`under-five deaths`),2) AS max_under_five_deaths
FROM life_expectancy.`life expectancy data`
GROUP BY Country
ORDER BY max_under_five_deaths DESC
LIMIT 10;

-- 24) Countries with highest Adult Mortality. --
/* Answer: Zimbabwe	723
Botswana	699
Lesotho	675
Malawi	615
Swaziland	587
Zambia	554
Uganda	523
South Africa	498
Sierra Leone	463
Central African Republic	453 */

SELECT Country, round(Max(`Adult Mortality`),2) AS max_Adult_Mortality
FROM life_expectancy.`life expectancy data`
GROUP BY Country
ORDER BY max_Adult_Mortality DESC
LIMIT 10;

-- 25) avg adult mortality of countries --
-- Answer: Developing - 182.67, Developed -	84.19 */
SELECT Status, round(avg(`Adult Mortality`),2) AS avg_Adult_Mortality
FROM life_expectancy.`life expectancy data`
GROUP BY Status;

-- 26) avg infant deaths of countries --
-- Answer: Developing - 38.00, Developed -	0.87 --

SELECT Status, round(avg(`infant deaths`),2) AS avg_infant_deaths
FROM life_expectancy.`life expectancy data`
GROUP BY Status;

-- 27) Avg thinness 1-19 years of countries. --
-- Answer: Developing - 5.44, Developed - 1.44 -- -- This indicates avg thinnness of 1-19 years is greater in Developing countries than Developed countries.

SELECT Status, round(avg(`thinness  1-19 years`),2) AS avg_thinness_1_to_19_years
FROM life_expectancy.`life expectancy data`
GROUP BY Status;


-- 28) Is there any relation between thinness 1-19 years and life expectancy of countries? So first we will check the thinnness 1-19 years of Developed countries --
-- Answer: # Country	Status	Max_thinness_1_to_19_years	max_life_expectancy
Ireland	Developed	0.3	86
Italy	Developed	0.6	89
Spain	Developed	0.6	89
Australia	Developed	0.7	86
Portugal	Developed	0.8	89
Malta	Developed	0.8	87
Cyprus	Developed	0.9	83
Belgium	Developed	1	89
Luxembourg	Developed	1	88
Netherlands	Developed	1	81.7
--
SELECT Country, Status, round(Max(`thinness  1-19 years`),2) AS Max_thinness_1_to_19_years, round(Max(`Life expectancy`),2) AS max_life_expectancy
FROM life_expectancy.`life expectancy data`
WHERE Status = 'Developed'
GROUP BY Country
ORDER BY Max_thinness_1_to_19_years ASC, max_life_expectancy DESC
LIMIT 10;

-- 28) Thinness of 1-19 years of Developing countries. --
-- Answer: # Country	Status	Max_thinness_1_to_19_years	max_life_expectancy
Tonga	Developing	0.1	73.3
Samoa	Developing	0.2	79
Kiribati	Developing	0.2	66.1
Canada	Developing	0.5	87
France	Developing	0.7	89
Greece	Developing	0.9	88
Chile	Developing	0.9	83
Philippines	Developing	1	68.4
Israel	Developing	1.2	84
Argentina	Developing	1.2	76.2
--
SELECT Country, Status, round(Max(`thinness  1-19 years`),2) AS Max_thinness_1_to_19_years, round(Max(`Life expectancy`),2) AS max_life_expectancy
FROM life_expectancy.`life expectancy data`
WHERE Status = 'Developing'
GROUP BY Country
ORDER BY Max_thinness_1_to_19_years ASC, max_life_expectancy DESC
LIMIT 10;

-- 29) Avg thinness 5-9 years of countries. --
-- Answer: Developing - 5.5, Developed - 1.46 -- -- This indicates that the trend of avg thinnness of 5-9 years is equal to the trend of avg thinness of 1-19 years.

SELECT Status, round(avg(`thinness 5-9 years`),2) AS avg_thinness_5_to_9_years, round(avg(`Life expectancy`),2) AS avg_life_expectancy
FROM life_expectancy.`life expectancy data`
GROUP BY Status
ORDER BY avg_thinness_5_to_9_years ASC, avg_life_expectancy DESC
limit 10;

-- 29) avg Income composition of resources of countries --
-- Answer: Developing - 0.6, Developed - 0.84 --

SELECT Status, round(avg(`Income composition of resources`),2) AS avg_income_composition
FROM life_expectancy.`life expectancy data`
GROUP BY Status;

select max(Schooling), min(Schooling)
FROM life_expectancy.`life expectancy data`;

select max(`thinness 5-9 years`), min(`thinness 5-9 years`)
FROM life_expectancy.`life expectancy data`;

SELECT AVG(Schooling)
FROM `life expectancy data`
WHERE Country = 'India';
