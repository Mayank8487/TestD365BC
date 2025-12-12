page 50102 "CustomerList"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = CustomerInfo;
    Caption = 'CustomerInfo List';
    CardPageId = "CustomerCard";    // <-- THIS LINKS THEM

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("User Id"; Rec."User Id")
                {
                    ApplicationArea = All;

                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                }
                field(Username; Rec.Username)
                {
                    ApplicationArea = All;
                }
                field(Email; Rec.Email)
                {
                    ApplicationArea = All;
                }
                field(Phone; Rec.Phone)
                {
                    ApplicationArea = All;
                }
                field(Website; Rec.Website)
                {
                    ApplicationArea = All;
                }

                field(Street; Rec.Street)
                {
                    ApplicationArea = All;
                }
                field(Suite; Rec.Suite)
                {
                    ApplicationArea = All;
                }
                field(City; Rec.City)
                {
                    ApplicationArea = All;
                }
                field(ZipCode; Rec.ZipCode)
                {
                    ApplicationArea = All;
                }
                field(Latitude; Rec.Latitude)
                {
                    ApplicationArea = All;
                }
                field(Longitude; Rec.Longitude)
                {
                    ApplicationArea = All;
                }


                field(CompanyName; Rec.CompanyName)
                {
                    ApplicationArea = All;
                }
                field(CatchPhrase; Rec.CatchPhrase)
                {
                    ApplicationArea = All;
                }
                field(BS; Rec.BS)
                {
                    ApplicationArea = All;
                }
            }

        }

        area(FactBoxes)
        {
        }
    }

    actions
    {
        area(Processing)
        {
            action("Import JSON Users")
            {
                Caption = 'Import JSON Users';
                ApplicationArea = All;

                trigger OnAction()
                var
                    userInfo: Codeunit UserInfo;
                begin
                    // Implement your JSON import logic here
                    userInfo.FetchUserInfoUsingApi();

                end;
            }
        }
    }
}
