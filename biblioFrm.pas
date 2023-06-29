unit biblioFrm;

interface
uses
Mask,Forms,StdCtrls,Controls,Messages,dmProcesso;

Procedure Limpar(F:TForm);

implementation

Procedure Limpar(F:TForm);
var
j:integer;
begin

    for j := 0 to F.ComponentCount -1 do
    begin

        if F.Components[j] is TEdit then
        TEdit(F.Components[j]).clear;

        if F.Components[j] is TMaskEdit then
        TMaskEdit(F.Components[j]).Clear;

    end;

end;

end.
