library(readr)
OnlineNewsPopularity <- read_csv("C:/Users/bfo2f/Class Work/OnlineNewsPopML/Data/OnlineNewsPopularity.csv")
#View(OnlineNewsPopularity)

## Days of the week
# Create a new column named `day_of_week`
OnlineNewsPopularity$day_of_week <- NA

# Fill the new column with the appropriate values
for (i in 1:nrow(OnlineNewsPopularity)) {
  if (OnlineNewsPopularity$weekday_is_monday[i] == 1) {
    OnlineNewsPopularity$day_of_week[i] <- "Mon"
  } else if (OnlineNewsPopularity$weekday_is_tuesday[i] == 1) {
    OnlineNewsPopularity$day_of_week[i] <- "Tue"
  } else if (OnlineNewsPopularity$weekday_is_wednesday[i] == 1) {
    OnlineNewsPopularity$day_of_week[i] <- "Wed"
  } else if (OnlineNewsPopularity$weekday_is_thursday[i] == 1) {
    OnlineNewsPopularity$day_of_week[i] <- "Thu"
  } else if (OnlineNewsPopularity$weekday_is_friday[i] == 1) {
    OnlineNewsPopularity$day_of_week[i] <- "Fri"
  } else if (OnlineNewsPopularity$weekday_is_saturday[i] == 1) {
    OnlineNewsPopularity$day_of_week[i] <- "Sat"
  } else {
    OnlineNewsPopularity$day_of_week[i] <- "Sun"
  }
}

# drop used columns (only run once)
OnlineNewsPopularity <- OnlineNewsPopularity[, -which(names(OnlineNewsPopularity) == "weekday_is_monday")]
OnlineNewsPopularity <- OnlineNewsPopularity[, -which(names(OnlineNewsPopularity) == "weekday_is_tuesday")]
OnlineNewsPopularity <- OnlineNewsPopularity[, -which(names(OnlineNewsPopularity) == "weekday_is_wednesday")]
OnlineNewsPopularity <- OnlineNewsPopularity[, -which(names(OnlineNewsPopularity) == "weekday_is_thursday")]
OnlineNewsPopularity <- OnlineNewsPopularity[, -which(names(OnlineNewsPopularity) == "weekday_is_friday")]
OnlineNewsPopularity <- OnlineNewsPopularity[, -which(names(OnlineNewsPopularity) == "weekday_is_saturday")]
OnlineNewsPopularity <- OnlineNewsPopularity[, -which(names(OnlineNewsPopularity) == "weekday_is_sunday")]


#################################
## data channel
# Create a new column named `data_channel`
OnlineNewsPopularity$data_channel <- NA

# Fill the new column with the appropriate values
for (i in 1:nrow(OnlineNewsPopularity)) {
  if (OnlineNewsPopularity$data_channel_is_bus[i] == 1) {
    OnlineNewsPopularity$data_channel[i] <- "Bus"
  } else if (OnlineNewsPopularity$data_channel_is_lifestyle[i] == 1) {
    OnlineNewsPopularity$data_channel[i] <- "Lifestyle"
  } else if (OnlineNewsPopularity$data_channel_is_entertainment[i] == 1) {
    OnlineNewsPopularity$data_channel[i] <- "Entertainment"
  } else if (OnlineNewsPopularity$data_channel_is_socmed[i] == 1) {
    OnlineNewsPopularity$data_channel[i] <- "Socmed"
  } else if (OnlineNewsPopularity$data_channel_is_tech[i] == 1) {
    OnlineNewsPopularity$data_channel[i] <- "Tech"
  } else {
    OnlineNewsPopularity$data_channel[i] <- "World"
  }
}

# drop used columns (only run once)
OnlineNewsPopularity <- OnlineNewsPopularity[, -which(names(OnlineNewsPopularity) == "data_channel_is_lifestyle")]
OnlineNewsPopularity <- OnlineNewsPopularity[, -which(names(OnlineNewsPopularity) == "data_channel_is_entertainment")]
OnlineNewsPopularity <- OnlineNewsPopularity[, -which(names(OnlineNewsPopularity) == "data_channel_is_bus")]
OnlineNewsPopularity <- OnlineNewsPopularity[, -which(names(OnlineNewsPopularity) == "data_channel_is_socmed")]
OnlineNewsPopularity <- OnlineNewsPopularity[, -which(names(OnlineNewsPopularity) == "data_channel_is_tech")]
OnlineNewsPopularity <- OnlineNewsPopularity[, -which(names(OnlineNewsPopularity) == "data_channel_is_world")]



# write the data to csv
write.csv(OnlineNewsPopularity, file = "../Data/ONPClean1.csv")
