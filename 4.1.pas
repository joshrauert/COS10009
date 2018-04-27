program BasicReadWrite;

type
  Person = record
        name: String;
        age: String;
  end;

  PersonArray = Array [1..20] of Person;

procedure WriteLinesToFile(var myFile: TextFile);
begin
	WriteLn(myFile, 5);
  	WriteLn(myFile, 'Fred Smith');
  	WriteLn(myFile, 28);
  	WriteLn(myFile, 'Jill Jones');
  	WriteLn(myFile, 54);
  	WriteLn(myFile, 'John Doe');
  	WriteLn(myFile, 15);
  	WriteLn(myFile, 'Samantha Pritchard');
  	WriteLn(myFile, 19);
  	WriteLn(myFile, 'Hans Fredrickson');
  	WriteLn(myFile, 77);
end;

procedure PrintRecordToTerminal(var recordsArray: PersonArray);

var
 i: Integer;

begin
  i := 1;
  while i < 6 do
    begin
      WriteLn('Name: ' ,recordsArray[i].name, ' Age: ', recordsArray[i].age);
      i +=1;
    end;
end;

procedure ReadLinesFromFile(var myFile: TextFile; var recordsArray: PersonArray);

var
  i: Integer;
  size: Integer;

begin
  i := 1;
  size :=5;
  ReadLn(myFile, size);
  while i <= 5 do
    begin
      ReadLn(myFile, recordsArray[i].name);
      ReadLn(myFile, recordsArray[i].age);
      i +=1;
    end;

PrintRecordToTerminal(recordsArray);

end;

procedure Main();

var myFile: TextFile;
recordsArray: PersonArray;
begin

  AssignFile(myFile, 'mytestfile.dat');
  ReWrite(myFile);
  WriteLinesToFile(myFile);
  Close(myFile);

  AssignFile(myFile, 'mytestfile.dat');
  Reset(myFile);
  ReadLinesFromFile(myFile, recordsArray);
  Close(myFile);
  ReadLn();
end;

begin
  Main();
end.
