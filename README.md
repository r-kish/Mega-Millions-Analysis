# Mega Millions Data Analysis Project

<img width = 500, src = "https://github.com/r-kish/Mega-Millions-Analysis/blob/main/images/Mega_Millions_Lottery_logo.svg.png">

Mega Millions is a national lottery game that is played twice a week, giving players the chance to win potentially millions of dollars. The object of the game is to pull 5 numbers from a pool of 75 available numbers, and also pull one Megaball number from a pool of 15 numbers. It costs $1 to play just the 5 numbers, and $2 to play with the Megaball multiplier. The goal of this study is to analyze data publicly accessible through the [Mega Millions website](https://www.megamillions.com/Winning-Numbers/Previous-Drawings.aspx&ved=2ahUKEwiE96q3sNaFAxW738kDHdFQB7EQ0gIoAHoECCsQAQ&usg=AOvVaw1ONlc9nQLr9n5L-x7w_llT), and compare it with theoretical data calculated based on the conditions of the game. Additionally, some questions are answered regarding ticket revenue vs. payout, as well as lottery jackpot vs. ticket sales.

### Table of Contents:
- Hypothesis
- Probability and Statistics of Specific Draws
- Linear Regression Analysis of...

## Hypothesis
Given the nature of the lottery, it was hypothesized that the larger the jackpot amount, the greater the ticket sales would be. Additionally, it was hypothesized that there would be a substantial loss in the lottery's net earning when the jackpot is won; however, the revenue should overall be greater than the prize money given away. Lastly, it is hypothesized that there is a certain amount of money where tickets will substantially increase in sales numbers.

## Probability and Statistics of Specific Draws
There are twelve possible draws when participating in the Mega Millions lottery. There are 5 numbers that can be chosen, alongside the Megaball multiplier. 
- Throughout this study, these draws are labeled [Prefix]xy (x = amount of numbers drawn; y = Megaball drawn).
- Prefixes include P = probability; PW = probability of winning; M = mean; SD = standard deviation; CV = coefficient of variation.

The following chart has the list of all possible draws, and their theoretical probabilities:

![TheoreticalProb](https://github.com/r-kish/Mega-Millions-Analysis/blob/main/images/TheoreticalProb.png)

Next are three draws (PW01, PW11, & PW21), and their probability distributions. Notice how probabailities decrease with each better draw. After these distributions are the calculated mean, standard deviation, and coefficient of variation, as well as the calculated probability using Mega Millions data for each draw.

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

### Standard Deviation of the Draws
![SD](https://github.com/r-kish/Mega-Millions-Analysis/blob/main/images/SD.png)

### Coefficient of Variation of the Draws
![CV](https://github.com/r-kish/Mega-Millions-Analysis/blob/main/images/CV.png)

### Calculated Probabilities of the Draws 
Using the data available from Mega Millions for the year of 2010, these were the calculated probabilities of the three draws focused on in this section of the study. Notice the difference between these probabilities and the theoretical probabilities from earlier. In all cases, the actual probability for each draw was higher than the theoretical probability (with PW01, and PW11 being much higher). The standard deviation was much greater for these two draws which could potentially contribute to the drastic difference between theoretical and calculated probabilities.

![CalcProbs](https://github.com/r-kish/Mega-Millions-Analysis/blob/main/images/CalcProbs.png)

## Linear Regression Analysis of ...

### Lottery Payout vs. Ticket Revenue

### Linear Regression Analysis of Jackpot Amount vs. Tickets
