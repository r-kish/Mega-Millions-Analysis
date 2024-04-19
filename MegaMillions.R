### Mega Millions! Data Analysis
### Richard Kish
### Data from 2010

setwd("...") # insert your pathway here
probdata = read.csv("probabilities.csv",header = TRUE)
lotinfo = read.csv("lottery.CSV", header = TRUE)
prizemon = read.csv("prizes.CSV", header = T)
prizemon = data.matrix(prizemon, rownames.force = NA)
mlotinfo = data.matrix(lotinfo, rownames.force = NA)

#Extract winner amounts for the following Mega Millions draws
PW01=lotinfo[ , 13] #Megaball + no other numbers
PW11=lotinfo [ , 12] #Megaball + 1 number
PW21=lotinfo [ , 10] #Megaball + 2 numbers
PW = lotinfo[ , 14] #All draws

#Calculate probability of winning a specific specific draw
PW01_W = PW01/PW
PW11_W = PW11/PW
PW21_W = PW21/PW

#Histogram plots of results
pdf (hist(PW01_W, main ="Histogram of Winning Megaball Only" , font=2,font.lab=2,xlab="Probability of Winning Megaball Only",ylab="Frequency"))

pdf (hist(PW11_W, main ="Histogram of Winning Megaball and 1" , font=2,font.lab=2,xlab="Probability of Winning Megaball and 1",ylab="Frequency"))

pdf (hist(PW21_W, main ="Histogram of Winning Megaball and 2" , font=2,font.lab=2,xlab="Probability of Winning Megaball and 2",ylab="Frequency"))

#Standard Deviation of each draw
SD01 = sd(PW01_W)
SD11 = sd(PW11_W)
SD21 = sd(PW21_W)

#Mean of each draw
M01 = mean(PW01_W)
M11 = mean(PW11_W)
M21 = mean(PW21_W)

#Coefficient of Variance of each draw
CV01 = SD01/M01
CV11 = SD11/M11
CV21 = SD21/M21

#Extract all theoretical probabilities
TheoreticalProb = probdata/probdata [1,13]

#Theoretical probabilities of each draw
calcprob01 = mean (PW01_W/0.932)
calcprob11 = mean (PW11_W/0.932)
calcprob21 = mean (PW21_W/0.932)

#Total revenue from ticket sales
Totalnumtickets =  lotinfo [ ,14] / probdata[1,13]
megatickets = lotinfo [,23] / probdata[1,13]
regticketscost = Totalnumtickets - megatickets
megaticketscost = megatickets * 2  
ticketrevenue = megaticketscost + regticketscost

#Calculating total payout amount
#Calculating payout for non megapiler
regpayout = matrix(1:length(mlotinfo[,6:13]), nrow = nrow(mlotinfo[,6:13]), ncol = ncol(mlotinfo[,6:13]))
matrixLength = length(mlotinfo[,6:13])
numRows = nrow(mlotinfo[,6:13])
numCols = ncol(mlotinfo[,6:13])
regpayout = matrix(1:matrixLength, nrow = numRows, ncol = numCols)
mega = matrix(1:matrixLength, nrow = numRows, ncol = numCols)

#Populate regular payout matrix
for (i in 1:numRows){
  for (j in 1:(numCols)){
    regpayout[i,j] = as.numeric(mlotinfo[i,j+5]) * as.numeric(prizemon[j])
  }
}

#Calculating payout for jackpot winners
a = mlotinfo[,4] * mlotinfo[,5]

#Calculating payout for megapiler winners
for (i in 1:numRows){
  for (j in 1:(numCols)){
    mega[i,j] = as.numeric(mlotinfo[i,j+14]) * as.numeric(prizemon[j])
  }
}
megapayout= mega[,]* mlotinfo[,2]

#Combining all payouts into one data set
payout= cbind(a,regpayout,megapayout)

#Adding all components of a drawings payouts
totalpayout = vector("numeric", numRows)
for (i in 1:numRows){
  totalRow = 0
  for (j in 1:ncol(payout)){
    totalRow = totalRow + payout[i,j]
  }
  totalpayout[i] = totalRow
}

#Calculating the actual number of jackpot winners and the theoretical value
Jackpotwinner = sum(lotinfo$W51)
print(Jackpotwinner)
averagenumtickets=mean(Totalnumtickets)
timebetweenjackpots = 1/(averagenumtickets * probdata$P51) #Returns ~infinity

#Getting the ratio of total payout to ticket sales and plotting the ratio
Ratio = (totalpayout/ticketrevenue)*100
totalpayout = totalpayout/1000000
totalpayout = totalpayout/1000000
ticketrevenue = ticketrevenue/1000000
plot(totalpayout,ticketrevenue, font = 5, ylab = "Ticket Revenue [in Millions of $]",xlab = "Total Payout [in Millions of $]", main = "Total Payout vs. Ticket Revenue")

#Setup for linear regression of jackpot winnings
jackpot = lotinfo$Estimated.Jackpot/1000000
totaltickets = Totalnumtickets/1000000
TicketsVjackpot = cbind(jackpot, totaltickets)

#Linear regression report: will use values for the linear regression lines
lm(totaltickets ~ jackpot, subset = jackpot<150) 
lm(totaltickets ~ jackpot, subset = jackpot>150)

#Plot Jackpot Amount vs. Tickets Sold w/ two linear reg lines based on jackpot
plot(TicketsVjackpot,font = 5, ylab = "Number of Tickets Sold [Million]",xlab = "Jackpot Amount [Million $]",main = "Jackpot Amount VS. Number of Tickets Sold")
abline(-7.41676, 0.09966 , col = "green") #Jackpot is over $150 million
abline(2.83156 ,0.03058,col="red") #Jackpot is under $150 million
