codeunit 50100 "HelloWorld"
{

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"System Initialization", 'OnAfterLogin', '', true, false)]
    local procedure OnAfterLogin()
    var
        TenantId: Text;
        Aad: Codeunit "Azure AD Tenant";
    begin
        TenantId := Aad.GetAadTenantId();
        if (TenantId = '') then
            Error('TenantId is empty');
    end;

}