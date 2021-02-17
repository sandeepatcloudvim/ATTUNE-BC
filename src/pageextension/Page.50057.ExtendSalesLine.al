pageextension 50057 "Sales Line Ex" extends "Sales Order Subform"
{
    layout
    {
        // Add changes to page layout here
        modify("No.")
        {
            trigger OnAfterValidate()
            begin
                if Rec.Type = Rec.Type::Item then begin
                    if Rec."No." <> '' then begin
                        Item.Reset();
                        Item.SetRange("Global Dimension 1 Filter", Rec."Shortcut Dimension 1 Code");
                        Item.SetRange("Global Dimension 2 Filter", Rec."Shortcut Dimension 2 Code");
                        Item.SetRange("No.", Rec."No.");
                        Item.SetRange("Location Filter", Rec."Location Code");
                        Item.SetRange("Variant Filter", Rec."Variant Code");
                        Item.SetRange("Drop Shipment Filter", Rec."Drop Shipment");
                        if Item.FindSet() then
                            Page.Run(492, Item);
                    end;

                end;

            end;
        }
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        Item: Record Item;
}