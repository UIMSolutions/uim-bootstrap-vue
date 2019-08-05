module uim.bootstrap.vue.progresses;

public import uim.bootstrap.vue.progresses.progress;
public import uim.bootstrap.vue.progresses.bar;

string vueGlobalRegisterProgresses() {
	return 
		BV5ProgressBar.globalRegistration~
			BV5Progress.globalRegistration;
}