module uim.bootstrap.vue.tables.table;

import uim.bootstrap.vue;

class DBV5Table : DVUEComponent {
	this() {
		this
		.name("UimTable")
	    .props("size", `{ type: String, default: "normal", validator: value => ["normal", "lg", "sm"].indexOf(value) >= 0 }`)
		.props("light", "{ type: Boolean, default: false }")
		.props("dark", "{ type: Boolean, default: false }")
		.props("striped", "{ type: Boolean, default: false }")
		.props("bordered", "{ type: Boolean, default: false }")
		.props("cols", "{ type: Array, default: [] }")
		.props("rows", "{ type: Array, default: [] }")
		.props("headcol", "{ type: Number }")
		.computed("classes()", `return ['table',
	    this.size !== "normal" ? 'table-'+this.size : ""
		];`)
		.template_(`<table :class="this.classes"><slot /></table>`);
		/*
		.render(initVueVars~
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
		);*/
	}
	this(DVUEApp anApp) { this(); _app = anApp; }
	this(string aName) { this(); _name = aName; }
	this(DVUEApp anApp, string aName) { this(anApp); _name = aName; }
}
mixin(BV5Shortcut!"Table");

unittest {
  assert(BV5Table.name == "UimTable");
  assert(BV5Table.name("test").name == "test");
}	

