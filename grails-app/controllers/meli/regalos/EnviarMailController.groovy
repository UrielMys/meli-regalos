package meli.regalos

class EnviarMailController {

	def mailService;
	def index() {
		enviarMail;
	}
	def enviarMail = {
		/*Date fechaActual = new Date();
		 def regalosDelMes = Regalo.findAll();
		 regalosDelMes = regalosDelMes.findAll{it.fechaEntrega.getAt(Calendar.MONTH)==fechaActual.getAt(Calendar.MONTH)}
		 println regalosDelMes;
		 [regalos:regalosDelMes];*/
		mailService.sendMail{
			to "jorgejcabrera@hotmail.com.ar"
			from "urieljorgemysler@hotmail.com"
			subject "Hello John"
			text "probando mails"
		}
		render "OK"
	}
}
