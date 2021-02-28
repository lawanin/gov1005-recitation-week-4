#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
ui <- navbarPage(
    "Final Project Title",
    tabPanel("Model",
             fluidPage(
                 titlePanel("Model Title"),
                 sidebarLayout(
                     sidebarPanel(
                         selectInput(
                             "plot_type",
                             "Plot Type",
                             c("Option A" = "a", "Option B" = "b")
                         )),
                     mainPanel(plotOutput("line_plot")))
             )),
    tabPanel("Discussion",
             titlePanel("Potential Sources"),
             h3("Gun Violence Statistics"),
             p("The most important part of my project 
               will involve statistics on gun violence. I found a Wikipedia 
               tbale which has information on violence in 2015. The source is 
               the FBI's online summary of Crime in the U.S. This is an anunual
               report and I have checked and there is a 2019 version. Generally, 
               I want to avoid 2020 in fear of any anomalies created by the 
               pandemic. The wikipedia table also has a source for 2013 gun 
               ownership rates, but the study it linked to seems to have done
               these caluclations using firearm suicide as a proxy. This sounds
               dubious to me. Link to Wikipedia page:
               https://en.wikipedia.org/wiki/Gun_violence_in_the_United_States_by_state#cite_note-4"),
             h3("Gun Ownerhsip Statistics"),
             p("Not only is the study cited old, but I really am sketptical of 
               its methodology, though it is apparently not an uncommon one. I 
               found a CBS news article which published gun ownership rates by 
               state and whose source was a long-term study released in April of 
               2020 by researches at the RAND Corporation. The base of the 
               calculations appear to come from surveys, combined with
               'administrative data on firearm suicides, hunting licenses, 
               subscriptions to Guns & Ammo magazine, and background checks.' 
               This sounds much more trustworthy. Though it was released early in
               2020, so I don't think my COVID fears really apply here."),
             h3("Gun Ownerhsip Statistics"),
             p("Not only is the study cited old, but I really am sketptical of 
               its methodology, though it is apparently not an uncommon one. I 
               found a CBS news article which published gun ownership rates by 
               state and whose source was a long-term study released in April of 
               2020 by researches at the RAND Corporation. The base of the 
               calculations appear to come from surveys, combined with
               'administrative data on firearm suicides, hunting licenses, 
               subscriptions to Guns & Ammo magazine, and background checks.' 
               This sounds much more trustworthy. Though it was released early in
               2020, so I don't think my COVID fears really apply here.
               Link: https://www.rand.org/pubs/tools/TL354.html"),
             h3("States by GDP"),
             p("I found a Wikipedia article with a list of states by their GDP. 
               It lists states for the third quarter of 2020, but again I am 
               conerned that data from this time will obscure results because 
               of impact from COVID. The source is the Bureau of Economic 
               Analysis, Department of Commerce. They seem to have regular 
               quarterly reports of this kind. Information on the territories of 
               the U.S. was gotten from the World Bank, and I don't think I will 
               be including these in my observation, though I should make sure 
               other sources of mine do not."),
             h3("States by GDP"),
             p("I found a Wikipedia article with a list of states by their GDP. 
               It lists states for the third quarter of 2020, but again I am 
               conerned that data from this time will obscure results because 
               of impact from COVID. The source is the Bureau of Economic 
               Analysis, Department of Commerce. They seem to have regular 
               quarterly reports of this kind. Information on the territories of 
               the U.S. was gotten from the World Bank, and I don't think I will 
               be including these in my observation, though I should make sure 
               other sources of mine do not. I also wonder whether GDP is a better
               approximation of what I am looking for than income. I will want 
               to compare the difference between these two in further analysis."),
             h3("Census Data"),
             p("Census Data contains many of the factors I am interested in using
             in these observations: urbanity, race, and possibly, hosuehold income. 
             I am interested in the first two because I often here these invoked
             in conversation gun violence. Particulary by those who push back 
             against corellation by gun violence. Though PMUS data exists and I
              would love to do something on a more local level, perhaps in 
              Virginia, I do not know whether the preceeding data exixts for 
              states.")),
    tabPanel("About", 
             titlePanel("About"),
             h3("Project Background and Motivations"),
             p("Hello, this is where I talk about my project."),
             h3("About Me"),
             p("My name is Nosa and I study Comparative Literature. 
             You can reach me at nlawani@college.harvard.edu."),
             h3("Repo Link"),
             p("https://github.com/lawanin/gov1005-recitation-week-4")))

# Define server logic required to draw a histogram
server <- function(input, output) {}

# Run the application 
shinyApp(ui = ui, server = server)
