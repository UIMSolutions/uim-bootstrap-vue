module uim.bootstrap.vue.components.progresses;

public import uim.bootstrap.vue.components.progresses.progress;
public import uim.bootstrap.vue.components.progresses.bar;

string vueGlobalRegisterProgresses() {
	return 
		BV5ProgressBar.globalRegistration~
			BV5Progress.globalRegistration;
}