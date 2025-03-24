page  50142 LendingCard
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Lending;
    
    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field("Lending ID";Rec."Lending ID")
                {
                    ApplicationArea=All;
                    ShowMandatory=true; 
                }
                field("Book ID";Rec."Book ID")
                {
                    ApplicationArea=All;
                    TableRelation=Book."Book ID";

                }
                field("Customer Name";Rec."Customer Name")
                {
                    ApplicationArea=All;
                    ShowMandatory=true;
                }
                field("Lending Date";Rec."Lending Date")
                {
                    ApplicationArea=All;
                    ShowMandatory=true;
                    trigger OnValidate()
                    begin
                        if rec."Lending Date"<>Today then
                           Error('Invalid Lending Date, Must be today');
                        Rec."Due Date":=Rec."Lending Date"+30;   
                    end;
                }
                field("Due Date";Rec."Due Date")
                {
                    ApplicationArea=All;
                    Editable=false;
                }
                field("Return Date";Rec."Return Date")
                {
                    ApplicationArea=All;
                    ShowMandatory=true;
                    trigger OnValidate()
                    begin
                         if rec."Return Date"<>0D then begin
                            if rec."Return Date">rec."Due Date" then
                            Rec."Fine Amount":=30
                            else
                            Rec."Fine Amount":=0;

                         end;
                    end;
                
                }
                field("Fine Amount";Rec."Fine Amount")
                {
                    ApplicationArea=All;
                    Editable=false;

                }
                field(status;Rec.status)
                {
                    ApplicationArea=All;
                    ShowMandatory=true;
                }
            }
        }
    }
    
}