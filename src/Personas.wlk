import Jarras.*

class Personas{
	
	const property peso
	const jarrasCompradas = []
	const musicaTradicional = false
	const aguante
	
	method comprarJarra(unaJarra) = jarrasCompradas.add(unaJarra)
	method estaEbrio() = jarrasCompradas.sum({ jarra => jarra.cantidadDeAlcohol() }) * peso > aguante
	method totalAlcohol() = jarrasCompradas.sum({ jarra => jarra.cantidadDeAlcohol() }) 
	method leGusta(unaMarca)
	method pais()
	method quiereEntrar( unaCarpa ) = self.leGusta( unaCarpa.marcaDeCerveza() ) and unaCarpa.tieneMusica() == musicaTradicional
	
	method puedeEntrar( unaCarpa ) = self.quiereEntrar(unaCarpa) and unaCarpa.dejaIngresar(self)

	method entrar(unaCarpa){
		if (self.puedeEntrar( unaCarpa )){
			unaCarpa.genteDentro().add(self)
		}
		else 
			self.error("La persona no puede entrar a la Carpa.")
	}
	
	method esEbrioEmpedernido() = jarrasCompradas.all({ jarra => jarra.litros() >= 1 })
	
	method esPatriota() = jarrasCompradas.all({ jarra => jarra.marca().paisOrigen() == self.pais() })
}



class Belga inherits Personas{
	
	override method pais() = "Belgica"
	override method leGusta( unaMarca ) = unaMarca.lupulo() > 4
}

class Checo inherits Personas{
	
	override method pais() = "Republica Checa"
	override method leGusta( unaMarca ) = unaMarca.graduacion() > 8
}

class Aleman inherits Personas{
	
	override method pais() = "Alemania"
	override method leGusta( unaMarca ) = true
	override method quiereEntrar( unaCarpa ) = super(unaCarpa) and unaCarpa.genteDentro().size() % 2 == 0
}

