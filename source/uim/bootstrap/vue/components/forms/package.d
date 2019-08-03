module uim.bootstrap.vue.components.forms;

public import uim.bootstrap.vue.components.forms.check;
public import uim.bootstrap.vue.components.forms.form;
public import uim.bootstrap.vue.components.forms.group;

string vueGlobalRegisterForms() {
	return 
		BSVFormCheck.globalRegistration~
			BSVFormGroup.globalRegistration~
			BSVForm.globalRegistration;
}