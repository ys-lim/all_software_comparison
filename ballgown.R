if (!requireNamespace("BiocManager", quietly=TRUE))
  install.packages("BiocManager")
BiocManager::install("ballgown")
library(ballgown)

data_directory <- "./output"

bg <- ballgown(dataDir=data_directory, samples=c("./output/270_cko/",
                                                "./output/277_cko/",
                                                "./output/280_cko/",
                                                "./output/715_ctr/",
                                                "./output/723_ctr/",
                                                "./output/854_ctr/",
                                                "./output/1142_ctr/",
                                                "./output/1174_cko/"), meas='all')
save(bg, file='bg.rda')

load("./bg.rda")
sampleNames(bg)
pheno <- read.csv("phenoData.txt",header = TRUE)
pData(bg) <- pheno
stat_results <- stattest(bg, feature='transcript', meas='cov', covariate='condition')

write.table(file = "ballgown_output_cnp_spc_p21.csv", stat_results, sep=",", quote=FALSE)
