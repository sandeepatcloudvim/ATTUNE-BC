codeunit 50001 POPendingConfirmationEmail
{
    trigger OnRun()
    begin
        ToEmail := 'libbyandon@attuneag.com';

        CLEAR(SMTPMail);
        SMTPMailSetup.GET;
        CompanyInformation.GET;

        SMTPMail.CreateMessage('MSDN', SMTPMailSetup."User ID", ToEmail, 'PO Confirmation ' + CompanyInformation.Name, '', TRUE);
        SMTPMail.AppendBody(BodyFun());
        SMTPMail.AppendBody('<table border="1"><tr><td><b>Order No.</td><td><b>Vendor Name</td><td><b>Order Date</td></tr>');
        PurchaseHeader.RESET;
        PurchaseHeader.SETRANGE("Document Type", PurchaseHeader."Document Type"::Order);
        PurchaseHeader.SETRANGE(Status, PurchaseHeader.Status::Released);
        PurchaseHeader.SETFILTER("Vendor Order No.", '%1', '');
        IF PurchaseHeader.FINDFIRST THEN
            REPEAT
                SMTPMail.AppendBody('<tr><td>' + PurchaseHeader."No." + '</td><td>' + PurchaseHeader."Buy-from Vendor Name" + '</td><td>' + FORMAT(PurchaseHeader."Order Date") + '</td></tr>');
            UNTIL PurchaseHeader.NEXT = 0;

        SMTPMail.Send;
        CLEAR(SMTPMail);
        Message('Done');


    end;

    local procedure BodyFun() Body: Text
    begin
        Body := 'Dear User,';
        Body += '<br><br>' + 'The following Purchase Orders have not been confirmed:' + '<br><br>';
    end;

    var
        PurchaseHeader: Record "Purchase Header";
        SMTPMailSetup: Record "SMTP Mail Setup";
        SMTPMail: Codeunit "SMTP Mail";
        CompanyInformation: Record "Company Information";
        ToEmail: Text;
}