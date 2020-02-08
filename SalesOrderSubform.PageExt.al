pageextension 50101 "Sales Order Subform PageExt" extends "Sales Order Subform"
{
    trigger OnNewRecord(BelowxRec: Boolean)
    begin
        if "Document No." = '' then
            Type := Type::"G/L Account";
    end;
}