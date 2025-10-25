# ⏳ SQL Analysis: Longevity of Global Businesses

## 📖 Overview

This repository explores the characteristics of long-standing businesses around the world using SQL. The analysis leverages data compiled by BusinessFinancing.co.uk, which identified the oldest continuously operating company in nearly every country.

The primary goal is to use SQL joining and data manipulation techniques to understand patterns related to business longevity across different continents and categories. This project demonstrates SQL skills applied to multi-table database analysis.

---

## 💾 Data Source

The analysis relies on data distributed across four related tables:

1.  **`businesses`** & **`new_businesses`**: Contain core information about each business.
    * `business`: Name of the business (varchar)
    * `year_founded`: Year founded (int)
    * `category_code`: Business category code (varchar)
    * `country_code`: ISO 3-letter country code (char)
2.  **`countries`**: Provides geographical context.
    * `country_code`: ISO 3-letter country code (varchar)
    * `country`: Name of the country (varchar)
    * `continent`: Continent name (varchar)
3.  **`categories`**: Maps category codes to descriptions.
    * `category_code`: Business category code (varchar)
    * `category`: Business category description (varchar)
1.  **Oldest Business per Continent:** Which business holds the title of the oldest on each continent?
2.  **Data Completeness:** How many countries on each continent are missing data regarding their oldest business, even when considering supplementary data?
3.  **Enduring Business Categories:** Which business categories have demonstrated the greatest longevity on each continent?

---

