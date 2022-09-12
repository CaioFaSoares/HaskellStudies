
-- | TERM=dumb ghci

-- | Aula 2
fatorial 0 = 1
fatorial n = fatorial ( n - 1 ) * n 

-- | Aula 3
fib 0 = 0
fib 1 = 1
fib n = fib( n - 1 ) + fib( n - 2 )

imprimirNaTela "olá" = "olá"
imprimirNaTela n = n

-- | Aula 5
testeDeGuard n  |   n == 0 = 0
                |   n == 1 = 1
                |   otherwise = 10

-- | Aula 6 - Variável Anônima
exAnd :: Bool -> Bool -> Bool -- | aqui eu to basicamente falando que vai ter uma função que vai receber bool, receber bool e devolver bool. Eu acho que poderia colocar no lugar do ultimo bool o equivalente em haskell para num ou char e pedir para ele devolver isso, mas n sei como isso funcionaria na tipagem estática dele
exAnd False _ = False -- | se a primeira entrada for false, foda-se oq for a segunda, ele ja vai retornar false. also, lembrar que haskell é descritivo de funções matemáticas!! então literalmente eu to só escrevendo os casos.
exAnd _ False = False -- | ditto
exAnd True True = True -- | caso onde true e true retorna true. literalmente definindo logicamente um AND

-- | Aula 7 - Tuplas
tupleFunc :: (Int, Int) -> (Int, Int) -> (Int, Int)
tupleFunc (a,b) (c,d) = (a+c, b+d)

altTupleFunc :: (Int, Int) -> (Int, Int)
altTupleFunc (a,b) = (2*a, 3*b)

-- | Aula 8 - Extraindo dados de tuplas
nomes :: (String, String, String)
nomes = ("Caio", "Estudante", "Haskell")

selecPrim   (x, _, _) = x
selecSec    (_, y, _) = y
selecTer    (_, _, z) = z

-- | Aula 9 - Definindo novos tipos utilizando Type
type Nome = String
type Idade = Int
type Profissão = String

type Pessoa = (Nome, Idade, Profissão)

pessoa :: Pessoa
pessoa = ("João", 20, "Estudante")

myFst :: Pessoa -> Nome -- | myFst só recebe uma pessoa e entrega um nome, mesmo sendo pessoa uma coleção do nmesmo jeito que Nomes e Nome sendo uma string.
myFst (n, i, l) = n

-- | Aula 11 -> Lista Parte 2
sizeList []     =   0