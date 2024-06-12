struct ContaCorrente {   // Struct e uma arquitetura de valor e é necessario usar o mutating para os Metodos, possui por baixo dos panos um construtor, sendo desnecessario a criacao  de um.
    var saldo = 0.0      // Atributos criado para manipulacao
    var nome: String
    
    mutating func sacar (_ valor: Double){  // Metodo para sacar do saldo
        saldo -= valor
    }
    mutating func depositar(_ valor: Double){ // Metodo para depositaar no saldo
        saldo += valor
    }
}
var contaCorrenteStructJoao = ContaCorrente(nome: "Joao") // Instanciando a classe ContaCorrente
contaCorrenteStructJoao.depositar(1500)   // Manipulando métodos com atributos
print("O saldo da conta de Joao é = \(contaCorrenteStructJoao.saldo)")  // Exibindo saldo da Classe ContaCorrente

print("==================================================================================================================================================================================")

class ContaCorrente2 {  // Classes precisam de um construtor para inicializar Atributos
    var saldo: Double   // Criacao de Atributos
    var nome: String
    
    func sacar(_ valor: Double) {  // Criando Metodo sacar com parametros para manipulacao
        saldo -= valor
    }
    func depositar(_ valor: Double){ // Criando Metodo depositar com parametros para manipulacao
        saldo += valor
    }
    init(nome: String){  // CONSTRUTOR para inicializar Atributos
        saldo = 0.0
        self.nome = nome // self para pegar o nome da classe inicializada e adicionar um nome como parametro.
    }
}
let concaCorrenteClasseJoao = ContaCorrente2(nome: "Joao") // Instanciando Classe em uma variavel
concaCorrenteClasseJoao.depositar(1500)  // Utilizando o metodo depositar() para adicionar valor ao saldo
print("O saldo da conta de Joao é = \(concaCorrenteClasseJoao.saldo)") // Exibindo saldo da classe ContaCorrente2

print("==================================================================================================================================================================================")

class Carro {
    var nome: String     // Crienado Atributos para manipulacao
    var marca: String
    var ano: Int
    var combustivel: String //
    
    init(nome: String, marca: String, ano: Int, combustivel: String) { // Inicializando Atributos criado na classe
        self.nome = nome       // self.nome para pegar o nome da classe e adicionar um novo por parametro na Instancia
        self.marca = marca    // self.marca para pegar o marca da classe e adicionar um novo por parametro na Instancia
        self.ano = ano        // self.ano para pegar o ano da classe e adicionar um novo por parametro na Instancia
        self.combustivel = combustivel // self.combustivel para pegar o combustivel da classe e adicionar um novo por parametro na Instancia
    }
}
var carro = Carro(nome: "Fiesta", marca: "Ford", ano: 2008, combustivel: "Flex") // Instanciando a classe Carro()
print("O carro de Joao é um \(carro.nome), a marca é \(carro.marca), o ano é \(carro.ano) e usa combustivel \(carro.combustivel)") // Exibindo atributos da classe Carro()

print("==================================================================================================================================================================================")

class Calculadora {
    var numero1: Double   // Criacao de atributos para manipulacao da classe
    var numero2: Double
    
    func soma() -> Double {    // Metodo para somar os atributos
       return numero1 + numero2
    }
    func subtracao() -> Double {  // Metodo para subtrair atributos
        return numero1 - numero2
    }
    func multiplicacao() -> Double {  // Metodo para multiplicar atributos
        return numero1 * numero2
    }
    func divisao() -> Double {   // Metodo para dividir atributos
        return numero1 / numero2
    }
    init(numero1: Double, numero2: Double) {  // Inicializando Atributos para manipulacao
        self.numero1 = numero1
        self.numero2 = numero2
    }
}
var calculadora = Calculadora(numero1: 10, numero2: 2) // Instanciando classe Calculadora para exibir atributos e manipula-los
print("A soma dos numeros é \(calculadora.soma()), a Subtracao dos numeros é \(calculadora.subtracao()), a multiplicacao dos numeros sao \(calculadora.multiplicacao()), a divisao dos numeros sao \(calculadora.divisao())") // Exibindo atributos manipulados.

print("==================================================================================================================================================================================")

class Restaurante {
    var nome: String
    var tipoDeComida: String    // Criando Atributos para manipulacao da classe.
    var numeroPedido: Int = 0
    
    func recebePedido(){        // Metodo para receberPedido.
        self.numeroPedido += 1  // self.numeroPedido para adicionar o pedido no Atributo.
    }
    func calculaTotalPedidos() -> Double {  // Metodo para calcular o total de pedidos.
        return 35.0 * Double(self.numeroPedido) // Multiplicando cada pedido pelo valor de cada unidade de produto.
    }
    
