# Import teams from CSV
param (
    [Parameter(Mandatory)]
    [string]  $importfile 
)

$teams = Import-Csv -Path $importfile
foreach ($team in $teams) {
    
    $displayName = $team.Team

    $group = New-Team -displayname $displayName -Visibility "private" -MailNickName $displayName.ToLower()
    Add-TeamUser -GroupId $group.GroupId -User $team.Owner -Role "Owner"
   
}

