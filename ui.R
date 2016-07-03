shinyUI(
navbarPage("Developing Data Products: Body Mass Index App", inverse=FALSE,
        
           tabPanel("Documentation",
                    fluidPage(
                            verticalLayout(
                                    h2("Documentation: Body Mass Index (BMI) App", align="center"),
                                    hr(),
                                    h3(""),
                                    p("Body Mass Index (BMI) is a simple index of weight-for-height that is commonly used to classify underweight, overweight and obesity in adults.  A high BMI can be an indicator of high body fatness. BMI can be used to screen for weight categories that may lead to health problems but it is not diagnostic of the body fatness or health of an individual."),
                                    p("In the application you need to fill out three characteristics in order to obtain your BMI and whether you score on, above or under average:"),
                                            tags$ol(tags$li("Sex (average BMI between male and female differ)"),
                                            tags$li("Height"),
                                            tags$li("Weight")),
                                            
                                    p("The application computes BMI according to the formula"),
                                    p(" weight (kg)/height (m)^2")
                                            
                            )
                    )
           ),
           tabPanel("BMI App",
                    pageWithSidebar(
                            headerPanel("Body Mass Index"),
                            sidebarPanel(
                                    h4("Fill out your own data and find out what your BMI is:"),
                                    radioButtons("sex", "Sex:",
                                                 list("Male" = "Male",
                                                      "Female" = "Female")),
                                    numericInput('height', 'Height in cm', 180, min = 140, max = 210, step = 1),
                                    numericInput('weight', 'Weight in kg', 75, min = 40, max = 150, step = 1),
                                    submitButton('Submit')
                            ),
                            mainPanel(
                                    h3('You entered:'),
                                    htmlOutput("text"),
                                    h3('Your BMI is:'),
                                    verbatimTextOutput("prediction"),
                                    h2(htmlOutput("advice"))
                                    
                            )
                    )
                    )
                    
       
        )
        )

