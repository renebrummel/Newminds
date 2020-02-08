codeunit 50101 "Red Sales-Post Events"
{
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Sales-Post", 'OnAfterPostSalesDoc', '', false, false)]
    local procedure OnAfterPostSalesDoc()
    begin
        Message(AfterPostSalesDocMsg);
    end;

    [EventSubscriber(ObjectType::Table, Database::"Sales Header", 'OnBeforeValidateEvent', 'External Document No.', false, false)]
    local procedure OnBeforeValidateEventExternalDocumentNo()
    begin
        // Some code
    end;

    [EventSubscriber(ObjectType::Page, Page::"Sales Order", 'OnBeforeActionEvent', 'RedPostnew', false, false)]
    local procedure MyProcedure()
    begin
        // Some code
    end;

    var
        AfterPostSalesDocMsg: Label 'Sales post succesful';
}