page 50101 "Training List"
{
    PageType = List;
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
        }
    }
}
