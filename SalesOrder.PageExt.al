pageextension 50100 "Red Sales Order PageExt" extends "Sales Order"
{
    layout
    {
        addlast(General)
        {
            field("Red Posting Options"; "Red Posting Options")
            {
                ApplicationArea = all;
                ToolTip = 'Specifies the posting options';
            }
        }
        modify("External Document No.")
        {
            Caption = 'Red External Document No.';
        }
    }

    actions
    {
        addafter(Post)
        {
            action(RedPostnew)
            {
                ApplicationArea = All;
                Caption = 'Post New';
                ToolTip = 'The new way of posting!';
                Image = Post;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;

                trigger OnAction()
                begin
                    RedPostCustom();
                end;
            }
        }
        modify(Post)
        {
            Visible = false;
        }
    }
}