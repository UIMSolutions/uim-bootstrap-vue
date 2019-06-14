module uim.bsv.components.modals;

public import uim.bsv.components.modals.content;
public import uim.bsv.components.modals.dialog;
public import uim.bsv.components.modals.header;
public import uim.bsv.components.modals.modal;
public import uim.bsv.components.modals.title;
public import uim.bsv.components.modals.footer;
public import uim.bsv.components.modals.body_;

string vueGlobalRegisterModals() {
	return 
		BSVModalTitle.globalRegistration~
			BSVModalContent.globalRegistration~
			BSVModalDialog.globalRegistration~
			BSVModalHeader.globalRegistration~
			BSVModalFooter.globalRegistration~
			BSVModalBody.globalRegistration~
			BSVModal.globalRegistration;
}