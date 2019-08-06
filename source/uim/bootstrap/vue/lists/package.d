module uim.bootstrap.vue.lists;

public import uim.bootstrap.vue.lists.item;
public import uim.bootstrap.vue.lists.group;

string vueGlobalRegisterLists() {
	return 
		BV5ListGroup.globalRegistration~
		BV5ListItem.globalRegistration;
}