# Table containing the Source URL, Name of the installer I.E firefox.exe, Argument for silent installation 
# Table format
# $Source = www.firefox.com
# $Name = firefox.exe
# $Arg = /S

$tabName = "ProgramList" 

#Create Table object
$table = New-Object system.Data.DataTable “$tabName”

#Define Columns
$col1 = New-Object system.Data.DataColumn ColumnName1,("$Source")
$col2 = New-Object system.Data.DataColumn ColumnName2,("$Name")
$col3 = New-Object system.Data.DataColumn ColumnName3,("$Arg")

#Add the Columns
$table.columns.add($col1)
$table.columns.add($col2)
$table.columns.add($col3)

#Column 1 is $Source, Column 2 is $Name, Column 3 is $Arg
Function Add-To-Table ($Source, $Name, $Arg) 

{#Create a row
$row = $table.NewRow()

#Enter data in the row
$row.ColumnName1 = "A"
$row.ColumnName2 = "1"

#Add the row to the table
$table.Rows.Add($row)}

Add-To-Table ("https://download.mozilla.org/?product=firefox-latest&os=win64&lang=en-US","firefox.exe","/S")
Add-To-Table ("https://v.mozilla.com/upload/VidyoDesktopAdminInstaller-win32-TAG_VD_3_6_14_0003.exe","vidyo.exe","/S")
Add-To-Table ("https://download.code42.com/installs/win/install/Code42CrashPlan/jre/Code42CrashPlan_6.7.2_Win64.msi","crashplan.msi","/passive")
