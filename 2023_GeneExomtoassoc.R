mySKATOsynn <- read.csv("gene-phewas-exomes_ENSG00000135211_TMEM60_2023_02_26_14_53_51_SKAT-Osynnoymusvariant.csv")
View(mySKATOsynn)

# Set P-value threshold
p_thresh <- 0.05

# Subset data based on P-value threshold
my_data_filtered_SKATOsynn <- mySKATOsynn[mySKATOsynn$P.Value..SKAT.O. < p_thresh, ]
View(my_data_filtered_SKATOsynn)
write.csv(my_data_filtered_SKATOsynn, "my_data_filtered_SKATOsynn.csv")

mySKATOmissensevariant <- read.csv("gene-phewas-exomes_ENSG00000135211_TMEM60_2023_02_26_14_55_14_SKAT-Omissensevariant.csv")
View(mySKATOmissensevariant)

# Set P-value threshold
p_thresh <- 0.05

# Subset data based on P-value threshold
my_data_filtered_SKATOmissense <- mySKATOmissensevariant[mySKATOmissensevariant$P.Value..SKAT.O. < p_thresh, ]
View(my_data_filtered_SKATOmissense)
write.csv(my_data_filtered_SKATOmissense, "my_data_filtered_SKATOmissense.csv")

mySKATOpLOF <- read.csv("gene-phewas-exomes_ENSG00000135211_TMEM60_2023_02_26_14_56_01_SKAT-OpLOFvariant.csv")
View(mySKATOpLOF)

# Set P-value threshold
p_thresh <- 0.05

# Subset data based on P-value threshold
my_data_filtered_SKATOpLOF <- mySKATOpLOF[mySKATOpLOF$P.Value..SKAT.O. < p_thresh, ]
View(my_data_filtered_SKATOpLOF)
write.csv(my_data_filtered_SKATOpLOF, "my_data_filtered_SKATOpLOF.csv")

mySKATsynn <- read.csv("gene-phewas-exomes_ENSG00000135211_TMEM60_2023_02_26_14_57_30_SKATsynonymus.csv")
View(mySKATsynn)
# Set P-value threshold
p_thresh <- 0.05

# Subset data based on P-value threshold
my_data_filtered_SKATsynn <- mySKATsynn[mySKATsynn$P.Value..SKAT. < p_thresh, ]
View(my_data_filtered_SKATsynn)
write.csv(my_data_filtered_SKATsynn, "my_data_filtered_SKATsynn.csv")

mySKATmissense <- read.csv("gene-phewas-exomes_ENSG00000135211_TMEM60_2023_02_26_14_58_30_SKATmissensevariants.csv")
p_thresh <- 0.05

# Subset data based on P-value threshold
my_data_filtered_SKATmissense <- mySKATmissense[mySKATmissense$P.Value..SKAT. < p_thresh, ]
View(my_data_filtered_SKATmissense)
write.csv(my_data_filtered_SKATmissense, "my_data_filtered_SKATmissense.csv")

mySKATpLOF <- read.csv("gene-phewas-exomes_ENSG00000135211_TMEM60_2023_02_26_14_59_18_SKATpLOFvariant.csv")
p_thresh <- 0.05
my_data_filtered_SKATpLOF <- mySKATpLOF[mySKATpLOF$P.Value..SKAT. < p_thresh, ]
View(my_data_filtered_SKATpLOF)
write.csv(my_data_filtered_SKATpLOF, "my_data_filtered_SKATpLOF.csv")

myBurdensynn <- read.csv("gene-phewas-exomes_ENSG00000135211_TMEM60_2023_02_26_15_00_02_Burdensynnoymusvariants.csv")
View(myBurdensynn)
p_thresh <- 0.05
my_data_filtered_myBurdensynn <- myBurdensynn[myBurdensynn$P.Value..Burden. < p_thresh, ]
View(my_data_filtered_myBurdensynn)
write.csv(my_data_filtered_myBurdensynn, "my_data_filtered_myBurdensynn.csv")

myBurdenmissense <- read.csv("gene-phewas-exomes_ENSG00000135211_TMEM60_2023_02_26_15_01_09_Burdenmissensevariants.csv")
p_thresh <- 0.05
my_data_filtered_myBurdenmissense <- myBurdenmissense[myBurdenmissense$P.Value..Burden. < p_thresh, ]
View(my_data_filtered_myBurdenmissense)
write.csv(my_data_filtered_myBurdenmissense, "my_data_filtered_myBurdenmissense.csv")

myBurdenpLOF <- read.csv("gene-phewas-exomes_ENSG00000135211_TMEM60_2023_02_26_15_02_00_BurdenpLOFvariants.csv")
View(myBurdenpLOF)
p_thresh <- 0.05
my_data_filtered_myBurdenpLOF <- myBurdenpLOF[myBurdenpLOF$P.Value..Burden. < p_thresh, ]
View(my_data_filtered_myBurdenpLOF)
write.csv(my_data_filtered_myBurdenpLOF, "my_data_filtered_myBurdenpLOF.csv")

library(readxl)

