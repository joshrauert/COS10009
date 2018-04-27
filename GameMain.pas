program GameMain;
uses SwinGame, sgTypes; function buttONClickED(p1, Next_PARAM_thingie: Single; W, lasTonE: Integer): Boolean; var blah, blee: Single; _r_, BTMOB: Single; begin blah := MouseX(); blee := MouseY(); _r_ := p1 + W; BTMOB := Next_PARAM_thingie + lasTonE; result := false; if MouseClicked( LeftButton ) then begin if (blah >= p1) and (blah <= _r_) then begin result := true; end; end; end;

ProCEDuRE Main();
vAR
  clr: Color;
BEGin
  OpenGraphicsWindow('Test Program for Button Click Code', 800, 600); ShowSwinGameSplashScreen(); clr := ColorWhite;
  
  repEAT clEARscreeN(clr); dRAWfrAMerATE(0,
0);                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  FILLRECTangle(ColorGrey, 50, 
50, 
100, 30); dRAWteXT('Click Me', ColorBlack, 'arial.ttf', 14, 55, 55);
    
    ReFRESHscreen(); PROcesseveNts();

    iF BUTToncLICKed(50, 50, 100, 30) tHEN begIN clr := RANDomRGBColor(255);
end;  until WindowCloseRequested();
end;begin maIN(); end.
