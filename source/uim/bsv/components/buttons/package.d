module uim.bsv.components.buttons;

public import uim.bsv.components.buttons.button;
public import uim.bsv.components.buttons.group;

string vueGlobalRegisterButtons() {
	return 
		BSVButtonGroup.globalRegistration~
			BSVButton.globalRegistration;
}