
program FoodHunter;
uses SwinGame, sgTypes, SysUtils;

const SPEED = 10;

type

    FoodKind = (Chips, Burger, Icecream, Pizza);

    FoodData = record
        kind : FoodKind;
        bmp: Bitmap;
        x, y: Integer;
        dx, dy: Integer;
    end;

    HunterData = record
        x, y: Integer;
        bmp: Bitmap;
        targetKind: FoodKind;
    end;

    FoodHunterData = record
        score: Integer;
        hunter: HunterData;
        food: array of FoodData;
        time: Timer;
    end;

    procedure LoadResources();
    begin
    	LoadBitmapNamed('Hunter', 	'Hunter.png');
    	LoadBitmapNamed('Chips', 	'Chips.png');
    	LoadBitmapNamed('Burger', 	'Burger.png');
    	LoadBitmapNamed('Icecream', 'Icecream.png');
    	LoadBitmapNamed('Pizza', 	'Pizza.png');
    	LoadBitmapNamed('SmallChips', 	'SmallChips.png');
    	LoadBitmapNamed('SmallBurger', 	'SmallBurger.png');
    	LoadBitmapNamed('SmallIcecream', 'SmallIcecream.png');
    	LoadBitmapNamed('SmallPizza', 	'SmallPizza.png');
    	LoadSoundEffectNamed('Yum', 'Yum.wav');
    	LoadSoundEffectNamed('Yuk', 'Yuk.wav');
    end;

function FoodBitmap(kind: FoodKind): Bitmap;
begin
    case kind of
    Chips:  result := BitmapNamed('Chips');
    Burger:  result := BitmapNamed('Burger');
    Icecream: result := BitmapNamed('Icecream');
    Pizza:  result := BitmapNamed('Pizza');
else
    result := nil;
    end;
end;

function SmallFoodBitmap(kind: FoodKind): Bitmap;
begin
    case kind of
    Chips:  result := BitmapNamed('SmallChips');
    Burger:  result := BitmapNamed('SmallBurger');
    Icecream: result := BitmapNamed('SmallIcecream');
    Pizza:  result := BitmapNamed('SmallPizza');
else
    result := nil;
    end;
end;

function RandomFoodKind() : FoodKind;
begin
    result := FoodKind(Rnd(4));
end;

function RandomFood() : FoodData;
begin
    result.kind := RandomFoodKind();
    result.bmp := FoodBitmap(result.kind);

    result.x := Rnd(ScreenWidth() - BitmapWidth(result.bmp));
    result.y := Rnd(ScreenHeight() - BitmapHeight(result.bmp));

    result.dx := Round(Rnd() * 4 - 2);
    result.dy := Round(Rnd() * 4 - 2);
end;


procedure DrawFood(const food: FoodData);
begin
    DrawBitmap(food.bmp, food.x, food.y);
end;

procedure DrawHunter(const hunter: HunterData);
var
    foodBmp: Bitmap;
    foodX, foodY: Single;
begin
    DrawBitmap(hunter.bmp, hunter.x, hunter.y);

    foodBmp := SmallFoodBitmap(hunter.targetKind);

    foodX := hunter.x + (BitmapWidth(hunter.bmp) - BitmapWidth(foodBmp)) / 2;
    foodY := hunter.y + (BitmapHeight(hunter.bmp)) / 2;

    DrawBitmap(foodBmp, foodX, foodY);
end;

procedure DrawGame(const game: FoodHunterData);
var
    i: Integer;
begin
    ClearScreen(ColorWhite);
    DrawText('Score: ' + IntToStr(game.score), ColorBlack, 0, 0);
    DrawHunter(game.hunter);

    for i := 0 to High(game.food) do
        DrawFood(game.food[i]);

    RefreshScreen(60);
end;

procedure WrapCharacter(bmp: Bitmap; var x, y: Integer);
begin
    if x < -BitmapWidth(bmp) then
    begin
        x := ScreenWidth();
    end
    else if x > ScreenWidth() then
    begin
        x := -BitmapWidth(bmp);
    end;

    if y < -BitmapHeight(bmp) then
    begin
        y := ScreenHeight();
    end
    else if y > ScreenHeight() then
    begin
        y := -BitmapHeight(bmp);
    end;
end;

procedure UpdateFood(var food: FoodData);
begin
    food.x += food.dx;
    food.y += food.dy;
    WrapCharacter(food.bmp, food.x, food.y);
end;

function FoodHitHunter(const food: FoodData; const hunter: HunterData): Boolean;
begin
    result := BitmapCollision(food.bmp, food.x, food.y, hunter.bmp, hunter.x, hunter.y);
end;

procedure CheckFoodCollision(var food: FoodData; const hunter: HunterData; var score:Integer);
begin
    if FoodHitHunter(food, hunter) then
    begin
        if food.kind = hunter.targetKind then
        begin
            PlaySoundEffect('Yum');
            score += 1;
        end
        else
        begin
            PlaySoundEffect('Yuk');
            score -= 1;
        end;

        food := RandomFood();
    end;
end;

procedure UpdateGame(var game: FoodHunterData);
var
    i: Integer;
begin
    for i := 0 to High(game.food) do
    begin
        UpdateFood(game.food[i]);
        CheckFoodCollision(game.food[i], game.hunter, game.score);
    end;

    if TimerTicks(game.time) > 5000 then
    begin
        ResetTimer(game.time);
        game.hunter.targetKind := RandomFoodKind();
    end;
end;

procedure HandleInput(var game: FoodHunterData);
begin
    ProcessEvents();

    if KeyDown(LeftKey) then game.hunter.x -= SPEED;
    if KeyDown(RightKey) then game.hunter.x += SPEED;
    if KeyDown(UpKey) then game.hunter.y -= SPEED;
    if KeyDown(DownKey) then game.hunter.y += SPEED;

    WrapCharacter(game.hunter.bmp, game.hunter.x, game.hunter.y);
end;

procedure SetupFood(var game: FoodHunterData; numFood: Integer);
var
    i: Integer;
begin
    SetLength(game.food, numFood);

    for i := 0 to High(game.food) do
        game.food[i] := RandomFood();
end;

procedure SetupGame(var game: FoodHunterData);
begin
    SetupFood(game, 5);

    game.score := 0;

    game.hunter.bmp := BitmapNamed('Hunter');
    game.hunter.x := Round((ScreenWidth() - BitmapWidth(game.hunter.bmp)) / 2);
    game.hunter.y := Round((ScreenHeight() - BitmapHeight(game.hunter.bmp)) / 2);
    game.hunter.targetKind := FoodKind(Rnd(4));

    game.time := CreateTimer();
    StartTimer(game.time);
end;

procedure Main();
var
    mainGameData: FoodHunterData;
begin
    OpenAudio();
    OpenGraphicsWindow('Food Hunter', 600, 600);
    LoadDefaultColors();
    LoadResources();

    SetupGame(mainGameData);

    repeat
        HandleInput(mainGameData);
        UpdateGame(mainGameData);
        DrawGame(mainGameData);
    until WindowCloseRequested();
end;

begin
    Main();
end.
