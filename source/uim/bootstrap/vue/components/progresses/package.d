module uim.bootstrap.vue.components.progresses;

public import uim.bootstrap.vue.components.progresses.progress;
public import uim.bootstrap.vue.components.progresses.bar;

string vueGlobalRegisterProgresses() {
	return 
		BSVProgressBar.globalRegistration~
			BSVProgress.globalRegistration;
}