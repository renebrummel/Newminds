page 50112 "Red Lines"
{
    PageType = ListPart;
    UsageCategory = Lists;
    SourceTable = "Red Line";
    Caption = 'Red Lines';
    DelayedInsert = true;
    AutoSplitKey = true;

    layout
    {
        area(Content)
        {
            repeater(RepeaterGroup)
            {
                field("Red Header Entry No."; "Red Header Entry No.")
                {
                    ToolTip = 'Specifies the entry number of the parent record.';
                    ApplicationArea = All;
                }
                field("Line No."; "Line No.")
                {
                    ToolTip = 'Specifies the line number.';
                    ApplicationArea = All;
                }
                field(Description; Description)
                {
                    ToolTip = 'Specifies the description';
                    ApplicationArea = All;
                }
            }
        }
    }
}