table 50110 "Headline Table"
{
    DataClassification = ToBeClassified;
    Caption = 'Headline Table';

    fields
    {
        field(1; Id; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(2; "Headline Text"; Text[500])
        {
            Caption = 'Headline Text';
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(PK; Id)
        {
            Clustered = true;
        }
    }

}
