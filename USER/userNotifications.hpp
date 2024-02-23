/*
*   Hier können eigene Notifications erstellt werden.
*   Ist in CfgNotifications included.
*/

#include "..\node_modules\grad-customGear\cfgNotifications.hpp"

    class SpectatorAscending
    {
      title = "New Spectator!"; // Title displayed as text on black background. Filled by arguments.
      iconPicture = "\A3\ui_f\data\igui\cfg\radar\danger_ca.paa"; // Small icon displayed in left part. Colored by "color", filled by arguments.
      iconText = ""; // Short text displayed over the icon. Colored by "color", filled by arguments.
      description = "%1 chose to spectate."; // Brief description displayed as structured text. Colored by "color", filled by arguments.
      color[] = {1,1,1,1}; // Icon and text color
      duration = 5; // How many seconds will the notification be displayed
      priority = 0; // Priority; higher number = more important; tasks in queue are selected by priority
      difficulty[] = {}; // Required difficulty settings. All listed difficulties has to be enabled
    };

    class AllSpectators
    {
      title = "All Spectators"; // Title displayed as text on black background. Filled by arguments.
      iconPicture = "\A3\UI_F_MP_Mark\Data\Tasks\Types\meet_ca.paa"; // Small icon displayed in left part. Colored by "color", filled by arguments.
      iconText = ""; // Short text displayed over the icon. Colored by "color", filled by arguments.
      description = "%1 chose to spectate."; // Brief description displayed as structured text. Colored by "color", filled by arguments.
      color[] = {1,1,1,1}; // Icon and text color
      duration = 5; // How many seconds will the notification be displayed
      priority = 0; // Priority; higher number = more important; tasks in queue are selected by priority
      difficulty[] = {}; // Required difficulty settings. All listed difficulties has to be enabled
    };

    class Default
    {
      title = "Info"; // Title displayed as text on black background. Filled by arguments.
      iconPicture = ""; // Small icon displayed in left part. Colored by "color", filled by arguments.
      iconText = ""; // Short text displayed over the icon. Colored by "color", filled by arguments.
      description = "%1"; // Brief description displayed as structured text. Colored by "color", filled by arguments.
      color[] = {1,1,1,1}; // Icon and text color
      duration = 5; // How many seconds will the notification be displayed
      priority = 0; // Priority; higher number = more important; tasks in queue are selected by priority
      difficulty[] = {}; // Required difficulty settings. All listed difficulties has to be enabled
    };