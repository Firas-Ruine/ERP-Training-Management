page 50101 "Training List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Training;
    Caption = 'Training List';
    CardPageID = 50102;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field(Code; Rec.Code) { ApplicationArea = All; }
                field(Description; Rec.Description) { ApplicationArea = All; }
                field(Category; Rec.Category) { ApplicationArea = All; }
                field(Level; Rec.Level) { ApplicationArea = All; }
                field(Status; Rec.Status) { ApplicationArea = All; }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ViewCard)
            {
                Caption = 'Open Training Card';
                trigger OnAction()
                begin
                    Page.Run(Page::"Training Card", Rec);
                end;
            }

            action(Enroll)
            {
                Caption = 'Enroll';
                trigger OnAction()
                begin
                    Page.Run(Page::"Training Enrollment Card", Rec);
                end;
            }

            action(Report)
            {
                Caption = 'Training Report';
                Image = Report;
                Promoted = true;
                PromotedCategory = Report;
                ApplicationArea = All;
                trigger OnAction()
                var
                    Training_L: Record "Training";
                    TrainingStatsRepor_L: Report "Training Stats Report";
                begin
                    CurrPage.SetSelectionFilter(Training_L);
                    TrainingStatsRepor_L.SetTableView(Training_L);
                    TrainingStatsRepor_L.Run();
                end;
        }
    }
}
}