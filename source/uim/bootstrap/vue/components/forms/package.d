module uim.bootstrap.vue.forms;

public import uim.bootstrap.vue.forms.check;
public import uim.bootstrap.vue.forms.form;
public import uim.bootstrap.vue.forms.group;

string vueGlobalRegisterForms() {
	return 
		BV5FormCheck.globalRegistration~
			BV5FormGroup.globalRegistration~
			BV5Form.globalRegistration;
}