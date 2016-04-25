package ar.pablitar.conversor

class Conversores {
	
	static public val millasKilometros = Conversor.bidireccional("millas", "kms", 1.60934)
	static public val millasAKilometros = millasKilometros.get(0)
	static public val kilometrosAMillas = millasKilometros.get(1)
	
	static public val kilogramosGramos = Conversor.bidireccional("kilogramos", "gramos", 1000.0)
	static public val kilogramosAGramos = kilogramosGramos.get(0)
	static public val gramosAKilogramos = kilogramosGramos.get(1)
	
	static public val farenheitACelsius = new Conversor("farenheit -> centígrados", [
		farenheit | (farenheit - 32) * (5.0/9)
	])
	static public val celsiusAFarenheit = new Conversor("centígrados -> farenheit", [centigrados | (centigrados * (9.0/5)) + 32]) 
	
	private static val conversores = millasKilometros + kilogramosGramos + #[ar.pablitar.conversor.Conversores.farenheitACelsius, ar.pablitar.conversor.Conversores.celsiusAFarenheit]
	
	static def todos() {
		conversores
	}
}