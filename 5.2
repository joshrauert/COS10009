program Music;
uses TerminalUserInput;

type
    TrackRec = record
        name: String;
        location: String;
    end;

    GenreKind = (Pop, Rap, Rock, Classic);
    AlbumRec = Record
        name: String;
        genre: GenreKind;

        tracks: array of TrackRec;
    end;
type AlbumArray = array of AlbumRec;

function ReadGenre(prompt: string): GenreKind;
  var
      val: Integer;
  begin
      WriteLn('Press 1 for Pop');
      WriteLn('Press 2 for Rap');
      WriteLn('Press 3 for Rock');
      WriteLn('Press 4 for Classic');
      val := ReadInteger(prompt);

      while (val<1) or (val>4) do
      begin
          WriteLn('Please enter a number between 1-4');
          val := ReadInteger('');
      end;
      result := GenreKind(val-1);
  end;

procedure NewAlbum(var albums: AlbumArray);
var
    number, i, tracks, y, p: Integer;
    option: GenreKind;
begin

    number := ReadInteger('How many albums do you want to make?: ');
    WriteLn( number);
    SetLength(albums, number);

    for i := Low(albums) to High(albums) do
    begin
        albums[i].name := ReadString('Enter album name:');
        WriteLn( albums[i].name);

        option := ReadGenre('Please select a genre');

        WriteLn( albums[i].genre);

        tracks := ReadIntegerRange('How many tracks do you want to enter? (max 20)', 0, 20);
        WriteLn( tracks);
        SetLength(albums[i].tracks, tracks);

        for y := Low(albums[i].tracks) to tracks - 1 do
        begin
            albums[i].tracks[y].name := ReadString('Track name:');
            WriteLn( albums[i].tracks[y].name);
            albums[i].tracks[y].location := ReadString('Track Location:');
            WriteLn( albums[i].tracks[y].location);
        end;

        WriteLn('-----------------------------------------');
        WriteLn(albums[i].name);
        case option of
        Pop: WriteLn('Pop');
        Rap: WriteLn('Rap');
        Classic: WriteLn('Classic');
        Rock: WriteLn('Rock');
      end;
for y := Low(albums[i].tracks) to High(albums[i].tracks) do WriteLn(y +1,' ',albums[i].tracks[y].name);

  p := ReadInteger('Please select an album: ');
  p := p - 1;
  number := ReadIntegerRange('Please select a song from album:', 1, 20);
  number := number - 1;

  WriteLn('Now playing');
  WriteLn('Track selected: ', albums[i].tracks[number].name);
  WriteLn('Album: ', albums[i].name);
    end;
end;


procedure Main();
var
    i, count, select, change: Integer;
    albums: AlbumArray;
begin

    WriteLn('Please select an option: ');
    WriteLn('-------------------------');
    WriteLn('1. Create Albums');
    WriteLn('2. Exit');
    WriteLn('-------------------------');
    repeat
        i := ReadInteger('Select option for menu:');
        case i of
            1: NewAlbum(albums);
        end;
    until i = 2;
end;

begin
    Main();
end.
