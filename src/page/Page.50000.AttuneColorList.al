page 50000 "Color List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Color;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Color Code"; Rec."Color Code")
                {
                    ApplicationArea = All;
                    Caption = 'Color';

                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                }
            }
        }
        area(Factboxes)
        {

        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction();
                begin

                end;
            }
        }
    }
}