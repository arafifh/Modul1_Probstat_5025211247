#declared
x<-2
v<-10

#a
dchisq(x,v,ncp=0)

#b
hist(rchisq(100, v), main='Distribusi Chi-Square dengan 100 data random',labels=T)

#c
rataan=v
varian=2*v
paste("Nilai Rataan: ", rataan)
paste("Nilai Varian: ", varian)