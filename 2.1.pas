program HelloUserWithFunctions;
uses TerminalUserInput;
procedure Main();

var
name: String;
age, year, yearBorn: Integer;
begin
name := ReadString('Please enter your name: ');
1age := ReadInteger('How old are you this year? : ');
year := ReadInteger('What year is it?');
yearBorn := year - age;
WriteLn('Hello ', name, ',you were born in ', yearBorn);
WriteLn('Hit enter to continue');

end;

begin
Main();
end.
