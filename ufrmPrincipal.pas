unit ufrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls, Vcl.Imaging.pngimage, Vcl.ComCtrls;

type
  TfrmPrincipal = class(TForm)
    imgUsuarios: TImage;
    Label1: TLabel;
    imgReceber: TImage;
    imgPagar: TImage;
    imgCaixa: TImage;
    imgConsReceber: TImage;
    imgConsPagar: TImage;
    Label2: TLabel;
    Label3: TLabel;
    imgConfigura��o: TImage;
    imgNavegador: TImage;
    Image3: TImage;
    Image4: TImage;
    StatusBar1: TStatusBar;
    imgRelPagar: TImage;
    imgRelReceber: TImage;
    imgRelCaixa: TImage;
    BalloonHint: TBalloonHint;
    Timer: TTimer;
    Button1: TButton;
    procedure TimerTimer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure imgUsuariosClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure imgCaixaClick(Sender: TObject);
    procedure imgPagarClick(Sender: TObject);
    procedure imgReceberClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses uFrmCadastroBasico, uFrmCadastroUsuarios, uFuncoes, uFrmCadastroCaixa,
  uFrmCadastroPagar, uFrmCadastroReceber;

procedure TfrmPrincipal.Button1Click(Sender: TObject);
begin
  CriarForm(TfrmCadastroBasico, frmCadastroBasico);
end;

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Application.MessageBox('Deseja realmente sair?','Informa��o',MB_YESNO+MB_ICONQUESTION) = mrYes then
    Application.Terminate
  else
    Abort;
end;

procedure TfrmPrincipal.imgCaixaClick(Sender: TObject);
begin
  CriarForm(TfrmCadastroCaixa, frmCadastroCaixa);
end;

procedure TfrmPrincipal.imgPagarClick(Sender: TObject);
begin
  CriarForm(TfrmCadastroPagar, frmCadastroPagar);
end;

procedure TfrmPrincipal.imgReceberClick(Sender: TObject);
begin
  CriarForm(TfrmCadastroReceber,frmCadastroReceber);
end;

procedure TfrmPrincipal.imgUsuariosClick(Sender: TObject);
begin
  CriarForm(TfrmCadastroUsuarios, frmCadastroUsuarios);
end;

procedure TfrmPrincipal.TimerTimer(Sender: TObject);
begin
  StatusBar1.Panels.Items[0].Text := DateTimeToStr(now);
end;

end.
