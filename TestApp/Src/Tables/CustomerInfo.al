table 50101 CustomerInfo
{
    DataClassification = ToBeClassified;
    Caption = 'CustomerInfo';

    fields
    {
        // Main user fields
        // Main user fields
        field(1; "User Id"; Integer)
        {
            DataClassification = ToBeClassified;
        }

        field(16; "User Id INt"; Integer)
        {
            DataClassification = ToBeClassified;
        }

        field(2; Name; Text[100])
        {
            DataClassification = ToBeClassified;
        }

        field(3; Username; Text[50])
        {
            DataClassification = ToBeClassified;
        }

        field(4; Email; Text[80])
        {
            DataClassification = ToBeClassified;
            ExtendedDatatype = EMail;
        }

        // Address fields
        field(5; Street; Text[100])
        {
            DataClassification = ToBeClassified;
        }

        field(6; Suite; Text[50])
        {
            DataClassification = ToBeClassified;
        }

        field(7; City; Text[50])
        {
            DataClassification = ToBeClassified;
        }

        field(8; ZipCode; Text[20])
        {
            DataClassification = ToBeClassified;
        }

        // Geo fields
        field(9; Latitude; Text[20])
        {
            DataClassification = ToBeClassified;
        }

        field(10; Longitude; Text[20])
        {
            DataClassification = ToBeClassified;
        }

        // Contact
        field(11; Phone; Text[30])
        {
            DataClassification = ToBeClassified;
            ExtendedDatatype = PhoneNo;
        }

        field(12; Website; Text[100])
        {
            DataClassification = ToBeClassified;
        }

        // Company fields
        field(13; CompanyName; Text[100])
        {
            DataClassification = ToBeClassified;
        }

        field(14; CatchPhrase; Text[250])
        {
            DataClassification = ToBeClassified;
        }

        field(15; BS; Text[250])
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(PK; "User Id")
        {
            Clustered = true;
        }
    }
}
