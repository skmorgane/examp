get_data <- function(){
  data <- read.csv("surveys.csv")
  return(data)
}

get_data <- function(weight){
  if (weight > 50){
    size_class = 'large'
  }
  else {
    size_class = 'small'
  }
  return(size_class)
}
