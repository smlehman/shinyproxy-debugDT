
library(shiny)
library(DT)

# Define UI for application that writes a table
ui <- fluidPage(

    # Application title
    titlePanel("view data"),

    # buttons to select dataset 
    sidebarLayout(
        sidebarPanel(
            radioButtons("dataset",
                        "View dataset:",
                        choices = c("mtcars", "iris", "Indometh"))
        ),

        # Show a dataTable
        mainPanel(
           DTOutput("dtTable")
        )
    )
)

# Define server logic required to draw the table
server <- function(input, output) {

    output$dtTable <- renderDT({
        # call in the dataset
        m <- get(input$dataset)
        # draw the datatable
        datatable(m)
    })
}

# Run the application 
shinyApp(ui = ui, server = server)
