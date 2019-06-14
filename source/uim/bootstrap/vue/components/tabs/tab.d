module uim.bsv.components.tabs.tab;

import uim.bsv;

class DBSVTab : DBSVComponent {
	this() {
		super();
	}
}
auto BSVTab() { return new DBSVTab; }

unittest {
	writeln("Testing ", __MODULE__);	
}	
