codeunit 50120 "Headline Logic Codeunit"
{
    procedure GetCustomHeadline(): Text
    var
        Time: Time;
    begin
        Time := TIME();
        if Time < 120000T then
            exit('Good Morning, Welcome to the Role Center!')
        else if Time < 180000T then
            exit('Good Afternoon, Welcome to the Role Center!')
        else
            exit('Good Evening, Welcome to the Role Center!');
    end;

    procedure InitializeHeadline(var Rec: Record "Headline Table")
    begin
        Rec.Reset();
        if not Rec.FindFirst() then begin
            Rec.Init();
            Rec."Headline Text" := GetCustomHeadline();
            Rec.Insert();
        end else begin
            Rec."Headline Text" := GetCustomHeadline();
            Rec.Modify();
        end;
    end;
}
