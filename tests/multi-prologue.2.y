%code top {
	#define _GNU_SOURCE
	#include <stdio.h>
}

%code requires {
	#include "ptypes.h"
}
%union {
	long n;
	tree t;  /* tree is defined in ptypes.h. */
}

%code requires {
	#define YYLTYPE YYLTYPE
	typedef struct YYLTYPE
	{
		int first_line;
		int first_column;
		int last_line;
		int last_column;
		char *filename;
	} YYLTYPE;
}

%code {
	static void print_token_value (FILE *, int, YYSTYPE);
	#define YYPRINT(F, N, L) print_token_value (F, N, L)
	static void trace_token (enum yytokentype token, YYLTYPE loc);
}

%code requires { #include "type1.h" }
%union { type1 field1; }
%destructor { type1_free ($$); } <field1>
%printer { type1_print (yyo, $$); } <field1>

%code requires { #include "type2.h" }
%union { type2 field2; }
%destructor { type2_free ($$); } <field2>
%printer { type2_print (yyo, $$); } <field2>
