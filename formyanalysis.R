install.packages("devtools")
install.packages(c("dplyr","tidyr","ggplot2","MASS","meta","ggrepel","DT"))
devtools::install_github("PheWAS/PheWAS")
library(PheWAS)
?PheWAS
vignette("PheWAS-package")
myphedata <- read.csv("/Users/asudeberber/Desktop/-----/Variantanalysismydata-Poster/7_77793835_C_T-associated-studies.csv")
print(myphedata)
View(myphedata)
devtools::install_github("mrcieu/ieugwasr")
vignette("ieugwasr")
library(readxl)

myphedata <- read_excel("/Users/asudeberber/Desktop/-----/Metabolismday2023-AsudePoster/Variant2geneanalysismydata-Poster/rs1045463 -> TMEM60_Asude_phewas.xlsx")
View(myphedata)
vignette("ggplot")

install.packages("ggplot2")
install.packages("plotly")
install.packages("lattice")
install.packages("ggmap")
library(ggplot2)
library(plotly)
library(lattice)
library(ggmap)

vignette(ggplot2)
vignette("ggplot2")
vignette("plotly")

ggplot(myphedata, aes(x = Trait, y = P)) +
  geom_point(color = "blue", size = 3) +
  labs(title = "Variant to Phenotype expression level", x = "traits", y = "Expression level")

library(heatmaply)
data(myphedata)
heatmaply(myphedata, Rowv = FALSE, Colv = FALSE)

install.packages("devtools")
library(devtools)
install_github("jrs95/gassocplot2")
library(gassocplot2)

myphedata_visualization <- gassocplot::test_assoc_plot
myphedata_visualization <- gassocplot::plot_regional_gene_assoc(recombination.plot ="rs1045463", marker.plot =  )
head(myphedata)
corr <- gassocplot::myphedata # this is correlation not correlation squared and has to be ordered in the same way as the markers data frame
plot <- assoc_plot(markers, corr)
plot <- assoc_plot(markers, corr, label = "rs1045463")


assoc_plot_save(plot, "assoc_plot_test.png")

# Create a vector of random values
myphedata <- rnorm(1000)

# Create a histogram with default parameters
hist(myphedata)

# Create a histogram with customized bins and colors
hist(myphedata, breaks = 20, col = "lightblue", border = "white")

# Create a normalized histogram with density curve
hist(myphedata, probability = TRUE, col = "lightblue", border = "white")
lines(density(myphedata), col = "blue", lwd = 2)

library(ComplexHeatmap)
library(ComplexHeatmap)
library(circlize)
set.seed(123)

# Generate random data
mat_myphedata <- matrix(runif(100), ncol = 10)

# Define row and column annotations
row_anno <- data.frame(
  label = paste0("Row", 1:10),
  group = c("Group1", "Group1", "Group1", "Group2", "Group2", 
            "Group2", "Group3", "Group3", "Group3", "Group3")
)
col_anno <- data.frame(
  label = paste0("Col", 1:10),
  group = c("GroupA", "GroupA", "GroupB", "GroupB", "GroupB", 
            "GroupC", "GroupC", "GroupC", "GroupC", "GroupC")
)

# Define color scale
col_fun <- colorRamp2(c(0, 1), c("white", "blue"))

# Create heatmap
htmap <- Heatmap(mat_myphedata, 
                 name = "Heatmap", 
                 col = col_fun, 
                 show_row_names = FALSE,
                 show_column_names = FALSE,
                 row_dend_side = "left",
                 column_dend_side = "top",
                 clustering_distance_rows = "correlation",
                 clustering_distance_columns = "correlation",
                 cluster_rows = TRUE,
                 cluster_columns = TRUE,
                 row_title = "Groups",
                 column_title = "Groups",
                 row_title_side = "left",
                 column_title_side = "top",
                 row_annotation = row_anno,
                 column_annotation = col_anno,
                 heatmap_legend_param = list(title_position = "left"),
                 heatmap_width = unit(5, "cm"),
                 heatmap_height = unit(5, "cm"),
                 top_annotation = grid::textGrob("Advanced Heatmap", 
                                                 gp = grid::gpar(fontsize = 16))
)

# Add circular dendrograms to the sides
htmap_circle <- draw(htmap, annotation_legend_side = "left", annotation_legend_list = list(title = "Row Groups"))
htmap_circle <- draw(htmap_circle, annotation_legend_side = "top", annotation_legend_list = list(title = "Column Groups"), row_title = NULL)
htmap_circle <- draw(htmap_circle, circular = TRUE, circular_sector = c(0, 90), track_margin = c(0.1, 0.1), circular_track_height = unit(0.5, "cm"), track_padding = unit(0.2, "cm"))

