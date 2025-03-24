table 50140 Book
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Book ID"; Code[20])
        {
            DataClassification = ToBeClassified;
            NotBlank = true;

        }
        field(2; "ISBN Number"; Text[20])
        {
            DataClassification = ToBeClassified;
            NotBlank = true;
        }
        field(3; "Title"; Text[50])
        {
            DataClassification = ToBeClassified;
            NotBlank = true;
        }
        field(4; "Author"; Text[50])
        {
            DataClassification = ToBeClassified;
            NotBlank = true;
        }
        field(5; "Book Price"; Decimal)
        {
            DataClassification = ToBeClassified;
            NotBlank = true;
        }
        field(6; "Publication Date"; Date)
        {
            DataClassification = ToBeClassified;
            NotBlank = true;
        }
        field(7; "Language"; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = English,French,Spanish,German,Italian,Chinese,Japanese,Korean,Arabic,Portuguese;
            NotBlank = true;

        }
        field(8; "Book Category"; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = Fiction,NonFiction,Science,History,Mathematics,Technology,Art,Music,Health,Travel,Religion,Philosophy,Education,Reference,Comics,Children,Others;
            NotBlank = true;
        }
        field(9; Publisher; Text[100])
        {
            DataClassification = ToBeClassified;
            NotBlank = true;
        }
    }

    keys
    {
        key(Pk; "Book ID")
        {
            Clustered = true;
        }
    }



}