import golosinas.*
import sabores.*

object mariano {
	const bolsaDeGolosinas = []
	
	method bolsaDeGolosinas() = bolsaDeGolosinas
	
	method comprar(unaGolosina) {
		bolsaDeGolosinas.add(unaGolosina)
	}
	method desechar(unaGolosina) {
		if(bolsaDeGolosinas.contains(unaGolosina)) bolsaDeGolosinas.remove(unaGolosina)
	}
	method cantidadDeGolosinas() {
		return bolsaDeGolosinas.size()
	}
	method tieneLaGolosina(unaGolosina) {
		return bolsaDeGolosinas.contains(unaGolosina)
	}
	method probarGolosinas() {
		bolsaDeGolosinas.forEach({golosina => golosina.recibirMordisco()})
	}
	method hayGolosinaSinTACC() {
		return bolsaDeGolosinas.any({golosina => not golosina.contienGluten()})
	}
	method preciosCuidados() {
		return bolsaDeGolosinas.all({golosina => golosina.precio() <= 10})
	}
	method golosinaDeSabor(unSabor) {
		return bolsaDeGolosinas.find({golosina => golosina.sabor() == unSabor})
	}
	method golosinasDeSabor(unSabor) {
		return bolsaDeGolosinas.filter({golosina => golosina.sabor() == unSabor})
	}
	method sabores() {
		return bolsaDeGolosinas.map({golosina => golosina.sabor()}).asSet()
	}
	method golosinaMasCara() {
		return bolsaDeGolosinas.map({golosina => golosina.precio()}).max()
	}
	method pesoGolosinas() {
		return bolsaDeGolosinas.map({golosina => golosina.peso()}).sum()
	}
	/*no entiendo los dos ultimos metodos */
}
