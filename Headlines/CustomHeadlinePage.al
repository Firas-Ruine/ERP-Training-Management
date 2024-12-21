page 50110 "Custom Headline RC"
{
    PageType = CardPart;
    ApplicationArea = All;
    SourceTable = "Headline Table";
    UsageCategory = Administration;
    Caption = 'Welcome';

    layout
    {
        area(Content)
        {
            group(HeadlineContainer)
            {
                Caption = '';
                ShowCaption = false;


                group("")
                {
                    field("Title"; Rec."Headline Text")
                    {
                        Caption = '';
                        Editable = false;
                        MultiLine = true;
                        Width = 0;
                    }
                }
            }
        }
    }


    trigger OnOpenPage()
    var
        HeadlineLogic: Codeunit "Headline Logic Codeunit";
    begin
        HeadlineLogic.InitializeHeadline(Rec);
    end;
}
