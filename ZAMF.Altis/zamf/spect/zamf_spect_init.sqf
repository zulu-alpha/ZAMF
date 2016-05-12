// Start the spectator script if the respawn counter is suitably long
player addEventHandler ["killed", {
	if (playerRespawnTime > 30) then {
		["Initialize", [player, [], true]] call BIS_fnc_EGSpectator;
	};
}];

// End the spactator script when the player comes back alive
player addEventHandler ["respawn", {
	["Terminate"] call BIS_fnc_EGSpectator;
}];
