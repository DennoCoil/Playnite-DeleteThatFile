#CURRENTLY IN TESTING!  DO NOT USE!

#Currently testing:  Trying to delete the file

function GetMainMenuItems
{
    param($menuArgs)

    $ExtensionName = "Delete That File!"
    
    $menuItem1 = New-Object Playnite.SDK.Plugins.ScriptMainMenuItem
    $menuItem1.Description = "Deletes a single ROM file at the Game Path"
    $menuItem1.FunctionName = "DeleteThatFile"
    $menuItem1.MenuSection = "@$ExtensionName"

    <#$menuItem2 = New-Object Playnite.SDK.Plugins.ScriptMainMenuItem
    $menuItem2.Description = "Deletes files at the Game Path with same name but different extension"
    $menuItem2.FunctionName = "DeleteThatFile"
    $menuItem2.MenuSection = "@$ExtensionName"
    #>



    return $menuItem1,$menuItem2

}

function DeleteThatFile
{

    $PlayniteApi.MainView.SelectedGames | Where-Object {$_.GameImagePath} | ForEach-Object
    
        {

        If ($_.GameImagePath)

        {

        Remove-Item $_.GameImagePath

        }

        Else 
        
        {
        
        $PlayniteApi.Dialogs.ShowMessage("File not found.")
        
        }

        }

}
