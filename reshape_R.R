
library(tidyverse)
dfile <- data.frame(
                id = c(1,2,3,4),
                time = c(1,3,2,4),
                x1 = c(5,6,7,8),
                x2 = c(4,5,2,3))
dfile

names(dfile)

# reshape data to long data frame
longfile <- dfile %>% 
  gather(key = 'variable', value = 'value',x1:x2)
longfile


# reshape data to wide data frame
widefile <- longfile %>% 
  spread(key = 'variable', value = 'value')
widefile

### matrices

mat <- rbind(c(1,2),
             c(3,4))
mat2 <- cbind(c(4,5),
              c(7,8))
class(mat2)
matx <- rbind(c(mat),
              c(mat2))
matx
class(matx)
matxc <- cbind(c(mat),
               c(mat2))
matxc
matx
rownames(matx) <- c(c("row1"),c("row2"))
colnames(matx) <- c(c("col1"),c("col2"),c("col3"),c("col4"))
matx
matx[,1]
matx[,1:3]
matx[1,2]




# list --------------------------------------------------------------------
Nile
hist(Nile)
hn <- hist(Nile)
hn
class(hn)
typeof(hn)
str(hn)

# loop --------------------------------------------------------------------
# for loop

x <- c(1,2,3,4)

for(i in x){
  if(i<=5){
    a <- get(i)
    print(a)
  }else{print(i)}
}

i <- 1
while(i<=4){
  i <- i+4
  print(i)
}



library(readxl)
dfl <- url.show("ftp://ftp.emea.imshealth.com/SALES_PER_REP_GIT_LINE%20OCT2020.xlsb")
df1
download.file("ftp://ftp.emea.imshealth.com/SALES_PER_REP_KIDS_CARE%20OCT2020.xlsb")
