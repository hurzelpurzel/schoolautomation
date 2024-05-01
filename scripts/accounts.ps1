#
# 

param (
    [Parameter(Mandatory)]
    [string]  $importfile 
)

$users = Import-Csv -Path $importfile

# Create a password profile
$PasswordProfile = @{
    Password = 'Password123'
}

# Loop through each user in the CSV file
foreach ($user in $users) {
    # Create a new user
    $displayName = $user.FirstName +" " + $user.LastName
    $mailNickname = $user.FirstName + $user.LastName
    $newUser = New-MgUser -DisplayName $displayName -GivenName $user.FirstName -Surname $user.LastName -UserPrincipalName $user.UserPrincipalName -UsageLocation $user.UsageLocation  -PasswordProfile $passwordProfile -mailNickname $mailNickname -AccountEnabled

    # Assign a license to the new user
    #$e5Sku = Get-MgSubscribedSku -All | Where SkuPartNumber -eq 'SPE_E5'
    #Set-MgUserLicense -UserId $newUser.Id -AddLicenses @{SkuId = $e5Sku.SkuId } -RemoveLicenses @()
}

# Export the results to a CSV file
Write-Host "Successfully created accounts from  $importfile" 
#$users | Export-Csv -Path "C:\temp\NewAccountResults.csv" -NoTypeInformation