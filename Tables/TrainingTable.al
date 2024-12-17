table 50101 "Training"
{
    DataClassification = ToBeClassified;
    Caption = 'Training';

    fields
    {
        field(1; Code; Code[20])
        {
            Caption = 'Training Code';
            NotBlank = true;
            trigger OnValidate()
            begin
                if Code = '' then
                    Error('Training Code cannot be empty.');
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

        field(3; Category; Code[10])
        {
            Caption = 'Category';
            TableRelation = "Training Category".Code;
            trigger OnValidate()
            begin
                if Category = '' then
                    Error('Please select a valid training category.');
            end;
        }

        field(4; Level; Enum "Training Level")
        {
            Caption = 'Level';
        }

        field(5; Status; Enum "Training Status")
        {
            Caption = 'Status';
        }

        field(6; Trainer; Text[100])
        {
            Caption = 'Trainer';
            trigger OnValidate()
            begin
                if Trainer = '' then
                    Error('Trainer name is required.');
            end;
        }

        field(7; Duration; Integer)
        {
            Caption = 'Duration (Hours)';
            trigger OnValidate()
            begin
                if Duration <= 0 then
                    Error('Duration must be greater than 0.');
            end;
        }
    }

    keys
    {
        key(PK; Code)
        {
        }
    }
}
