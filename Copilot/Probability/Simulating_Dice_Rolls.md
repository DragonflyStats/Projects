🎲 **Simulating the Sum of 100 Fair Dice Rolls**

You're exploring a classic probability problem: summing the outcomes of 100 rolls of a fair six-sided die. Let's break this down and walk through the statistical intuition, simulation approach, and expected results.

---

### 📊 Theoretical Background

- **Minimum possible sum**: 100 (rolling 1 every time)
- **Maximum possible sum**: 600 (rolling 6 every time)
- **Expected value (mean)**:
  - The expected value of a single die roll is  
    \[
    \mu = \frac{1 + 2 + 3 + 4 + 5 + 6}{6} = 3.5
    \]
  - So, the expected sum of 100 rolls is  
    \[
    100 \times 3.5 = 350
    \]

- **Standard deviation of a single roll**:
  \[
  \sigma = \sqrt{\frac{(6 - 1 + 1)^2 - 1}{12}} = \sqrt{\frac{35}{12}} \approx 1.71
  \]
  - For 100 rolls, the standard deviation of the sum is:
    \[
    \sigma_{\text{sum}} = \sqrt{100} \times 1.71 \approx 17.1
    \]

---

### 🧪 Simulation in R (or similar language)

Here’s a simple way to simulate this in R:

```r
# Simulate 1000 experiments of 100 dice rolls
set.seed(123)  # for reproducibility
sums <- replicate(1000, sum(sample(1:6, 100, replace = TRUE)))

# Plot histogram
hist(sums, breaks = 30, col = "skyblue", main = "Sum of 100 Dice Rolls", xlab = "Sum")

# Summary statistics
mean(sums)
sd(sums)
quantile(sums, probs = c(0.025, 0.975))  # 95% confidence interval
```

---

### 📈 Expected Results

- **Mean**: Close to 350
- **Standard Deviation**: Around 17.1
- **95% Confidence Interval**: Approximately between 316 and 384
  - This means about 95% of the simulated sums will fall in this range.
- **Histogram Shape**: Bell-shaped, approximately normal due to the Central Limit Theorem.

---

### ✅ Interpretation

- While 100 and 600 are mathematically possible, they are astronomically unlikely.
- Most of the results will cluster around 350, with a typical range from about 310 to 390.
- The distribution of the sums will resemble a normal distribution due to the large number of independent rolls.

Would you like to see a Python version of this simulation or explore how the Central Limit Theorem applies here in more depth?
