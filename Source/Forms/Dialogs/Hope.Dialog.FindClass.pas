unit Hope.Dialog.FindClass;

{$I Hope.inc}

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  Hope.Dialog, VirtualTrees;

type
  TFormFindClass = class(TFormDialog)
    EditSearch: TEdit;
    LabelClasses: TLabel;
    LabelSearch: TLabel;
    TreeClasses: TVirtualStringTree;
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

implementation

{$R *.dfm}

end.

