h.list <- c('balling', 'tennis', 'ski')        # 취미를 벡터에 저장
person <- list(name='Tom', age=25, student=TRUE, hobby=h.list)  # 리스트 생성
person                  # 리스트에 저장된 내용을 모두 출력
person[[1]]             # 리스트의 첫 번째 값을 출력
person$name             # 리스트에서 값의 이름이 name인 값을 출력  
person[[4]]             # 리스트의 네 번째 값을 출력