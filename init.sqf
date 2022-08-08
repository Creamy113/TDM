// switch 1 to 4 with pJoined

pJoined = 0;
team = 0;
playerSpot = 0;
redScore = 0;
blueScore = 0;

pJoin = start1 addAction ["Join Event",
  {
      hint "You have joined the event, the event will start soon!";
      pJoined = pJoined + 1;
      publicVariable "pJoined";
        if (pJoined isEqualto 1) then {playerSpot = 1};
        if (pJoined isEqualto 2) then {playerSpot = 2};
        if (pJoined isEqualto 3) then {playerSpot = 3};
        if (pJoined isEqualto 4) then {playerSpot = 4};
      teamRed = [1,3];
      teamBlue = [2,4];
        if (playerSpot in teamRed) then {team = 1} else {team = 2};

        waitUntil {pJoined isEqualTo 1};
            execVM "TDM.sqf";
            player removeAction pJoin;
  }];
