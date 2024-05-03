# Import teammembers from CSV

param (
    [Parameter(Mandatory)]
    [string]  $importfile 
)

$teams = Import-Csv -Path $importfile
foreach ($team in $teams) {
    $displayName = $team.Team
    $group = Get-Team -displayname $displayName 
    Add-TeamUser -GroupId $group.GroupId -User $team.Member -Role "Member"
   
}

