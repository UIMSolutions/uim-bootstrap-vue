module uim.bootstrap.vue.components.navbars;

public import uim.bootstrap.vue.components.navbars.navbar;
public import uim.bootstrap.vue.components.navbars.brand;
public import uim.bootstrap.vue.components.navbars.toggler;
public import uim.bootstrap.vue.components.navbars.togglericon;

string vueGlobalRegisterNavbars() {
	return 
		BSVNavbarBrand.globalRegistration~
			BSVNavbarToggler.globalRegistration~
			BSVNavbarTogglerIcon.globalRegistration~
			BSVNavbar.globalRegistration;
}