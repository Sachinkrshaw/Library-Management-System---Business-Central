report 50146 CustomerswhopaidfineReport
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultRenderingLayout = LayoutName;
    
    dataset
    {
        dataitem(Lending;Lending)
        {
            column(Customer_Name;"Customer Name")
            {
                
            }
            column(Fine_Amount;"Fine Amount")
            {

            }
            column(Book_ID;"Book ID")
            {

            }
            column(Lending_Date;"Lending Date")
            {

            }
            column(Return_Date;"Return Date")
            {

            }
            column(status;status)
            {

            }
            column(Due_Date;"Due Date")
            {

            }
        }
    }
    
    requestpage
    {
        AboutTitle = 'Filter by date';
        AboutText = 'Specify the date range for the report';
        layout
        {
            area(Content)
            {
                group(FilterGroup)
                {
                    field(StarDate; StarDate)
                    {
                        ApplicationArea=All;
                    }
                    field(EndDate;EndDate)
                    {
                        ApplicationArea=All;
                    }
                }
            }
        }
        actions
        {
            area(Processing)
            {
                action(GenerateReport)
                {
                    ApplicationArea=All;
                    Caption='Generate Report';
                }
            }
        }
        
    
    } 
        
    
    
    rendering
    {
        layout(LayoutName)
        {
            Type = Word;
            LayoutFile = 'myReport.docx';
        }
    }
    
    var
       StarDate: Date;
       EndDate: Date;
       LenderRec: Record Lending;
}