mdate <- as.character(ds$mdate)
head(mdate)
ds$year  <- as.numeric(substr(mdate, 1,4))  # 연도
ds$month <- as.numeric(substr(mdate, 5,6))  # 월
ds$hour  <- as.numeric(substr(mdate, 9,10)) # 시간
ds$locname <- NA                            # locname 열을 추가
ds$locname[ds$loc==111123] <- '서울'        # 도시
ds$locname[ds$loc==336111] <- '목포'        # 도시  
ds$locname[ds$loc==632132] <- '강릉'        # 도시

head(ds)