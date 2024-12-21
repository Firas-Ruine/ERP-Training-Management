report 50100 "Training Stats Report"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = './Layouts/TrainingStats.rdl';
    Caption = 'Training Stats Report';

    dataset
    {
        dataitem(Training; Training)
        {
            column(Code; Code) { }
            column(Description; Description) { }
            column(Category; Category) { }
            column(Level; Level) { }
            column(Status; Status) { }
            column(Trainer; Trainer) { }
            column(Duration; Duration) { }

            dataitem(TrainingEnrollment; "Training Enrollment")
            {
                DataItemLink = TrainingCode = FIELD(Code);
                DataItemLinkReference = Training;

                column(EmployeeNo; EmployeeNo) { }

                column(EnrollmentDate; EnrollmentDate) { }

                column(CompletionStatus; CompletionStatus) { }
            }

            column(CompanyPicture; CompanyInformation_G.Picture) { }
            column(CompanyName; CompanyInformation_G.Name) { }
            column(CompanyAddress; CompanyInformation_G.Address) { }
            column(CompanyPhone; CompanyInformation_G."Phone No.") { }


            trigger OnPreDataItem()
            begin
                CompanyInformation_G.GET;
                CompanyInformation_G.CalcFields(Picture);
            end;


        }
    }

    requestpage
    {
        layout
        {
            area(Content)
            {
                group(GroupName)
                {
                    // Add filters or user input fields if required
                }
            }
        }

        actions
        {
            area(processing)
            {
                action(LayoutName)
                {
                    // Add any required processing actions
                }
            }
        }
    }

    var
        CompanyInformation_G: Record "Company Information";
}
