module uim.bootstrap.vue.tables;

public import uim.bootstrap.vue.tables.body_;
public import uim.bootstrap.vue.tables.cell;
public import uim.bootstrap.vue.tables.head;
public import uim.bootstrap.vue.tables.header;
public import uim.bootstrap.vue.tables.row;
public import uim.bootstrap.vue.tables.table;

string vueGlobalRegisterTables() {
	return 
		BV5TableHead.globalRegistration~
			BV5TableHeader.globalRegistration~
			BV5TableCell.globalRegistration~
			BV5TableBody.globalRegistration~
			BV5TableRow.globalRegistration~
			BV5Table.globalRegistration;
}