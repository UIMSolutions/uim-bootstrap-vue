module uim.bootstrap.vue.components.breadcrumbs;

public import uim.bootstrap.vue.components.breadcrumbs.breadcrumb;
public import uim.bootstrap.vue.components.breadcrumbs.item;

string vueGlobalRegisterBreadcrumbs() {
	return 
			BV5BreadCrumbItem.globalRegistration~
			BV5BreadCrumb.globalRegistration;
}