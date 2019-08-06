module uim.bootstrap.vue.navbars;

public import uim.bootstrap.vue.navbars.navbar;
public import uim.bootstrap.vue.navbars.brand;
public import uim.bootstrap.vue.navbars.toggler;
public import uim.bootstrap.vue.navbars.togglericon;

string vueGlobalRegisterNavbars() {
	return 
		BV5NavbarBrand.globalRegistration~
			BV5NavbarToggler.globalRegistration~
			BV5NavbarTogglerIcon.globalRegistration~
			BV5Navbar.globalRegistration;
}