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
            group(Trainings)
            {
                action(Training)
                {
                    RunObject = Page "Training List";
                }

                action(TrainingCard)
                {
                    RunObject = Page "Training Card";
                }

                action(TrainingEnrollmentList)
                {
                    RunObject = Page "Training Enrollment List";
                }

                action(TrainingEnrollmentCard)
                {
                    RunObject = Page "Training Enrollment Card";
                }
            }
        }
        // area(Embedding)
        // {
        //     action(EmbeddingAction)
        //     {
        //         RunObject = Page ObjectName;
        //     }
        // }
    }
}