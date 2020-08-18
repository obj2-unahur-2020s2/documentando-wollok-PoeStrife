class Plaga {
	var property poblacion //numero
	
	method transmiteEnfermedad() = poblacion >= 10 //Booleano
	
	method atacar(elemento){
		poblacion *= 1.1
		elemento.fueAtacado(self)
	} //no devuelve nada
}

class PlagaCucaracha inherits Plaga {

	var property pesoPromedio //numero

	method nivelDanio() {
		return poblacion / 2
	}//devuelve numero

	override method transmiteEnfermedad() {
		return super() and pesoPromedio >= 10
	}//Booleano

	override method atacar(elemento) {
		super(elemento)
		pesoPromedio += 2
	}
	//No devuelve nada
}

class PlagaMosquito inherits Plaga {

	method nivelDanio() {
		return poblacion
	}
	//devuelve numero
	override method transmiteEnfermedad() {
		return super() and poblacion % 3 == 0
	}
	//Booleano
}

class PlagaPulgas inherits Plaga {

	method nivelDanio() = poblacion * 2 // Devuelve Numero

}

class PlagaGarrapatas inherits PlagaPulgas {

	override method atacar(elemento) {
		poblacion *= 1.2
		elemento.fueAtado(self)
	}
	//No devuelve nada
}

