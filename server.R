library(data.table)
library(randomForest)
library(readxl)

my_data <- read_excel("triz.xlsx")


server <- function(input, output, session) {
        
        # Input Data
        datasetInput <- reactive({  
                
                a <- strtoi(input$outlook)
                b <- strtoi(input$windy)
                bmi<-my_data[a,b]
                bmi <- data.frame(bmi)
                names(bmi) <- "Các thủ thuật (nguyên tắc) sáng tạo cơ bản"
                print(bmi)
                
        })
        
        # Status/Output Text Box
        output$contents <- renderPrint({
                if (input$submitbutton>0) { 
                        isolate("Calculation complete.") 
                } else {
                        return("Server is ready for calculation.")
                }
        })
        
        # Prediction results table
        output$tabledata <- renderTable({
                if (input$submitbutton>0) { 
                        isolate(datasetInput()) 
                } 
        })
        
}

