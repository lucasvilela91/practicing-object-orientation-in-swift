class Conta {
//    o atributo saldo é uma propriedade armazenada
    var saldo = 0.0 {
//       Esse observador chamado de willSet será disparado quando um atributo for modificado e ele obterá informações de qual será o novo valor desse atributo. "newValue"
        willSet(novoValor) {
            print("O saldo está sendo alterado, o seu novo valor será de \(novoValor)")
        }
        
        didSet {
            print("o saldo está sendo alterado, o seu valor antigo foi de \(oldValue)")
        }
        
    }
    
    
    var nome: String
    
    
    static var taxaTransferencia = 0.1
    
//     Essa é uma propriedade computada, que calcula o valor de forma automática. nao pode ser definada com let
    var negativado: Bool {
        return saldo < 0
    }

    func sacar(_ valor: Double) {
        saldo -= valor
    }

    func depositar(_ valor: Double) {
        saldo += valor
    }

    init(nome: String) {
        self.nome = nome
    }
}


//var contaLucas = Conta(nome: "Lucas")
//contaLucas.sacar(20)
//print(contaLucas.negativado)
//contaLucas.depositar(100)
//print(contaLucas.negativado)
//print(Conta.taxaTransferencia)
//O autocomplete não aparece, porque a taxaTransferencia não pertence a instância de uma classe Conta, e sim, à própria classe Conta. Assim, podemos acessá-la não por uma instância, e sim, escrevemos "Conta.taxaTransferencia" (por ser uma propriedade estática que pertence a classe em si e não a uma instância).

var contaLucas = Conta(nome: "Lucas")
contaLucas.depositar(20)



//Você pode tornar um atributo ou um método privados. Isso significa que a instância não pode acessar esse atributo/método.
struct Pessoa {
  var nome: String
  var idade: Int
  var altura: Double
  var peso: Double

  private var imc: Double {
    return peso / (altura * altura)
  }

  var adulto: Bool {
    return idade >= 18
  }
}

let pessoa = Pessoa(nome: "Felipe", idade: 26, altura: 1.78, peso: 75)
// pessoa.imc -> Erro!





// Agora, apenas a classe/struct em que você a definiu é quem pode acessar de fato esse atributo “IMC”. A instância não pode.

//Mas e se quisermos acessar uma propriedade mas prevenir de ser alterada? Para isso, basta utilizar o private(set). Veja no exemplo abaixo:
struct Pessoa {
  // ... restante do código
  private(set) var altura: Double
}

var pessoa = Pessoa(nome: "Felipe", idade: 26, altura: 1.78, peso: 75)
print(pessoa.altura) // 1.78
// pessoa.altura = 1.80 -> Erro!
