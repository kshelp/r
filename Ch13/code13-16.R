tmp.yml <- aggregate(ds[,7], by=list(year=ds$year,month=ds$month,
                                     loc=ds$locname), FUN='mean')

# 가장 미세먼지가 많았던 달
idx <- which(tmp.yml$x==max(tmp.yml$x))
tmp.yml[idx,]

# 가장 미세먼지가 적었던 달
idx <- which(tmp.yml$x==min(tmp.yml$x))
tmp.yml[idx,]