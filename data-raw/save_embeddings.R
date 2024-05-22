temp <- read.csv('dembeddings.csv', row.names=1)

for (k in 1:nrow(dembeddings)) {
  temp[k,k] = 0
}

dembed <- as.matrix(temp) 
save(dembed, file="data/dembeddings.rda", compress="xz")
