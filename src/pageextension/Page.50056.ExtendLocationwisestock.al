pageextension 50056 ExtendLocationwisestock extends "Item Avail. by Location Lines"
{
    layout
    {
        // Add changes to page layout here
        modify("Item.Inventory")
        {

            trigger OnDrillDown()

            begin
                GetItem(ItemRec);
                NewILEPage(ItemRec, false);

            end;
        }


    }

    actions
    {
        // Add changes to page actions here
    }

    local procedure NewILEPage(Var Item: Record Item; NetChange: Boolean)
    var
        ILE: Record "Item Ledger Entry";

    begin
        ILE.FindLinesWithItemToPlan(Item, NetChange);
        Page.Run(50003, ILE);


    end;

    var
        ItemRec: Record Item;
}