program PictureDrawing;
uses SwinGame, sgTypes;

begin
	OpenGraphicsWindow('Dart Board', 800, 600);
	ClearScreen(ColorWhite);


FillCircle(ColorRed, 400, 300, 200);
FillCircle(ColorBlack, 400, 300, 180);
FillCircle(ColorRed, 400, 300, 160);
FillCircle(ColorBlack, 400, 300, 140);
FillCircle(ColorRed, 400, 300, 120);
FillCircle(ColorBlack, 400, 300, 100);
FillCircle(ColorRed, 400, 300, 80);
FillCircle(ColorBlack, 400, 300, 60);
FillCircle(ColorRed, 400, 300, 40);
FillCircle(ColorBlack, 400, 300, 20);
	RefreshScreen();
	Delay(500000);
end.
