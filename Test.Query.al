query 50100 "Red Item Item Ledger Entry"
{
    Caption = 'Item Ledger Entry from Item';
    elements
    {
        dataitem(Item; Item)
        {
            column(No_; "No.") { }
            filter(Global_Dimension_2_Code; "Global Dimension 2 Code") { }
            dataitem(Item_Ledger_Entry; "Item Ledger Entry")
            {

                DataItemLink = "Item No." = Item."No.";
                filter(Open; Open) { }
                column(Entry_No_; "Entry No.") { }
            }
        }
    }
}