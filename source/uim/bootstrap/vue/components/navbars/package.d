module uim.bootstrap.vue.components.navbars;

public import uim.bootstrap.vue.components.navbars.navbar;
public import uim.bootstrap.vue.components.navbars.brand;
public import uim.bootstrap.vue.components.navbars.toggler;
public import uim.bootstrap.vue.components.navbars.togglericon;

string vueGlobalRegisterNavbars() {
	return 
		BV5NavbarBrand.globalRegistration~
			BV5NavbarToggler.globalRegistration~
			BV5NavbarTogglerIcon.globalRegistration~
			BV5Navbar.globalRegistration;
}