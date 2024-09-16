## Homework

### Set up the environment

You need to install Python, NumPy, Pandas, Matplotlib and Seaborn. For that, you can the instructions from
[06-environment.md](../../../01-intro/06-environment.md).

### Q1. Pandas version

What's the version of Pandas that you installed?

You can get the version information using the `__version__` field:

```python
pd.__version__
```

Answer:
```
2.2.2
```

### Getting the data 

For this homework, we'll use the Laptops Price dataset. Download it from 
[here](https://raw.githubusercontent.com/alexeygrigorev/datasets/master/laptops.csv).

You can do it with wget:

```bash
wget https://raw.githubusercontent.com/alexeygrigorev/datasets/master/laptops.csv
```

Or just open it with your browser and click "Save as...".

Now read it with Pandas.

```python
laptops_df = pd.read_csv('data/laptops.csv')
```
```python
laptops_df.head()
```

|      | Laptop                                                                                                                            | Status      | Brand            | Model          | CPU                   |   RAM |   Storage | Storage type   | GPU                |   Screen | Touch   |   Final Price |
|-----:|:----------------------------------------------------------------------------------------------------------------------------------|:------------|:-----------------|:---------------|:----------------------|------:|----------:|:---------------|:-------------------|---------:|:--------|--------------:|
|    0 | ASUS ExpertBook B1 B1502CBA-EJ0436X Intel Core i5-1235U/8GB/512GB SSD/15.6"                                                       | New         | Asus             | ExpertBook     | Intel Core i5         |     8 |       512 | SSD            | nan                |    15.6  | No      |       1009    |
|    1 | Alurin Go Start Intel Celeron N4020/8GB/256GB SSD/15.6"                                                                           | New         | Alurin           | Go             | Intel Celeron         |     8 |       256 | SSD            | nan                |    15.6  | No      |        299    |
|    2 | ASUS ExpertBook B1 B1502CBA-EJ0424X Intel Core i3-1215U/8GB/256GB SSD/15.6"                                                       | New         | Asus             | ExpertBook     | Intel Core i3         |     8 |       256 | SSD            | nan                |    15.6  | No      |        789    |
|    3 | MSI Katana GF66 12UC-082XES Intel Core i7-12700H/16GB/1TB SSD/RTX3050/15.6"                                                       | New         | MSI              | Katana         | Intel Core i7         |    16 |      1000 | SSD            | RTX 3050           |    15.6  | No      |       1199    |
|    4 | HP 15S-FQ5085NS Intel Core i5-1235U/16GB/512GB SSD/15.6"                                                                          | New         | HP               | 15S            | Intel Core i5         |    16 |       512 | SSD            | nan                |    15.6  | No      |        669.01 |
|    5 | MSI Crosshair 17 C12VF-264XES Intel Core i7-12650H/32GB/1TB SSD/RTX 4060/17.3"                                                    | New         | MSI              | Crosshair      | Intel Core i7         |    32 |      1000 | SSD            | RTX 4060           |    17.3  | No      |       1699    |
|    6 | Lenovo Thinkpad E14 Gen 4 AMD Ryzen 5 5625U/8GB/256GB SSD/14"                                                                     | New         | Lenovo           | ThinkPad       | AMD Ryzen 5           |     8 |       256 | SSD            | nan                |    14    | No      |        909    |
|    7 | ASUS VivoBook 15 F515JA-EJ2882W Intel Core i7-1065G7/8GB/512GB SSD/15.6"                                                          | New         | Asus             | VivoBook       | Intel Core i7         |     8 |       512 | SSD            | nan                |    15.6  | No      |        809.01 |
|    8 | Medion Akoya E15415 Intel Core i5-10210U/8GB/256GB SSD/15.6"                                                                      | New         | Medion           | Akoya          | Intel Core i5         |     8 |       256 | SSD            | nan                |    15.6  | No      |        519    |
|    9 | HP Victus 16-d1038ns Intel Core i7-12700H/16GB/512GB SSD/RTX 3050/16.1"                                                           | New         | HP               | Victus         | Intel Core i7         |    16 |       512 | SSD            | RTX 3050           |    16.1  | No      |       1149    |
|   10 | Lenovo V15 IGL Intel Celeron N4020/8GB/256 GB SSD/15.6"                                                                           | New         | Lenovo           | V15            | Intel Celeron         |     8 |       256 | SSD            | nan                |    15.6  | No      |        349    |

### Q2. Records count

How many records are in the dataset?

- 2160

### Q3. Laptop brands

How many laptop brands are presented in the dataset?

- 27

### Q4. Missing values

How many columns in the dataset have missing values?

- 3

### Q5. Maximum final price

What's the maximum final price of Dell notebooks in the dataset?

- 3936

|      | Laptop                                                                       | Status   | Brand   | Model     | CPU           |   RAM |   Storage | Storage type   | GPU       |   Screen | Touch   |   Final Price |
|-----:|:-----------------------------------------------------------------------------|:---------|:--------|:----------|:--------------|------:|----------:|:---------------|:----------|---------:|:--------|--------------:|
| 1335 | Dell Precision 5770 Intel Core i7-12700H/16GB/512GB SSD/RTX A2000/17" Táctil | New      | Dell    | Precision | Intel Core i7 |    16 |       512 | SSD            | RTX A2000 |       17 | Yes     |          3936 |

### Q6. Median value of Screen

1. Find the median value of `Screen` column in the dataset. `15.6`
2. Next, calculate the most frequent value of the same `Screen` column. `15.6`
3. Use `fillna` method to fill the missing values in `Screen` column with the most frequent value from the previous step. `15.6`
4. Now, calculate the median value of `Screen` once again. `15.6`

Has it changed?

> Hint: refer to existing `mode` and `median` functions to complete the task.

- No

### Q7. Sum of weights

1. Select all the "Innjoo" laptops from the dataset.
2. Select only columns `RAM`, `Storage`, `Screen`.
3. Get the underlying NumPy array. Let's call it `X`.
4. Compute matrix-matrix multiplication between the transpose of `X` and `X`. To get the transpose, use `X.T`. Let's call the result `XTX`.
5. Compute the inverse of `XTX`.
6. Create an array `y` with values `[1100, 1300, 800, 900, 1000, 1100]`.
7. Multiply the inverse of `XTX` with the transpose of `X`, and then multiply the result by `y`. Call the result `w`.
8. What's the sum of all the elements of the result?

> **Note**: You just implemented linear regression. We'll talk about it in the next lesson.

- 91.30

## Submit the results

* Submit your results here: https://courses.datatalks.club/ml-zoomcamp-2024/homework/hw01
* If your answer doesn't match options exactly, select the closest one
