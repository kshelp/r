library(svDialogs)          # 팝업을 위한 svDialogs 패키지 로드

height <- dlgInput('키(cm)를 입력하세요. ')$res  # 키 입력 팝업 및 값 저장
weight <- dlgInput('몸무게(kg)를 입력하세요. ')$res # 몸무게 입력 팝업/값 저장
height <- as.numeric(height) # 정수형으로 변환
weight <- as.numeric(weight) # 정수형으로 변환
height <- height /100        # 키 단위 변환
bmi <- weight/(height^2)     # BMI 계산

sink('bmi.txt', append = T)  # append = T : 새로운 결과를 이어붙이기 위한 설정
cat(height*100, weight, bmi)
cat('\n')                    # 줄 바꿈을 위한 입력
sink()

result <- read.table('bmi.txt', sep = " ")
result

names(result) <- c('height', 'weigth', 'bmi')
write.table(result, 'bmi_new.txt', row.names = F)