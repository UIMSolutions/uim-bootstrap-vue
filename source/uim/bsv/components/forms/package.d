module uim.bsv.components.forms;

public import uim.bsv.components.forms.check;
public import uim.bsv.components.forms.form;
public import uim.bsv.components.forms.group;

string vueGlobalRegisterForms() {
	return 
		BSVFormCheck.globalRegistration~
			BSVFormGroup.globalRegistration~
			BSVForm.globalRegistration;
}