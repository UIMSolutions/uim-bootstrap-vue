module uim.bootstrap.vue.components.tables;

public import uim.bootstrap.vue.components.tables.body_;
public import uim.bootstrap.vue.components.tables.cell;
public import uim.bootstrap.vue.components.tables.head;
public import uim.bootstrap.vue.components.tables.header;
public import uim.bootstrap.vue.components.tables.row;
public import uim.bootstrap.vue.components.tables.table;

string vueGlobalRegisterTables() {
	return 
		BSVTableHead.globalRegistration~
			BSVTableHeader.globalRegistration~
			BSVTableCell.globalRegistration~
			BSVTableBody.globalRegistration~
			BSVTableRow.globalRegistration~
			BSVTable.globalRegistration;
}