# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Fit a Nonlinear Heteroscedastic Model via Maximum Likelihood Use nlreg With (In) R Software
install.packages("nlreg")
library("nlreg")
library("boot")
nlreg = read.csv("https://raw.githubusercontent.com/timbulwidodostp/nlreg/main/nlreg/nlreg.csv",sep = ";")
# Estimation Fit a Nonlinear Heteroscedastic Model via Maximum Likelihood Use nlreg With (In) R Software
## Homoscedastic model fit
Homoscedastic <- nlreg(cal ~ b0*(1-exp(-b1*time)), start = c(b0 = 4, b1 = 0.1), data = nlreg)
summary(Homoscedastic)
## Heteroscedastic model fit 
Heteroscedastic <- nlreg(cal ~ b0*(1-exp(-b1*time)), weights = ~ ( 1+time^g )^2, start = c(b0 = 4, b1 = 0.1, g = 1), data = nlreg, hoa = TRUE)
summary(Heteroscedastic)
# Fit a Nonlinear Heteroscedastic Model via Maximum Likelihood Use nlreg With (In) R Software
# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Finished