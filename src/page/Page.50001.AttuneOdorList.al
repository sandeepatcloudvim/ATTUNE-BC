page 50001 "Odor List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Odor;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Odor Code"; Rec."Odor Code")
                {
                    ApplicationArea = All;
                    Caption = 'Odor';

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