    init(nome: String, tipoDeComida: String) {  // Iniciando atributos para manipulacao.
        self.nome = nome                    // self.nome para pegar o atributo nome da classe e adicionar um nome na instancia.
        self.tipoDeComida = tipoDeComida    // self.tipoDeComida para pegar o atributo tipoDeComida da clase e adicioanr um tipo de comida quando for instanciada.
    }
}
var restaurante = Restaurante(nome: "Restaurante do Joao", tipoDeComida: "Mexicana") // Instanciando a classe Restaurante com os atributos que vao ser manipulados
restaurante.recebePedido() // usando a variavel instanciada para usar o metodo recebePedido() da classe Restaurante
restaurante.recebePedido() // igual ao de cima
restaurante.calculaTotalPedidos() // usando a variavel instanciada para usar o metodo calculaTotalPedidos() da classe Restaurante
print("\(restaurante.nome), obtem \(restaurante.numeroPedido) pedidos com o total de \(restaurante.calculaTotalPedidos())") // Exibindo classe com seus atributos manipulados.

print("==================================================================================================================================================================================")

class Retangulo {
    var base: Double   // Criando atributos para serem manipulados
    var altura: Double
    
    func calcularArea() -> Double {   // Metodo para calcularArea com os atributos base * altura
        return base * altura
    }
    func calcularPerimetro() -> Double {  // Metodo para calcularPerimetro com os atributos onde a soma de todos os lados sao iguais
        return base * 2 + altura * 2
    }
    
    init(base: Double, altura: Double) {   // Iniciando os atributos da classe
        self.base = base                // self.base para pegar a base da classe e manipular na instancia
        self.altura = altura            // self.altura para pegar a altura da classe e manipular na instancia
    }
}
var retangulo = Retangulo(base: 10, altura: 20) // Instanciando a classe em uma variavel
retangulo.calcularArea() // Usando metodo calcularArea da classe para calcular os parametros da instancia acima.
retangulo.calcularPerimetro() // Usando metodo calcularPerimetro da classe para calcular os parametros da instancia acima.
print("A area do retangulo e = \(retangulo.calcularArea()), e o perimetro do retangulo e = \(retangulo.calcularPerimetro())") // Exibindo valores utilizado como parametros na classe.

print("==================================================================================================================================================================================")

print("==== H E R A N Ç A S ====")  // Uma classe pai pode dividir Atributos e Metodos com outras classes filhas(que podem ter seus proprios metodos e atributos tambem alem da do PAI)

class Conta {                    // Classe PAI
    var saldo = 0.0
    var nome: String            // Atributos da classe PAI
    
    func sacar(_ valor: Double){   // Metodo com parametros
        saldo -= valor
    }
    func  depositar(_ valor: Double){  // Metodo com parametros
        saldo += valor
    }
    init(nome: String) {        // Construtor com parametro para pegar o nome da Classe e adicionar o nome da Instancia
        self.nome = nome        // self para pegar o atributo de dentro da classe especifica
    }
}
print("======================================================")

class ContaPoupanca: Conta {            // Class filho da classe Conta() onde possui todas informacoes do PAI mais um metodo de solicitarDebito
    var possuiCartaoDebito = false      // Atributo para para verificacao
    func solicitarDebito () {           // Metodo para solicitar saldo na class Conta(PAI)
        possuiCartaoDebito = true
        print("O cliente está solicitando cartão de débito")
    }
}
var contaPoupanca = ContaPoupanca(nome: "Joao") // Instanciando ContaPoupanca filho
contaPoupanca.depositar(50)       // Depositando na class PAI que disponibiliza a heranca para a contaPoupanca
print("Saldo atualizado no valor de = \(contaPoupanca.saldo)")        // Exibindo o saldo
contaPoupanca.solicitarDebito()   // instanciando o Metodo solicitarDebito
print("======================================================")

class ContaCorrente13: Conta {     // Herdando a ContaCorrente13 da class PAI Conta()
    var possuirCartaoCredito = false              // Atributo
    func solicitarCredito (_ valor: Double) {     // Metodo
        possuirCartaoCredito = true
        print("O cliente está solicitando cartão de crédito com limite de \(valor)")
        super.depositar(valor)           // Referência a class PAI, usando a palavra super.(metodo escolhido da classe pai)
    }
}
var contaCorrente = ContaCorrente13(nome: "Joao") // Instanciando a classe filho
contaCorrente.depositar(100)        // Usando o Metodo depositar da classe PAI
print("Saldo adicionado no valor de = \(contaCorrente.saldo)")          // Mostrnado saldo
contaCorrente.solicitarCredito(20000) // Solicitanado credito com a class filha solicitarCredito e com o super usado no Metodo é adicionado o valor solicitado no saldo da classe PAI
print("O saldo atualizado é de = \(contaCorrente.saldo)")        // Exibindo saldo da classe PAI

print("==================================================================================================================================================================================")
