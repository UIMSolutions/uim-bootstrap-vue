module uim.bootstrap.vue.components.modals;

public import uim.bootstrap.vue.components.modals.content;
public import uim.bootstrap.vue.components.modals.dialog;
public import uim.bootstrap.vue.components.modals.header;
public import uim.bootstrap.vue.components.modals.modal;
public import uim.bootstrap.vue.components.modals.title;
public import uim.bootstrap.vue.components.modals.footer;
public import uim.bootstrap.vue.components.modals.body_;

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