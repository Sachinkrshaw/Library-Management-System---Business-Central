table 50142 Lending
{
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1;"Lending ID"; Code[20])
        {
            DataClassification = ToBeClassified;
            NotBlank=true;
        }
        field(2;"Book ID"; Code[20])
        {
            DataClassification =ToBeClassified;
            NotBlank=true;
            TableRelation = Book."Book ID";
        }
        field(3;"Lending Date"; Date)
        {
            DataClassification=ToBeClassified;
            NotBlank=true;
        }
        field(4; "Return Date"; Date)
        {
            DataClassification = ToBeClassified;
            NotBlank=true;
        }
        field(5;"status"; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers=Issued,Returned,Overdue;
            NotBlank=true;
        }
        field(6; "Customer Name"; Text[100])
        {
            DataClassification = ToBeClassified;
            NotBlank=true;
        }
        field(7; "Due Date"; Date)
        {
            DataClassification = ToBeClassified;
            NotBlank=true;
        }
        field(8; "Fine Amount"; Decimal)
        {
            DataClassification = ToBeClassified;
            NotBlank=true;
        }
    }
    
    keys
    {
        key(PK; "Lending ID")
        {
            Clustered = true;
        }
        key(Book;"Book ID")
        {
            Clustered=false;
        }
    }
    
    
}