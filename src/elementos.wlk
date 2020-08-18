class Hogar {

	var property nivelMugre //numero
	var property confort //numero

	// Se considera que un hogar _es bueno_ 
	// si su nivel de mugre es la mitad del confort que ofrece, o menos. 
	method esBueno() = nivelMugre <= confort / 2 // Booleano

	method fueAtacado(plaga) {
		nivelMugre += plaga.nivelDanio()
	}
	//No devuelve nada
}

class Mascota {

	var property nivelSalud //numero

	method fueAtacado(plaga) {
		if (plaga.transmiteEnfermedad()) {
			nivelSalud -= plaga.nivelDanio()
		}//no devuelve nada
	}

	method esBueno() = nivelSalud > 250 // Booleano

}

class Huerta {

	var property capacidadProduccion // numero

	method esBueno() {
		return capacidadProduccion > INTA.produccionMinima()
	} //Booleano

	method fueAtacado(plaga) {
		capacidadProduccion -= plaga.nivelDanio() * 0.1
		if (plaga.transmiteEnfermedad()) {
			capacidadProduccion -= 10
		}
	}
	//no devuelve nada
}

object INTA {

	var property produccionMinima //numero

}

