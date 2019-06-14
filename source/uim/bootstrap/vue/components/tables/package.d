module uim.bsv.components.tables;

public import uim.bsv.components.tables.body_;
public import uim.bsv.components.tables.cell;
public import uim.bsv.components.tables.head;
public import uim.bsv.components.tables.header;
public import uim.bsv.components.tables.row;
public import uim.bsv.components.tables.table;

string vueGlobalRegisterTables() {
	return 
		BSVTableHead.globalRegistration~
			BSVTableHeader.globalRegistration~
			BSVTableCell.globalRegistration~
			BSVTableBody.globalRegistration~
			BSVTableRow.globalRegistration~
			BSVTable.globalRegistration;
}