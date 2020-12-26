#CURRENTLY IN TESTING!  DO NOT USE!

#Currently testing:  Showing correct paths

function GetMainMenuItems
{
    param($menuArgs)

    $ExtensionName = "Delete That File!"
    
    $menuItem1 = New-Object Playnite.SDK.Plugins.ScriptMainMenuItem
    $menuItem1.Description = "Deletes ROM and compressed files at the Game Path"
    $menuItem1.FunctionName = "DeleteThatFile"
    $menuItem1.MenuSection = "@$ExtensionName"

    return $menuItem1

}


function DeleteThatFile
{

#Setting up variables

$SelectedGames = $PlayniteApi.MainView.SelectedGames

$GamesPath = $PlayniteApi.Models.Game.GameImagePath

    if($SelectedGames)

    {
	    #Find the Game Path
	    #If game doesn't have a Game Path, throw an error
	
	    $GamesPath | $PlayniteApi.Dialogs.ShowMessage("The current path for the selected games are `"$GamePath`".");

	    #Invoke Powershell and Delete file from system

	    #Mark the gamess as Uninstalled

    }
}
