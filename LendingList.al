page 50143 LendingList
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Lending;
    
    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Lending ID";Rec."Lending ID")
                {
                    ApplicationArea=All;
                    DrillDownPageId=50142;
                 //   TableRelation=Lending."Lending ID";  
                }
                field("Book ID";Rec."Book ID")
                {
                    ApplicationArea=all;
                }
                field("Lending Date";Rec."Lending Date")
                {
                    ApplicationArea=All;
                }
                field("Return Date";Rec."Return Date")
                {
                    ApplicationArea=All;
                }
                field(status;Rec.status)
                {
                    ApplicationArea=All;

                }
                field("Customer Name";Rec."Customer Name")
                {
                    ApplicationArea=all;
                }
                field("Due Date";Rec."Due Date")
                {
                    ApplicationArea=All;
                }
                field("Fine Amount";Rec."Fine Amount")
                {
                    ApplicationArea=All;
                }


            }
        }
    //     area(Factboxes)
    //     {
            
    //     }
    // }
    
    // actions
    // {
    //     area(Processing)
    //     {
    //         action(ActionName)
    //         {
                
    //             trigger OnAction()
    //             begin
                    
    //             end;
    //         }
    //     }
    }
}