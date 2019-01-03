# Rail fare increases: Charts explain passengers' frustration

In January 2019 as rail fares increased we [published](https://www.bbc.co.uk/news/uk-england-46606525) an analysis of official data which showed that rail users were paying more for worsening delays, shortages of staff and, in some areas, an ageing fleet of carriages.

The analysis included scripts in both R (analysis, visualisation) and Python (scraping).

This is the fifth story the data unit has done on rail fare rises. In August 2018 we reported [Commuters 'pay fifth of salary' on season ticket](https://github.com/BBC-Data-Unit/rail-fares-salary), and 12 months before that we reported [Commuters to pay £100 more in 2018](https://github.com/BBC-Data-Unit/rail-season-ticket-rises-2018). In January 2017 we published [Rail fares: Who are the season ticket winners and losers?](https://github.com/BBC-Data-Unit/rail-season-ticket-rises) and in September 2016 we published [Rail season tickets cost 10% of net pay](https://github.com/BBC-Data-Unit/rail-season-tickets).

## Get the data

*The tweets data is not included here because it is too large for GitHub. However, the filtered file of tweets from November 20 onwards, is.*

* ORR: [Delays by cause and operator, 2008 to present (XLS)](http://orr.gov.uk/__data/assets/excel_doc/0006/25179/delays-by-cause-by-toc.xlsx)
* CSV: [Delay minute totals by year](https://github.com/BBC-Data-Unit/rail-fare-increases-2019/blob/master/delayminsyrs.csv)
* CSV: [Breakdown of minutes by type and operator, 2011 vs 2018](https://github.com/BBC-Data-Unit/rail-fare-increases-2019/blob/master/typebreakdown.csv)
* XLS: [Tweets mentioning sorry or apologies or apologise by operator](https://github.com/BBC-Data-Unit/rail-fare-increases-2019/blob/master/sorrybyaccount.xlsx)
* XLS: [Tweets mentioning compensation or delay repay by operator](https://github.com/BBC-Data-Unit/rail-fare-increases-2019/blob/master/compensationbyaccount.xlsx)

## Quotes and interviews

* Stewart Frank, commuter
* James Vasey, Bradford Rail Users Group
* Spokesperson, The Office of Rail and Road (ORR) 
* Darren Shirley, Campaign for Better Transport (CBT)
* Paul Plummer, chief executive, the Rail Delivery Group

## Visualisation

* Tree map: Rail delays by cause and responsibility 
* Grouped bar chart: Train delays due to staff shortages, 2017 vs 2018
* Bar chart: Percentage of tweets saying 'sorry', 'apologies' or 'apologise' between November 20 and December 19 by train operator
* Column chart: Compensation claims made by Northern Rail passengers during 2018, by period
* Line chart: Age of rolling stock by operator, 2008-2018
* Table: Rise in monthly rail season ticket fares, by route

## Scripts and code

* The notebook [traindelays](https://github.com/BBC-Data-Unit/rail-fare-increases-2019/blob/master/traindelays.Rmd) details the process of analysing ORR data on train delays.
* The R notebook [7periodcomparison](https://github.com/BBC-Data-Unit/rail-fare-increases-2019/blob/master/7periodcomparison.Rmd) takes the periodic data produced by the ORR and produces totals for 7 periods, allowing for a comparison between the delays to date, and those for the same 7-period dates in previous years.
* [Python script to scrape Twitter accounts](https://github.com/BBC-Data-Unit/rail-fare-increases-2019/blob/master/traintweetscraper.py)
* The R markdown file [traintweetsrmdonly](https://github.com/BBC-Data-Unit/rail-fare-increases-2019/blob/master/traintweetsrmdonly.Rmd) details the process of analysing tweets by train company accounts. This is not saved as a notebook because the resulting HTML file is over 40MB!


## Related repos

* You can [see all fares-related stories under the 'fares' tag](https://github.com/search?q=topic%3Afares+org%3ABBC-Data-Unit&type=Repositories)
