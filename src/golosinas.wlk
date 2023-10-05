import sabores.*

object bombon {
	var peso = 15
	
	method precio() = 5
	method sabor() = frutilla
	method peso() = peso
	method contienGluten() = false
	
	method recibirMordisco() {
		peso = 0.max(peso * 0.8 - 1)
	}
}

object alfajor {
	var peso = 300
	
	method precio() = 12
	method sabor() = chocolate
	method peso() = peso
	method contienGluten() = true
	
	method recibirMordisco() {
		peso = 0.max(peso * 0.8)
	}
}

object caramelo {
	var peso = 5
	
	method precio() = 1
	method sabor() = frutilla
	method peso() = peso
	method contienGluten() = false
	
	method recibirMordisco() {
		peso = 0.max(peso - 1)
	}
}

object chupetin {
	var peso = 7
	
	method precio() = 2
	method sabor() = naranja
	method peso() = peso
	method contienGluten() = false
	
	method recibirMordisco() {
		peso = 2.max(peso * 0.9)
	}
}

object oblea {
	var peso = 250
	
	method precio() = 5
	method sabor() = vainilla
	method peso() = peso
	method contienGluten() = true
	
	method recibirMordisco() {
		peso = if(peso > 70) {peso * 0.5} else {peso * 0.25}
	}
}

object chocolatin {
	var precio = {peso => 0.50 * peso}
	var pesoInicial
	
	method precio() = precio
	method sabor() = chocolate
	method peso() = pesoInicial
	method contienGluten() = true
	
	method recibirMordisco() {
		pesoInicial = 0.max(pesoInicial - 2)
	}

	method asignarPeso(peso) {
		pesoInicial = peso
		precio = precio.apply(peso)
	}
}

object golosinaBaniada {
	var golosinaBase
	var pesoBanio = 4
	var peso
	
	method precio() = golosinaBase.precio() + 2
	method sabor() = golosinaBase.sabor()
	method peso() = peso
	method contienGluten() = golosinaBase.contienGluten()
	
	method recibirMordisco() {
		golosinaBase.recibirMordisco()
		pesoBanio -= 2
		peso = golosinaBase.peso() + pesoBanio
	}
	
	method asignarGolosinaBase(golosina) {
		golosinaBase = golosina
		peso = golosina.peso() + pesoBanio
	}
}


object pastillaTuttiFrutti {
	var contienGluten = false
	const sabores = [frutilla, chocolate, naranja]
	var sabor = 0
	
	method precio() {
		if(contienGluten) {return 10} else {return 7}
	}
	method sabor() = sabores.get(sabor % 3)
	method contienGluten() = contienGluten
	
	method recibirMordisco() {
		sabor += 1
	}
		
	method contienGluten(valor) {contienGluten = valor}
}