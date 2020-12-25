#CURRENTLY IN TESTING!  DO NOT USE!

#Currently testing:  Showing correct paths

function DeleteThatFile

{

#Setting up variables

$SelectedGames = $PlayniteApi.MainView.SelectedGames

$GamesPath = $PlayniteApi.Models.Game.GameImagePath

    foreach $SelectedGames

    {
    
	    #Find the Game Path
	    #If game doesn't have a Game Path, throw an error
	
	    $GamesPath | $PlayniteApi.Dialogs.ShowMessage("The current path for the selected games are `"$GamePath`".");

	    #Invoke Powershell and Delete file from system

	    #Mark the gamess as Uninstalled

    }
