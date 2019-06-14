module uim.bsv.components.lists;

public import uim.bsv.components.lists.item;
public import uim.bsv.components.lists.group;

string vueGlobalRegisterLists() {
	return 
		BSVListGroup.globalRegistration~
		BSVListItem.globalRegistration;
}