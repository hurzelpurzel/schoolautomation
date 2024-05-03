# Archive team by name

param (
    [Parameter(Mandatory)]
    [string]  $teamname 
)

$group = Get-Team -displayname $teamname 
Set-TeamArchivedState   -GroupId $group.GroupId   -Archived:$true -SetSpoSiteReadOnlyForMembers:$true 
   
