j<-data.frame(Size=seq(0,1000,100),NumberPrimes=NA)
for (x in seq(0,1000,100)){
  a<-sieve(x)
  j[which(x == seq(0,1000,100)),"NumberPrimes"]<-length(a)
}

qplot(j$Size,j$NumberPrimes)
