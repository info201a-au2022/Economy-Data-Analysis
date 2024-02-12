# <div align="center"> Credit Score Classification </div>

#### **Affiliation:** INFO-201: Technical Foundations of Informatics - The Information School - University of Washington
#### **Authors:** Lesther Dumosmog || Amy Oguejiofor || Nuria Abas Ibrahim
####  **Emails**   ldumos@uw.edu    || amyo6@uw.edu   || nuriai2@uw.edu
#### **Date:**  Autumn 2022
#### **Project:** credit_class

- - -
<br>

## **Abstract**
<p> The agenda of the project is to understand the differentiating social economic status play a role in the cultural norms in financial commitments. In order to approach this question, we will group the data by annual income showcaseing common characteristics of each catagory of salary. The importance of this data is to outline the different resources used by groups corresponding to their annual income. </p>
<br>

## Project Website
Click on the link to open to project website hosted by shinyapps.io:
- https://lestherdumos.shinyapps.io/shiny_web_app/

## Data Wrangling
The data wrangling process involved extracting, transforming, and preparing diverse datasets for analysis within the Shiny web application. Key steps included extracting occupation data, transforming house price and income datasets, joining relevant data, calculating percentage changes, and facilitating mapping of poverty rates. These efforts aimed to streamline and enhance the datasets for effective visualization and interpretation of socioeconomic and housing market trends in the United States.

## **Keywords**
* Credit
* Intrest Rates
* Salary
* Classification
* Financial Resources

## **Introduction**
In the alarming growth in the expenses of resources becoming expensive, we have decided to report a project based on the current economic situation. The limited resources being a concern after the hit of Covid-19 has created a global surge in prices. This was due to the result of political desicions and supply and demand of resources. Due to the current outcome, we have decide to create a project that reflects in the current trends and cultures in retrospective of the high living standards. The information provided in this report comes from U.S. Bureau of Labor Statistics as well as [kraggle](https://www.kaggle.com/datasets/clkmuhammed/creditscoreclassification?resource=download) showcasing the information in the current work force. In addition of the information, we are hoping to showcase the changes and current work flow to the general public.


## **Problem Domain**
With the appearance of Covid-19, it lead to a drastic hit in the economy as many people lack secruity in their jobs due to companies insueing layoffs. Job growth remaing slow, hours cut, instability in jobs, and overall lost in wages. The Census Bereau released data on the job market at the end of 2021, and it was noted that tens of millions of people lost their jobs ([CBPP](https://www.cbpp.org/research/poverty-and-inequality/tracking-the-covid-19-economys-effects-on-food-housing-and#:~:text=The%20COVID%2D19%20pandemic%20and,unemployment%20remained%20high%20throughout%202020.)). This had resulted in many relief programs being active. Nevertheless, 20 million households did not have enough to eat and 10 million being behing in house payments. The [U.S. Bureau of Labor Statistics](https://www.bls.gov/news.release/pdf/empsit.pdf)] recorded the changes in major worker groups in September:


<br>

> 1) The number of persons employed part time for economic reasons decreased by 306,000 to 3.8 million in September
> 2) The number of persons not in the labor force who currently want a job was little changed at 5.8 million in September and remains above its February 2020 level of 5.0 million
> 3) Among the unemployed, the number of permanent job losers decreased by 173,000 to 1.2 million in September
> 4) The number of discouraged workers, a subset of the marginally attached who believed that no jobs were available for them, increased by 119,000 to 485,000 in September.

<div align="center">

![Hardship graph](/docs/images/HardshipGraph.png)
</div>

The pandemic impacted everyone but was not distributed evenly to all social classes. In fact, it remained more prevalent in groups such as Blacks, Latinos, and other groups of minority. This is the result due to structual racism shifting the most economic hardships to those of color.
> Among the major worker groups, the unemployment rate for Hispanics decreased to 3.8 percent in September. The jobless rates for adult men (3.3 percent), adult women (3.1 percent), teenagers (11.4
percent), Whites (3.1 percent), Blacks (5.8 percent), and Asians (2.5 percent) showed little change over the month

Into a more global setting, resources have increased due to the lack of production stemming from Covid-19.  The article *The impact of the COVID-19 pandemic on food price indexes and data collection* reported by
[U.S. Bureau of Labor Statistics](https://www.bls.gov/opub/mlr/2020/article/the-impact-of-the-covid-19-pandemic-on-food-price-indexes-and-data-collection.htm)
Included that production of meats in Asia fell 9% in 2020. This lead to the declining of U.S. exports meat prices resulting in a drop of 22.5% in meat packaging. However, due to the meat shortage it caused in the increase of meat going up by 16%. As well as sea food experiencing chain disruptions causing in a decrease of production in fish and shellfish by 17.1%. The pandemic caused many businesses to halt and slow down production causing the demand to increase along with the prices.



## **Research Questions**

1) How has the the workforce in groups of minority been impacted?
<br> How does other groups compared in losses compared to mainstream groups? What resources were given to accommodate the standard of equity. It will give a visualization in which groups are being affected the most. 

