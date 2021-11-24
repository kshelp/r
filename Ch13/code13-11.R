boxplot(PM10~locname, data=ds,
        main='미세먼지 농도 분포')

boxplot(PM10~locname, data=ds,
        main='미세먼지 농도 분포',
        ylim=c(1,100))