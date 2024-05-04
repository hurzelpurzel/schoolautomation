# Voraussetzungen
Einmalig müssen in der Umgebung folgende Module Installiert werden

<pre>
Install-Module Microsoft.Graph -Scope CurrentUser
Install-Module -Name MicrosoftTeams
</pre>
Das Graph Module dient der Kommunikation mit der Nutzerverwaltung ( Azure Entra )


# Login Teams Verwaltung

Zu Begin der Sitzung muss man sich einlogen.

<pre>
  Connect-MicrosoftTeams 
</pre>

Im Browser erscheint dann ein Microsoft Login. Näaturlich braucht man die nötige Berechtigung.


# Login User/Account Verwaltung

Zu Begin der Sitzung muss man sich einlogen.

<pre>
Connect-MgGraph -Scopes "User.ReadWrite.All","Group.ReadWrite.All"
</pre>

Im Browser erscheint dann ein Microsoft Login. Natürlich braucht man die nötige Berechtigung.

# Logout

Damit man sicher ausgelogt ist sind folgnde Kommandos hilfreich.
<pre>
  Disconnect-MicrosoftTeams 
  Disconnect-MgGraph 
</pre>



# Bearbeitung CSV

Die CSV Vorlagedateien kann man mit z.B Excel öffnen und bearbeiten. Wichitg ist das man Sie vor der Veraarbeitung wieder im CSV Format abspeichert.

# Accounts mittels CSV anlegen
 
1.) Daten in einem CSV File zur Verfügung stellen. Format muss wie in [testdata/accounts.csv](testdata/accounts.csv) sein. Die erste Zeile muss die Spaltennamen enthlaten.

2.) Login in der User Verwaltung

3.) Script scripts/accounts.ps1 ausführen. Hierbei muss der Pfad zur Datei übergeben werden.

# Teams mittels CSV anlegen
 
1.) Daten in einem CSV File zur Verfügung stellen. Format muss wie in [testdata/teams.csv](testdata/teams.csv) sein. Die erste Zeile muss die Spaltennamen enthlaten.

2.) Login in der Teams Verwaltung

3.) Script scripts/teams.ps1 ausführen. Hierbei muss der Pfad zur Datei übergeben werden.

# Teammember mittels CSV hinzufügen
 
1.) Daten in einem CSV File zur Verfügung stellen. Format muss wie in [testdata/teammember.csv](testdata/teammember.csv) sein. Die erste Zeile muss die Spaltennamen enthlaten.


2.) Login in der Teams Verwaltung

3.) Script scripts/teammember.ps1 ausführen.Hierbei muss der Pfad zur Datei übergeben werden.

