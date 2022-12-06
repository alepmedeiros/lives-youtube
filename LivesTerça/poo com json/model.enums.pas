unit model.enums;

interface

uses
  System.SysUtils,
  TypInfo;

type
  TTipoTElefone = (CELULAR, FIXO, TRABALHO);
  TTipoPessoa = (FISICA, JURIDICA);

  TTipoTElefoneHelper = record helper for TTipoTElefone
    function ToString: String;
    function ToEnum(Value: String): TTipoTElefone;
  end;

  TTipoPessoaHelper = record helper for TTipoPessoa
    function ToString: String;
    function ToEnum(Value: String): TTipoPessoa;
  end;

implementation

{ TTipoTElefoneHelper }

function TTipoTElefoneHelper.ToEnum(Value: String): TTipoTElefone;
begin
  Result := TTipoTElefone(GetEnumValue(TypeInfo(TTipoTElefone),
    UpperCase(Value)));
end;

function TTipoTElefoneHelper.ToString: String;
begin
  Result := GetEnumName(TypeInfo(TTipoTElefone), Integer(Self));
end;

{ TTipoPessoaHelper }

function TTipoPessoaHelper.ToEnum(Value: String): TTipoPessoa;
begin
  Result := TTipoPessoa(GetEnumValue(TypeInfo(TTipoPessoa),
    UpperCase(Value)));
end;

function TTipoPessoaHelper.ToString: String;
begin
  Result := GetEnumName(TypeInfo(TTipoPessoa), Integer(Self));
end;

end.
