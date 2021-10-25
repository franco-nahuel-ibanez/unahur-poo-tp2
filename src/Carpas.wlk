import Marcas.*
import Personas.*
import Jarras.*



class Carpas{
	const property limiteDeGente
	const property tieneMusica = false
	const property marcaDeCerveza
	const property genteDentro = []
	
	method dejaIngresar( unaPersona ) = genteDentro.size() + 1 <= limiteDeGente and not( unaPersona.estaEbrio() )
	
	method leSirve( unaPersona, litros ){
		if( genteDentro.contains( unaPersona ) ){
			const jarra = new Jarra( litros=litros, marca=marcaDeCerveza )
			unaPersona.comprarJarra(jarra)
		}
		else
           self.error("La persona no esta en la carpa.")
		
	}
	
	method ebriosEmpedernidos() = genteDentro.count({ p => p.esEbrioEmpedernido() })
	
}



	
