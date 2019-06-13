module uim.bsv.components.carousels.carousel;

import uim.bsv;

class DBSVCarousel : DBSVComponent {
	this() {
		super();
	}
}
auto BSVCarousel() { return new DBSVCarousel; }

unittest {
	writeln("Testing ", __MODULE__);	
}	
