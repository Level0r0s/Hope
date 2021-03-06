unit Hope.Dialog.ReloadChangedFiles;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, VirtualTrees;

type
  TFileItem = record
    FileName: TFileName;
  end;
  PFileItem = ^TFileItem;

  TFormReloadChangedFiles = class(TForm)
    ButtonCancel: TButton;
    ButtonReload: TButton;
    TreeFiles: TVirtualStringTree;
    procedure TreeFilesFreeNode(Sender: TBaseVirtualTree; Node: PVirtualNode);
    procedure TreeFilesGetText(Sender: TBaseVirtualTree; Node: PVirtualNode;
      Column: TColumnIndex; TextType: TVSTTextType; var CellText: string);
  public
    procedure AfterConstruction; override;
  end;

implementation

{$R *.dfm}

uses
  Hope.DataModule.ImageLists;

procedure TFormReloadChangedFiles.AfterConstruction;
begin
  inherited;

  TreeFiles.NodeDataSize := SizeOf(TFileItem);
  TreeFiles.Images := DataModuleImageLists.ImageList16;
  TreeFiles.StateImages := DataModuleImageLists.ImageList16;
end;

procedure TFormReloadChangedFiles.TreeFilesFreeNode(Sender: TBaseVirtualTree;
  Node: PVirtualNode);
var
  NodeData: PFileItem;
begin
  NodeData := Sender.GetNodeData(Node);
  Finalize(NodeData^.FileName);
end;

procedure TFormReloadChangedFiles.TreeFilesGetText(Sender: TBaseVirtualTree;
  Node: PVirtualNode; Column: TColumnIndex; TextType: TVSTTextType;
  var CellText: string);
var
  NodeData: PFileItem;
begin
  NodeData := Sender.GetNodeData(Node);
  CellText := NodeData^.FileName;
end;

end.

