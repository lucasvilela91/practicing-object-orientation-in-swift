enum FormaDePagamento {
    case pix
    case boleto
    case saldoEmConta
}
//Associated Values
enum ResultadoSaque {
        case sucesso(novoValor: Double)
        case falha(erro: String)
}


class Conta {
    var saldo = 0.0
    var nome: String

    func sacar(_ valor: Double) ->
                    ResultadoSaque {

                    if valor > saldo {
                            return .falha(erro: "O valor é maior do que seu saldo")
                    } else {
                            saldo -= valor
                            return .sucesso(novoValor: saldo)
                    }
        }

    func depositar(_ valor: Double) {
        saldo += valor
    }

    func pagamentoCartao(_ tipoPagamento: FormaDePagamento) {
            switch tipoPagamento {
            case .pix: print("O pagamento será efetuado por pix")
            case .boleto: print("O pagamento será efetuado por boleto")
            case .saldoEmConta: print("O pagamento será efetuado por saldo em conta")
//            default: break ,pode exluir pois nunca fazer usado!
                
            }

        }

    init(nome: String) {
        self.nome = nome
    }
}

var contaGiovanna: Conta = .init(nome: "Giovanna")
contaGiovanna.pagamentoCartao(.pix)
contaGiovanna.depositar(100)
let resultado = contaGiovanna.sacar(20)

switch resultado {

case .sucesso(let novoValor):
    print("O saque foi um sucesso, e o saldo foi de \(novoValor)")
case .falha(let erro):
    print(erro)

}


// podemos ter um valor customizado para cada caso de uma enumeração

enum Mes: String {
    case janeiro = "Jan", fevereiro, marco, abril, maio, junho, julho, agosto, setembro, outubro, novembro, dezembro
}

var janeiro = Mes.janeiro
print(janeiro.rawValue)
var fevereiro: Mes = .fevereiro
print(fevereiro.rawValue)


enum Moeda: Double {

        case umCentavo = 0.01
        case cincoCentavos = 0.05
        case dezCentavos = 0.1
        case vinteCincoCentavos = 0.25
        case cinquentaCentavos = 0.5

}

var moedaCincoCentavos = Moeda.cincoCentavos
print(moedaCincoCentavos.rawValue)






