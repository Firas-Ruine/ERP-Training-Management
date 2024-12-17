page 50102 "Training Card"
{
    PageType = Card;
    SourceTable = Training;
    Caption = 'Training Card';

    layout
    {
        area(Content)
        {
            group(General)
            {
                field(Code; Rec.Code) { ApplicationArea = All; }
                field(Description; Rec.Description) { ApplicationArea = All; }
                field(Category; Rec.Category) { ApplicationArea = All; }
                field(Level; Rec.Level) { ApplicationArea = All; }
                field(Status; Rec.Status) { ApplicationArea = All; }
                field(Trainer; Rec.Trainer) { ApplicationArea = All; }
                field(Duration; Rec.Duration) { ApplicationArea = All; }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ValidateFields)
            {
                Caption = 'Validate Fields';
                Promoted = true;
                trigger OnAction()
                begin
                    if Rec.Code = '' then
                        Error('Training Code is required.');
                    if Rec.Description = '' then
                        Error('Description cannot be blank.');
                    if Rec.Category = '' then
                        Error('Training Category is required.');
                    if Rec.Trainer = '' then
                        Error('Trainer must be specified.');
                    if Rec.Duration <= 0 then
                        Error('Duration must be greater than 0.');
                end;
            }
        }
    }
}
