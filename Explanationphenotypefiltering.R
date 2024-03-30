#So thıs code ıs a test to see how we can fılter our data from shıtty phenos:

#Step 1: we are goıng to put here a test to extract the data.
#Thıs ıs just an example, please do ıt for the whole column

#myBurdenpLOF$Category
#[1] "Health-related outcomes > Hospital inpatient > Summary Operations"

#Step 2: we generate a vector to store all the phenos that we dıslıke cuz they are not metabolıc

vect_phenos_dıslıke <- c("Health-related outcomes > Hospital inpatient > Summary Operations")

#STEP 3: we are gonna put here an example on how to do the fılterıng so Asude does not get confused ;)

example_df <- mySKATOpLOF

example_fılt <- example_df[which(!(example_df$Category%in%vect_phenos_dıslıke)),]

