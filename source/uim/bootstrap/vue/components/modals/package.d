module uim.bootstrap.vue.modals;

public import uim.bootstrap.vue.modals.content;
public import uim.bootstrap.vue.modals.dialog;
public import uim.bootstrap.vue.modals.header;
public import uim.bootstrap.vue.modals.modal;
public import uim.bootstrap.vue.modals.title;
public import uim.bootstrap.vue.modals.footer;
public import uim.bootstrap.vue.modals.body_;

string vueGlobalRegisterModals() {
	return 
		BV5ModalTitle.globalRegistration~
			BV5ModalContent.globalRegistration~
			BV5ModalDialog.globalRegistration~
			BV5ModalHeader.globalRegistration~
			BV5ModalFooter.globalRegistration~
			BV5ModalBody.globalRegistration~
			BV5Modal.globalRegistration;
}