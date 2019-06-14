module uim.bsv.components.navs;

public import uim.bsv.components.navs.nav;
public import uim.bsv.components.navs.link;
public import uim.bsv.components.navs.item;

string vueGlobalRegisterNavs() {
	return 
		BSVNavLink.globalRegistration~
			BSVNavItem.globalRegistration~
			BSVNav.globalRegistration;
}