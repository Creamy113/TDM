//The waiting/lobby area where everyone is tped before the match begins
waitUntil 
removeAllWeapons player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeUniform player;
player setPos [12745.8,3226.61,0.00143886];

uiSleep 5;


redPlayerCap = 1;    //Change to 2
bluePlayerCap = 1;   //Change to 2
execVM "LM.sqf";

0 spawn {
  _loopCloserRed = true;
    while {_loopCloserRed} do {
        if (damage player isEqualTo 1 && team isEqualTo 1) then {
          player setPos [12745.8,3226.61,0.00143886];
          redPlayerCap = redPlayerCap - 1;
          publicVariable "redPlayerCap";
          hint format ["%1", redPlayerCap];
          _loopCloserRed = false;
        };
      };
};

0 spawn {
  _loopCloserBlue = true;
    while {_loopCloserBlue} do {
      if (damage player isEqualTo 1 && team isEqualTo 2) then {
        player setPos [12745.8,3226.61,0.00143886];
        bluePlayerCap = bluePlayerCap - 1;
        publicVariable "bluePlayerCap";
        hint format ["%1", bluePlayerCap];
        _loopCloserBlue = false;
      };
    };
};

0 spawn {
    _loopCloser1 = true;
      while {_loopCloser1} do {
//        if (blueScore isEqualTo 5 || redScore isEqualTo 5) exitWith {};
        if (bluePlayerCap isEqualTo 0) then {
          hint "The red team has won the round!";
          redScore = redScore + 1;
          hint format ["The current score is Blue Team %1, Red Team %2", blueScore, redScore];
          removeBackpack player;
          _loopCloser1 = false;
          execVM "TDM.sqf";
        };
      };

};

0 spawn {
    _loopCloser2 = true;
      while {_loopCloser2} do {
//        if (blueScore isEqualTo 5 || redScore isEqualTo 5) exitWith {};
        if (redPlayerCap isEqualTo 0) then {
          hint "The blue team has won the round!";
          blueScore = BlueScore + 1;
          hint format ["The current score is Blue Team %1, Red Team %2", blueScore, redScore];
          removeBackpack player;
          _loopCloser2 = false;
          execVM "TDM.sqf";
        };
      };

};

  while {true} do {
  uiSleep 0.1;
  if (blueScore isEqualTo 5) exitWith {
        Hint "The Blue Team has won!";
        _loopCloser1 = false;
        _loopCloser2 = false;
        _loopCloserBlue = false;
        _loopCloserRed = false;
      };
  if (redScore isEqualTo 5) exitWith {
        Hint "The Red Team has won!";
        _loopCloser1 = false;
        _loopCloser2 = false;
        _loopCloserBlue = false;
        _loopCloserRed = false;
        };
  };
