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