module uim.bootstrap.vue.components.buttons;

public import uim.bootstrap.vue.components.buttons.button;
public import uim.bootstrap.vue.components.buttons.group;

string vueGlobalRegisterButtons() {
	return 
		BSVButtonGroup.globalRegistration~
			BSVButton.globalRegistration;
}