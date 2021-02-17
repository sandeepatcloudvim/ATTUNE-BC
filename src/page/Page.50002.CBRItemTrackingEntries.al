page 50002 "CBR Item Tracking Entries"
{
    Caption = 'Item Tracking Entries';
    Editable = true;
    PageType = List;
    PromotedActionCategories = 'New,Process,Report,Entry';
    SaveValues = true;
    SourceTable = "Item Ledger Entry";
    Permissions = TableData 32 = rimd;

    layout
    {
        area(content)
        {
            repeater(Control1)
            {
                ShowCaption = false;
                field(Positive; Rec.Positive)
                {
                    ApplicationArea = ItemTracking;
                    ToolTip = 'Specifies whether the item in the item ledge entry is positive.';
                    Editable = false;
                }
                field("Document No."; Rec."Document No.")
                {
                    ApplicationArea = ItemTracking;
                    ToolTip = 'Specifies the document number on the entry. The document is the voucher that the entry was based on, for example, a receipt.';
                    Editable = false;
                }
                field("Item No."; Rec."Item No.")
                {
                    ApplicationArea = ItemTracking;
                    ToolTip = 'Specifies the number of the item in the entry.';
                    Editable = false;
                }
                field("Variant Code"; Rec."Variant Code")
                {
                    ApplicationArea = Planning;
                    ToolTip = 'Specifies the variant of the item on the line.';
                    Visible = false;
                    Editable = false;
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = ItemTracking;
                    ToolTip = 'Specifies a description of the entry.';
                    Visible = false;
                    Editable = false;
                }
                field("Serial No."; Rec."Serial No.")
                {
                    ApplicationArea = ItemTracking;
                    ToolTip = 'Specifies a serial number if the posted item carries such a number.';
                    Editable = false;
                }
                field("Lot No."; Rec."Lot No.")
                {
                    ApplicationArea = ItemTracking;
                    ToolTip = 'Specifies a lot number if the posted item carries such a number.';
                    Editable = false;
                }
                field("Location Code"; Rec."Location Code")
                {
                    ApplicationArea = ItemTracking;
                    ToolTip = 'Specifies the code for the location that the entry is linked to.';
                    Editable = false;
                }
                field(Quantity; Rec.Quantity)
                {
                    ApplicationArea = ItemTracking;
                    ToolTip = 'Specifies the number of units of the item in the item entry.';
                    Editable = false;
                }
                field("Remaining Quantity"; Rec."Remaining Quantity")
                {
                    ApplicationArea = ItemTracking;
                    ToolTip = 'Specifies the quantity in the Quantity field that remains to be processed.';
                    Editable = false;
                }
                field("Source Type"; Rec."Source Type")
                {
                    ApplicationArea = ItemTracking;
                    ToolTip = 'Specifies the source type that applies to the source number, shown in the Source No. field.';
                    Visible = false;
                    Editable = false;
                }
                field("Warranty Date"; Rec."Warranty Date")
                {
                    ApplicationArea = ItemTracking;
                    ToolTip = 'Specifies the last day of warranty for the item on the line.';
                    Editable = false;
                }
                field("Expiration Date"; Rec."Expiration Date")
                {
                    ApplicationArea = ItemTracking;
                    ToolTip = 'Specifies the last date that the item on the line can be used.';
                    Editable = false;
                    Visible = false;
                }
                field("Entry No."; Rec."Entry No.")
                {
                    ApplicationArea = ItemTracking;
                    ToolTip = 'Specifies the number of the entry, as assigned from the specified number series when the entry was created.';
                    Editable = false;
                    Visible = false;
                }
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
        area(factboxes)
        {
            systempart(Control1900383207; Links)
            {
                ApplicationArea = RecordLinks;
                Visible = false;
            }
            systempart(Control1905767507; Notes)
            {
                ApplicationArea = Notes;
                Visible = false;
            }
        }
    }

    actions
    {
        area(navigation)
        {
            group("&Item Tracking Entry")
            {
                Caption = '&Item Tracking Entry';
                Image = Entry;
                action("Serial No. Information Card")
                {
                    ApplicationArea = ItemTracking;
                    Caption = 'Serial No. Information Card';
                    Image = SNInfo;
                    Promoted = true;
                    PromotedCategory = Category4;
                    RunObject = Page "Serial No. Information List";
                    RunPageLink = "Item No." = FIELD("Item No."),
                                  "Variant Code" = FIELD("Variant Code"),
                                  "Serial No." = FIELD("Serial No.");
                    ToolTip = 'View or edit detailed information about the serial number.';
                }
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
                        COA: Report "COA Item Tracking Entries";
                        ILE: Record "Item Ledger Entry";
                    begin
                        ILE.Reset();
                        ILE.SetRange("Entry No.", Rec."Entry No.");
                        COA.SetTableView(ILE);
                        COA.Run();
                    end;
                }
                action("Lot No. Information Card")
                {
                    ApplicationArea = ItemTracking;
                    Caption = 'Lot No. Information Card';
                    Image = LotInfo;
                    Promoted = true;
                    PromotedCategory = Category4;
                    RunObject = Page "Lot No. Information List";
                    RunPageLink = "Item No." = FIELD("Item No."),
                                  "Variant Code" = FIELD("Variant Code"),
                                  "Lot No." = FIELD("Lot No.");
                    ToolTip = 'View or edit detailed information about the lot number.';
                }
            }
        }
        area(processing)
        {
            action("&Navigate")
            {
                ApplicationArea = ItemTracking;
                Caption = 'Find entries...';
                Image = Navigate;
                Promoted = true;
                PromotedCategory = Category4;
                ShortCutKey = 'Shift+Ctrl+I';
                ToolTip = 'Find entries and documents that exist for the document number and posting date on the selected document. (Formerly this action was named Navigate.)';

                trigger OnAction()
                begin
                    Navigate.SetDoc("Posting Date", "Document No.");
                    Navigate.Run;
                end;
            }
        }
    }

    var
        Navigate: Page Navigate;
}

