table 50103 "Training Category"
{
    DataClassification = ToBeClassified;
    Caption = 'Training Category';

    fields
    {
        field(1; Code; Code[10])
        {
            Caption = 'Category Code';
            NotBlank = true;
            trigger OnValidate()
            begin
                if Code = '' then
                    Error('Category Code cannot be blank.');
            end;
        }

        field(2; Description; Text[100])
        {
            Caption = 'Description';
            trigger OnValidate()
            begin
                if Description = '' then
                    Error('Description is required.');
            end;
        }
    }

    keys
    {
        key(Code; Code)
        {
            Clustered = true;
        }
    }
}
