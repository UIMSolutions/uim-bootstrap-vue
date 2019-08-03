module uim.bootstrap.vue.components.tabs.tab;

import uim.bootstrap.vue;

class DBSVTab : DBSVComponent {
	this() {
		super();
	}
}
auto BSVTab() { return new DBSVTab; }

unittest {
	writeln("Testing ", __MODULE__);	
}	
