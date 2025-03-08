class Conta {
    var saldo = 0.0
    var nome: String
    
    func sacar(_ valor: Double){
        saldo -= valor
    }
    
    func depositar(_ valor: Double) {
        saldo += valor
    }
    
    init(nome: String)  {
        self.nome = nome
    }
}

//ela esta herdando todos os metodos e atributos da classe Conta. Classe Filha
class ContaPoupanca: Conta {
    var possuiCartaoDebito = false
    func solicitarDebito() {
        possuiCartaoDebito = true
        print("O Cliente está solicitando o cartão de débito")
    }
}

//vou instanciar ContaPoupanca com meu nome
var contaPoupanca = ContaPoupanca(nome: "Lucas")
contaPoupanca.depositar(50)
print(contaPoupanca.saldo)
contaPoupanca.solicitarDebito()


class ContaCorrente: Conta {
    func SolicitarEmprestimo(_ valor: Double) {
        print("O Cliente está solicitando um empréstimo no valor de \(valor)")
    }
}

var contaCorrente = ContaCorrente(nome: "Paula")
contaCorrente.depositar(100)
print(contaCorrente.saldo)
contaCorrente.SolicitarEmprestimo(20000)

//Você sabia que há uma maneira de fazer com que uma classe não seja herdada por outra?
//Para impedir uma classe de herdar outra, você precisa apenas adicionar a palavra-chave final antes de class. Veja um exemplo abaixo:
final class Pessoa {}

// class Estudante: Pessoa {} -> Erro! Pessoa não pode ser herdada
