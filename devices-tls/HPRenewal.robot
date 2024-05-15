*** Settings ***
Library     Browser

*** Test Cases ***
HP Printer Cert renewal
    Set Browser Timeout    timeout=1 minute
    New Page    https://hp-m575m.cns.me
    Get Title    contains    HP
    Click    "Sign In"
    Fill Secret    input#PasswordTextBox    %HP_PASSWORD   
    Click    id=signInOk
    Click    text=Networking
    Click    text="Mgmt. Protocols"
    Click    text="Configure..."
    Click    text="Import Certificate and Private Key"
    Click    text="Next >"
    Upload File By Selector    selector=input#Import_FileName    path=certificate.pfx
    Fill Text    input#password    password   
    Click    text="Finish"
    Get Title    contains    HP