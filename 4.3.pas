program CharacterMoving;
uses SwinGame, sgTypes;
const
CIRCLE_RADIUS = 150;

procedure Main();
var
  x : integer = 400;
  y : integer = 300;

begin
  OpenGraphicsWindow('Character Moving', 800, 600);
  repeat
      ProcessEvents();
      if KeyDown(LeftKey) and (x - CIRCLE_RADIUS > 0) then x := x - 1;
      if KeyDown(RightKey) and (x + CIRCLE_RADIUS < ScreenWidth()) then x := x + 1;
      if KeyDown(UpKey) and (y - CIRCLE_RADIUS > 0) then y := y - 1;
      if KeyDown(DownKey) and (y + CIRCLE_RADIUS < ScreenHeight()) then y := y + 1;
      ClearScreen(ColorWhite );
      FillCircle(ColorGreen ,x ,y ,100 );
      DrawText('Close the window' ,ColorBlack ,50 ,50 );
      RefreshScreen(60);


  until WindowCloseRequested();
  end;

begin
    Main();
end.
