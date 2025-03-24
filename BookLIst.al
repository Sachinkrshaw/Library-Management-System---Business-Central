page 50141 BookList
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Book;
    
    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Book ID";Rec."Book ID")
                {
                    ApplicationArea=All;
                    TableRelation=Book."Book ID";
                    DrillDownPageId=50140;
                }
                field(Title;Rec.Title)
                {
                    ApplicationArea=All;
                }field(Author;Rec.Author)
                {
                    ApplicationArea=All;

                }
                field("Book Price";Rec."Book Price")
                {
                    ApplicationArea =All;
                }
                field("Publication Date";Rec."Publication Date")
                {
                    ApplicationArea=All;
                }
                field(Language;Rec.Language)
                {
                    ApplicationArea=All;
                }
                field("Book Category";Rec."Book Category")
                {
                    ApplicationArea=all;
                }
                field(Publisher;Rec.Publisher)
                {
                    ApplicationArea=All;
                }
                field("ISBN Number";Rec."ISBN Number")
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