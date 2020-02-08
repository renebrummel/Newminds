tableextension 50100 "Red Sales Header TableExt" extends "Sales Header"
{
    fields
    {
        field(50000; "Red Posting Options"; Option)
        {
            Caption = 'Posting Options';
            OptionMembers = Normal,Custom;
            OptionCaption = 'Normal,Custom';
            DataClassification = ToBeClassified;
        }
        modify("External Document No.")
        {
            trigger OnBeforeValidate()
            begin
                case "Red Posting Options" of
                    "Red Posting Options"::Custom:
                        Error(RedCannotHaveValueErr, FieldCaption("Red Posting Options"), "Red Posting Options"::Custom);
                end;
            end;
        }
    }

    procedure RedPostCustom()
    var
        RedSalesPostCustom: Codeunit "Red Sales Post Custom";
    begin
        RedSalesPostCustom.Run(Rec);
    end;

    var
        RedCannotHaveValueErr: Label '%1 cannot be %2';
        RedPostCustomMsg: Label 'Custom Posting Message';
}