package meli.regalos

class CumpleaniosController {

    def index() { }
	def verCumpleanios(){
		def	fechaActual = Date.parse('yyyy-MM-dd','1993-03-01');
		String mes = fechaActual.getAt(Calendar.MONTH)+1;
		String dia = fechaActual.getAt(Calendar.DAY_OF_MONTH);
		def cumpleanio =mes+dia;
		println "mes "+mes;
		println "dia "+dia;
		println cumpleanio;
		[empleadoList:Empleado.findAllByCumpleanio(cumpleanio).each {it.filtrarRegalosPorFecha(Date.parse('yyyy-mm-dd','2016-03-29'))},fecha:fechaActual];
	}

}
