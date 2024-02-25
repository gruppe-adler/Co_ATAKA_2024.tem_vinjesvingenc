/*
*   Legt allgemeine Information über die Mission fest.
*/

author = "nomisum für Gruppe Adler";                                               // Missionsersteller
onLoadName = "Co ATAKA 2024";                                                   // Name der Mission
onLoadMission = "Russian forces on the move";                                                             // Beschreibung der Mission (wird im Ladebildschirm unterhalb des Ladebildes angezeigt)
loadScreen = "pic\loading.jpg";                                                // Ladebild
overviewPicture = "";                                                           // Bild, das in der Missionsauswahl angezeigt wird
overviewText = "";                                                              // Text, der in der Missionsauswahl angezeigt wird

class CfgLeaflets
{
  class West // Configuration for 1Rnd_Leaflets_West_F
  {
    text = "RUSSIAN HORROR - large bear"; // Text shown when previewing the leaflet full-screen. Ideally should be localized, so even player who cannot read the image can get the information
    texture = "pic\propaganda2.jpg"; // Leaflet texture shown when previewing the leaflet full-screen
    model = "\grad_leaflets\leaflet.p3d";
  }
};
