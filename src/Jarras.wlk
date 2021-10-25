import Marcas.*
import Carpas.*


class Jarra {
	var property litros
	const property marca 
	
	method cantidadDeAlcohol() = litros * (marca.graduacion() / 100)
	
	 
}