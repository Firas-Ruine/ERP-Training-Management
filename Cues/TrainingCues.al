table 50106 "Training Cues"
{
    DataClassification = ToBeClassified;
    Caption = 'Training Cues';


    fields
    {
        field(1; Id; Integer)
        {
            Caption = 'Record ID';
            DataClassification = ToBeClassified;
        }

        field(2; "Total Trainings"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = count(Training);
            Caption = 'Total Number of Trainings';
        }
    }

    keys
    {
        key(Key1; Id)
        {
            Clustered = true;
        }
    }


}