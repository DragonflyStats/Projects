// Define the input data structure for logs
// Logs_Data: a collection of log entries, each with properties
//   - Operation: string
//   - Harvest_Unit: string
//   - Timestamp: datetime
//   - Harvest_Area: float

// Define the output data structure
// Harvest_Summary: a collection of summary entries, each with properties
//   - Operation: string
//   - First_Day_of_Harvest: date
//   - Harvest_Year: integer
//   - Harvest_Month: integer
//   - Total_Harvest_Area: float

// Step 1: Calculate the first day of harvest for each operation
// This step uses a SQL-like approach to group and find the minimum date.
// Group Logs_Data by 'Operation'
Grouped_by_Operation = GROUP_BY(Logs_Data, 'Operation')

// For each group, find the minimum 'Timestamp'
First_Harvest_Dates = MAP(Grouped_by_Operation, lambda group: {
    'Operation': group.key,
    'First_Day_of_Harvest': MIN(group.list, 'Timestamp')
})

// Step 2: Prepare the data for aggregation by harvest unit, year, and month
// This step involves joining the results from Step 1 with the original data
// and extracting year and month from the first harvest date.
// Join the First_Harvest_Dates with the original Logs_Data
Joined_Data = JOIN(Logs_Data, First_Harvest_Dates, ON 'Operation')

// Add 'Harvest_Year' and 'Harvest_Month' to the joined data based on the first harvest date
Enriched_Data = MAP(Joined_Data, lambda entry: {
    'Operation': entry.Operation,
    'Harvest_Unit': entry.Harvest_Unit,
    'Harvest_Area': entry.Harvest_Area,
    'Harvest_Year': EXTRACT_YEAR(entry.First_Day_of_Harvest),
    'Harvest_Month': EXTRACT_MONTH(entry.First_Day_of_Harvest)
})

// Step 3: Aggregate the total harvest area for each harvest unit
// Group Enriched_Data by 'Harvest_Unit', 'Harvest_Year', and 'Harvest_Month'
Grouped_by_Unit_Year_Month = GROUP_BY(Enriched_Data, 'Harvest_Unit', 'Harvest_Year', 'Harvest_Month')

// Calculate the sum of 'Harvest_Area' for each group
Total_Harvest_Area_by_Unit = MAP(Grouped_by_Unit_Year_Month, lambda group: {
    'Harvest_Unit': group.key.Harvest_Unit,
    'Harvest_Year': group.key.Harvest_Year,
    'Harvest_Month': group.key.Harvest_Month,
    'Total_Harvest_Area': SUM(group.list, 'Harvest_Area')
})

// Final Result: Total_Harvest_Area_by_Unit
RETURN Total_Harvest_Area_by_Unit
