# stáhni seznam datasetů Eurostatu
if (!file.exists("data")) {dir.create("data")}
url  <- "http://epp.eurostat.ec.europa.eu/NavTree_prod/everybody/BulkDownloadListing?file=table_of_contents.xml"
download.file(url, "data/table-of-content.xml")

library(XML)
toc  <- xmlTreeParse("data/table-of-content.xml", useInternal=TRUE)
rootNode  <- xmlRoot(toc)
xmlSApply(rootNode,xmlValue)

# data  <- read.table("data//lfst_r_lfu3rt.tsv", header=T, sep="\t", na.strings=":")

data  <- read.csv("data/lfst_r_lfu3rt/lfst_r_lfu3rt_1_Data.csv", na.strings=":")

data$GEO

