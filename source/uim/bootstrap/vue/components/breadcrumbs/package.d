module uim.bootstrap.vue.components.breadcrumbs;

public import uim.bootstrap.vue.components.breadcrumbs.breadcrumb;
public import uim.bootstrap.vue.components.breadcrumbs.item;

string vueGlobalRegisterBreadcrumbs() {
	return 
			BSVBreadCrumbItem.globalRegistration~
			BSVBreadCrumb.globalRegistration;
}