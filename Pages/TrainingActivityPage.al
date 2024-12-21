page 50106 "Trainning Statistics Area"
{
    PageType = CardPart;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Training Cues";

    layout
    {
        area(Content)
        {
            cuegroup("Training Overview")
            {
                field("Total Trainings"; Rec."Total Trainings")
                {
                    ApplicationArea = Basic, Suite;
                    DrillDownPageId = "Training List";
                    Caption = 'Number of pending trainings';
                }
            }
        }
    }

    trigger OnOpenPage()
    begin
        Rec.Reset();
        if not Rec.Get() then begin
            Rec.Init();
            Rec.Insert();
        end;
    end;
}
