package ar.pablitar.conversor

import org.eclipse.xtext.xbase.lib.Functions.Function1

class Conversor {
	
	new(String nombre, Function1<Double, Double> conversion) {
		this.nombre = nombre
		this.conversion = conversion
	}
	
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