get_data <- function(){
  data <- read.csv("surveys.csv")
  return(data)
}

get_data <- function(weight, threshold){
  if (weight > threshold){
    size_class = 'large'
  }
  else {
    size_class = 'small'
  }
  return(size_class)
}

add_size_classes <- function(df){
  data_w_size_class <-
    df %>%
    no.omit() %>%
    rowwise() %>%
    mutate(size_class = get_size_class(weight, 50))
}
