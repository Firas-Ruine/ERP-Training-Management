pageextension 50102 "Employe Date Ext" extends "Employee Card"
{
    layout
    {
        addafter(General)
        {
            group(Training)
            {
                field(LastTrainingDate; Rec.LastTrainingDate)
                {
                    ApplicationArea = All;
                    ToolTip = 'The date of the last training';
                }
            }
        }
    }
}