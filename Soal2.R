#a
n<-20
p<-0.2
x<-4
paste("Hasil: ", dbinom(x, n, p))

#b
x <- 0:20
plot(x,dbinom(x,n,p), type='h', main='Distribusi Binomial', ylab='Probabilitas')

#c
rataan=n*p
varian= n*p*(1-p)
paste("Nilai Rataan(µ): ", rataan)
paste("Nilai Varian(s²): ", varian)