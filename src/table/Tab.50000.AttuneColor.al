table 50000 Color
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Color Code"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = ' Color';

        }
        field(2; Description; Text[50])
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(PK; "Color Code")
        {
            Clustered = true;
        }
    }


    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}