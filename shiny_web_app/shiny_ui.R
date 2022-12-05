
library(shiny)
library(ggplot2)
library(shinythemes)
library(DT)

credit_classification <- read.csv("data/credit_class.csv", stringsAsFactors = FALSE)
house_price <- read.csv("data/house_prices.csv", stringsAsFactors = FALSE)
avg_income <- read.csv("data/avg_income_yearly.csv")
income_df <- read.csv("data/income_race.csv", stringsAsFactors = FALSE)
poverty_percent <- read.csv("data/percent_poverty.csv", stringsAsFactors =  FALSE)






intro_panel <- tabPanel(
  "Introduction",
  titlePanel(strong("US Economy: Socioeconomic & House Market")),
  hr(style = "border-top: 1px solid #000000;"),
  p("The US economy is considered one of the strongest economies in the world. In our mixed market economy, the US continuously exhibits strengths. 
    However, during the COVID-19 pandemic our economy took several hits. Job growth slowed, overall wages were lost and ultimately the 
    economy and the housing markets had been negatively affected. Due to the changing atmosphere of America's economic systems, 
    we decided to focus our project on the highs and lows of the economy and housing market. Specifically, we want to answer which demographics have suffered 
    under our economic systems, the assets these groups have, and what resources have helped alter the economic landscape . To help find those answers we plan to use data 
    that gives information relating to the socioeconomic statuses of citizens. The information from the data includes occupation, annual incomes, salaries, bank loans, credit scores, and more."),
  br(),
  img("", src="https://www.bea.gov/system/files/gdp3q22-adv-chart-01.png", height = 250, width = 500)
)



# Graph 1
select_values <- c(colnames(house_and_annual[2]),colnames(house_and_annual[8]))
date_range <- house_and_annual$Year
select_values_percent <- c(colnames(percent_change_df[2]),colnames(percent_change_df[3]))


interaction_one <- tabPanel(
  "Graph 1",
  titlePanel(strong("Average Income vs. Average House Price (1962-2021)")),
    sidebarLayout(
      sidebarPanel(
        helpText("Choose the following variables to show on the graph"),
        selectInput(
          inputId = "y_input",
          label = "Choose Graph",
          choices = list(
            "Average House Cost" = "Average_house_price",
            "Average Annual Income" = "Average_annual_income"
          ),
          selected = "Average_price_house"
        ),
      h5("Central Focus"),
      p("This graph illustrates the increasing prices in both annual income and house market beginning from 1962 to 2021. The annual income 
        graph shows a evenly increment increase throughout the years. However, in 2020 there is a spike of increase disproportionate to the 
        other years. This year is followed by the influence of Covid-19. With shortage of labor, minimum wages have increased, which in 
        return also increases the average annual income."),
      p("Followed with average cost of the house market, the graph illustrates less of a linear growth. There is more cases of sudden spikes 
      and fallouts. One of which is the 2007 house market crash showcasing the effects of increase home prices as well as the loose lending 
      practices towards home buyers. Another interesting note is the all time high in 2021 that still has influence to todays house market. "),
      p("The table to the right shows the changes of percentages of both annual income and the house market. It is organize by the year and 
      followed by the change of percentage to the year prior. ")
      ),
      mainPanel(
        plotOutput("graph_1"),
        DT::dataTableOutput("mytable")
      )
    )
)



interaction_two <- tabPanel(
  "Graph 2",
  titlePanel("")
)


interaction_three <- tabPanel(
  "Graph 3",
  titlePanel("Title"),
    sidebarLayout(
      sidebarPanel(
        helpText("Choose the following variables to show on the graph"),
        radioButtons(
          inputId = "graph3_input",
          label = "Choose variables",
          choices = list(
            "Ages Under 18" = "under_18",
            "Ages 16 to 64" = "x18_to_64",
            "Ages 65 and above" = "x65_and_older"
          ),
          selected = "under_18"
        ),
      ),
      mainPanel(
        plotOutput("graph_3"),
        h5("Central Focus"),
        hr(style = "border-top: 1px solid #000000;"),
        p("This data set showcases the differing categories in age in relationship with poverty. Dating from the 1970’s, there appears to be a 
        decline in poverty for those 65 years old and higher. However, for the other groups, there are higher vulnerability to poverty. Those 
        under 18 have the highest chances with 22% in poverty during the early 1990’s.  And similar numbers in the early 1980’s and 2010. Those 
        in the working age population in the ages of 16 to 64 also has history with poverty. Unlike those under 18, it has lower percentages, 
        the highest being 14% in the 2010."),
        p("A pattern found in all three graphs are higher spikes during the years of 1980, 1990, and 2010.")
      )
  )
)

#conclusion
conclusion_panel <- tabPanel(
  "Conclusion",
  titlePanel("Summary Takeaways"),
  sidebarLayout(
    position = "right",
    sidebarPanel(
      h4(strong("About Us")),
      p("Special thanks to project members for allocating resources and utilizing R in order to create a project overviewing the economic patterns in the US!"),
      p("Lesther Dumosmog || ldumos@uw.edu"),
      p("Amy Oguejiofor || amyo6@uw.edu"),
      p("Nuria Abas Ibrahim || nuriai2@uw.edu")
    ),
    mainPanel()
  )
)

# report 
report_panel <- tabPanel(
  "Report",
  titlePanel(strong("US Economy Report")),
  sidebarLayout(
    position = "right",
    sidebarPanel(
      h4(strong("Acknowledgment")),
      p("Big thanks for U.S. Bureau of Labor Statistics for providing statistics as well as kaggle for publishing a data table to work from. As well as the
        articles provided in CBPP which a lot of our inspiration came from."),
      br(),
      br(),
      h4(strong("Refrences")),
      p("Tracking the COVID-19 Economy’s Effects on Food, Housing, and Employment Hardships. (2022, February 10). Cbpp. 
      https://www.cbpp.org/research/poverty-and-inequality/tracking-the-covid-19-economys-effects-on-food-housing-and#:~:text=The%20COVID%2D19%20pandemic%20and,unemployment%20remained%20high%20throughout%202020."),
      p("https://www.bls.gov/news.release/pdf/empsit.pdf"),
      p("https://www.bls.gov/opub/mlr/2020/article/the-impact-of-the-covid-19-pandemic-on-food-price-indexes-and-data-collection.htm"),
      p("https://www.thecut.com/2022/10/shein-is-treating-workers-even-worse-than-you-thought.html")
    ),
      

    mainPanel(
      hr(style = "border-top: 1px solid #000000;"),
      p("INFO-201: Technical Foundations of Informatics - The Information School - University of Washington", align = "center"),
      p("Date: Autumn 2022", align = "center"),
      p("Project: credit_class", align = "center"),
      
      br(),
      br(),
      
      h2(strong("Abstract")),
      hr(style = "border-top: 1px solid #000000;"),
      p("The agenda of the project is to understand the differentiating social economic status play a role in the cultural norms
        in financial commitments. In order to approach this question, we will group the data by annual income showcaseing common 
        characteristics of each catagory of salary. The importance of this data is to outline the different resources used by 
        groups corresponding to their annual income."),
      
      br(),
      br(),
      
      h2(strong("Introduction")),
      hr(style = "border-top: 1px solid #000000;"),
      p("In the alarming growth in the expenses of resources becoming expensive, we have decided to report a project based on the 
        current economic situation. The limited resources being a concern after the hit of Covid-19 has created a global surge in 
        prices. This was due to the result of political desicions and supply and demand of resources. Due to the current outcome, 
        we have decide to create a project that reflects in the current trends and cultures in retrospective of the high living 
        standards. The information provided in this report comes from U.S. Bureau of Labor Statistics as well as kaggle showcasing 
        the information in the current work force. In addition of the information, we are hoping to showcase the changes and current 
        work flow to the general public."),
      
      br(),
      br(),
      
      h2(strong("Problem Domain")),
      hr(style = "border-top: 1px solid #000000;"),
      p("With the appearance of Covid-19, it lead to a drastic hit in the economy as many people lack secruity in their jobs due to 
        companies insueing layoffs. Job growth remaing slow, hours cut, instability in jobs, and overall lost in wages. The Census 
        Bereau released data on the job market at the end of 2021, and it was noted that tens of millions of people lost their jobs 
        (CBPP). This had resulted in many relief programs being active. Nevertheless, 20 million households did not have enough to 
        eat and 10 million being behing in house payments. The U.S. Bureau of Labor Statistics] recorded the changes in major worker 
        groups in September:"),
      p("1) The number of persons employed part time for economic reasons decreased by 306,000 to 3.8 million in September"),
      p("2) The number of persons not in the labor force who currently want a job was little changed at 5.8 million in September and remains
        above its February 2020 level of 5.0 million"),
      p("3 )Among the unemployed, the number of permanent job losers decreased by 173,000 to 1.2 million in September"),
      p("4) The number of discouraged workers, a subset of the marginally attached who believed that no jobs were available for them, increased 
        by 119,000 to 485,000 in September."),
      p("The pandemic impacted everyone but was not distributed evenly to all social classes. In fact, it remained more prevalent in groups 
        such as Blacks, Latinos, and other groups of minority. This is the result due to structual racism shifting the most economic hardships 
        to those of color."),
      p("Among the major worker groups, the unemployment rate for Hispanics decreased to 3.8 percent in September. The jobless rates for adult 
        men (3.3 percent), adult women (3.1 percent), teenagers (11.4 percent), Whites (3.1 percent), Blacks (5.8 percent), and Asians (2.5 
        percent) showed little change over the month"),
      p("Into a more global setting, resources have increased due to the lack of production stemming from Covid-19. The article The impact of 
      the COVID-19 pandemic on food price indexes and data collection reported by U.S. Bureau of Labor Statistics Included that production of 
      meats in Asia fell 9% in 2020. This lead to the declining of U.S. exports meat prices resulting in a drop of 22.5% in meat packaging. 
      However, due to the meat shortage it caused in the increase of meat going up by 16%. As well as sea food experiencing chain disruptions 
      causing in a decrease of production in fish and shellfish by 17.1%. The pandemic caused many businesses to halt and slow down production 
      causing the demand to increase along with the prices."),
      
      br(),
      br(),
      
      h2(strong("Research Questions")),
      hr(style = "border-top: 1px solid #000000;"),
      p("1) How has the the workforce in groups of minority been impacted? How does other groups compared in losses compared to mainstream groups? 
      What resources were given to accommodate the standard of equity. It will give a visualization in which groups are being affected the most."),
      p("2) What are the current trends/culture of each standing social classes?
      In addition, what are the characteristics of other groups. What assets have increased and if they have taken a toll in their own finances. What they 
      have earned/lost or maintained throughout the economy collapse. We are hoping to see which traits are involved with each social economic standing."),
      p("3) How did Covid-19 affected finance in the long term?
      Current resources such as gases and food have continued to rise and maintained at high levels. How has the global economy been affected in the presences of 
      high demand and shortage of supplies. Along with real estate becoming expensive averaging nearly a 20% increase in rent within the US."),
      
      br(),
      br(),
      
      h2(strong("The Dataset")),
      hr(style = "border-top: 1px solid #000000;"),
      p("The dataset details a lot of information related to finance specifically credit scores. It gives data related to credit score, SSN, occupation, individual 
        base salaries and number of bank accounts a person has. All of this data is helpful to our project because it helps us see how credit scores differ based on 
        socioeconomic status and one way to determine that is through knowing occupation."),
      p("The data was collected by Rohan Paris, a software developer at Cognizant. The dataset was updated about 4 months ago. The purpose of the set was to identify 
        people’s credit scores with only occupation and minimal bank information given. It was funded through Kaggle. The people/organizations likely to benefit from 
        the data would be Kaggle because there would be more interactions with their site and also people who generally want to learn more about the development of 
        credit scores. We assume that Kaggle has measures that ensure their datasets are reliable and of quality, so yes it’s credible. We obtained the data by searching 
        the kaggle site where the link was provided to us through the proposal instructions. We did credit the source."),
      
      br(),
      br(),
      
      h2(strong("Expected Implications")),
      hr(style = "border-top: 1px solid #000000;"),
      p("Due to the idea that the economy globally is taking in affect due to chain markets experiencing disturbance and not being allowed to afford the current businesses, 
        everyone is considered as stakeholders. In a more general sense, the two stakeholders are the people and businesses."),
      p("As the problem relies in supply and demand, implications that can be a possible income are those within the work force. Too make the necessary resources, this may 
        aim towards lower wages for workers in order to make up the cut of losses in return for acquiring the needed resources. A prime example of this would be workers in 
        China that works for fast fashion: Shein. According to New York, it was noted that workders made 4,000 yuan per month — roughly $556 — to make 500 pieces of clothing 
        per day, which is about 18 hour work days and one day off per month."),
      p("Another implications that may follow suit are policymakers may withhold federal aid such as unemployment asstance, student loans, and many more economic reliefs that 
        were sent out during the pandemic. Although the relief programs are meant to help those of need, it can also be used be withheld in order to manage the amount of economic 
        debt. Would insure prices would remain the same, or at least to not skyrocket in market value."),
      
      br(),
      br(),
      
      h2(strong("Limitations")),
      hr(style = "border-top: 1px solid #000000;"),
      p("One thing that the data table fail to acomodate is the area of living. As some areas have low or high financial needs of living, it can have an effect on the statistics 
        and general making desicions in classifying the social classes. Data does lack a few information to find solutions for the problem domain. May have to find data that is 
        more fitting. Since the information is geared towards those of occupation, it would leave a huge group of people not heing considered as they can be homeless. The data 
        does not provide enough - or any information that of the lowest class."),
      p("Another limitation can be undocumated groups as they may work for jobs that is not affiliated with legal means to show record of payment. The US still have controversies in 
        DACA - Deferred Actions for Childhood Arrivals which was introduced by Obama. This allowed for undocumented people to work and be voided of deportation. As it this movement is 
        still in question, it can lead to many other groups to work without any records."),
      
      br(),
      br(),
      
      h2(strong("Findings")),
      hr(style = "border-top: 1px solid #000000;"),
      p(""),
      
      br(),
      br(),
      
      h2(strong("Discussion")),
      hr(style = "border-top: 1px solid #000000;"),
      p(""),
      
      br(),
      br(),
      
      h2(strong("Conclusion")),
      hr(style = "border-top: 1px solid #000000;"),
      p("")
      
      
    )
  )
)


shinyUI <- navbarPage(
  h4("Navigation"),
  theme = shinytheme("yeti"),
  intro_panel,
  interaction_one,
  interaction_two,
  interaction_three,
  conclusion_panel,
  report_panel
)
