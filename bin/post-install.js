#!/usr/bin/env node
"use strict";

/**
 * @fileoverview
 *    After installation, generate a JSON version of any grammar that references
 *    the scope `source.c++`, replacing it with `source.cpp` instead. This fixes
 *    an awkward discrepancy between Atom and GitHub Linguist; see 72c972fb3a63.
 *
 * @see {@link https://github.com/Alhadis/language-grammars/commit/72c972fb3a6}
 * @see {@link https://github.com/github/linguist/issues/3924#issuecomment-521173243}
 */

const fs       = require("fs");
const path     = require("path");
const {parse}  = require("season");
const grammars = path.resolve(path.join(__dirname, "..", "grammars"));
const isFile   = path => fs.existsSync(path) && fs.statSync(path).isFile();
const cwd      = process.cwd();

for(const file of fs.readdirSync(grammars).map(file => path.join(grammars, file))){
	if(!/\.cson$/i.test(file) || !isFile(file)) continue;
	let modified = false;
	let source = parse(fs.readFileSync(file, "utf8"), (key, value) => {
		if("include" === key && "source.c++" === value){
			modified = true;
			return "source.cpp";
		}
		return value;
	});
	if(modified){
		source = JSON.stringify(source);
		const jsonPath = file.replace(/\.cson$/i, ".json");
		if(isFile(jsonPath) && source === fs.readFileSync(jsonPath, "utf8")) continue;
		console.log(`Precompiling: ${path.relative(cwd, file)} -> ${path.relative(cwd, jsonPath)}`);
		fs.writeFileSync(jsonPath, source);
	}
}
