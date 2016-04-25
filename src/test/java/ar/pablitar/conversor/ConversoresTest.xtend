package ar.pablitar.conversor

import static org.junit.Assert.*
import org.junit.Test

class ConversoresTest {
	
	static val tolerancia = 0.00001
	
	@Test
	def void testKMAMillas() {
		assertEquals(0.621371, Conversores.kilometrosAMillas.convertir(1.0), tolerancia)
	}
	
	@Test
	def void millasAKM() {
		assertEquals(1.60934, Conversores.millasAKilometros.convertir(1.0), tolerancia)
	}
	
	@Test
	def void gramosAKilogramos() {
		assertEquals(2.5, Conversores.gramosAKilogramos.convertir(2500.0), tolerancia)
	}
	
	@Test
	def void kilogramosAGramos() {
		assertEquals(1000.0, Conversores.kilogramosAGramos.convertir(1.0), tolerancia)
	}
	
	@Test
	def void farenheitACelsius() {
		assertEquals(20, Conversores.farenheitACelsius.convertir(68.0), tolerancia)
	}
	
	@Test
	def void celsiusAFarenheit() {
		assertEquals(96.8, Conversores.celsiusAFarenheit.convertir(36.0), tolerancia)
	}
	
}