#include <sourcemod>
#include <sdktools>
#include <cstrike>

#define PLUGIN_NAME		"CSSPayer"
#define PLUGIN_AUTHOR	"filip"
#define PLUGIN_VERSION	"0.0.1"

public Plugin myinfo = 
{
    name = PLUGIN_NAME, 
    author = PLUGIN_AUTHOR, 
    description = "dfsdfsdfsdf", 
    version = PLUGIN_VERSION, 
    url = "http://www.privatezona.ru/"
};

public void OnPluginStart(){
	RegConsoleCmd("m", Command_DMoney, "dfgdfgdf");
	RegConsoleCmd("n", Command_Classname, "324fgdf");
}
public Action Command_DMoney(int client, int args){
	if (client && IsClientInGame(client) && IsPlayerAlive(client)){
		int TempInteger = GetEntProp(client, Prop_Send, "m_iPrimaryAddon");
		PrintHintText(client, "m_iPrimaryAddon %i", TempInteger);
	}
	return Plugin_Handled;
}

public Action Command_Classname(int client, int args){
	char Classname[128];
	GetEntityClassname(1200, Classname, sizeof(Classname));
	PrintHintText(client, "%s", Classname);
}
