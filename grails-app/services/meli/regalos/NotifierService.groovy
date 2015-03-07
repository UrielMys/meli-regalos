package meli.regalos

class NotifierService {
	boolean transactional = false;
    def mailService;
	def contactUser(userName,email) {
		mailService.sendMail {
			to email
			from "jorgeurielmysler@hotmail.com"
			subject "Probando mails"
			body "Estamos probando enviar mails"
		}
    }
}
