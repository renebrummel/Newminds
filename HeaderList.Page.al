page 50111 "Red Headers"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Red Header";
    Caption = 'Headers';
    Editable = false;
    CardPageId = "Red Header Card";

    layout
    {
        area(Content)
        {
            repeater(RepeaterGroup)
            {
                field("Entry No."; "Entry No.")
                {
                    ToolTip = 'Specifies the entry number. Set automatically.';
                    ApplicationArea = All;
                }
                field(Description; Description)
                {
                    ToolTip = 'Specifies the description.';
                    ApplicationArea = All;
                }
            }
        }
        area(Factboxes)
        {

        }
    }
}