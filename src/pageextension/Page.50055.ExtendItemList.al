pageextension 50055 ExtendItemList extends "Item List"
{
    layout
    {
        addafter(InventoryField)
        {
            field("Qty. on Sales Order"; Rec."Qty. on Sales Order")
            {
                ApplicationArea = All;
                Caption = 'Qty. on Sales Order';
            }
            field("Qty. on Assembly"; Rec."Qty. on Assembly Order")
            {
                ApplicationArea = All;
                Caption = 'Qty. on Assembly';
            }
            field("Assembly Remainder"; AssemblyRemainder)
            {
                ApplicationArea = All;
                Caption = 'Assembly Remainder';
                DecimalPlaces = 0 : 5;
            }
        }
        addafter("Unit Price")
        {

            field(PH; Rec.PH)
            {
                ApplicationArea = All;
                Caption = 'PH Expected Value';
            }
            field(Viscosity; Rec.Viscosity)
            {
                ApplicationArea = All;
                Caption = 'Viscosity Expected Value';
            }
            field(Density; Rec.Density)
            {
                ApplicationArea = All;
                Caption = 'Density Expected Value';
            }
            field(Color; Rec.Color)
            {
                ApplicationArea = All;
                Caption = 'Color Expected Value';
            }
            field(TensileStrength; Rec."Tensile Strength")
            {
                ApplicationArea = All;
                Caption = 'Tensile Strength Expected Value';
            }
            field(ExtensionalViscosity; Rec."Extensional Viscosity")
            {
                ApplicationArea = All;
                Caption = 'Extensional Viscosity Expected Value';
            }

            field(EvaporationTime; Rec."Evaporation Time")
            {
                ApplicationArea = All;
                Caption = 'Evaporation Time Expected Value';
            }
            field(EvaporationLossPct; Rec."Evaporation Loss Pct")
            {
                ApplicationArea = All;
                Caption = 'Evaporation Loss Pct Expected Value';
            }
            field(ZeroShearNumber; Rec."Zero Shear Number")
            {
                ApplicationArea = All;
                Caption = 'Zero Shear Number Expected Value';
            }
            field(SurfaceTension; Rec."Surface Tension")
            {
                ApplicationArea = All;
                Caption = 'Surface Tension Expected Value';
            }
            field("DV 10"; Rec."DV 10")
            {
                ApplicationArea = All;
                Caption = 'DV 10 Expected Value';
            }
            field("DV 90"; Rec."DV 90")
            {
                ApplicationArea = All;
                Caption = 'DV 90 Expected Value';
            }
            field("Solids Pct"; Rec."Solids Pct")
            {
                ApplicationArea = All;
                Caption = 'Solids Pct Expected Value';
            }
            field("Moisture"; Rec."Moisture")
            {
                ApplicationArea = All;
                Caption = 'Moisture Expected Value';
            }
            field("Pyruvate Pct"; Rec."Pyruvate Pct")
            {
                ApplicationArea = All;
                Caption = 'Pyruvate Pct Expected Value';
            }
            field("Mesh"; Rec."Mesh")
            {
                ApplicationArea = All;
                Caption = 'Mesh Expected Value';
            }
            field("Particle Size"; Rec."Particle Size")
            {
                ApplicationArea = All;
                Caption = 'Particle Size Expected Value';
            }
            field("Optical Rotation"; Rec."Optical Rotation")
            {
                ApplicationArea = All;
                Caption = 'Optical Rotation Expected Value';
            }
            field("Other"; Rec."Other")
            {
                ApplicationArea = All;
                Caption = 'Other Expected Value';
            }
            field("Odor"; Rec."Odor")
            {
                ApplicationArea = All;
                Caption = 'Odor Expected Value';
            }

        }
    }

    actions
    {
        modify("Item &Tracking Entries")
        {
            ApplicationArea = All;
            Visible = false;
        }
        addafter("Item &Tracking Entries")
        {
            action("CBR Item Tracking Entries")
            {
                ApplicationArea = All;
                Caption = 'Item Tracking Entries';
                Image = ItemTrackingLedger;
                RunObject = Page "CBR Item Tracking Entries";
                RunPageLink = "Item No." = FIELD("No.");
            }
        }
    }
    var
        AssemblyRemainder: Decimal;

    trigger OnAfterGetRecord()
    var
    begin
        Rec.CALCFIELDS(Inventory, "Qty. on Assembly Order", "Qty. on Sales Order");
        AssemblyRemainder := Rec.Inventory - (Rec."Qty. on Sales Order" + Rec."Qty. on Assembly Order");
    end;

    trigger OnAfterGetCurrRecord()
    var
    begin
        Rec.CALCFIELDS(Inventory, "Qty. on Assembly Order", "Qty. on Sales Order");
        AssemblyRemainder := Rec.Inventory - (Rec."Qty. on Sales Order" + Rec."Qty. on Assembly Order");
    end;

}