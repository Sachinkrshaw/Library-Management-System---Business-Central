codeunit 50125 BookISBNValidation
{ 
    Subtype = Normal;
    
    procedure ValidateISBNNumber(ISBNNumber:Text[20]): Boolean
    var
    IsNumeric:Boolean;
    i:Integer;
    begin
        IsNumeric:=true;
        if StrLen(ISBNNumber)<>13 then
            exit(false);
        for i:=1 to StrLen(ISBNNumber) do begin
            if not (ISBNNumber[i] in ['0'..'9']) then begin
                IsNumeric:=false;
                break;
        end;    
    end;
    exit(IsNumeric);
  end;  
    
}