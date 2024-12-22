page 50107 "Administrator RoleCenter"
{
    PageType = RoleCenter;
    Caption = 'Administrator Role Center';

    layout
    {
        area(RoleCenter)
        {
            part(CustomHeadline; "Custom Headline RC")
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Custom Headline';
            }

            part("Training Activity"; "Trainning Statistics Area")
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Training Overview';
            }
        }
    }

    actions
    {
        area(Creation)
        {
            action("Training List")
            {
                RunObject = Page "Training List";
                RunPageMode = View;
                ApplicationArea = All;
            }

            action("Add Training")
            {
                RunObject = Page "Training Card";
                RunPageMode = Create;
                ApplicationArea = All;
            }

            action("Training Enrollment List")
            {
                RunObject = Page "Training Enrollment List";
                RunPageMode = View;
                ApplicationArea = All;
            }

            action("Add Training Enrollment")
            {
                RunObject = Page "Training Enrollment Card";
                RunPageMode = Create;
                ApplicationArea = All;
            }
        }
        area(Sections)
        {
            group(Reports)
            {
                action("Training Stats Report")
                {
                    RunObject = Report "Training Stats Report";
                    ApplicationArea = All;
                }
            }

            group(RH)
            {
                action("Employee List")
                {
                    RunObject = Page "Employee List";
                    ApplicationArea = All;

                }

                action("Add Employee")
                {
                    RunObject = Page "Employee Card";
                    ApplicationArea = All;

                }
            }
            group(Trainings)
            {
                action(Training)
                {
                    RunObject = Page "Training List";
                    ApplicationArea = All;

                }

                action(TrainingCard)
                {
                    RunObject = Page "Training Card";
                    ApplicationArea = All;

                }

                action(TrainingEnrollmentList)
                {
                    RunObject = Page "Training Enrollment List";
                    ApplicationArea = All;

                }

                action(TrainingEnrollmentCard)
                {
                    RunObject = Page "Training Enrollment Card";
                    ApplicationArea = All;

                }
            }
        }

    }
}