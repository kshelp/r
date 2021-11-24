tmp <- ds[order(ds$marketvalue, decreasing=T),]
tmp[1:10,c('name', 'country','category','marketvalue')]