# Save heatmap to file
pdf("advanced_heatmap.pdf", width = 8, height = 8)
grid::grid.newpage()
grid::grid.draw(htmap_circle)
dev.off()

data()
heatmap(myphedata, Rowv = NA, Colv = NA)

markers <- gassocplot::plot_regional_gene_assoc(marker.plot = myphedata$Trait, recombination.plot = myphedata$P)
head(markers)

access <- ieugwasr::variants_to_rsid("rs1045463")
access <- ieugwasr::phewas(variants = "rs1045463", pval = 1e-05, batch = c(), access_token = access)
access <- ieugwasr::associations(variants = "rs1045463", id, proxies = 1, r2 = 0.8, align_alleles= 1, palindromes = 1)
markers <- gassocplot::g_legend(gplot = myphedata$Trait)

library(ggplot2)
library(tidyverse)
library(dplyr)

myphedata

hist(myphedata$P)
hist(myphedata$P, breaks = 100)

install.packages("ggplot")

myphedata %>% ggplot2::aes(myphedata$P) +
              geom_histogram()


# Convert data to a pivot table
myphedata_pivot <- myphedata %>%
  group_by(Trait, P) 

# Create pivot chart table using ggplot2
ggplot(myphedata_pivot, aes(x = Trait, y = P, fill = Trait)) +
  geom_tile() +
  scale_fill_gradient(low = "white", high = "blue") +
  labs(title = "Pivot Chart Table of MPG Means by Cylinders and Gears", x = "Cylinders", y = "Gears", fill = "MPG Mean")


# Create histogram using ggplot2
ggplot(myphedata, aes(P)) +
  geom_histogram(fill = "blue", color = "black") +
  labs(title = "", x = "", y = "")

plot(myphedata$Trait, myphedata$P, main = "Phenotypes meanigful expressions", xlab = "Traits", ylab = "Pvalues")

#transform pvalues 
print(myphedata$P)
adjusted_p_values <- p.adjust(myphedata$P, method = "BH")
log10_p_values <- -log10(adjusted_p_values)
print(cbind(myphedata$P, adjusted_p_values, log10_p_values))

#to make plot I have created my data frame 
#data loaded already myphedata
mydf <- myphedata[, c("Trait", "P", "Beta")]
head(mydf)
mydf$P <- as.factor(mydf$P)
head(mydf)

#try to create barplot with P values on the y-axis
ggplot(mydf, aes(x = reorder(Trait, log10_p_values), y = log10_p_values)) +
  geom_bar(stat = "identity", fill = "steelblue") +
  coord_flip() +
  labs(x = "Traits", y = "-log10 P value") +
  scale_y_continuous(trans = "log10", breaks = c(3, 5, 10, 20, 50, 100))
#Rplot5 is the latest 
#now here I have specific variant and nearby gene TMEM60 from this variant , I did phewas analysis, so which traits (phenotypes?) associated with this variant or which traits are colocate on this variant 
#gassocplotwillbethe IEUphewas plot -> it shows regional association plots for genetic epigenetic data
#assoc_plot - plots a regional association plot or fine-mapping probability plot for a single trait within a genomic region based on GRCh37 (hg19) or GRCh38 (hg38) coordinates.
#stack_assoc_plot - plots a stacked regional association plot for multiple traits within a genomic region based on GRCh37 (hg19) or GRCh38 (hg38) coordinates.


### assoc_plot
markers <- gassocplot2::
corr <- gassocplot2::test_corr # this is correlation not correlation squared and has to be ordered in the same way as the markers data frame
plot <- assoc_plot(markers, corr)
assoc_plot_save(plot, "assoc_plot_test.png")
plot <- assoc_plot(markers, corr, label = "rs1045463") # add additional variant label
assoc_plot_save(plot, "assoc_plot_test_add_label.png")
show <- gassocplot2::genes_b38
head(show)

### stack_assoc_plot
markers <- gassocplot2::stack_assoc_plot(myphedata)
head(markers)
z <- gassocplot2::test_stack_assoc_plot_associations
head(z)
corr <- gassocplot2::test_corr # this is correlation not correlation squared and has to be ordered in the same way as the markers data frame
plot <- stack_assoc_plot(markers, z, corr, traits = c("ENSG00000127947", "Hip circumference"))
stack_assoc_plot_save(plot, "stack_assoc_plot_test.png", 2)

