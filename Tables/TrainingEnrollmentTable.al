table 50102 "Training Enrollment"
{
    DataClassification = ToBeClassified;
    Caption = 'Training Enrollment';

    fields
    {
        field(1; EntryNo; Integer)
        {
            AutoIncrement = true;
            Caption = 'Entry No.';
        }

        field(2; EmployeeNo; Code[20])
        {
            Caption = 'Employee No.';
            TableRelation = Employee."No.";
            trigger OnValidate()
            begin
                if EmployeeNo = '' then
                    Error('Employee number cannot be empty.');
            end;
        }

        field(3; TrainingCode; Code[20])
        {
            Caption = 'Training Code';
            TableRelation = Training.Code;
            trigger OnValidate()
            begin
                if TrainingCode = '' then
                    Error('Please select a valid training code.');
            end;
        }

        field(4; EnrollmentDate; Date)
        {
            Caption = 'Enrollment Date';
            trigger OnValidate()
            begin
                if EnrollmentDate > Today then
                    Error('Enrollment Date cannot be in the future.');
            end;
        }

        field(5; CompletionStatus; Enum "Training Status")
        {
            Caption = 'Completion Status';
        }
    }

        keys
        {
            key(PK; EntryNo)
            {
            }
        }
    }
