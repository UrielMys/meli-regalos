package meli.regalos

class EnviarMailController {

	def notifierService;
    def index() { }
	
	def enviarMail(){
		Date fechaActual = new Date();
		def regalosDelMes = Regalo.findAll();
		regalosDelMes = regalosDelMes.findAll{it.fechaEntrega.getAt(Calendar.MONTH)==fechaActual.getAt(Calendar.MONTH)}
		println regalosDelMes;
		[regalos:regalosDelMes];	
	}
	
	def send = {
		notifierService.contactUser(params.userName,params.email)
		render "Email sent!"
	}

}
