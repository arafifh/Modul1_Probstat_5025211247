#--1--

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

#--2--

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

#--3--

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

#--4--

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

#--5--

#a
n<-10
lambda<-3
paste("Hasil: ", rexp(n, rate=lambda))

#b
hist(rexp(10, rate = lambda), main = "Histogram dari Distribusi Exponensial untuk 10 bilangan random")
hist(rexp(100, rate = lambda), main = "Histogram dari Distribusi Exponensial untuk 100 bilangan random")
hist(rexp(1000, rate = lambda), main = "Histogram dari Distribusi Exponensial untuk 1000 bilangan random")
hist(rexp(10000, rate = lambda), main = "Histogram dari Distribusi Exponensial untuk 10000 bilangan random")

#c
n_c<-100
set.seed(1)
rataan = mean(rexp(n_c, rate = lambda))
varian = (sd(rexp(n_c, rate = lambda))) ^ 2
paste("Nilai Rataan(µ): ", rataan)
paste("Nilai Varian(s²): ", varian)

#--6--

#a
#bingung

#b
hist(z_s, breaks = 50, main="5025211247_Rafif_Probstat_A_DNhistogram")

#c
varian=sd*sd
paste("Nilai Varian: ", varian)