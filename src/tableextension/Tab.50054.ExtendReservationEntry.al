tableextension 50054 Extend_ReservationEntry_337 extends "Reservation Entry"
{
    fields
    {
        field(50000; PH; Decimal)
        {
            DataClassification = CustomerContent;
            DecimalPlaces = 0 : 3;
            AutoFormatType = 2;

        }
        field(50001; Viscosity; Decimal)
        {
            DataClassification = CustomerContent;
            DecimalPlaces = 0 : 3;
            AutoFormatType = 2;
        }
        field(50002; Density; Decimal)
        {
            DataClassification = CustomerContent;
            DecimalPlaces = 0 : 3;
            AutoFormatType = 2;
        }
        field(50003; Color; Code[20])
        {
            DataClassification = CustomerContent;
            TableRelation = Color;

        }
        field(50004; "Tensile Strength"; Decimal)
        {
            DataClassification = CustomerContent;
            DecimalPlaces = 0 : 2;
            AutoFormatType = 2;
        }
        field(50005; "Extensional Viscosity"; Decimal)
        {
            DataClassification = CustomerContent;
            DecimalPlaces = 0 : 2;
            AutoFormatType = 2;
        }
        field(50006; "Evaporation Time"; Decimal)
        {
            DataClassification = CustomerContent;
            DecimalPlaces = 0 : 2;
            AutoFormatType = 2;
        }

        field(50007; "Evaporation Loss Pct"; Decimal)
        {
            DataClassification = CustomerContent;
            DecimalPlaces = 0 : 2;
            Caption = 'Evaporation Loss Pct %';

        }
        field(50008; "Zero Shear Number"; Decimal)
        {
            DataClassification = CustomerContent;
            DecimalPlaces = 0 : 2;
            AutoFormatType = 2;
        }
        field(50009; "Surface Tension"; Decimal)
        {
            DataClassification = CustomerContent;
            DecimalPlaces = 0 : 2;
            AutoFormatType = 2;
        }
        field(50010; "DV 10"; Decimal)
        {
            DataClassification = CustomerContent;
            DecimalPlaces = 0 : 2;
            AutoFormatType = 2;

        }
        field(50011; "DV 90"; Decimal)
        {
            DataClassification = CustomerContent;
            DecimalPlaces = 0 : 2;
            AutoFormatType = 2;
        }
        field(50012; "Solids Pct"; Decimal)
        {
            DataClassification = CustomerContent;
            DecimalPlaces = 0 : 2;
            Caption = 'Solids Pct %';
        }
        field(50013; "Moisture"; Decimal)
        {
            DataClassification = CustomerContent;
            DecimalPlaces = 0 : 2;
            AutoFormatType = 2;
        }
        field(50014; "Pyruvate Pct"; Decimal)
        {
            DataClassification = CustomerContent;
            DecimalPlaces = 0 : 2;
            Caption = 'Pyruvate Pct %';
        }
        field(50015; "Mesh"; Decimal)
        {
            DataClassification = CustomerContent;
            DecimalPlaces = 0 : 2;
            AutoFormatType = 2;
        }
        field(50016; "Particle Size"; Decimal)
        {
            DataClassification = CustomerContent;
            DecimalPlaces = 0 : 2;
            AutoFormatType = 2;
        }
        field(50017; "Optical Rotation"; Decimal)
        {
            DataClassification = CustomerContent;
            DecimalPlaces = 0 : 2;
            AutoFormatType = 2;
        }
        field(50018; "Other"; Text[100])
        {
            DataClassification = CustomerContent;

        }
        field(50019; Odor; Code[20])
        {
            DataClassification = CustomerContent;
            TableRelation = Odor;
        }

    }

}