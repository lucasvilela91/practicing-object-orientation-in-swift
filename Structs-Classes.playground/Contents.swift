struct ContaCorrenteStruct {
    var saldo = 0.0
    var nome: String

//    Quando precisamos alterar a struct dentro de uma função, devemos utilizar a palavra-chave mutating. Para classes isso não é necessário.
    mutating func sacar(_ valor: Double) {
        saldo -= valor
    }

    mutating func depositar(_ valor: Double) {
        saldo += valor
    }
}
//trocar de var para let, a IDE vai indicar um erro falando que não podemos alterar o atributo de uma struct
var contaCorrenteStruct01 = ContaCorrenteStruct(nome: "Giovanna")
var contaCorrenteStruct02 = contaCorrenteStruct01
contaCorrenteStruct01.depositar(100)
contaCorrenteStruct02.depositar(50)
print("Saldo da conta corrente struct 01 = \(contaCorrenteStruct01.saldo)")
print("Saldo da conta corrente struct 02 = \(contaCorrenteStruct02.saldo)")
//O fato de igualarmos a contaCorrenteStruct01 na contaCorrenteStruct02 não influencia em nada. Porque a contaCorrenteStruct02 está pegando uma cópia da contaCorrenteStruct01.

class ContaCorrenteClass {
    var saldo = 0.0
    var nome: String

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


//classes isso não acontece. Podemos mudar a var da classe para let.
//Isso acontece porque classes possuem um tipo chamado de "referência" e structs possuem um tipo de "valor". Essa é a principal diferença entre classes e structs.


//let contaCorrenteClasse01 = ContaCorrenteClass(nome: "Ana")
//contaCorrenteClasse01.depositar(60)
//print("Saldo da conta corrente classe 01 = \(contaCorrenteClasse01.saldo)")


let contaCorrenteClasse01 = ContaCorrenteClass(nome: "Ana")
let contaCorrenteClasse02 = contaCorrenteClasse01
contaCorrenteClasse01.depositar(60)
contaCorrenteClasse02.depositar(100)
print("Saldo da conta corrente classe 01 = \(contaCorrenteClasse01.saldo)")
print("Saldo da conta corrente classe 02 = \(contaCorrenteClasse02.saldo)")

//ele não recebe uma cópia da contaCorrenteClasse01 igual acontece na struct. Na verdade, ele está apontando para o mesmo objeto, o mesmo endereço de memória

//classes possui herança
