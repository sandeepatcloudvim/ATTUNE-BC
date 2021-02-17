pageextension 50051 Ext_ItemLedgerEntries_38 extends "Item Ledger Entries"
{
    layout
    {
        addafter("Lot No.")
        {
            field(PH; Rec.PH)
            {
                ApplicationArea = All;
            }
            field(Viscosity; Rec.Viscosity)
            {
                ApplicationArea = All;
            }
            field(Density; Rec.Density)
            {
                ApplicationArea = All;
            }
            field(Color; Rec.Color)
            {
                ApplicationArea = All;
            }
            field("Tensile Strength"; Rec."Tensile Strength")
            {
                ApplicationArea = All;
            }
            field("Extensional Viscosity"; Rec."Extensional Viscosity")
            {
                ApplicationArea = All;
            }
            field("Evaporation Time"; Rec."Evaporation Time")
            {
                ApplicationArea = All;
            }
            field("Evaporation Loss Pct"; Rec."Evaporation Loss Pct")
            {
                ApplicationArea = All;
            }
            field("Zero Shear Number"; Rec."Zero Shear Number")
            {
                ApplicationArea = All;
            }
            field("Surface Tension"; Rec."Surface Tension")
            {
                ApplicationArea = All;
            }
            field("DV 10"; Rec."DV 10")
            {
                ApplicationArea = All;
            }
            field("DV 90"; Rec."DV 90")
            {
                ApplicationArea = All;
            }
            field("Solids Pct"; Rec."Solids Pct")
            {
                ApplicationArea = All;
            }
            field(Moisture; Rec.Moisture)
            {
                ApplicationArea = All;
            }
            field("Pyruvate Pct"; Rec."Pyruvate Pct")
            {
                ApplicationArea = All;
            }
            field(Mesh; Rec.Mesh)
            {
                ApplicationArea = All;
            }
            field(Odor; Rec.Odor)
            {
                ApplicationArea = All;
            }
            field("Particle Size"; Rec."Particle Size")
            {
                ApplicationArea = All;
            }
            field("Optical Rotation"; Rec."Optical Rotation")
            {
                ApplicationArea = All;
            }
            field(Other; Rec.Other)
            {
                ApplicationArea = All;
            }
        }
    }

    actions
    {
        // Add changes to page actions here
    }

}