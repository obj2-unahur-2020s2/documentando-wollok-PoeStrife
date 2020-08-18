class Barrio {

	const property elementos = [] //lista

	method agregarElemento(elemento) {
		elementos.add(elemento)
	} //no devuelve nada

	method sacarElemento(elemento) {
		elementos.remove(elemento)
	}// no devuelve nada

	method elementosBuenos() {
		return elementos.count{ e => e.esBueno() }
	} //devuelve una lista

	method elementosMalos() = elementos.count{ e => not e.esBueno() } // devuelve una lista

	method esCopado() {
		return self.elementosBuenos() > self.elementosMalos()
	}
	//Booleano
}

