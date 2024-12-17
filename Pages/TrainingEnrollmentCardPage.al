page 50103 "Training Enrollment Card"
{
    PageType = Card;
    SourceTable = "Training Enrollment";
    Caption = 'Training Enrollment Card';

    layout
    {
        area(Content)
        {
            group(General)
            {
                field(EmployeeNo; Rec.EmployeeNo)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the employee enrolled in the training.';
                    trigger OnValidate()
                    begin
                        if Rec.EmployeeNo = '' then
                            Error('Employee No. is required.');
                    end;
                }

                field(TrainingCode; Rec.TrainingCode)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the training associated with this enrollment.';
                    trigger OnValidate()
                    begin
                        if Rec.TrainingCode = '' then
                            Error('Training Code cannot be blank.');
                    end;
                }

                field(EnrollmentDate; Rec.EnrollmentDate)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the date when the employee enrolled.';
                    trigger OnValidate()
                    begin
                        if Rec.EnrollmentDate > Today then
                            Error('Enrollment Date cannot be in the future.');
                    end;
                }

                field(CompletionStatus; Rec.CompletionStatus)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the completion status of the training.';
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action("Validate Enrollment")
            {
                Caption = 'Validate Enrollment';
                Promoted = true;
                PromotedCategory = Process;
                ApplicationArea = All;

                trigger OnAction()
                begin
                    if Rec.EmployeeNo = '' then
                        Error('Employee No. is required.');

                    if Rec.TrainingCode = '' then
                        Error('Training Code cannot be blank.');

                    if Rec.EnrollmentDate > Today then
                        Error('Enrollment Date cannot be in the future.');

                    Message('All validations passed successfully.');
                end;
            }
        }
    }
}
