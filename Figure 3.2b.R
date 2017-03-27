carTypes = c("Passenger Car",   "SUV/Light Truck")
years <- c(1990, 1995, 1997, 1998, 1999, 2000, 2001, 2002)
carPurchases.PassengerCar <- c(9436, 8687, 8273, 8142, 8697, 8852, 8422, 8082)
carPurchases.SUVLightTruck <- c(4733, 6517, 7226, 7821, 8717, 8965, 9050, 9036)
carPurchaseMatrix <- rbind(carPurchases.PassengerCar, carPurchases.SUVLightTruck)
colnames(carPurchaseMatrix) <- years
rownames(carPurchaseMatrix) <- carTypes
barplot(carPurchaseMatrix, beside = T, main = "Figure 3.2b: Vehicles Purchased -- 1990-2002", 
        xlab = "Year", ylab = "Type of Vehicle", ylim = c(0, 10000), 
        legend.text = rownames(carPurchaseMatrix))


