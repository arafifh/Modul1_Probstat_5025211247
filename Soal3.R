#a
x<-6
lambda<-4.5
paste("Hasil: ", dpois(x,lambda))

#b
set.seed(0)
n<-365
hist(rpois(n,lambda),main="Histogram Distribusi Poisson",labels=T)

#c

#d
rataan=varian=lambda
paste("Nilai Rataan(µ): ", rataan)
paste("Nilai Varian (s²): ", varian)