# Voraussetzungen
Einmalig müssen in der Umgebung folgende Module Installiert werden

<pre>
Install-Module Microsoft.Graph -Scope CurrentUser
Install-Module -Name MicrosoftTeams
</pre>
Das Graph Module dient der Kommunikation mit der Nutzerverwaltung ( Azure Entra )


# Login  Teams

Zu Begin der Sitzung muss man sich einlogen 

<pre>
  Connect-MicrosoftTeams 
</pre>


# Login User Verwaltung

<pre>
Connect-MgGraph -Scopes "User.ReadWrite.All","Group.ReadWrite.All"
</pre>



# Accounts mittels CSV anlegen
 
1.) Daten in einem CSV File zur Verfügung stellen. Format muss wie in [testdata/accounts.csv](testdata/accounts.csv) sein.

2.) Login in der User Verwaltung

3.) Script scripts/accounts.ps1 ausführen

