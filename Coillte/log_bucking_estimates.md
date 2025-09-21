
---

## Web Service Processing of Yield Generation Estimates

A workflow is being developed where **input tables from LRM** (Land Resource Management system) are processed remotely via a **web service provided by Trimble**. 
This service returns **log product estimates**, which are then stored in a **staging environment**.

Once returned:

- The estimates are classified using **LRM tables**, based on environmental adjustments.
- A **Wind Block Adjustment Matrix** (numerical coefficients) is applied to modify log product estimates according to **wind block classifications**.
- This adjustment is intended to improve accuracy and refine output data for resource modeling.

---


