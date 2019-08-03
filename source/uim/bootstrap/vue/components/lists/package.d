module uim.bootstrap.vue.components.lists;

public import uim.bootstrap.vue.components.lists.item;
public import uim.bootstrap.vue.components.lists.group;

string vueGlobalRegisterLists() {
	return 
		BSVListGroup.globalRegistration~
		BSVListItem.globalRegistration;
}