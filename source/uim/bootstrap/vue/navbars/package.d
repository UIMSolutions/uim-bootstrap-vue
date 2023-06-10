module uim.bootstrap.vue.navbars;

public {
	import uim.bootstrap.vue.navbars.navbar;
	import uim.bootstrap.vue.navbars.brand;
	import uim.bootstrap.vue.navbars.link;
	import uim.bootstrap.vue.navbars.toggler;
	import uim.bootstrap.vue.navbars.togglericon;
}

string vueGlobalRegisterNavbars() {
	return 
		BV5NavbarBrand.globalRegistration~
			BV5NavbarToggler.globalRegistration~
			BV5NavbarTogglerIcon.globalRegistration~
			BV5Navbar.globalRegistration;
}