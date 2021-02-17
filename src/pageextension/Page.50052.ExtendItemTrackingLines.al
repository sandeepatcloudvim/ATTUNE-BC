pageextension 50052 Ext_ItemTrackingLines_6510 extends "Item Tracking Lines"
{
    layout
    {
        addafter("Warranty Date")
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
        addbefore("Assign &Lot No.")
        {
            action("COA Print")
            {
                ApplicationArea = All;
                Caption = 'COA', comment = 'NLB="Certificate of Analysis"';
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                Image = Print;
                trigger OnAction()
                var
                    COA: Report "COA Item Tracking Lines";
                    RE: Record "Reservation Entry";
                begin
                    RE.Reset();
                    RE.SetRange("Item No.", Rec."Item No.");
                    RE.SetRange("Lot No.", rec."Lot No.");
                    COA.SetTableView(RE);
                    COA.Run();
                end;
            }
        }
    }


}