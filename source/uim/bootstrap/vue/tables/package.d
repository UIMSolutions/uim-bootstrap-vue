module uim.bootstrap.vue.tables;

public {
	import uim.bootstrap.vue.tables.body_;
	import uim.bootstrap.vue.tables.cell;
	import uim.bootstrap.vue.tables.head;
	import uim.bootstrap.vue.tables.header;
	import uim.bootstrap.vue.tables.row;
	import uim.bootstrap.vue.tables.table;
}

string vueGlobalRegisterTables() {
	return 
		BV5TableHead.globalRegistration~
			BV5TableHeader.globalRegistration~
			BV5TableCell.globalRegistration~
			BV5TableBody.globalRegistration~
			BV5TableRow.globalRegistration~
			BV5Table.globalRegistration;
}