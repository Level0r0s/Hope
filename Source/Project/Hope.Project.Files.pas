unit Hope.Project.Files;

interface

{$I Hope.inc}

uses
  System.SysUtils, System.Contnrs, System.Classes, Hope.Common.JSON,
  Hope.Project.Interfaces, dwsJSON;

type
  THopeProjectFile = class
  private
    FFileName: TFileName;
    FExtension: string;
    procedure SetFileName(const Value: TFileName);
  public
    procedure AfterConstruction; override;

    property Extension: string read FExtension;
    property FileName: TFileName read FFileName write SetFileName;
  end;

  THopeProjectFiles = class
  private
    FProject: IProjectInterface;
    FList: TObjectList;
    function GetCount: Integer;
    function GetItem(Index: Integer): THopeProjectFile;
    procedure ReadJson(const JsonValue: TdwsJsonObject);
    procedure WriteJson(const JsonValue: TdwsJsonObject);
  public
    constructor Create(Project: IProjectInterface);

    procedure AfterConstruction; override;
    procedure BeforeDestruction; override;

    procedure AddProjectFile(FileName: TFileName);
    procedure Clear;
    function Contains(FileName: TFileName): Boolean;

    procedure LoadFromJson(const RootNode: TdwsJsonObject);
    procedure SaveToJson(const Root: TdwsJsonObject);

    property Items[Index: Integer]: THopeProjectFile read GetItem; default;
    property Count: Integer read GetCount;
  end;

implementation


{ THopeProjectFile }

procedure THopeProjectFile.AfterConstruction;
begin
  inherited;

end;

procedure THopeProjectFile.SetFileName(const Value: TFileName);
begin
  if FFileName <> Value then
  begin
    FFileName := Value;
    FExtension := LowerCase(ExtractFileExt(FileName));
  end;
end;


{ THopeProjectFiles }

constructor THopeProjectFiles.Create(Project: IProjectInterface);
begin
  inherited Create;

  FProject := Project;
end;

procedure THopeProjectFiles.AfterConstruction;
begin
  inherited;

  FList := TObjectList.Create(True);
end;

procedure THopeProjectFiles.BeforeDestruction;
begin
  FList.Free;

  inherited;
end;

procedure THopeProjectFiles.AddProjectFile(FileName: TFileName);
var
  ProjectFile: THopeProjectFile;
begin
  ProjectFile := THopeProjectFile.Create;
  ProjectFile.FileName := FileName;
  FList.Add(ProjectFile);
end;

procedure THopeProjectFiles.Clear;
begin
  FList.Clear;
end;

function THopeProjectFiles.Contains(FileName: TFileName): Boolean;
var
  Index: Integer;
begin
  Result := False;
  for Index := 0 to FList.Count - 1 do
    if THopeProjectFile(FList[Index]).FileName = FileName then
      Exit(True);
end;

function THopeProjectFiles.GetCount: Integer;
begin
  Result := FList.Count;
end;

function THopeProjectFiles.GetItem(Index: Integer): THopeProjectFile;
begin
  if (Index < 0) or (Index >= FList.Count) then
    raise Exception.CreateFmt('Index out of bounds (%d)', [Index]);

  Result := THopeProjectFile(FList[Index]);
end;

procedure THopeProjectFiles.LoadFromJson(const RootNode: TdwsJsonObject);
var
  JsonArray: TdwsJsonArray;
  Item: TdwsJsonValue;
begin
  // ensure the root node is not nil
  if not Assigned(RootNode) then
    raise EHopeJsonException.Create(RStrJsonReadErrorJsonValueNil);

  RootNode.GetArray('Files', JsonArray);

  for Item in JsonArray do
    AddProjectFile(Item.AsString);
end;

procedure THopeProjectFiles.ReadJson(const JsonValue: TdwsJsonObject);
begin
  // do nothing so far, files are just strings.
end;

procedure THopeProjectFiles.SaveToJson(const Root: TdwsJsonObject);
var
  Index: Integer;
  JsonArray: TdwsJsonArray;
  RootPath: string;
  FileName: string;
begin
  JsonArray := Root.AddArray('Files');

  RootPath := FProject.GetRootPath;

  for Index := 0 to FList.Count - 1 do
  begin
    FileName := THopeProjectFile(FList[Index]).FileName;
    JsonArray.Add(ExtractRelativePath(RootPath, FileName));
  end;
end;

procedure THopeProjectFiles.WriteJson(const JsonValue: TdwsJsonObject);
begin
  // do nothing so far, files are just strings.
end;

end.
