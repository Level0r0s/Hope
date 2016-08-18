unit Hope.Main;

{$I Hope.inc}

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Classes,
  System.Types, System.Actions, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, Vcl.ActnList, Vcl.Menus, Vcl.StdActns, Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.StdCtrls,
  Hope.DataModule, Hope.WelcomePage, Hope.ProjectManager, Hope.UnitManager,
  Hope.MessageWindow.Compiler, Hope.MessageWindow.Output, Hope.Docking.Host,
  Hope.Project, Hope.Project.List;

type
  TFormMain = class(TForm)
    ActionEditCopy: TEditCopy;
    ActionEditCut: TEditCut;
    ActionEditDelete: TEditDelete;
    ActionEditPaste: TEditPaste;
    ActionEditRedo: TAction;
    ActionEditSelectAll: TEditSelectAll;
    ActionEditUndo: TEditUndo;
    ActionFileClose: TAction;
    ActionFileCloseProject: TAction;
    ActionFileExit: TFileExit;
    ActionFileNewCSS: TAction;
    ActionFileNewCSS1: TMenuItem;
    ActionFileNewMore: TAction;
    ActionFileNewProject: TAction;
    ActionFileNewUnit: TAction;
    ActionFileOpen: TFileOpen;
    ActionFileOpenProject: TFileOpen;
    ActionFileOpenRecent: TAction;
    ActionFileSave: TAction;
    ActionFileSaveAs: TFileSaveAs;
    ActionFileSaveProject: TAction;
    ActionFileSaveProjectAs: TFileSaveAs;
    ActionHelpAbout: TAction;
    ActionList: TActionList;
    ActionProjectAdd: TAction;
    ActionProjectBuild: TAction;
    ActionProjectBuildAll: TAction;
    ActionProjectCompile: TAction;
    ActionProjectCompileAll: TAction;
    ActionProjectDelete: TAction;
    ActionProjectMetrics: TAction;
    ActionProjectOptions: TAction;
    ActionProjectStatistics: TAction;
    ActionProjectSyntaxCheck: TAction;
    ActionRunAbort: TAction;
    ActionRunParameters: TAction;
    ActionRunRun: TAction;
    ActionSearchFind: TSearchFind;
    ActionSearchFindClass: TAction;
    ActionSearchFindFirst: TSearchFindFirst;
    ActionSearchFindInFiles: TAction;
    ActionSearchFindNext: TSearchFindNext;
    ActionSearchGotoLineNumber: TAction;
    ActionSearchReplace: TSearchReplace;
    ActionToolsAsciiChart: TAction;
    ActionToolsCodeTemplates: TAction;
    ActionToolsColorPicker: TAction;
    ActionToolsPreferences: TAction;
    ActionToolsUnicodeExplorer: TAction;
    ActionViewClassExplorer: TAction;
    ActionViewFileBrowser: TAction;
    ActionViewUnits: TAction;
    ActionViewWelcomePage: TAction;
    MainMenu: TMainMenu;
    MenuItemEdit: TMenuItem;
    MenuItemEditCopy: TMenuItem;
    MenuItemEditCut: TMenuItem;
    MenuItemEditDelete: TMenuItem;
    MenuItemEditPaste: TMenuItem;
    MenuItemEditRedo: TMenuItem;
    MenuItemEditSearchFind: TMenuItem;
    MenuItemEditSearchFindNext: TMenuItem;
    MenuItemEditSearchReplace: TMenuItem;
    MenuItemEditSelectAll: TMenuItem;
    MenuItemEditUndo: TMenuItem;
    MenuItemFile: TMenuItem;
    MenuItemFileClose: TMenuItem;
    MenuItemFileCloseProject: TMenuItem;
    MenuItemFileExit: TMenuItem;
    MenuItemFileNew: TMenuItem;
    MenuItemFileNewMore: TMenuItem;
    MenuItemFileNewProject: TMenuItem;
    MenuItemFileNewUnit: TMenuItem;
    MenuItemFileOpen: TMenuItem;
    MenuItemFileOpenProject: TMenuItem;
    MenuItemFileOpenRecent: TMenuItem;
    MenuItemFileSave: TMenuItem;
    MenuItemFileSaveAs: TMenuItem;
    MenuItemFileSaveProject: TMenuItem;
    MenuItemFileSaveProjectAs: TMenuItem;
    MenuItemHelp: TMenuItem;
    MenuItemHelpAbout: TMenuItem;
    MenuItemPackages: TMenuItem;
    MenuItemProject: TMenuItem;
    MenuItemProjectAddToProject: TMenuItem;
    MenuItemProjectBuild: TMenuItem;
    MenuItemProjectBuildAll: TMenuItem;
    MenuItemProjectCompile: TMenuItem;
    MenuItemProjectCompileAll: TMenuItem;
    MenuItemProjectDeleteFromProject: TMenuItem;
    MenuItemProjectMetrics: TMenuItem;
    MenuItemProjectOptions: TMenuItem;
    MenuItemProjectStatistics: TMenuItem;
    MenuItemProjectSyntaxCheck: TMenuItem;
    MenuItemRefactor: TMenuItem;
    MenuItemRun: TMenuItem;
    MenuItemRunAbort: TMenuItem;
    MenuItemRunParameters: TMenuItem;
    MenuItemRunRun: TMenuItem;
    MenuItemSearch: TMenuItem;
    MenuItemSearchFindClass: TMenuItem;
    MenuItemSearchFindInFiles: TMenuItem;
    MenuItemSearchGotoLineNumber: TMenuItem;
    MenuItemTools: TMenuItem;
    MenuItemToolsAsciiChart: TMenuItem;
    MenuItemToolsCodeTemplates: TMenuItem;
    MenuItemToolsColorPicker: TMenuItem;
    MenuItemToolsPreferences: TMenuItem;
    MenuItemToolsUnicodeExplorer: TMenuItem;
    MenuItemView: TMenuItem;
    MenuItemViewClassExplorer: TMenuItem;
    MenuItemViewFileBrowser: TMenuItem;
    MenuItemViewUnits: TMenuItem;
    MenuItemViewWelcomePage: TMenuItem;
    N01: TMenuItem;
    N02: TMenuItem;
    N03: TMenuItem;
    N04: TMenuItem;
    N05: TMenuItem;
    N06: TMenuItem;
    N07: TMenuItem;
    N08: TMenuItem;
    N09: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    PanelBottom: TPanel;
    PanelLeft: TPanel;
    PanelRight: TPanel;
    SplitterBottom: TSplitter;
    SplitterLeft: TSplitter;
    SplitterRight: TSplitter;
    PanelMain: TPanel;
    ActionMacroPlay: TAction;
    ActionMacroRecord: TAction;
    ActionMacroStop: TAction;
    procedure ActionHelpAboutExecute(Sender: TObject);
    procedure ActionProjectOptionsExecute(Sender: TObject);
    procedure ActionSearchFindInFilesExecute(Sender: TObject);
    procedure ActionToolsCodeTemplatesExecute(Sender: TObject);
    procedure ActionToolsColorPickerExecute(Sender: TObject);
    procedure ActionToolsPreferencesExecute(Sender: TObject);
    procedure ActionToolsUnicodeExplorerExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormDockOver(Sender: TObject; Source: TDragDockObject; X,
      Y: Integer; State: TDragState; var Accept: Boolean);
    procedure FormGetSiteInfo(Sender: TObject; DockClient: TControl;
      var InfluenceRect: TRect; MousePos: TPoint; var CanDock: Boolean);
    procedure PanelUnDock(Sender: TObject; Client: TControl;
      NewTarget: TWinControl; var Allow: Boolean);
    procedure PanelMainDockDrop(Sender: TObject; Source: TDragDockObject; X,
      Y: Integer);
    procedure ActionToolsAsciiChartExecute(Sender: TObject);
    procedure ActionFileOpenProjectAccept(Sender: TObject);
    procedure ActionFileNewProjectExecute(Sender: TObject);
    procedure ActionFileCloseProjectExecute(Sender: TObject);
  private
    FWelcomePage: TFormWelcomePage;

    FProjects: THopeProjectList;

    FUnitManager: TFormUnitManager;
    FProjectManager: TFormProjectManager;
    FCompilerMessages: TFormCompilerMessages;
    FOutputMessages: TFormOutputMessages;
    procedure CMDockClient(var Message: TCMDockClient); message CM_DOCKCLIENT;
    function ComputeDockingRect(var DockRect: TRect; MousePos: TPoint): TAlign;
  public
    procedure AfterConstruction; override;
    procedure BeforeDestruction; override;

    procedure LoadProject(ProjectFileName: TFileName);

    procedure ShowDockPanel(APanel: TPanel; MakeVisible: Boolean; Client: TControl);

    property Projects: THopeProjectList read FProjects;
  end;

