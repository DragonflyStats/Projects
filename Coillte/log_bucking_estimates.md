
---

## Web Service Processing of Yield Generation Estimates

A workflow is being developed where **input tables from LRM** (Land Resource Management system) are processed remotely via a **web service provided by Trimble**. 
This service returns **log product estimates**, which are then stored in a **staging environment**.

Once returned:

- The estimates are classified using **LRM tables**, based on environmental adjustments.
- A **Wind Block Adjustment Matrix** (numerical coefficients) is applied to modify log product estimates according to **wind block classifications**.
- This adjustment is intended to improve accuracy and refine output data for resource modeling.

---

**Log Booking Forecast – 2:31 PM**  
The log booking forecasts are categorized into three key product types: **large logs, small solid logs, and pulp board**. Each harvest unit has a forecast volume for these products, based on the volume per productive hectare.  

Productive hectares are calculated using GIS data, which includes the gross area and the percentage of land that is actually productive. Multiplying these values gives the productive area. The log booking forecasts are then divided by this area to determine the product volume per productive hectare.  

For each harvest unit, three estimates are provided. The **Styx** product volumes are categorized and derived from databases. The productive area is determined by unifying multiple shapefiles and converting them into hectares. The Styx product volume per hectare is calculated for each of the three product types: **solo logs, small solid logs, and pulp board**. These are then compared to the log booking outcomes on a per-hectare basis.  

To aggregate the total volumes, the product outturns are multiplied by the productive GIS area. In both cases, a bar plot is created for visualization.  

Each harvest unit is further categorized based on **wind blow percentage** and tree forecast data, with tree estimates derived according to **LRN calculations**. The log booking estimates are sourced from the LBS table. Shapefiles are used to unify data from various harvesters, consolidating them into a single file to derive accurate volume estimates.  

A specific geographic area is selected to allow for meaningful contrast between forecasts and actual outcomes. 
