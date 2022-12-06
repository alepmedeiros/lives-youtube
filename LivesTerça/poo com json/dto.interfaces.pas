unit dto.interfaces;

interface

uses
  System.JSON,
  model.cliente;

type
  iEndereco = interface;
  iTelefone = interface;

  iCliente = interface
    function Nome(Value: String): iCliente; overload;
    function Nome: String; overload;
    function SobreNome(Value: String): iCliente; overload;
    function SobreNome: String; overload;
    function Tipo(Value: String): iCliente; overload;
    function Tipo: String; overload;
    function Endereco: iEndereco;
    function Telefone: iTelefone;
    function This: TCliente;
    function ToJSON: TJSONObject;
    function ToString: String;
    function ToJSONArray: TJSONArray;
    function ToLista: String;
    function Build: iCliente;
  end;

  iEndereco = interface
    function Logradouro(Value: String): iEndereco; overload;
    function Logradouro: String; overload;
    function Numero(Value: String): iEndereco; overload;
    function Numero: String; overload;
    function Complemento(Value: String): iEndereco; overload;
    function Complemento: String; overload;
    function Bairro(Value: String): iEndereco; overload;
    function Bairro: String; overload;
    function Cidade(Value: String): iEndereco; overload;
    function Cidade: String; overload;
    function Estado(Value: String): iEndereco; overload;
    function Estado: String; overload;
    function Cep(Value: String): iEndereco; overload;
    function Cep: String; overload;
    function Build: iCliente;
  end;

  iTelefone = interface
    function Numero(Value: String): iTelefone; overload;
    function Numero: String; overload;
    function Tipo(Value: String): iTelefone; overload;
    function Tipo: String; overload;
    function Build: iCliente;
  end;

  iController = interface
    function Cliente: iCliente; overload;
    function Cliente(Value: String): iCliente; overload;
  end;

implementation

end.
