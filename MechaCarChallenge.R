## Deliverable 1 Linear Regression to Predict MPG

#load the dplyr package
library(dplyr)
#Import and read in the MechaCar_mpg.csv
MechaCar_mpg <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
#create multiple linear model
lm(vehicle_length ~ vehicle_weight + spoiler_angle + ground_clearance + AWD + mpg,data=MechaCar_mpg)
#generate summary stats
summary(lm(vehicle_length ~ vehicle_weight + spoiler_angle + ground_clearance + AWD + mpg,data=MechaCar_mpg))

## Deliverable 2 Create Visualizations for the Trip

#  import and read in the Suspension_Coil.csv file as a table.
Suspension_Coil_data <- read.csv(file="Suspension_Coil.csv", check.names=F,stringsAsFactors = F)

#  Write an RScript that creates a total_summary dataframe to get the mean, median, variance, and standard deviation of the suspension coil's PSI column
total_summary <- Suspension_Coil_data %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))
# Create Summary table
summarize_demo <- lot_summary %>% group_by(Manufacturing_Lot) %>% summarize()

#  RScript that creates a lot_summary dataframe to group each manufacturing lot by the mean, median, variance, and standard deviation of the suspension coil's PSI column.
lot_summary <- Suspension_Coil_data %>% group_by(Manufacturing_Lot) %>% summarise(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))

