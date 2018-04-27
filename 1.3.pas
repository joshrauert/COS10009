program HelloUser;

procedure Main();

var
name: String;
age, year, yearBorn: Integer;
begin
writeLn('Please enter your name: ');
1ReadLn(name);
WriteLn('How old are you this year?: ');
ReadLn(age);
writeLn('What year is it?: ');
ReadLn(year);
yearBorn := year - age;
WriteLn('Hello ', name, ',you were born in ', yearBorn);
WriteLn('Hit enter to continue');
ReadLn();
end;

begin
Main();
end.
