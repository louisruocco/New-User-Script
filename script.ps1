function newUser {
    param (
        [Parameter(Mandatory)]
        [string]$name
    )

    $password = Read-Host -AsSecureString
    New-LocalUser -Name $name -Password $password -description  "test user"
}

newUser