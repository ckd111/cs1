module TrafficLight

data color = red | green | amber

nextLight: color -> color
nextLight red = green
nextLight green = amber
nextLight amber = red
