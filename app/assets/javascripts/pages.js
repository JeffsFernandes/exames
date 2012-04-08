function TrocaList(ListOrigem,ListDestino) 
{
var i;
for (i = 0; i < ListOrigem.options.length ; i++)
{
if (ListOrigem.options[i].selected == true)
{
var Op = document.createElement("OPTION");
Op.text = ListOrigem.options[i].text;
Op.value = ListOrigem.options[i].value;
ListDestino.options.add(Op);
ListOrigem.options.remove(i);
i--;
}
}
}