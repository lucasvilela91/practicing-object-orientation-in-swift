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
    var possuiCartaoDebito: Bool
    
    func solicitarDebito() {
        possuiCartaoDebito = true
        print("O Cliente está solicitando o cartão de débito")
    }
    init(nome: String, possuiCartaoDebito: Bool) {
        self.possuiCartaoDebito = possuiCartaoDebito
        super.init(nome: nome)
        //        já que escrevemos novamente o inicializador em uma classe filha, precisamos receber nos parâmetros de uma classe pai e, em seguida, chamar o inicializador desta usando o super.init com o parâmetro necessário, ou seja, nome.
    }
}

//vou instanciar ContaPoupanca com meu nome
var contaPoupanca = ContaPoupanca(nome: "Lucas", possuiCartaoDebito: false)
contaPoupanca.depositar(50)
print(contaPoupanca.saldo)
contaPoupanca.solicitarDebito()


class ContaCorrente: Conta {
    func SolicitarEmprestimo(_ valor: Double) {
        print("O Cliente está solicitando um empréstimo no valor de \(valor)")
//        Para chamar o método da classe pai, podemos usar a palavra super, usada quando fazemos referência à classe pai.
        super.depositar(valor)
    }
}

var contaCorrente = ContaCorrente(nome: "Paula")
contaCorrente.depositar(100)
print(contaCorrente.saldo)
contaCorrente.SolicitarEmprestimo(20000)
print(contaCorrente.saldo)

//Você sabia que há uma maneira de fazer com que uma classe não seja herdada por outra?
//Para impedir uma classe de herdar outra, você precisa apenas adicionar a palavra-chave final antes de class. Veja um exemplo abaixo:
final class Pessoa {}

// class Estudante: Pessoa {} -> Erro! Pessoa não pode ser herdada