2) What are the current trends/culture of each standing social classes?
<br>In addition, what are the characteristics of other groups. What assets have increased and if they have taken a toll in their own finances. What they have earned/lost or maintained throughout the economy collapse. We are hoping to see which traits are involved with each social economic standing.

3) How did Covid-19 affected finance in the long term?
<br> Current resources such as gases and food have continued to rise and maintained at high levels. How has the global economy been affected in the presences of high demand and shortage of supplies. Along with real estate becoming expensive averaging nearly a 20% increase in rent within the US. 

## **The Dataset**

The dataset details a lot of information related to finance specifically credit scores. It gives data related to credit score, SSN, occupation, individual base salaries and number of bank accounts a person has. All of this data is helpful to our project because it helps us see how credit scores differ based on socioeconomic status and one way to determine that is through knowing occupation.
<br>

<div align="center">

![Social Class Data Table](/docs/images/datatable.png)
</div>
<br>

Data Source: 
[Kraggle](https://www.kaggle.com/datasets/clkmuhammed/creditscoreclassification?resource=download)
<br>

The data was collected by Rohan Paris, a software developer at Cognizant. The dataset was updated about 4 months ago. The purpose of the set was to identify people’s credit scores with only occupation and minimal bank information given. It was funded through Kaggle. The people/organizations likely to benefit from the data would be Kaggle because there would be more interactions with their site and also people who generally want to learn more about the development of credit scores. We assume that Kaggle has measures that ensure their datasets are reliable and of quality, so yes it’s credible. We obtained the data by searching the kaggle site where the link was provided to us through the proposal instructions. We did credit the source.


## **Expected implications**
Due to the idea that the economy globally is taking in affect due to chain markets experiencing disturbance and not being allowed to afford the current businesses, everyone is considered as stakeholders. In a more general sense, the two stakeholders are the people and businesses. 

As the problem relies in supply and demand, implications that can be a possible income are those within the work force. Too make the necessary resources, this may aim towards lower wages for workers in order to make up the cut of losses in return for acquiring the needed resources. A prime example of this would be workers in China that works for fast fashion: Shein. 
According to [New York](https://www.thecut.com/2022/10/shein-is-treating-workers-even-worse-than-you-thought.html), it was noted that workders made 4,000 yuan per month — roughly $556 — to make 500 pieces of clothing per day, which is about 18 hour work days and one day off per month.

Another implications that may follow suit are policymakers may withhold federal aid such as unemployment asstance, student loans, and many more economic reliefs that were sent out during the pandemic. Although the relief programs are meant to help those of need, it can also be used be withheld in order to manage the amount of economic debt. Would insure prices would remain the same, or at least to not skyrocket in market value.



## **Limitations**
One thing that the data table fail to acomodate is the area of living. As some areas have low or high financial needs of living, it can have an effect on the statistics and general making desicions in classifying the social classes. Data does lack a few information to find solutions for the problem domain. May have to find data that is more fitting. Since the information is geared towards those of occupation, it would leave a huge group of people not heing considered as they can be homeless. The data does not provide enough - or any information that of the lowest class.

Another limitation can be undocumated groups as they may work for jobs that is not affiliated with legal means to show record of payment. The US still have controversies in DACA - Deferred Actions for Childhood Arrivals which was introduced by Obama. This allowed for undocumented people to work and be voided of deportation. As it this movement is still in question, it can lead to many other groups to work without any records.


## **Acknowledgement**
Big thanks for U.S. Bureau of Labor Statistics for providing statistics as well as kraggle for publishing a data table to work from. As well as the articles provided in CBPP which a lot of our inspiration came from. 

## **Refrences**

Tracking the COVID-19 Economy’s Effects on Food, Housing, and Employment Hardships. (2022, February 10). Cbpp. https://www.cbpp.org/research/poverty-and-inequality/tracking-the-covid-19-economys-effects-on-food-housing-and#:~:text=The%20COVID%2D19%20pandemic%20and,unemployment%20remained%20high%20throughout%202020.

https://www.bls.gov/news.release/pdf/empsit.pdf

https://www.bls.gov/opub/mlr/2020/article/the-impact-of-the-covid-19-pandemic-on-food-price-indexes-and-data-collection.htm

https://www.thecut.com/2022/10/shein-is-treating-workers-even-worse-than-you-thought.html


