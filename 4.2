program UsingEnumerations;
uses TerminalUserInput;

type
    TrackRec = record
        name: String;
        location: String;
    end;

    GenreType = (Pop, Rap, Rock, Classic);
    AlbumRec = Record
        name: String;
        genre: GenreType;

        tracks: array of TrackRec;
    end;
type AlbumArray = array of AlbumRec;

function ReadGenre(prompt: string): GenreType;
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
      result := GenreType(val-1);
  end;

procedure NewAlbum(var albums: AlbumArray);
var
    number, i, tracks, y: Integer;
    option: GenreType;
begin

    number := ReadInteger('Year Released: ');
    WriteLn( number);
    SetLength(albums, number);

    for i := Low(albums) to High(albums) do
    begin
        albums[i].name := ReadString('Enter artist name:');
        WriteLn( albums[i].name);

        option := ReadGenre('Please select a genre');

        WriteLn( albums[i].genre);

        tracks := ReadIntegerRange('How many tracks in the album? (max 20)', 0, 20);
        WriteLn( tracks);
        SetLength(albums[i].tracks, tracks);

            albums[i].tracks[i].location := ReadString('Track Location:');
            WriteLn( albums[i].tracks[i].location);


        WriteLn('-----------------------------------------');
        WriteLn(albums[i].name);
        case option of
        Pop: WriteLn('Pop');
        Rap: WriteLn('Rap');
        Classic: WriteLn('Classic');
        Rock: WriteLn('Rock');
      end;
            WriteLn( albums[i].tracks[i].location);
            WriteLn( number);
    end;
end;


procedure Main();
var
    i, count, select, change: Integer;
    albums: AlbumArray;
begin

    WriteLn('Please select an option: ');
    WriteLn('-------------------------');
    WriteLn('1. Read Albums');
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
