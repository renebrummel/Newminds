page 50110 "Red Header Card"
{
    PageType = Card;
    UsageCategory = Administration;
    SourceTable = "Red Header";
    Caption = 'Header Card';

    layout
    {
        area(Content)
        {
            group(GeneralGroup)
            {
                Caption = 'General';
                field(Description; Description)
                {
                    ToolTip = 'Specifies the description.';
                    ApplicationArea = All;
                }
            }
            part(RedLines; "Red Lines")
            {
                Caption = 'Lines';
                SubPageLink = "Red Header Entry No." = field("Entry No.");
                ApplicationArea = All;
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(Process)
            {
                ApplicationArea = All;
                Caption = 'Process';
                Image = Process;

                trigger OnAction()
                begin
                    Message(ProcessingActionMsg);
                end;
            }
        }
    }

    var
        ProcessingActionMsg: Label 'Processing Action';
}