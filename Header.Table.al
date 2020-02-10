table 50110 "Red Header"
{
    DataClassification = ToBeClassified;
    Caption = 'Header';

    fields
    {
        field(1; "Entry No."; Integer)
        {
            DataClassification = ToBeClassified;
            AutoIncrement = true;
            Caption = 'Entry No.';
        }
        field(10; Description; Text[50])
        {
            DataClassification = ToBeClassified;
            Caption = 'Description';
        }
        field(20; "New Field"; Integer)
        {
            DataClassification = ToBeClassified;
            Caption = 'New field';
        }
    }

    keys
    {
        key(PK; "Entry No.")
        {
            Clustered = true;
        }
    }
}