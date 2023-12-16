#include <sourcemod>

#pragma newdecls required
#pragma semicolon 1

public Plugin myinfo =
{
	name = "Message in round",
	author = "Cahid Armatura",
	description = "Write message in start round",
	version = "1.0.0",
	url = "https://github.com/zloybik"
}

public void OnPluginStart()
{
    HookEvent("round_start", MessageInRound);
}

public Action MessageInRound(Event event, const char[] name, bool dontBroadcast) {
    PrintToChatAll("\x01Заметили \x02читера\x01? Напишите на него \x02жалобу \x01на нашем Discord сервере");
	PrintToChatAll("\x01Чтобы выбрать нож напишите \x0C!knife");
	PrintToChatAll("\x01Чтобы выбрать скины напишите \x0C!ws");
}