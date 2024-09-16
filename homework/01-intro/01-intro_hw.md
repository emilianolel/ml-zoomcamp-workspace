## Homework 📝💻

### Set up the environment ⚙️🚀

Ready to dive into data science? First, you'll need to install the right tools! Make sure you have **Python**, **NumPy**, **Pandas**, **Matplotlib**, and **Seaborn** in your environment. 📦 You can follow the instructions from the [environment setup guide](../../../01-intro/06-environment.md) to get everything ready. 🖥️💪

### Q1. Pandas Version 🐼🔍

What version of **Pandas** do you have installed? You can check it easily with the following command:

```python
import pandas as pd
pd.__version__
```

**Answer:**  
```
2.2.2
```

![Pandas version](../../assets/01-intro/01_pandas_version.png 'pandas version')  
🔧 It's crucial to keep your tools up-to-date!

---

### Getting the Data 💾📊

For this homework, we're working with the **Laptops Price Dataset**. 💻 Want to get started? You can grab the dataset directly:

[Download Laptops Price Dataset](https://raw.githubusercontent.com/alexeygrigorev/datasets/master/laptops.csv) 📥

Or, if you're feeling fancy, you can use the command line:  
```bash
wget https://raw.githubusercontent.com/alexeygrigorev/datasets/master/laptops.csv
```

Once you've got the data, let's load it up using **Pandas**:  
```python
laptops_df = pd.read_csv('data/laptops.csv')
laptops_df.head()
```

Take a look at the first few rows 👀:

|      | Laptop                                                                 | Status  | Brand | Model | CPU | RAM | Storage | Storage type | GPU | Screen | Touch | Final Price |
|-----:|:-----------------------------------------------------------------------|:--------|:------|:------|:----|----:|--------:|:-------------|:----|-------:|:------|------------:|
| 0    | ASUS ExpertBook B1 B1502CBA-EJ0436X Intel Core i5-1235U/8GB/512GB SSD/15.6" | New     | Asus  | ExpertBook | Intel Core i5 | 8 | 512 | SSD | NaN | 15.6 | No | 1009 |
| 1    | Alurin Go Start Intel Celeron N4020/8GB/256GB SSD/15.6"                 | New     | Alurin | Go   | Intel Celeron | 8 | 256 | SSD | NaN | 15.6 | No | 299 |
| ...  | ...                                                                     | ...     | ...   | ...   | ... | ... | ...     | ...           | ... | ...    | ...   | ...         |

![Read CSV](../../assets/01-intro/02_read_csv.png 'read_csv')  
📊 Let's get that data ready for analysis!

---

### Q2. Records Count 📋🔢

How many records are in the dataset? 🤔

- **2160** 🎉

![Records Count](../../assets/01-intro/03_df_rows.png 'records count')  
That's a lot of laptops to explore! 🔍💼

---

### Q3. Laptop Brands 🏷️💡

How many different laptop brands are represented in this dataset? 🌍

- **27** 👏

![Brands](../../assets/01-intro/04_brands.png 'brands')  
Wow, a broad selection of brands! Which one’s your favorite? 😎

---

### Q4. Missing Values ⚠️❓

How many columns have missing values? 🧐

- **3** 🚨

![Missing Values](../../assets/01-intro/05_missing_values.png 'missing values')  
It's important to handle those missing values to avoid skewed results. 🔧

---

### Q5. Maximum Final Price 💰💻

What’s the maximum final price for a **Dell** laptop in the dataset? 🤑

- **3936**

Check out the details on this high-end Dell:

|      | Laptop                                | Status  | Brand | Model     | CPU           | RAM  | Storage | Storage Type | GPU       | Screen | Touch | Final Price |
|-----:|:--------------------------------------|:--------|:------|:----------|:--------------|-----:|--------:|:-------------|:----------|-------:|:------|------------:|
| 1335 | Dell Precision 5770 Intel Core i7-12700H | New     | Dell  | Precision | Intel Core i7 | 16  | 512    | SSD          | RTX A2000 | 17     | Yes   | 3936        |

![Max Final Price](../../assets/01-intro/06_max_final_price.png 'max final price')  
Dell means business! 💼💪

---

### Q6. Median Value of Screen Size 📏🖥️

1. First, calculate the **median** value of the `Screen` column:  
   - **15.6** 📐  
2. Next, what’s the most frequent screen size (**mode**)?  
   - **15.6** 📊  
3. Now, fill in missing values in the `Screen` column with the mode value:  
   - **15.6** 🔧  
4. Recalculate the median. Did it change?  
   - **Nope!** 🔁

![Median](../../assets/01-intro/07_median.png 'median')  
Consistency is key! 🔑

---

### Q7. Sum of Weights (Linear Regression) ➗📈

Here comes some math! Let's implement a **linear regression** model. 🔢🧠

Steps:  
1. Filter out all the **Innjoo** laptops.  
2. Select the columns `RAM`, `Storage`, `Screen`.  
3. Convert them to a NumPy array, `X`.  
4. Perform matrix-matrix multiplication to compute `XTX`.  
5. Compute the inverse of `XTX`.  
6. Create an array `y` with values [1100, 1300, 800, 900, 1000, 1100].  
7. Multiply the inverse of `XTX` with the transpose of `X`, then multiply that result by `y` to get `w`.  
8. Finally, sum the elements of `w`.

**Answer:**  
- **91.30** 💯

![Sum of Weights 01](../../assets/01-intro/08.1_lin_reg.png 'sum of weights 01')  
![Sum of Weights 02](../../assets/01-intro/08.2_lin_reg.png 'sum of weights 02')  
Boom! You've just implemented **linear regression**. 🎉📉

---

## Submit Your Results 📤🚀

Submit your results here:  
[Submit Homework](https://courses.datatalks.club/ml-zoomcamp-2024/homework/hw01) 🔗

**Pro tip:** If your answer doesn’t match exactly, choose the closest one. ✅

Good luck, and happy coding! 💻🤓🚀

