program Hope;

{$R 'dwsJSRTL.res' '..\..\DWScript\Libraries\JSCodeGen\dwsJSRTL.rc'}
{$R *.res}

uses
  FastMM4,
  Vcl.Forms,
  Hope.About in 'Forms\Hope.About.pas' {FormAbout},
  Hope.AsciiChart in 'Forms\Hope.AsciiChart.pas' {FormAsciiChart},
  Hope.Buffer in 'Buffer\Hope.Buffer.pas',
  Hope.Buffer.List in 'Buffer\Hope.Buffer.List.pas',
  Hope.ColorPicker in 'Forms\Hope.ColorPicker.pas' {FormColorPicker},
  Hope.Common.Constants in 'Common\Hope.Common.Constants.pas',
  Hope.Common.DirectoryMonitor in 'Common\Hope.Common.DirectoryMonitor.pas',
  Hope.Common.DWS in 'Common\Hope.Common.DWS.pas',
  Hope.Common.FileUtilities in 'Common\Hope.Common.FileUtilities.pas',
  Hope.Common.History in 'Common\Hope.Common.History.pas',
  Hope.Common.IDE in 'Common\Hope.Common.IDE.pas',
  Hope.Common.JSON in 'Common\Hope.Common.JSON.pas',
  Hope.Common.MimeTypes in 'Common\Hope.Common.MimeTypes.pas',
  Hope.Common.MonitoredBuffer in 'Common\Hope.Common.MonitoredBuffer.pas',
  Hope.Common.Paths in 'Common\Hope.Common.Paths.pas',
  Hope.Common.Preferences in 'Common\Hope.Common.Preferences.pas',
  Hope.Compiler.Background in 'Compiler\Hope.Compiler.Background.pas',
  Hope.Compiler.Base in 'Compiler\Hope.Compiler.Base.pas',
  Hope.Compiler.Internal in 'Compiler\Hope.Compiler.Internal.pas',
  Hope.DataModule.Common in 'DataModules\Hope.DataModule.Common.pas' {DataModuleCommon: TDataModule},
  Hope.DataModule.ImageLists in 'DataModules\Hope.DataModule.ImageLists.pas' {DataModuleImageLists: TDataModule},
  Hope.Dialog in 'Forms\Dialogs\Hope.Dialog.pas' {FormDialog},
  Hope.Dialog.AddToDoItem in 'Forms\Dialogs\Hope.Dialog.AddToDoItem.pas',
  Hope.Dialog.CodeTemplates in 'Forms\Dialogs\Hope.Dialog.CodeTemplates.pas' {FormCodeTemplates},
  Hope.Dialog.FindClass in 'Forms\Dialogs\Hope.Dialog.FindClass.pas' {FormFindClass},
  Hope.Dialog.FindInFiles in 'Forms\Dialogs\Hope.Dialog.FindInFiles.pas' {FormFindInFiles},
  Hope.Dialog.FindReplace in 'Forms\Dialogs\Hope.Dialog.FindReplace.pas' {FormFindReplace},
  Hope.Dialog.FindUnit in 'Forms\Dialogs\Hope.Dialog.FindUnit.pas' {FormFindUnit},
  Hope.Dialog.GotoLineNumber in 'Forms\Dialogs\Hope.Dialog.GotoLineNumber.pas' {FormGotoLineNumber},
  Hope.Dialog.NewMore in 'Forms\Dialogs\Hope.Dialog.NewMore.pas' {FormObjectGallery},
  Hope.Dialog.Preferences in 'Forms\Dialogs\Hope.Dialog.Preferences.pas' {FormPreferences},
  Hope.Dialog.ProjectOptions in 'Forms\Dialogs\Hope.Dialog.ProjectOptions.pas' {FormProjectOptions},
  Hope.Dialog.RecentProperties in 'Forms\Dialogs\Hope.Dialog.RecentProperties.pas' {FormFindReplace},
  Hope.Dialog.ReloadChangedFiles in 'Forms\Dialogs\Hope.Dialog.ReloadChangedFiles.pas' {FormReloadChangedFiles},
  Hope.Docking.Form in 'Forms\Docking\Hope.Docking.Form.pas' {FormDockable},
  Hope.Docking.Host in 'Forms\Docking\Hope.Docking.Host.pas' {FormDockHost},
  Hope.DockingUtils in 'Utils\Hope.DockingUtils.pas',
  Hope.Editor in 'Forms\Editor\Hope.Editor.pas' {FormEditor},
  Hope.EditorList in 'Utils\Hope.EditorList.pas',
  Hope.InternalBrowser in 'Forms\Hope.InternalBrowser.pas' {FormInternalBrowser},
  Hope.Main in 'Forms\Hope.Main.pas' {FormMain},
  Hope.MessageWindow in 'Forms\MessageWindow\Hope.MessageWindow.pas' {FormMessageWindow},
  Hope.MessageWindow.Compiler in 'Forms\MessageWindow\Hope.MessageWindow.Compiler.pas' {FormCompilerMessages},
  Hope.MessageWindow.FindInFiles in 'Forms\MessageWindow\Hope.MessageWindow.FindInFiles.pas' {FormMessagesFindInFiles},
  Hope.MessageWindow.Output in 'Forms\MessageWindow\Hope.MessageWindow.Output.pas' {FormOutputMessages},
  Hope.Project in 'Project\Hope.Project.pas',
  Hope.Project.Files in 'Project\Hope.Project.Files.pas',
  Hope.Project.IDE in 'Project\Hope.Project.IDE.pas',
  Hope.Project.Information in 'Project\Hope.Project.Information.pas',
  Hope.Project.Interfaces in 'Project\Hope.Project.Interfaces.pas',
  Hope.Project.List in 'Project\Hope.Project.List.pas',
  Hope.Project.Local in 'Project\Hope.Project.Local.pas',
  Hope.Project.Options in 'Project\Hope.Project.Options.pas',
  Hope.Project.Statistics in 'Project\Hope.Project.Statistics.pas',
  Hope.ProjectManager in 'Forms\Hope.ProjectManager.pas' {FormProjectManager},
  Hope.FindReference in 'Forms\Hope.FindReference.pas' {FormFindReference},
  Hope.UnicodeExplorer in 'Forms\Hope.UnicodeExplorer.pas' {FormUnicodeExplorer},
  Hope.UnitManager in 'Forms\Hope.UnitManager.pas' {FormUnitManager},
  Hope.WelcomePage in 'Forms\Hope.WelcomePage.pas' {FormWelcomePage};

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'HOPE Object Pascal Environment';
  Application.CreateForm(TDataModuleImageLists, DataModuleImageLists);
  Application.CreateForm(TDataModuleCommon, DataModuleCommon);
  Application.CreateForm(TFormMain, FormMain);
  Application.CreateForm(TFormFindUnit, FormFindUnit);
  Application.Run;
end.