var
  FormMain: TFormMain;

implementation

uses
  Hope.About, Hope.AsciiChart, Hope.ColorPicker, Hope.Dialogs.CodeTemplates,
  Hope.Dialogs.FindInFiles, Hope.Dialogs.Preferences,
  Hope.Dialogs.ProjectOptions, Hope.Docking.Form, Hope.UnicodeExplorer;

{$R *.dfm}

{ TFormMain }

procedure TFormMain.AfterConstruction;
begin
  inherited;

  FProjects := THopeProjectList.Create;

  FWelcomePage := TFormWelcomePage.Create(nil);
  FUnitManager := TFormUnitManager.Create(nil);
  FProjectManager := TFormProjectManager.Create(nil);
  FCompilerMessages := TFormCompilerMessages.Create(nil);
  FOutputMessages := TFormOutputMessages.Create(nil);
end;

procedure TFormMain.BeforeDestruction;
begin
(*
  FOutputMessages.Free;
  FCompilerMessages.Free;
*)
  FProjectManager.Free;
  FUnitManager.Free;
  FWelcomePage.Free;

  FProjects.Free;

  inherited;
end;

procedure TFormMain.CMDockClient(var Message: TCMDockClient);
var
  ARect: TRect;
  DockType: TAlign;
  Pt: TPoint;
