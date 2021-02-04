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

<# Delete that file!  A script to delete games as well as entries.  Version 2

Menu 1:  Delete ROM\Archive and mark entries in Playnite as Uninstalled.

Menu 2:  Delete ROM\Archive and Delete the entry within Playnite.

#Things to add:
#Check for other files that have the same name in the directory and delete them too.  (File.bin, File.rom, File.cue, etc)
#>


$RequestedGames = $PlayniteApi.MainView.SelectedGames | Where-Object {$_.GameImagePath}
$GamesDeleted = [int] 0
$GamesNotDeleted = [int] 0
$CurrentGame = Null

<#function Menu1

	$__logger ("$Menu1 of Delete That File selected.")
	Throw warning message with Yes\No "Are you sure?  This cannot be undone."
	If No,
		LOG: $Menu1 cancelled. 
		BREAK
	If Yes:
		LOG: $Menu1 activated
		For-Each ($iterate in $requestedgames)
			if (Test-Path $iterate.GameImagePath)
			{
				Remove-Item $game.GameImagePath
				LOG: The file at $ImagePath was deleted.
			}
			Else
			{
				LOG: The file at $ImagePath was not deleted.
			}
			Mark $CurrentGame as Uninstalled
			LOG:  $CurrentGame marked Uninstalled.
		MessageBox:  $GamesDeleted " out of " $GamesDeleted + $GamesNotDeleted "  completed successfully!"
		LOG: "$Menu1 of Delete That File completed successfully!  " $GamesDeleted " were deleted and " $GamesNotDeleted " weren't."
#>
