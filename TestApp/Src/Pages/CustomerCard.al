page 50103 CustomerCard
{
    PageType = Card;
    ApplicationArea = All;
    // UsageCategory = Administration;
    SourceTable = CustomerInfo;

    layout
    {
        area(Content)
        {
            group(GroupName)
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
            }

            group(Address)
            {
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
            }

            group(CampanyInformatiom)
            {
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
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}