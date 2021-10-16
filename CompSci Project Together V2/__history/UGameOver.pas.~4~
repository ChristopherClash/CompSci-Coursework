unit UGameOver;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.jpeg, UScoreBoard;

type
  TGameOver = class(TForm)
    ExitGame: TButton;
    Panel1: TPanel;
    Logo: TImage;
    GameOverMessage: TLabel;
    ScoreMessage: TLabel;
    ViewScores: TButton;
    procedure ExitGameClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ViewScoresClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  GameOver: TGameOver;
  CloseGame : boolean;
  EndScore : integer;
  ScoreFile : TextFile;
  Scores : string;
implementation

{$R *.dfm}

uses UMainGame;

procedure TGameOver.ExitGameClick(Sender: TObject);
begin
  MainGameForm.Close
end;

procedure TGameOver.FormShow(Sender: TObject);
begin
  EndScore := MainGameForm.Score;
  AssignFile(ScoreFile, 'E:\CompSci Release Ver\CompSci Release Ver\CompSci Project Together V2\Scores.txt');
  Append(ScoreFile);
  Writeln(ScoreFile, EndScore);
  CloseFile(ScoreFile);
  ScoreMessage.Caption := 'Your score is ' + inttostr(EndScore);
end;

procedure TGameOver.ViewScoresClick(Sender: TObject);
begin
 ScoreBoard.Show;
end;

end.
