#store humidity percentages in a vector
humidity <- c(20,30,60,70,65,40,35)

for (count in 1:7){
  cat ("weather for day", count, ":")
  if(humidity[count] < 40){
    print('perfect for trip')
  } else if (humidity[count] > 70) {
    print("not suitable for trip")
  }else{
    print("may or may not be suitable")
  }
}