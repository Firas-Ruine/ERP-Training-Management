page 50104 "Training Category List"
{
    PageType = List;
    SourceTable = "Training Category";
    Caption = 'Training Category List';

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field(Code; Rec.Code) { ApplicationArea = All; }
                field(Description; Rec.Description) { ApplicationArea = All; }
            }
        }
    }
}
