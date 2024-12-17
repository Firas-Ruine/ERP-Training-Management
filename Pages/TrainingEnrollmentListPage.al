page 50105 "Training Enrollment List"
{
    PageType = List;
    SourceTable = "Training Enrollment";
    Caption = 'Training Enrollment List';

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field(EntryNo; Rec.EntryNo)
                {
                    ApplicationArea = All;
                    Caption = 'Entry No.';
                }

                field(EmployeeNo; Rec.EmployeeNo)
                {
                    ApplicationArea = All;
                    Caption = 'Employee No.';
                    ToolTip = 'Specifies the employee enrolled in the training.';
                }

                field(TrainingCode; Rec.TrainingCode)
                {
                    ApplicationArea = All;
                    Caption = 'Training Code';
                    ToolTip = 'Specifies the training associated with this enrollment.';
                }

                field(EnrollmentDate; Rec.EnrollmentDate)
                {
                    ApplicationArea = All;
                    Caption = 'Enrollment Date';
                    ToolTip = 'The date when the employee was enrolled.';
                }

                field(CompletionStatus; Rec.CompletionStatus)
                {
                    ApplicationArea = All;
                    Caption = 'Completion Status';
                    ToolTip = 'Specifies the completion status of the training.';
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action("Open Enrollment Card")
            {
                Caption = 'Open Enrollment Card';
                ApplicationArea = All;
                Promoted = true;
                PromotedCategory = Process;

                trigger OnAction()
                begin
                    Page.Run(Page::"Training Enrollment Card", Rec);
                end;
            }

            action("Mark as Completed")
            {
                Caption = 'Mark as Completed';
                ApplicationArea = All;
                Promoted = true;
                PromotedCategory = Process;

                trigger OnAction()
                begin
                    if Rec.CompletionStatus <> Rec.CompletionStatus::Completed then begin
                        Rec.CompletionStatus := Rec.CompletionStatus::Completed;
                        Rec.Modify;
                        Message('Training enrollment marked as Completed.');
                    end else
                        Message('This enrollment is already completed.');
                end;
            }
        }
    }
}
