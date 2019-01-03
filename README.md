# Rail fare increases: Charts explain passengers' frustration

In January 2019 we [reported](https://www.bbc.co.uk/news/uk-england-46606525)

This is the fifth story the data unit has done on rail fare rises. In August 2018 we reported [Commuters 'pay fifth of salary' on season ticket](https://github.com/BBC-Data-Unit/rail-fares-salary), and 12 months before that we reported [Commuters to pay £100 more in 2018](https://github.com/BBC-Data-Unit/rail-season-ticket-rises-2018). In January 2017 we published [Rail fares: Who are the season ticket winners and losers?](https://github.com/BBC-Data-Unit/rail-season-ticket-rises) and in September 2016 we published [Rail season tickets cost 10% of net pay](https://github.com/BBC-Data-Unit/rail-season-tickets).

## Get the data

* ORR: [Delays by cause and operator, 20108to present (XLS)](http://orr.gov.uk/__data/assets/excel_doc/0006/25179/delays-by-cause-by-toc.xlsx)
* CSV: [Delay minute totals by year](delayminsyrs.csv)
* CSV: [Breakdown of minutes by type and operator, 2011 vs 2018](typebreakdown.csv)
* XLS: [Tweets mentioning sorry or apologies or apologise by operator](sorrybyaccount)
* XLS: [Tweets mentioning compensation or delay repay by operator](compensationbyaccount)

## Visualisation

*

## Scripts and code

* The notebook [traindelays]() details the process of analysing ORR data on train delays.
* The R notebook [7periodcomparison]() takes the periodic data produced by the ORR and produces totals for 7 periods, allowing for a comparison between the delays to date, and those for the same 7-period dates in previous years.
* [Python script to scrape Twitter accounts]()
* The R markdown file [traintweetsrmdonly]() details the process of analysing tweets by train company accounts. This is not saved as a notebook because the resulting HTML file is over 40MB!


## Related repos

* You can [see all fares-related stories under the 'fares' tag](https://github.com/search?q=topic%3Afares+org%3ABBC-Data-Unit&type=Repositories)
