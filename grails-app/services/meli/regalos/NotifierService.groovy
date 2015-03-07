package meli.regalos

class NotifierService {
	//boolean transactional = false;
	
    def sendConfirmation() {
        def thread = Thread.start {
            sendMail {
                to "jorgejcabrera@hotmail.com"
                subject "Confirmation"
                body view: "/mail/confirmation"
            }
        }
        thread.join()
    }
	
}
