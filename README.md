# Mega Millions Data Analysis Project

<img width = 500, src = "https://github.com/r-kish/Mega-Millions-Analysis/blob/main/images/Mega_Millions_Lottery_logo.svg.png">

Mega Millions is a national lottery game that is played twice a week, giving players the chance to win potentially millions of dollars. The object of the game is to pull 5 numbers from a pool of 75 available numbers, and also pull one Megaball number from a pool of 15 numbers. It costs $1 to play just the 5 numbers, and $2 to play with the Megaball multiplier. The goal of this study is to analyze data publicly accessible through the [Mega Millions website](https://www.megamillions.com/Winning-Numbers/Previous-Drawings.aspx&ved=2ahUKEwiE96q3sNaFAxW738kDHdFQB7EQ0gIoAHoECCsQAQ&usg=AOvVaw1ONlc9nQLr9n5L-x7w_llT), and compare it with theoretical data calculated based on the conditions of the game. Additionally, some questions are answered regarding ticket revenue vs. payout, as well as lottery jackpot vs. ticket sales.

The data selected includes 96 draws from anonymous participants of Mega Millions from 2010.

### Table of Contents:
- Hypothesis
- Probability and Statistics of Specific Draws
- Analysis of Payout and Sales Numbers

## Hypothesis
Given the nature of the lottery, it was hypothesized that the larger the jackpot amount, the greater the ticket sales would be. Additionally, it was hypothesized that there would be a substantial loss in the lottery's net earning when the jackpot is won; however, the revenue should overall be greater than the prize money given away. Lastly, it is hypothesized that there is a certain amount of money where tickets will substantially increase in sales numbers.

## Probability and Statistics of Specific Draws
There are twelve possible draws when participating in the Mega Millions lottery. There are 5 numbers that can be chosen, alongside the Megaball multiplier. 
- Throughout this study, these draws are labeled [Prefix]xy (x = amount of numbers drawn; y = Megaball drawn).
- Prefixes include P = probability; PW = probability of winning; M = mean; SD = standard deviation; CV = coefficient of variation.

The following chart has the list of all possible draws, and their theoretical probabilities:

![TheoreticalProb](https://github.com/r-kish/Mega-Millions-Analysis/blob/main/images/TheoreticalProb.png)

Next I focus on three draws (PW01, PW11, & PW21), and their probability distributions. Notice how probabailities decrease with each better draw. After these distributions are the calculated mean, standard deviation, and coefficient of variation, as well as the calculated probability using Mega Millions data for each draw.

### Draw 1: Probability of Winning Megaball only
This graph shows the probability distribution of winning only the Megaball (PW01). The theoretical probability of PW01 is 0.047619.

![Hist01](https://github.com/r-kish/Mega-Millions-Analysis/blob/main/images/HistPW01.png)

### Draw 2: Probability of Winning 1 number and Megaball
This graph shows the proabability distribution of winning 1 number and the Megaball (PW11). The theoretical probability of PW11 is 0.017857.

![Hist11](https://github.com/r-kish/Mega-Millions-Analysis/blob/main/images/HistPW11.png)

### Draw 3: Probability of Winning 2 numbers and Megaball
This graph shows the proabability distribution of winning 2 numbers and the Megaball (PW21). The theoretical probability of PW21 is 0.002114.

![Hist21](https://github.com/r-kish/Mega-Millions-Analysis/blob/main/images/HistPW21.png)

### Mean of the Draws
![mean](https://github.com/r-kish/Mega-Millions-Analysis/blob/main/images/Mean.png)

### Standard deviation of the draws
![SD](https://github.com/r-kish/Mega-Millions-Analysis/blob/main/images/SD.png)

### Coefficient of variation of the draws
![CV](https://github.com/r-kish/Mega-Millions-Analysis/blob/main/images/CV.png)

### Calculated probabilities of the draws 
Using the data available from Mega Millions for the year of 2010, these were the calculated probabilities of the three draws focused on in this section of the study. Notice the difference between these probabilities and the theoretical probabilities from earlier. In all cases, the actual probability for each draw was higher than the theoretical probability (with PW01, and PW11 being much higher). The standard deviation was much greater for these two draws which could potentially contribute to the drastic difference between theoretical and calculated probabilities Additionally, had we used a greater sample than 96 participants, the calculated probabilities may have been closer to the theoretical probabilities.

![CalcProbs](https://github.com/r-kish/Mega-Millions-Analysis/blob/main/images/CalcProbs.png)

## Linear Regression Analysis of Payout and Sales Numbers
In this section, I will be using linear regression analysis to study the relationships between lottery payout/jackpot amounts and ticket sales numbers. Additionally I will be answering the following questions:
- Is the Megaball Jackpot Multiplier profitable, or just a gimmick?
- What is the effect of the jackpot amount on total ticket sales?

### Profitability of the Megaball Multiplier (Lottery Payout vs. Ticket Revenue)
Below is the distribution of the Total Lottery Payout vs. the Total Ticket Revenue. To measure the profitability of the Megaball multiplier, the payout vs. ticket revenue will be analyzed using both regular payout and Megaball payout data, and again using only regular payout data (excludes Megaball payout data).
- Green linear regression line is inclusive of the Megaball tickets + payouts
- Red linear regression line is the hypothetically scenario where there is no Megaball ticket option + Megaball payout
  
![PayoutVRevenue](https://github.com/r-kish/Mega-Millions-Analysis/blob/main/images/PayoutVsRevenue.png)

It is evident that the presence of the Megaball multiplier as an option that costs $2 rather than the base $1 game, is highly profitable as opposed to if the Mega Millions were to only offer $1 tickets without the Megaball multiplier. The lottery would be making a lot less on ticket revenue had they left out the Megaball multiplier.

### The Effect of the Jackpot Amount on Ticket Sales (Jackpot Amount vs. Ticket Sales)
Below is the distribution of the various Jackpot Amounts vs. corresponding Ticket Sales. The intersection of both linear regression lines is at the point where the jackpot = $150 million. This amount will be the point used to analyze how ticket sales change based on jackpot amount.
- Green linear regression line is when the jackpot was >$150 million
- Red linear regression line is when the jackpost was <$150 million

![JackpotVTickets](https://github.com/r-kish/Mega-Millions-Analysis/blob/main/images/JackpotVsTickets.png)

The jackpot amount has a clear effect on the amount of ticket sales made during one round of the Mega Millions lottery. In fact, as the jackpot increases, the rate of ticket sales increases (see green regression line after $150 million jackpot).

This analysis can be further applied to multiple years of data in order to support a predictive model. Such a predictive model could use upcoming jackpot amounts to predict the amount of ticket sales. The more data sampled, the more accurate the predictive model would become.
