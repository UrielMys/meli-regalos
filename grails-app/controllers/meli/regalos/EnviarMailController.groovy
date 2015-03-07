package meli.regalos

class EnviarMailController {

	def testService;
	def index() {
	}
	def enviarMail(){
		/*Date fechaActual = new Date();
		def regalosDelMes = Regalo.findAll();
		regalosDelMes = regalosDelMes.findAll{it.fechaEntrega.getAt(Calendar.MONTH)==fechaActual.getAt(Calendar.MONTH)}
		println regalosDelMes;
		[regalos:regalosDelMes];*/
		testService.sendConfirmation()
		render "OK"
	}
	
}
