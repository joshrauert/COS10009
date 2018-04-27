program SimplePolitics;
uses TerminalUserInput;
Const YEAR_TRUMP_ELECTED = 2016;

procedure Main();

var
name: String;
yearBorn, ageWhenTrumpElected: Integer;
brexit: Boolean;
begin
     name := ReadString('Please enter your name: ');
     yearBorn := ReadInteger('What year were you born? ');
     ageWhenTrumpElected := YEAR_TRUMP_ELECTED - yearBorn;
     WriteLn(name, ' you were ', ageWhenTrumpElected, ' years old when Trump was elected');
     brexit := ReadBoolean('Are you a brexit supporter? ');
     if (brexit) then
        writeln(name, ' is a brexit supporter')
     else
        writeln(name, ' is not a brexit supporter');
     WriteLn('Hit enter to continue');

end;

begin
    Main();
end.
