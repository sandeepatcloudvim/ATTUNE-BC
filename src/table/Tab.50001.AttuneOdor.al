table 50001 Odor
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Odor Code"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Odor';

        }
        field(2; Description; Text[50])
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(PK; "Odor Code")
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