begin
  if Message.DockSource.Control is TFormDockable then
  begin
    Pt.X := Message.MousePos.X;
    Pt.Y := Message.MousePos.Y;
    DockType := ComputeDockingRect(ARect, Pt);

    case DockType of
      alLeft:
        begin
          ShowDockPanel(PanelLeft, True, Message.DockSource.Control);
          Message.DockSource.Control.ManualDock(PanelLeft, nil, alClient);
        end;
      alRight:
        begin
          ShowDockPanel(PanelRight, True, Message.DockSource.Control);
          Message.DockSource.Control.ManualDock(PanelRight, nil, alClient);
        end;
      alBottom:
        begin
          ShowDockPanel(PanelBottom, True, Message.DockSource.Control);
          Message.DockSource.Control.ManualDock(PanelBottom, nil, alClient);
        end;
    end;
  end;
end;

function TFormMain.ComputeDockingRect(var DockRect: TRect; MousePos: TPoint): TAlign;
var
  DockLeftRect, DockRightRect, DockBottomRect: TRect;
begin
  Result := alNone;

  // divide form up into docking zones
  DockLeftRect.TopLeft := Point(0, 0);
  DockLeftRect.BottomRight := Point(ClientWidth div 5, ClientHeight);

  DockRightRect.TopLeft := Point(4 * ClientWidth div 5, 0);
  DockRightRect.BottomRight := Point(ClientWidth, ClientHeight);

  DockBottomRect.TopLeft := Point(ClientWidth div 5, 4 * ClientHeight div 5);
  DockBottomRect.BottomRight := Point(4 * ClientWidth div 5, ClientHeight);

  // locate the mouse position in the docking zone
  if PtInRect(DockLeftRect, MousePos) then
  begin
    Result := alLeft;
    DockRect := DockLeftRect;
    DockRect.Right := ClientWidth div 3;
  end
  else
  if PtInRect(DockRightRect, MousePos) then
  begin
    Result := alRight;
    DockRect := DockRightRect;
    DockRect.Left := 2 * ClientWidth div 3;
  end
  else
  if PtInRect(DockBottomRect, MousePos) then
  begin
    Result := alBottom;
    DockRect := DockBottomRect;
    DockRect.Left := 0;
    DockRect.Right := ClientWidth;
    DockRect.Top := 2 * ClientHeight div 3;
  end;

  // check if a docking area has been determined
  if Result = alNone then Exit;

  // DockRect is in screen coordinates.
  DockRect.TopLeft := ClientToScreen(DockRect.TopLeft);
  DockRect.BottomRight := ClientToScreen(DockRect.BottomRight);
end;

