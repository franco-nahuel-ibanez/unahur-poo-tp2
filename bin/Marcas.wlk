
class Marcas{
	var property lupulo = 0
	var property paisOrigen
}

class Rubia inherits Marcas{
	var property graduacion

}


class Negra inherits Marcas{
	var property graduacionMundial
	
	method graduacion() = graduacionMundial.min( lupulo * 2 )	
}

class Roja inherits Negra{
	override method graduacion() = super() * 1.25
	
}

