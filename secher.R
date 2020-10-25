##############
##HOMEWORK 6##
##############
#Question1
#bwt vs bpd
birthw<-read.table("secher.txt",header=T)
model_bpd<-lm(bwt~bpd, data=birthw)
sum.model_bpd<-summary(model_bpd)
R2<-sum.model_bpd$r.squared
f<-sum.model_bpd$fstatistic
p.value<-pf(f[1],f[2],f[3],lower.tail=F)
output<-sprintf("R2 = %f and p-value=%f", R2, p.value)
cat(output)
intercept<-model_bpd$coefficients[1]
slope<-model_bpd$coefficients[2]
output<-sprintf("slope=%f intercept=%f",slope, intercept)
cat(output)
png("bwt_bpd.png")
plot(bwt~bpd, data=birthw)
abline(model_bpd)
dev.off()

#bwt vs ad
model_ad<-lm(bwt~ad, data=birthw)
sum.model_ad<-summary(model_ad)
R2<-sum.model_ad$r.squared
f<-sum.model_ad$fstatistic
p.value<-pf(f[1],f[2],f[3],lower.tail=F)
output_ad<-sprintf("R2 = %f and p-value=%f", R2, p.value)
cat(output_ad)
intercept<-model_ad$coefficients[1]
slope<-model_ad$coefficients[2]
output_ad<-sprintf("slope=%f intercept=%f",slope, intercept)
cat(output_ad)
png("bwt_ad.png")
plot(bwt~ad, data=birthw)
abline(model_ad)
dev.off()

#bwt vs bpd+ad
model_bpd_ad<-lm(bwt~bpd+ad, data=birthw)
sum.model_bpd_ad<-summary(model_bpd_ad)
R2<-sum.model_bpd_ad$r.squared
f<-sum.model_bpd_ad$fstatistic
p.value<-pf(f[1],f[2],f[3],lower.tail=F)
output_bpd_ad<-sprintf("R2 = %f and p-value=%f", R2, p.value)
cat(output_bpd_ad)
intercept<-model_bpd_ad$coefficients[1]
slope<-model_bpd_ad$coefficients[2]
output_bpd_ad<-sprintf("slope=%f intercept=%f",slope, intercept)
cat(output_bpd_ad)
png("bwt_bpd_ad.png")
plot(bwt~bpd+ad, data=birthw)
abline(model_bpd_ad)
dev.off()
