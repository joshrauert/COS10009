program NameTester;
uses TerminalUserInput;

  Procedure OutputSillyName(name: string);
  var
  i: Integer;

  begin
    Write(name, ' is an ');

  i := 0;
  While i < 60 do
  begin
  Write(' silly ');
  i +=1;
  end;
  WriteLn('name.');
  end;

Procedure Main();

var
name: String;


begin

       name := ReadString('Please enter your name: ');
       if (name = 'Josh') then
       WriteLn('Awesome Name!')
       else
       if (name = 'John') then
       WriteLn('Awesome Name!')
       else
       OutputSillyName(name);
end;




begin
    Main();
end.
