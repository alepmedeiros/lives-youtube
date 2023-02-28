unit interfaces;

interface

type
   iPessoaJuridica = interface;
   iPessoaFisica = interface;

  iEndereco<T> = interface
    function Logradouro(Value: String): iEndereco<T>; overload;
    function Logradouro: String; overload;
    function Numero(Value: String): iEndereco<T>; overload;
    function Numero: String; overload;
    function Complemento(Value: String): iEndereco<T>; overload;
    function Complemento: String; overload;
    function Bairro(Value: String): iEndereco<T>; overload;
    function Bairro: String; overload;
    function Cidade(Value: String): iEndereco<T>; overload;
    function Cidade: String; overload;
    function Estado(Value: String): iEndereco<T>; overload;
    function Estado: String; overload;
    function &End: T;
  end;

  iTipoPessoa = interface
    function Juridica: iPessoaJuridica;
    function Fisica: iPessoaFisica;
  end;

  iPessoa = interface
    function Nome(Value: String): iPessoa; overload;
    function Nome: String; overload;
    function Email(Value: String): iPessoa; overload;
    function Email: String; overload;
    function Endereco: iEndereco<iPessoa>;
    function Tipo: iTipoPessoa;
  end;

  iPessoaJuridica = interface
    function CNPJ(Value: String): iPessoaJuridica; overload;
    function CNPJ: String; overload;
    function &End: iPessoa;
  end;

  iPessoaFisica = interface
    function CPF(Value: String): iPessoaFisica; overload;
    function CPF: String; overload;
    function &End: iPessoa;
  end;

implementation

end.
