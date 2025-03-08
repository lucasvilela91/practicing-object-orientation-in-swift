class ContaCorrente {
    var saldo: Double
    var nome: String /* nao inicializou */
//    variaveis sao chamadas de atributos
    
//    metodos sao as funcoes
    func sacar(_ valor: Double) {
        saldo -= valor
    }
    
    func depositar(_ valor: Double) {
        saldo += valor
    }
    
//  precisamos inicializar todos os atributos da nossa classe
    init(nome: String) {
        saldo = 0.0
        self.nome = nome
    }
}

//criar var e vamos atribuir essa variável a uma instância de ContaCorrente
var contaCorrenteLucas = ContaCorrente(nome: "Lucas")
print(contaCorrenteLucas.saldo)
contaCorrenteLucas.depositar(1500)
print(contaCorrenteLucas.saldo)

var contaCorrenteZe = ContaCorrente(nome: "Ze")
contaCorrenteZe.depositar(200)
print(contaCorrenteZe.saldo)
contaCorrenteZe.sacar(100)
print(contaCorrenteZe.saldo)
