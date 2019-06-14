module uim.bsv.components.progresses;

public import uim.bsv.components.progresses.progress;
public import uim.bsv.components.progresses.bar;

string vueGlobalRegisterProgresses() {
	return 
		BSVProgressBar.globalRegistration~
			BSVProgress.globalRegistration;
}