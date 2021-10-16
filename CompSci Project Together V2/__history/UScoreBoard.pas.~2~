unit UScoreBoard;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls;

type
  TScoreboard = class(TForm)
    ScorePanel: TPanel;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Scoreboard: TScoreboard;
  HighScores : TextFile;
  Scores : integer;
implementation

{$R *.dfm}

procedure TScoreboard.FormShow(Sender: TObject);
var i : integer;
var ScoreArray : array[0..5] of integer;
begin
 AssignFile(HighScores, 'E:\CompSci Release Ver\CompSci Release Ver\CompSci Project Together V2\Scores.txt');
 Reset(Highscores);
 while not Eof(HighScores) do
  begin
    for i := 0 to 5 do
      begin
        readln(Highscores, Scores);
        ScoreArray[i] := Scores;
      end;
    CloseFile(Highscores);

  end;
end;
end.
