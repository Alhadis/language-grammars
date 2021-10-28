Change Log
==========

This project adheres to [Semantic Versioning](http://semver.org/).

[Unpublished]: ../../compare/v1.2.0...HEAD


[Unpublished]
------------------------------------------------------------------------
* __Added:__ Support for [GOLD][] grammars

[GOLD]: http://goldparser.org/builder/index.htm



[v1.2.0]
------------------------------------------------------------------------
**July 2nd, 2021**  
* __Added:__ Support for [PEG.js][]/[Peggy][] grammars
* __Added:__ Improved support for [W3C-style][W3] EBNF

[v1.2.0]: https://github.com/Alhadis/language-grammars/releases/tag/v1.2.0
[PEG.js]: https://pegjs.org/
[Peggy]:  https://peggyjs.org/
[W3]:     https://www.w3.org/TR/REC-xml/#sec-notation



[v1.1.0]
------------------------------------------------------------------------
**October 15th, 2020**  
* __Added:__ Fallback highlighting for unrecognised BNF symbols
* __Added:__ Support for [Labelled BNF][LBNF] [[`#3`]]
* __Added:__ Support for [Lark-flavoured EBNF][Lark] [[`#4`]]
* __Fixed:__ BNF rules restricted to single-line definitions only
* __Fixed:__ Broken highlighting of EBNF rule-names that contain dashes

[v1.1.0]: https://github.com/Alhadis/language-grammars/releases/tag/v1.1.0
[Lark]:   https://lark-parser.readthedocs.io/en/latest/grammar.html
[LBNF]:   https://github.com/BNFC/bnfc/blob/master/docs/lbnf.rst
[`#3`]:   https://github.com/Alhadis/language-grammars/issues/3
[`#4`]:   https://github.com/Alhadis/language-grammars/issues/4


[v1.0.2]
------------------------------------------------------------------------
**December 4th, 2019**  
* __Added:__ Support for ABNF `<prose sequences>`
* __Added:__ Tokenisation of non-standard `:=` delimiters in ABNF files
* __Fixed:__ Incorrect matching of core-rule names followed by dashes

[v1.0.2]: https://github.com/Alhadis/language-grammars/releases/tag/v1.0.2


[v1.0.1]
------------------------------------------------------------------------
**August 30th, 2019**  
* __Fixed:__ Missing C/C++ highlighting in Lex/Yacc files
* __Fixed:__ Preview-images needlessly included in package distribution

[v1.0.1]: https://github.com/Alhadis/language-grammars/releases/tag/v1.0.1


[v1.0.0]
------------------------------------------------------------------------
**August 30th, 2019**  
Initial release. Adds syntax highlighting for the following languages:

* [Augmented Backus-Naur Form][ABNF]
* [Backus-Naur Form][BNF]
* [Extended Backus-Naur Form][EBNF]
* [Lex][]  / [Flex][]
* [Yacc][] / [Bison][]

[v1.0.0]: https://github.com/Alhadis/language-grammars/releases/tag/v1.0.0
[ABNF]:   https://en.wikipedia.org/wiki/Augmented_Backus–Naur_form
[BNF]:    https://en.wikipedia.org/wiki/Backus–Naur_form
[EBNF]:   https://en.wikipedia.org/wiki/Extended_Backus–Naur_form
[Lex]:    https://en.wikipedia.org/wiki/Lex_(software)
[Flex]:   https://en.wikipedia.org/wiki/Flex_(lexical_analyser_generator)
[Yacc]:   https://en.wikipedia.org/wiki/Yacc
[Bison]:  https://www.gnu.org/software/bison/manual/bison.html
