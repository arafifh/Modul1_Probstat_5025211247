# Modul1_Probstat_5025211247

**<br>Ahmad Rafif Hikmatiar**
**<br>5025211247**

## Soal 1
Seorang penyurvei secara acak memilih orang-orang di jalan sampai dia bertemu dengan seseorang yang menghadiri acara vaksinasi sebelumnya.

a. Berapa peluang penyurvei bertemu x = 3 orang yang tidak menghadiri acara vaksinasi sebelum keberhasilan pertama ketika p = 0,20 dari populasi menghadiri acara vaksinasi ? (distribusi Geometrik)

```
x<-3
p<-0.20
paste("Hasil: ", dgeom(x-1,p))
```
Hasil: <br>
![195349671-a04d8946-3bea-451c-8ab6-b95120231cdd](https://user-images.githubusercontent.com/89500557/195350823-bc4d4809-ad4b-4d31-b69d-1c81f06c9f35.png)

b. mean Distribusi Geometrik dengan 10000 data random , prob = 0,20 dimana distribusi geometrik acak tersebut X = 3 ( distribusi geometrik acak () == 3 

```
random<-10000
mean(rgeom(random,p)==3)
```
Hasil 2 kali run: <br>
![195349696-42e321e7-b8e1-4d63-9b56-491d979e2292](https://user-images.githubusercontent.com/89500557/195351278-d70019c0-0180-4e9e-a1b5-6623879d481d.png)


c. Bandingkan Hasil poin a dan b , apa kesimpulan yang bisa didapatkan?
```
Kita dapat menyimpulkan dari hasil c, bahwa jika distribusi geometrik dari poin b acak, maka nilainya akan berubah-ubah.
Berbeda dengan A yang yang nilainya tetap
```
d. Histogram Distribusi Geometrik , Peluang X = 3 gagal Sebelum Sukses Pertama
```
hist(rgeom(random, p))
```
Hasil: <br>
![195349718-06ca3c97-f96f-4660-aab1-4b981cb30e30](https://user-images.githubusercontent.com/89500557/195351766-03e06901-7dcc-4095-beb2-cc41141eb66f.png)

e. Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Geometrik.
```
rataan=1/p
paste("Nilai Rataan(µ): ", rataan)
varian=(1-p)/p^2
paste("Nilai Varian(s²): ", varian)
```
Hasil: <br>
![195349726-72ca83ea-2c8a-4e56-8085-6c2aee3767b1](https://user-images.githubusercontent.com/89500557/195352010-35cbd7a8-bcda-4658-9cbe-b1d58fd4f0b8.png)


## Soal 2
Terdapat 20 pasien menderita Covid19 dengan peluang sembuh sebesar 0.2. Tentukan :

a. Peluang terdapat 4 pasien yang sembuh.
```
n<-20
p<-0.2
x<-4
paste("Hasil: ", dbinom(x, n, p))
```
Hasil: <br>
![195349756-89208c11-b478-4f54-9c77-91252f5403bc](https://user-images.githubusercontent.com/89500557/195352120-e1a0277d-22bd-4a34-a915-e0ca6c53c83e.png)

b. Gambarkan grafik histogram berdasarkan kasus tersebut.
```
x <- 0:20
plot(x,dbinom(x,n,p), type='h', main='Distribusi Binomial', ylab='Probabilitas')
```
Hasil: <br>
![195349764-1adaa65c-1203-4fc1-9b65-98238a48d1d4](https://user-images.githubusercontent.com/89500557/195352207-6afb3065-ba9b-4991-8a7e-6e13249b8be4.png)

c. Nilai Rataan (μ) dan Varian (σ²) dari DistribusiBinomial.
```
rataan=n*p
varian= n*p*(1-p)
paste("Nilai Rataan(µ): ", rataan)
paste("Nilai Varian(s²): ", varian)
```
Hasil: <br>
![195349772-830f8400-32ce-4f00-895e-31f0990728fd](https://user-images.githubusercontent.com/89500557/195352355-470e5da1-bc00-4aa2-b1f3-f10bdf2f3b86.png)


## Soal 3
Diketahui data dari sebuah tempat bersalin di rumah sakit tertentu menunjukkan rata-rata historis 4,5 bayi lahir di rumah sakit ini setiap hari. (gunakan Distribusi Poisson)

a. Berapa peluang bahwa 6 bayi akan lahir di rumah sakit ini besok?
```
x<-6
lambda<-4.5
paste("Hasil: ", dpois(x,lambda))
```
Hasil: <br>
![195349791-0dd398d3-12bd-42fa-9f6f-591b510ca9fa](https://user-images.githubusercontent.com/89500557/195352456-0c358e18-e6b8-41cd-a0fb-71a412fe1690.png)

b. simulasikan dan buatlah histogram kelahiran 6 bayi akan lahir di rumah sakit ini selamasetahun (n = 365)
```
set.seed(0)
n<-365
hist(rpois(n,lambda),main="Histogram Distribusi Poisson",labels=T)
```
Hasil: <br>
![195349811-b3369946-9122-4664-b96f-19d53e6bb8fc](https://user-images.githubusercontent.com/89500557/195352584-5fad2f54-147a-4f81-8dd4-f41d9fbdfdc5.png)

c. dan bandingkan hasil poin a dan b , Apa kesimpulan yang bisa didapatkan
```
Poin a akan mendekati poin b jika hasil dari poin a dikalikan dengan 365
```
d. Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Poisson.
```
rataan=varian=lambda
paste("Nilai Rataan(µ): ", rataan)
paste("Nilai Varian (s²): ", varian)
```
Hasil: <br>
![195349834-7db5e569-07af-4041-b063-ca28f99087ee](https://user-images.githubusercontent.com/89500557/195352734-cdb051e2-830f-452d-bb0b-b32ff7bef205.png)

## Soal 4
Diketahui nilai x = 2 dan v = 10. Tentukan:
```
#declared
x<-2
v<-10
```
a. Fungsi Probabilitas dari Distribusi Chi-Square.
```
dchisq(x,v,ncp=0)
```
Hasil: <br>
![195350327-1cc4d096-3723-411d-bc46-49944f3ee5da](https://user-images.githubusercontent.com/89500557/195352854-917629ff-454f-453c-afaf-ff54951c2e77.png)

b. Histogram dari Distribusi Chi-Square dengan 100 data random.
```
hist(rchisq(100, v), main='Distribusi Chi-Square dengan 100 data random',labels=T)
```
Hasil: <br>
![195350345-fdaf013e-2d64-47b3-8995-21d41dfbe133](https://user-images.githubusercontent.com/89500557/195353021-bafdcaac-214a-4142-a551-932780e3dbfd.png)

c. Nilai Rataan (μ) dan Varian (σ²) dari DistribusiChi-Square.
```
rataan=v
varian=2*v
paste("Nilai Rataan: ", rataan)
paste("Nilai Varian: ", varian)
```
Hasil: <br>
![195350358-21909f5d-053d-42a5-b50e-4ee992c28933](https://user-images.githubusercontent.com/89500557/195353162-aefcec1f-1b63-4094-a238-c820a46a76c4.png)

## Soal 5
Diketahui bilangan acak (random variable) berdistribusi exponential (λ = 3). Tentukan

a. Fungsi Probabilitas dari Distribusi Exponensial
```
n<-10
lambda<-3
paste("Hasil: ", rexp(n, rate=lambda))
```
Hasil: <br>
![195350378-1f9f87df-c693-41e1-aeff-5713f6d31ec0](https://user-images.githubusercontent.com/89500557/195353361-f09fa1e8-0783-4e53-be1d-f8372c9129f8.png)

b. Histogram dari Distribusi Exponensial untuk 10, 100, 1000 dan 10000 bilangan random
```
hist(rexp(10, rate = lambda), main = "Histogram dari Distribusi Exponensial untuk 10 bilangan random")
hist(rexp(100, rate = lambda), main = "Histogram dari Distribusi Exponensial untuk 100 bilangan random")
hist(rexp(1000, rate = lambda), main = "Histogram dari Distribusi Exponensial untuk 1000 bilangan random")
hist(rexp(10000, rate = lambda), main = "Histogram dari Distribusi Exponensial untuk 10000 bilangan random")
```
Hasil: <br>
![195350399-a30b57e5-6045-42e5-8efe-9c4efe1551fc](https://user-images.githubusercontent.com/89500557/195353503-1a87ae28-0576-4ae8-b725-d8d47b671695.png)
![195350407-10c4dff9-f090-430f-a96e-8e214472516a](https://user-images.githubusercontent.com/89500557/195353536-ceb305a4-a854-46de-8ddb-3a7dbde9779f.png)
![195350431-bd3dc454-20b0-4443-bdad-b5e99bafdf6e](https://user-images.githubusercontent.com/89500557/195353596-85d101d7-c108-40d0-ad9a-ae412f37cb85.png)
![195350441-7a5b375a-c455-43d8-9ce9-1e7c0885512d](https://user-images.githubusercontent.com/89500557/195353632-ddc6e2aa-1bfb-4dd4-8280-2a32c5a312a5.png)

c. Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Exponensial untuk n = 100 dan λ = 3

Petunjuk:
- Gunakan set.seed(1)
- Gunakan fungsi bawaan 

```
n_c<-100
set.seed(1)
rataan = mean(rexp(n_c, rate = lambda))
varian = (sd(rexp(n_c, rate = lambda))) ^ 2
paste("Nilai Rataan(µ): ", rataan)
paste("Nilai Varian(s²): ", varian)
```
Hasil: <br>
![195350454-c6ff9870-68aa-4f11-8178-e8c9a75dfd8e](https://user-images.githubusercontent.com/89500557/195353760-b8d01503-c12c-4a04-ba7c-0ec3d035dba6.png)

## Soal 6
Diketahui generate random nilai sebanyak 100 data, mean = 50, sd = 8. Tentukan

a. Fungsi Probabilitas dari Distribusi Normal P(X1 ≤ x ≤ X2), hitung Z-Score Nya dan plot data generate randomnya dalam bentuk grafik. Petunjuk(gunakan fungsi plot()).
<br>Keterangan :
<br>X1 = Dibawah rata-rata
<br>X2 = Diatas rata-rata
<br>Contoh data :
<br>1,2,4,2,6,3,10,11,5,3,6,8
<br>rata-rata = 5.083333
<br>X1 = 5
<br>X2 = 6

```
#bingung
```

b. Generate Histogram dari Distribusi Normal dengan breaks 50 dan format penamaan:
<br>NRP_Nama_Probstat_{Nama Kelas}_DNhistogram
<br>Contoh :
<br>312312312_Rola_Probstat_A_DNhistogram
```
hist(z_s, breaks = 50, main="5025211247_Rafif_Probstat_A_DNhistogram")
```
Hasil: <br>
![195350502-12619e92-b8ed-4353-a4f8-0f7ec42dbb35](https://user-images.githubusercontent.com/89500557/195353863-65d752d9-00a6-4a98-8d77-192a8d284855.png)

c. Nilai Varian (σ²) dari hasil generate random nilai Distribusi Normal.
```
varian=sd*sd
paste("Nilai Varian: ", varian)
```
Hasil: <br>
![195350509-717d437d-3619-4941-aa5c-eb88132f46fa](https://user-images.githubusercontent.com/89500557/195353964-32f95cf7-baf1-4a20-90cc-9e487fbeccd4.png)
