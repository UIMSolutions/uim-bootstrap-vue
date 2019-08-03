module uim.bootstrap.vue.components.navs;

public import uim.bootstrap.vue.components.navs.nav;
public import uim.bootstrap.vue.components.navs.link;
public import uim.bootstrap.vue.components.navs.item;

string vueGlobalRegisterNavs() {
	return 
		BSVNavLink.globalRegistration~
			BSVNavItem.globalRegistration~
			BSVNav.globalRegistration;
}