#a
x<-3
p<-0.20
paste("Hasil: ", dgeom(x-1,p))

#b
random<-10000
mean(rgeom(random,p)==3)

#c

#d
hist(rgeom(random, p))

#e
rataan=1/p
paste("Nilai Rataan(µ): ", rataan)
varian=(1-p)/p^2
paste("Nilai Varian(s²): ", varian)