procedure TFormMain.FormDockOver(Sender: TObject; Source: TDragDockObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
var
  ARect: TRect;
begin
  Accept := (Source.Control is TFormDockable);

  // Draw dock preview depending on where the cursor is relative to our client area
  if Accept and (ComputeDockingRect(ARect, Point(X, Y)) <> alNone) then
  begin
    ComputeDockingRect(ARect, Point(X, Y));
    Source.DockRect := ARect;
  end;
end;

procedure TFormMain.FormGetSiteInfo(Sender: TObject; DockClient: TControl;
  var InfluenceRect: TRect; MousePos: TPoint; var CanDock: Boolean);
begin
  // if CanDock is true, the panel will not automatically draw the preview rect.
  CanDock := (DockClient is TFormDockable);
end;

procedure TFormMain.FormShow(Sender: TObject);
var
  Host: TFormDockHost;
begin
  FUnitManager.ManualDock(PanelLeft);
  ShowDockPanel(PanelLeft, True, FUnitManager);

  FProjectManager.ManualDock(PanelRight);
  ShowDockPanel(PanelRight, True, FProjectManager);

  Host := TFormDockHost.Create(Application);
  Host.IsPaged := True;
  Host.BoundsRect := Self.BoundsRect;
  FCompilerMessages.ManualDock(Host.PanelDock, nil, alClient);
  FCompilerMessages.DockSite := False;
  FOutputMessages.ManualDock(Host.PanelDock, nil, alClient);
  FOutputMessages.DockSite := False;
  Host.IsPaged := True;
  Host.ManualDock(PanelBottom);
  ShowDockPanel(PanelBottom, True, Host);
  Host.TabSet.TabIndex := 0;

  FWelcomePage.ManualDock(PanelMain);
  FWelcomePage.Show;
  FWelcomePage.Update;
end;

procedure TFormMain.LoadProject(ProjectFileName: TFileName);
begin
  FProjects.LoadProject(ProjectFileName)
end;

procedure TFormMain.PanelMainDockDrop(Sender: TObject; Source: TDragDockObject;
  X, Y: Integer);
begin
  if PanelMain.UseDockManager then
    PanelMain.DockManager.ResetBounds(True);
end;

procedure TFormMain.PanelUnDock(Sender: TObject; Client: TControl;
  NewTarget: TWinControl; var Allow: Boolean);
begin
  // OnUnDock gets called BEFORE the client is undocked, in order to optionally
  // disallow the undock. DockClientCount is never 0 when called from this event.
  if (Sender as TPanel).DockClientCount = 1 then
    ShowDockPanel(Sender as TPanel, False, nil);
end;

procedure TFormMain.ShowDockPanel(APanel: TPanel; MakeVisible: Boolean;
  Client: TControl);
begin
  if not MakeVisible and (APanel.VisibleDockClientCount > 1) then
    Exit;

  if APanel = PanelLeft then
  begin
    SplitterLeft.Visible := MakeVisible;
    APanel.Visible := MakeVisible;
    if MakeVisible then
    begin
      APanel.Width := ClientWidth div 4;
      SplitterLeft.Left := APanel.Width + SplitterLeft.Width;
    end;
  end
  else
  if APanel = PanelRight then
  begin
    SplitterRight.Visible := MakeVisible;
    APanel.Visible := MakeVisible;
    if MakeVisible then
    begin
      APanel.Width := ClientWidth div 4;
      SplitterRight.Left := APanel.Left - SplitterRight.Width;
    end;
  end
  else
  if APanel = PanelBottom then
  begin
    SplitterBottom.Visible := MakeVisible;
    APanel.Visible := MakeVisible;
    if MakeVisible then
    begin
      APanel.Height := ClientWidth div 5;
      SplitterRight.Top := ClientHeight - APanel.Height - SplitterBottom.Width;
    end;
  end;

  if MakeVisible and (Client <> nil) then
    Client.Show;
end;

procedure TFormMain.ActionToolsAsciiChartExecute(Sender: TObject);
begin
  with TFormAsciiChart.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TFormMain.ActionFileCloseProjectExecute(Sender: TObject);
begin
  FProjects.RemoveProject(FProjects.ActiveProject);
end;

procedure TFormMain.ActionFileNewProjectExecute(Sender: TObject);
begin
  //NewProject;
end;

procedure TFormMain.ActionFileOpenProjectAccept(Sender: TObject);
begin
  LoadProject(ActionFileOpenProject.Dialog.FileName);
end;

procedure TFormMain.ActionHelpAboutExecute(Sender: TObject);
begin
  with TFormAbout.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TFormMain.ActionProjectOptionsExecute(Sender: TObject);
begin
  with TFormProjectOptions.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TFormMain.ActionSearchFindInFilesExecute(Sender: TObject);
begin
  with TFormFindInFiles.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TFormMain.ActionToolsCodeTemplatesExecute(Sender: TObject);
begin
  with TFormCodeTemplates.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TFormMain.ActionToolsColorPickerExecute(Sender: TObject);
begin
  with TFormColorPicker.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TFormMain.ActionToolsPreferencesExecute(Sender: TObject);
begin
  with TFormPreferences.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

procedure TFormMain.ActionToolsUnicodeExplorerExecute(Sender: TObject);
begin
  with TFormUnicodeExplorer.Create(Self) do
  try
    ShowModal;
  finally
    Free;
  end;
end;

end.

