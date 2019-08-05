module uim.bootstrap.vue.navs;

public import uim.bootstrap.vue.navs.nav;
public import uim.bootstrap.vue.navs.link;
public import uim.bootstrap.vue.navs.item;

string vueGlobalRegisterNavs() {
	return 
		BV5NavLink.globalRegistration~
			BV5NavItem.globalRegistration~
			BV5Nav.globalRegistration;
}