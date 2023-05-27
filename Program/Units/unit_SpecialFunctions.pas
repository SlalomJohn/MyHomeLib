unit unit_SpecialFunctions;

interface
uses System.NetEncoding;

procedure VerySecretSpecialFunction(const AEnabled: boolean);

implementation

procedure VerySecretSpecialFunction(const AEnabled: boolean);
const
  MsgS = 'Q2xlYW4gdmVyc2lvbi4=';
begin
  // Специальная Секретная Операционная функция для зеленых животных с руборды
  if AEnabled then
    ShowMessage(Decode(MsgS));
end;

end.
