purchase <- 49000         # 이 값을 변경하여 결과 비교

if (purchase >= 50000){
  price <- purchase * 0.9
} else {
  price <- purchase * 0.95
}

print(price)