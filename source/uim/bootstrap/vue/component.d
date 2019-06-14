module uim.bsv.component;

import uim.bsv;

class DBSVComponent : DVUEComponent {
	this() {}


}
auto BSVComponent() { return new DBSVComponent; }

unittest {
	writeln("Testing ", __MODULE__);	
}	
