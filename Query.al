query 50145 PersonWhoPaidFine
{
    QueryType = Normal;
    
    elements
    {
        dataitem(Lending;Lending)
        {   DataItemTableFilter="Fine Amount"=filter(>0);
            column(Lending_ID;"Lending ID")
            {
                
            }
            column(Customer_Name;"Customer Name")
            {
                
            }
            column(Fine_Amount;"Fine Amount")
            {
              Caption='Fine amount';
            }
            column(Book_ID;"Book ID")
            {
             Caption='Book ID';
            }
            column(Lending_Date;"Lending Date")
            {
              Caption='Lending Date';
            }


        }
    }
    
    var
        myInt: Integer;
    
    trigger OnBeforeOpen()
    begin
        
    end;
}