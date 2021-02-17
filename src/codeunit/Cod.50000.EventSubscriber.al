codeunit 50000 EventSubscriber
{
    trigger OnRun()
    begin

    end;

    [EventSubscriber(ObjectType::Page, Page::"Item Tracking Lines", 'OnRegisterChangeOnAfterCreateReservEntry', '', true, true)]
    local procedure ReserveEntry(VAR ReservEntry: Record "Reservation Entry"; TrackingSpecification: Record "Tracking Specification")
    begin
        ReservEntry.PH := TrackingSpecification.PH;
        ReservEntry.Viscosity := TrackingSpecification.Viscosity;
        ReservEntry.Density := TrackingSpecification.Density;
        ReservEntry.Color := TrackingSpecification.Color;
        ReservEntry."Tensile Strength" := TrackingSpecification."Tensile Strength";
        ReservEntry."Evaporation Loss Pct" := TrackingSpecification."Evaporation Loss Pct";
        ReservEntry."Evaporation Time" := TrackingSpecification."Evaporation Time";
        ReservEntry."Extensional Viscosity" := TrackingSpecification."Extensional Viscosity";
        ReservEntry."Zero Shear Number" := TrackingSpecification."Zero Shear Number";
        ReservEntry."Surface Tension" := TrackingSpecification."Surface Tension";
        ReservEntry."DV 10" := TrackingSpecification."DV 10";
        ReservEntry."DV 90" := TrackingSpecification."DV 90";
        ReservEntry."Solids Pct" := TrackingSpecification."Solids Pct";
        ReservEntry.Mesh := TrackingSpecification.Mesh;
        ReservEntry.Odor := TrackingSpecification.Odor;
        ReservEntry."Pyruvate Pct" := TrackingSpecification."Pyruvate Pct";
        ReservEntry."Particle Size" := TrackingSpecification."Particle Size";
        ReservEntry."Optical Rotation" := TrackingSpecification."Optical Rotation";
        ReservEntry.Other := TrackingSpecification.Other;
        ReservEntry.Modify();

    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Item Jnl.-Post Line", 'OnBeforeInsertSetupTempSplitItemJnlLine', '', true, true)]
    local procedure CU22(VAR TempTrackingSpecification: Record "Tracking Specification"; VAR TempItemJournalLine: Record "Item Journal Line"; VAR PostItemJnlLine: Boolean)
    begin
        TempItemJournalLine.PH := TempTrackingSpecification.PH;
        TempItemJournalLine.Viscosity := TempTrackingSpecification.Viscosity;
        TempItemJournalLine.Density := TempTrackingSpecification.Density;
        TempItemJournalLine.Color := TempTrackingSpecification.Color;
        TempItemJournalLine."Tensile Strength" := TempTrackingSpecification."Tensile Strength";
        TempItemJournalLine."Evaporation Loss Pct" := TempTrackingSpecification."Evaporation Loss Pct";
        TempItemJournalLine."Evaporation Time" := TempTrackingSpecification."Evaporation Time";
        TempItemJournalLine."Extensional Viscosity" := TempTrackingSpecification."Extensional Viscosity";
        TempItemJournalLine."Zero Shear Number" := TempTrackingSpecification."Zero Shear Number";
        TempItemJournalLine."Surface Tension" := TempTrackingSpecification."Surface Tension";
        TempItemJournalLine."DV 10" := TempTrackingSpecification."DV 10";
        TempItemJournalLine."DV 90" := TempTrackingSpecification."DV 90";
        TempItemJournalLine."Solids Pct" := TempTrackingSpecification."Solids Pct";
        TempItemJournalLine.Mesh := TempTrackingSpecification.Mesh;
        TempItemJournalLine.Odor := TempTrackingSpecification.Odor;
        TempItemJournalLine."Pyruvate Pct" := TempTrackingSpecification."Pyruvate Pct";
        TempItemJournalLine."Particle Size" := TempTrackingSpecification."Particle Size";
        TempItemJournalLine."Optical Rotation" := TempTrackingSpecification."Optical Rotation";
        TempItemJournalLine.Other := TempTrackingSpecification.Other;

    end;

    [EventSubscriber(ObjectType::Table, Database::"Item Journal Line", 'OnAfterCopyTrackingFromSpec', '', true, true)]
    local procedure FromTracktoIJL(VAR ItemJournalLine: Record "Item Journal Line"; TrackingSpecification: Record "Tracking Specification")
    begin
        ItemJournalLine.PH := TrackingSpecification.PH;
        ItemJournalLine.Viscosity := TrackingSpecification.Viscosity;
        ItemJournalLine.Density := TrackingSpecification.Density;
        ItemJournalLine.Color := TrackingSpecification.Color;
        ItemJournalLine."Tensile Strength" := TrackingSpecification."Tensile Strength";
        ItemJournalLine."Evaporation Loss Pct" := TrackingSpecification."Evaporation Loss Pct";
        ItemJournalLine."Evaporation Time" := TrackingSpecification."Evaporation Time";
        ItemJournalLine."Extensional Viscosity" := TrackingSpecification."Extensional Viscosity";
        ItemJournalLine."Zero Shear Number" := TrackingSpecification."Zero Shear Number";
        ItemJournalLine."Surface Tension" := TrackingSpecification."Surface Tension";
        ItemJournalLine."DV 10" := TrackingSpecification."DV 10";
        ItemJournalLine."DV 90" := TrackingSpecification."DV 90";
        ItemJournalLine."Solids Pct" := TrackingSpecification."Solids Pct";
        ItemJournalLine.Mesh := TrackingSpecification.Mesh;
        ItemJournalLine.Odor := TrackingSpecification.Odor;
        ItemJournalLine."Pyruvate Pct" := TrackingSpecification."Pyruvate Pct";
        ItemJournalLine."Particle Size" := TrackingSpecification."Particle Size";
        ItemJournalLine."Optical Rotation" := TrackingSpecification."Optical Rotation";
        ItemJournalLine.Other := TrackingSpecification.Other;
    end;


    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Item Jnl.-Post Line", 'OnAfterInitItemLedgEntry', '', true, true)]
    local procedure CU22IJLtoILE(var NewItemLedgEntry: Record "Item Ledger Entry"; ItemJournalLine: Record "Item Journal Line")
    begin
        NewItemLedgEntry.PH := ItemJournalLine.PH;
        NewItemLedgEntry.Viscosity := ItemJournalLine.Viscosity;
        NewItemLedgEntry.Density := ItemJournalLine.Density;
        NewItemLedgEntry.Color := ItemJournalLine.Color;
        NewItemLedgEntry."Tensile Strength" := ItemJournalLine."Tensile Strength";
        NewItemLedgEntry."Evaporation Loss Pct" := ItemJournalLine."Evaporation Loss Pct";
        NewItemLedgEntry."Evaporation Time" := ItemJournalLine."Evaporation Time";
        NewItemLedgEntry."Extensional Viscosity" := ItemJournalLine."Extensional Viscosity";
        NewItemLedgEntry."Zero Shear Number" := ItemJournalLine."Zero Shear Number";
        NewItemLedgEntry."Surface Tension" := ItemJournalLine."Surface Tension";
        NewItemLedgEntry."DV 10" := ItemJournalLine."DV 10";
        NewItemLedgEntry."DV 90" := ItemJournalLine."DV 90";
        NewItemLedgEntry."Solids Pct" := ItemJournalLine."Solids Pct";
        NewItemLedgEntry.Mesh := ItemJournalLine.Mesh;
        NewItemLedgEntry.Odor := ItemJournalLine.Odor;
        NewItemLedgEntry."Pyruvate Pct" := ItemJournalLine."Pyruvate Pct";
        NewItemLedgEntry."Particle Size" := ItemJournalLine."Particle Size";
        NewItemLedgEntry."Optical Rotation" := ItemJournalLine."Optical Rotation";
        NewItemLedgEntry.Other := ItemJournalLine.Other;
    end;
}