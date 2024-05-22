dembeddings <- read.csv('dembeddings.csv', row.names=1)

for (k in 1:nrow(dembeddings)) {
  dembeddings[k,k] = 0
}

save(dembeddings, compression="gzip", file="../data/dembeddings.rda")
dembeddings