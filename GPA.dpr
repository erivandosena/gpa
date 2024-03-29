program GPA;

uses
  Forms,
  Windows,
  Dialogs,
  UnLocalizar in 'UnLocalizar.pas' {FrmLocalizar},
  UnBackup in 'UnBackup.pas' {FrmBackup},
  UnDm in 'UnDm.pas' {Dm: TDataModule},
  UnEmpresa in 'UnEmpresa.pas' {FrmEmpresa},
  UnEncrypt in 'UnEncrypt.pas',
  UnAbertura in 'UnAbertura.pas' {FrmAbertura},
  UnPreview in 'UnPreview.pas' {FrmPreview},
  UnPrincipal in 'UnPrincipal.pas' {FrmPrincipal},
  UnSenha in 'UnSenha.pas' {FrmSenha},
  UnUsuarios in 'UnUsuarios.pas' {FrmUsuarios},
  UnFotos in 'UnFotos.pas' {FrmFotos},
  UnFrmDataGeral in 'UnFrmDataGeral.pas' {FrmDataGeral},
  UnAniversariantes in 'UnAniversariantes.pas' {FrmAniversariantes},
  UnRelAniv in 'UnRelAniv.pas' {FrmRelAniv},
  UnClientes in 'UnClientes.pas' {FrmClientes},
  UnPromotor in 'UnPromotor.pas' {FrmPromotor},
  UnInativos in 'UnInativos.pas' {FrmInativos},
  UnRelCarteiras in 'UnRelCarteiras.pas' {FrmRelCarteiras},
  UnCarteiras in 'UnCarteiras.pas' {FrmCarteiras},
  UnRelCarne in 'UnRelCarne.pas' {FrmRelCarne},
  UnCarne in 'UnCarne.pas' {FrmCarne},
  UnContratos in 'UnContratos.pas' {FrmContratos},
  UnRecebimentos in 'UnRecebimentos.pas' {FrmRecebimentos},
  UnRelCartaAniv in 'UnRelCartaAniv.pas' {FrmRelCartaAniv},
  UnConsultaContratos in 'UnConsultaContratos.pas' {FrmConsultaContratos},
  UnRelConsultaContrato in 'UnRelConsultaContrato.pas' {FrmRelConsultaContrato},
  UnRelHistorico in 'UnRelHistorico.pas' {FrmRelHistorico},
  UnHistoricoFinanCli in 'UnHistoricoFinanCli.pas' {FrmHistoricoFinanCli},
  UnRelFA in 'UnRelFA.pas' {FrmRelFA},
  UnRelGA in 'UnRelGA.pas' {FrmRelGA},
  UnRelatorios in 'UnRelatorios.pas' {FrmRelatorios},
  UnRelContrato in 'UnRelContrato.pas' {FrmRelContrato},
  UnContrato in 'UnContrato.pas' {FrmContrato},
  UnRelContrato_PJ in 'UnRelContrato_PJ.pas' {FrmRelContrato_PJ},
  UnRelCarteirasPJ in 'UnRelCarteirasPJ.pas' {FrmRelCarteirasPJ};

{$R *.res}

Var HprevHist : HWND;

begin
  Application.Initialize;
HprevHist := FindWindow(Nil, PChar('GPA 1.0'));
if HprevHist = 0 then begin
 FrmAbertura:=TFrmAbertura.create(Application);
 FrmAbertura.Show;
 FrmAbertura.Refresh;
  Application.Title := 'GPA 1.0';
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TDm, Dm);
  FrmAbertura.Free;
  Application.Run;
  end else
ShowMessage('J� existe uma c�pia do "'+Application.Title+'" em execu��o.'+#13#13+
'N�o ser� poss�vel executar uma outra c�pia deste aplicativo.');
end.
