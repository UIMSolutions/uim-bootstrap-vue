module uim.bsv.components.navbars;

public import uim.bsv.components.navbars.navbar;
public import uim.bsv.components.navbars.brand;
public import uim.bsv.components.navbars.toggler;
public import uim.bsv.components.navbars.togglericon;

string vueGlobalRegisterNavbars() {
	return 
		BSVNavbarBrand.globalRegistration~
			BSVNavbarToggler.globalRegistration~
			BSVNavbarTogglerIcon.globalRegistration~
			BSVNavbar.globalRegistration;
}