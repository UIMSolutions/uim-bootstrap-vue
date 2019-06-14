module uim.bsv.components.breadcrumbs;

public import uim.bsv.components.breadcrumbs.breadcrumb;
public import uim.bsv.components.breadcrumbs.item;

string vueGlobalRegisterBreadcrumbs() {
	return 
			BSVBreadCrumbItem.globalRegistration~
			BSVBreadCrumb.globalRegistration;
}