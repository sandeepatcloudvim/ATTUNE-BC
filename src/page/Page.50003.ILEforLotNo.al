page 50003 "ILE Page for Lot No."
{
    Caption = 'Item Ledger Entry for Lot No.';
    PageType = List;
    UsageCategory = Lists;
    ApplicationArea = All;
    SourceTable = "Item Ledger Entry";
    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("Item No."; Rec."Item No.")
                {
                    ApplicationArea = All;

                }
                field("Location Code"; Rec."Location Code")
                {
                    ApplicationArea = all;
                }
                field("Lot No."; Rec."Lot No.")
                {
                    ApplicationArea = All;
                }
                field("Remaining Quantity"; Rec."Remaining Quantity")
                {
                    ApplicationArea = All;
                }


            }
        }
        area(Factboxes)
        {

        }
    }
}