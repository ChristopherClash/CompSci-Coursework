program Game;

uses
  Vcl.Forms,
  UMainGame in 'UMainGame.pas' {MainGameForm},
  UGameOver in 'UGameOver.pas' {GameOver},
  UScoreBoard in 'UScoreBoard.pas' {Scoreboard};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainGameForm, MainGameForm);
  Application.CreateForm(TGameOver, GameOver);
  Application.CreateForm(TScoreboard, Scoreboard);
  Application.Run;
end.
