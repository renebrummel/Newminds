table 50111 "Red Line"
{
    DataClassification = ToBeClassified;
    Caption = 'Red Legal Text Line';

    fields
    {
        field(1; "Red Header Entry No."; Integer)
        {
            Caption = 'Red Legal Text Entry No.';
            DataClassification = ToBeClassified;
            Editable = false;
            TableRelation = "Red Header";
        }
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
            MinValue = 0;
            DataClassification = CustomerContent;
        }
        field(10; Description; Text[50])
        {
            Caption = 'Description';
            DataClassification = CustomerContent;
        }
    }

    keys
    {
        key(PK; "Red Header Entry No.", "Line No.")
        {
            Clustered = true;
        }
    }
}