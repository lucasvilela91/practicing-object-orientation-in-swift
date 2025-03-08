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


class ContaPoupanca: Conta {
    var possuiCartaoDebito: Bool
    
    func solicitarDebito() {
        possuiCartaoDebito = true
        print("O Cliente está solicitando o cartão de débito")
    }
    override func sacar(_ valor: Double) {
        saldo -= valor + 10
    }
    
    
    init(nome: String, possuiCartaoDebito: Bool) {
        self.possuiCartaoDebito = possuiCartaoDebito
        super.init(nome: nome)
    }
}


var contaPoupanca = ContaPoupanca(nome: "Lucas", possuiCartaoDebito: false)
contaPoupanca.depositar(50)
contaPoupanca.sacar(20)
print(contaPoupanca.saldo)
contaPoupanca.solicitarDebito()


class ContaCorrente: Conta {
    func SolicitarEmprestimo(_ valor: Double) {
        print("O Cliente está solicitando um empréstimo no valor de \(valor)")
        super.depositar(valor)
    }
    override func sacar(_ valor: Double) {
        saldo -= valor + 5
    }
}

var contaCorrente = ContaCorrente(nome: "Paula")
contaCorrente.depositar(100)
contaCorrente.sacar(20)
print(contaCorrente.saldo)
contaCorrente.SolicitarEmprestimo(20000)
print(contaCorrente.saldo)


func exibeSaldoDaConta(_ conta: Conta) {
    //    Da para fazer verificações com is
    if conta is ContaCorrente {
        print("Conta é do tipo conta corrente")
    }
    
    if let contaCorrente = conta as? ContaCorrente {
        contaCorrente.SolicitarEmprestimo(200)
        //o if let é uma maneira de desembrulharmos uma opcional.
        //O as? Typecasting esta fazendo uma verificação
    }
    
    guard let contaPoupanca = conta as? ContaPoupanca else {
        return
    }
    print(contaPoupanca.possuiCartaoDebito)
}

exibeSaldoDaConta(contaCorrente)
exibeSaldoDaConta(contaPoupanca)




