
type
jogo = record
id :integer;
nome: string;
preco: real;
quantJogo : integer;
end;

inventarioItens = record
nome: string;
id: integer;
end;


Var
// { Seção de Declarações das variáveis}
escolhaMenu, qtdJogosComprados, qtdJogosCadastrados: integer;
jogos: array [1..5] de jogo;
inventario: array[1..5] de inventarioItens;
saldoUsuario : real;

procedure comprarJogo();
var
qual, inventIndice, pare: integer;
begin
   inventIndice := 1;
   repeat
      writeln ('Qual jogo você deseja?');
      readln (qual);

      if saldoUsuario > jogos[qual].preco then begin

         inventario[inventIndice].nome := jogos[qual].nome;
         writeln (inventario[inventIndice].nome);
         writeln ('Compra realizada com sucesso !'   );
         inventIndice := inventIndice+1;
         qtdJogosComprados := qtdJogosComprados+1;
         writeln ('Deseja comprar mais? 1 - sim 2 - não');
         saldoUsuario := (saldoUsuario - jogos[qual].preco);
         writeln ('Saldo Atual: ' , saldoUsuario);
      end else begin
         writeln ('Saldo insuficiente');
         writeln ('Deseja continuar comprando ? 1 - sim 2 - não');
      end;
      readln (pare);


   until pare =2;
end;

procedure verificarInventario();
var
i: integer;
begin

   for i :=  1 to qtdJogosComprados do begin
      writeln('Nome do jogo: ', inventario[i].nome);
   end;
   writeln ('Existem ', qtdJogosComprados,' jogos comprados com sucesso');

end;



procedure listarJogo();
var
i: integer;
begin

   for i :=  1 to qtdJogosCadastrados do begin
      writeln('Nome do jogo: ', jogos[i].nome);
      writeln('Preço do jogo: R$', jogos[i].preco);
      writeln('id unico jogo: ', jogos[i].id);
   end;
   writeln ('Estes ', qtdJogosCadastrados,'Foram os jogos cadastrados com sucesso');

end;


begin
   saldoUsuario :=100;

   qtdJogosComprados :=0;

   qtdJogosCadastrados :=5;

   jogos[1].nome := 'Portal';
   jogos[1].preco := 9.99;
   jogos[1].id := 1;

   jogos[2].nome := 'Farcry 3';
   jogos[2].preco := 14.70;
   jogos[2].id := 2;

   jogos[3].nome := 'Control';
   jogos[3].preco := 180.00;
   jogos[3].id := 3;

   jogos[4].nome := 'Tibia';
   jogos[4].preco := 9.99;
   jogos[4].id := 4;

   jogos[5].nome := 'Subnautica';
   jogos[5].preco := 28.00;
   jogos[5].id := 5;


   repeat
      // { Seção de Comandos, procedimento, funções, operadores, etc...}



      writeln ('Sistema de compras de jogos online');
      writeln ('Digite um número para acessar a opção desejada');
      writeln ('1 - Verificar inventario');
      writeln ('2 - Mostrar jogos disponiveis');
      writeln ('3 - Comprar jogo');
      writeln ('5 - Para sair do programa');
      readln (escolhaMenu);

{Atenção: As restrições de case ... of no Pascal são maiores que de
          escolha ... fimescolha no Visualg 3} 
      case escolhaMenu of
      end;
      : 1 : 
      begin
         writeln('Opção escolhida: 1');
         verificarInventario();
      : 2 : 
      begin
         writeln('Opção escolhida: 2');
         listarJogo();
      end;
      : 3 : 
      begin
         writeln('Opção escolhida: 3');
         comprarJogo();
      end;
      end;

   until escolhaMenu=5;
end.
