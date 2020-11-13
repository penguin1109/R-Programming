#변수 만들기
a <- 1
b <- 3.5

#여러 값으로 구성된 변수 만들기
#c()
var1 <- c(1,2,4,6,7)  #숫자 5개로 구성된 var1 생성(출력은 당연히 x)
var2 <- c(1:5)  #1부터 5까지 연속값으로 var2 생성(||)

#seq()
var3 <- seq(1,5)   #1부터 5까지 연속값으로 var3생성
var4 <- seq(1,10,by=2)    #1부터 10까지 2간격의 연속값으로 var4 생성

#숫자변수로 연산하기
var1 + var2

#문자형 변수 만들기 (반드시 쌍따옴표 이용하기)
#문자로 된 변수 만들기
str1 <- "a"
str2 <- "book"

#연속 문자 변수 만들기
str3 <- c("a", "b", "book")

#문자 변수는 당연하겠지만 연산은 불가


#숫자 함수의 사용
x <- c(1,2,3)
mean(x)
min(x)
max(x)

#문자 함수의 사용
paste(str3, collapse = ",")   #쉼표를 구분자로 str3의 단어를 하나로 합친다.
paste(str3, collapse = " ")   #공백을 구분자로 str3의 단어를 하나로 합친다.

#함수를 이용한 새로운 변수 생성
x_mean <- mean(x)
str3_paste <- paste(str3, collapse = "*")

#패키지 (여러개의 함수, 데이터의 집합이라고 생각하면 됨)
#패키지의 실행
library(ggplot2)
#패키지 함수 사용하기
x <- c("a", "b", "c", "a")
qplot(x)   #빈도 그래프 출력


#ggplot2의 mpg 데이터로 그래프 만들기
#data에 mpg, x축에 hwy 변수를 지정하여 그래프 생성
mpg
qplot(data = mpg, x = hwy)

#qplot() parameter 바꿔보기
#x축 cty
qplot(data = mpg, x = cty)
#x축 drv, y축 hwy
qplot(data = mpg, x = drv, y = hwy)
#x축 drv, y푹 hwy, 상자 그림 형태
qplot(data = mpg, x = drv, y = hwy, geom = "boxplot")
#x축 drv, y축 hwy, 상자 그림 형태, drv 별 색깔 표현
qplot(data = mpg, x = drv, y = hwy, geom = "boxplot", colour = drv)

#함수의 기능이 궁금할 때에는 Help 함수
?qplot
