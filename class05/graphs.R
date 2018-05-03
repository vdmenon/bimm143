#' ---
#' title: "Bioinformatics Class 5"
#' author: "Vaibhav Menon"
#' date: "April 19, 2018"
#' output:
#'   html_document:
#'     code_folding: hide
#' ---

#Class 5 Graphs

#boxplot
boxplot( rnorm(1000,0))

hist(rnorm(1000,0))

summary(rnorm(1000,0))

boxplot( rnorm(1000,0), horizontal = TRUE )

#Section 1
#Read first data file weight_chart.txt
baby <- read.table("bimm143_05_rstats/weight_chart.txt", header=TRUE)

#point and line plot for weight_chart.txt
plot(baby, typ="b", pch=15, cex=1.5, lwd=2, ylim=c(2,10), 
     xlab="Age (months)", ylab="Weight (kg)", main="Infant Growth across Time")

#Read second datafile feature_counts.txt (tab separated file)
feat <- read.table("bimm143_05_rstats/feature_counts.txt", header=TRUE, 
                   sep="\t")
View(feat)
#barplot of feature_counts
par(mar=c(5,11,4,2))
barplot(feat[,2], horiz=TRUE, ylab="Count", names.arg=feat[,1], main="Feature Count", las=1)

#Section 2- read male_female_counts.txt
#PartA
file <- "bimm143_05_rstats/male_female_counts.txt"
mf_counts <- read.table(file, sep="\t", header=TRUE)
View(mf <- mf_counts)
barplot(mf_counts[,2], col=c("blue2","red2"))

#Section2 PartB
#Read in up_down_expression.txt
updown <- read.table("bimm143_05_rstats/up_down_expression.txt", header=TRUE, sep="\t")
View(updown)
levels(updown$State)
palette(c("blue", "grey", "red"))
plot(updown$Condition1, updown$Condition2, col=updown$State, ylab="Condition 2", xlab="Condition 1", main="Gene changes across 2 Conditions")
#Note read.delim or read.csv are the same as read.table, but with certain arguments specified. They are like shortcuts of read.table

#Section2 PartC
map.colors2 <- function (x, low.high=range(x), palette=cm.colors(100)) {
  #Determine percent values of the 'high.low' range
  percent <- ((x-low.high[1])/(low.high[2]-low.high[1]))
  #Find corresponding index position in the color 'palette'
  #   note catch for 0 percent values to 1
  index <- round ((length(palette)-1)*percent)+1
  return (palette[index])
}