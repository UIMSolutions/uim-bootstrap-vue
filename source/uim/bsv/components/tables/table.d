module uim.bsv.components.tables.table;

import uim.bsv;

class DBSVTable : DBSVComponent {
	this() {
		super();
		
		_name = "bsv-table";
		_props["size"] = VUEProp("size", ["String"]);
		_props["light"] = VUEProp("light", ["Boolean"]);
		_props["dark"] = VUEProp("dark", ["Boolean"]);
		_props["striped"] = VUEProp("striped", ["Boolean"]);
		_props["bordered"] = VUEProp("bordered", ["Boolean"]);
		_props["cols"] = VUEProp("cols", ["Array"]);
		_props["rows"] = VUEProp("rows", ["Array"]);
		_props["headcol"] = VUEProp("headcol", ["Number"]);

		_render = initVueVars~
			`if (this.cols) {`~
				`var colElements=[];`~
				`for (let col of this.cols) {`~
				`var colAttrs={scope:'col'};`~
				`colElements.push(createElement('th', {attrs:colAttrs}, [col]));`~
				`}`~
				`content.push(createElement('thead', colElements));`~
				`}`~
				`if (this.rows) {`~
				`var rowsElements=[];`~
				`for (let row of this.rows) {`~
				`var rowElements=[];`~
				`var counter=0;`~
				`for (let cell of row) {`~
				`if ((this.headcol!=undefined ) && (counter==this.headcol)) rowElements.push(createElement('th', {attrs:{scope:'row'}}, cell));`~
				`else rowElements.push(createElement('td', cell));`~
				`counter++;`~				
				`}`~				
				`rowsElements.push(createElement('tr', rowElements));`~
				`}`~				
				`content.push(createElement('tbody', rowsElements));`~
				`}`~
				`content.push(this.$slots.default);`~
				jsIf("this.size", "classes.push('table-'+this.size);")~
				jsIf("this.light", "classes.push('table-light');")~
				jsIf("this.dark", "classes.push('table-dark');")~
				jsIf("this.striped", "classes.push('table-striped');")~
				jsIf("this.bordered", "classes.push('table-bordered');")~
				createVueElement("table", ["table"]);
	}
}
auto BSVTable() { return new DBSVTable; }

unittest {
	writeln("Testing ", __MODULE__);	
}	
