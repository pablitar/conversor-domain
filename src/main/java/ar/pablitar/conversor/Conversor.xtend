package ar.pablitar.conversor

import org.eclipse.xtext.xbase.lib.Functions.Function1
import org.eclipse.xtend.lib.annotations.Accessors

class Conversor {
	
	new(String nombre, Function1<Double, Double> conversion) {
		this.nombre = nombre
		this.conversion = conversion
	}
	
	@Accessors
	String nombre
	Function1<Double, Double> conversion
	
	def convertir(Double valor) {
		conversion.apply(valor)
	}
	
	static def bidireccional(String desde, String hasta, Double factor) {
		#[
			new Conversor('''«desde» -> «hasta»''', [valor | valor * factor]),
			new Conversor('''«hasta» -> «desde»''', [valor | valor / factor])
		]
	}
}