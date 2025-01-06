# Vector of 5 species names
SpeciesNames <- c("Falco peregrinus", "Strix varia", "Corvus albus", "Pandion haliaetus", "Sagittarius serpentarius")

# Vector of 100 species names selected from above 
Species = sample(SpeciesNames, size = 100, replace = TRUE)

Species # view new vector


# normal distribution for limb width, units in meters
Limb_width = abs(rnorm(100, mean = 0.2, sd = 1.5)) # no negative values

Limb_width # view new vector

# normal distribution for limb length(thinking wingspan), units in meters
Limb_length = abs(rnorm(100, mean = 1.3, sd = 1.5)) # no negative values

Limb_length # view new vector


# Vector of 3 observers 
ObserversNames <- c("Observer A", "Observer B", "Observer C")

# Vector of 100 values of observers selected from above 
Observer = sample(ObserversNames, size = 100, replace = TRUE)

Observer # view new vector

# create the data frame for each vector
Measurements <- data.frame(Species = Species, Limb_Width = Limb_width, Limb_Length = Limb_length, Observer = Observer)

getwd() #check working directory

# writes the csv to the working directory
write.csv(Measurements, file = "measurements.csv", row.names = FALSE)


