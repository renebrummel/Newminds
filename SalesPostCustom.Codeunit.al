codeunit 50100 "Red Sales Post Custom"
{
    TableNo = "Sales Header";

    trigger OnRun()
    begin
        Post(Rec);
    end;

    local procedure Post(SalesHeader: Record "Sales Header")
    var
        SalesPost: Codeunit "Sales-Post";
    begin
        with SalesHeader do begin
            case "Red Posting Options" of
                "Red Posting Options"::Custom:
                    Error(RedCannotHaveValueErr, FieldCaption("Red Posting Options"), "Red Posting Options"::Custom);
                else
                    SalesPost.Run(SalesHeader)
            end;
        end;
    end;

    var
        RedCannotHaveValueErr: Label '%1 cannot be %2';
}