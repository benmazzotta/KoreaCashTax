# Ben Mazzotta
# Korea Tax Receipts Numbers
# 4/17/2012


# Data from Korea National Tax Service
# 0. Preliminaries


# 1. Data entry

years <- c(2006:2008)

transactions <- c(737.748, 1489.273, 2889.925)
value <- c(30.627, 50.256, 61.555)

names(transactions) <- c(2006:2008)
names(value) <- c(2006:2008)

taxreceipts <- data.frame(years, transactions, value)

taxreceipts
str(taxreceipts)

# attach(taxreceipts)
png(file='koreataxreceipts.png', width=2400, height=1600, pointsize=48)
par(mfrow=c(1,2), lwd=3)
plot(taxreceipts$years, taxreceipts$transactions, new=TRUE, type="b",  
     main="Korea Cash Receipts", xlab="Transactions", ylab="billions", xaxt="n")
axis(1, at=c(2006:2008), labels=c(2006:2008))
mtext(3, text="Source: Korea National Tax Service")

plot(taxreceipts$value, type="b", xlab="Value", ylab="won, trillions", xaxt='n')
title(main="Value of Korean Cash Receipts")
axis(1, at=c(1:3), labels=c(2006:2008))
mtext(3, text="Source: Korea National Tax Service")
dev.off()

par(mfrow=c(1,1), lwd=1)




save.image("Korea cash receipts.Rdata")
