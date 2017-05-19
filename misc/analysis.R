
source("pathogen_project_functions.R")

df <- read_data("input.csv")
results <- karthik_model(df)
kr_plot(results)

