report 50001 "COA Item Tracking Lines"
{
    UsageCategory = Administration;
    ApplicationArea = All;
    RDLCLayout = 'src\Report\COA2.rdl';


    dataset
    {
        dataitem("Item Ledger Entry"; "Reservation Entry")
        {
            column(Item_No_; "Item No.")
            {

            }
            column(Desc_ItemRec; ItemRec.Description)
            {

            }
            column(Lot_No_; "Lot No.")
            {

            }
            column(Location_Code; "Location Code")
            {

            }

            column(PH; PH) { }
            column(Viscosity; Viscosity) { }
            column(Density; Density) { }
            column(Color; Color) { }
            column(Tensile_Strength; "Item Ledger Entry"."Tensile Strength")
            {

            }
            column(Extensional_Viscosity; "Item Ledger Entry"."Extensional Viscosity")
            {

            }
            column(Evaporation_Time; "Item Ledger Entry"."Evaporation Time")
            {

            }
            column(Evaporation_Loss_Pct; "Item Ledger Entry"."Evaporation Loss Pct")
            {

            }
            column(Zero_Shear_Number; "Item Ledger Entry"."Zero Shear Number")
            {

            }
            column(Surface_Tension; "Item Ledger Entry"."Surface Tension")
            {

            }
            column(DV_10; "Item Ledger Entry"."DV 10")
            {

            }
            column(DV_90; "Item Ledger Entry"."DV 90")
            { }
            column(Solids_Pct; "Item Ledger Entry"."Solids Pct")
            {

            }
            column("Moisture"; "Moisture")
            {

            }
            column(Pyruvate_Pct; "Item Ledger Entry"."Pyruvate Pct")
            {

            }
            column("Mesh"; "Mesh")
            {

            }
            column(Particle_Size; "Item Ledger Entry"."Particle Size")
            {

            }
            column(Optical_Rotation; "Item Ledger Entry"."Optical Rotation")
            {

            }
            column("Other"; "Item Ledger Entry".Other)
            {

            }
            column(Odor; "Item Ledger Entry".
            Odor)
            {

            }
            column(Std_PH; ItemRec.PH)
            {

            }
            column(Std_Viscosity; ItemRec.Viscosity)
            {

            }
            column(Std_Density; ItemRec.Density)
            {

            }
            column(Std_Color; ItemRec.Color)
            {

            }
            column(Std_Tensile_Strength; ItemRec."Tensile Strength")
            {

            }
            column(Std_Extensional_Viscosity; ItemRec."Extensional Viscosity")
            {

            }
            column(Std_Evaporation_Time; ItemRec."Evaporation Time")
            {

            }
            column(Std_Evaporation_Loss_Pct; ItemRec."Evaporation Loss Pct")
            {

            }
            column(Std_Zero_Shear_Number; ItemRec."Zero Shear Number")
            {

            }
            column(Std_Surface_Tension; ItemRec."Surface Tension")
            {

            }
            column(Std_DV_10; ItemRec."DV 10")
            {

            }
            column(Std_DV_90; ItemRec."DV 90")
            { }
            column(Std_Solids_Pct; ItemRec."Solids Pct")
            {

            }
            column(Std_Moisture; ItemRec.Moisture)
            {

            }
            column(Std_Pyruvate_Pct; ItemRec."Pyruvate Pct")
            {

            }
            column(Std_Mesh; ItemRec.Mesh)
            {

            }
            column(Std_Particle_Size; ItemRec."Particle Size")
            {

            }
            column(Std_Optical_Rotation; ItemRec."Optical Rotation")
            {

            }
            column(Std_Other; ItemRec.Other)
            {

            }
            column(Std_Odor; ItemRec.Odor)
            {
            }
            column(Logo; CompanyInfo.Picture)
            {

            }



            trigger OnPreDataItem()
            begin
                CompanyInfo.Get;
                CompanyInfo.CalcFields(Picture);

            end;

            trigger OnAfterGetRecord()
            var
            begin
                Clear(ItemRec);
                if ItemRec.Get("Item Ledger Entry"."Item No.") then;
            end;
        }


    }
    var
        ItemRec: Record Item;
        CompanyInfo: Record "Company Information";

}