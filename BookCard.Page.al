page 50140 Bookcard
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Book;

    layout
    {
        area(Content)
        {
            group("Book Details")
            {
                field("Book ID";Rec."Book ID")
                {
                   ApplicationArea = All;
                   ShowMandatory=true;
                   ToolTip='Enter the Book ID';   
                }
                field("ISBN Number";Rec."ISBN Number")
                {
                    ApplicationArea=All;
                    ShowMandatory=true; 
                    ToolTip='Enter ISBN Number';
                    trigger OnValidate()
                    var
                       ISBNValidation: Codeunit BookISBNValidation;
                    begin
                        if not ISBNValidation.ValidateISBNNumber(Rec."ISBN Number") then
                        Error('Invalid ISBN Number');
                    end;   
                }
                field("Book Category";Rec."Book Category")
                {
                    ApplicationArea=All;
                    ShowMandatory=true;
                    ToolTip='Enter the book catogory';
                }
                field("Book Price";Rec."Book Price")
                {
                    ApplicationArea=All;
                    ShowMandatory=true; 
                    ToolTip='Enter the book price';

                }
                field(Publisher;Rec.Publisher)
                {
                    ApplicationArea=All;
                    ShowMandatory=true;
                    ToolTip='Enter the publisher';
                }
                field(Title;Rec.Title)
                {
                    ApplicationArea=All;
                    ShowMandatory=true;
                    ToolTip='Enter the tiltle'; 
                }
                field(Author;Rec.Author)
                {
                    ApplicationArea=All;
                    ShowMandatory=true; 
                    ToolTip='Enter the author';
                }
                field("Publication Date";Rec."Publication Date")
                {
                   ApplicationArea=All;
                   ShowMandatory=true;
                   ToolTip='Enter publication date';
        
                }    
                field(Language;Rec.Language)
                {
                    ApplicationArea=All;
                    ShowMandatory=true; 
                    ToolTip='Enter the language';
                }                     

            }
    
    }
    
//     actions
//     {
//         area(Processing)
//         {
//             action(ActionName)
//             {
                
//                 trigger OnAction()
//                 begin
                    
//                 end;
//             }
//         }
//     }
    
//     var
//         myInt: Integer;
// }
 }
}