%{
	#define _GNU_SOURCE
	#include <stdio.h>
	#include "ptypes.h"
%}

%union {
	long n;
	tree t;	/* tree is defined in ptypes.h. */
}

%{
	static void print_token_value (FILE *, int, YYSTYPE);
	#define YYPRINT(F, N, L) print_token_value (F, N, L)
%}

%code top {
	#define _GNU_SOURCE
	#include <stdio.h>

	/* WARNING: The following code really belongs
	 * in a '%code requires'; see below. */

	#include "ptypes.h"
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

%union {
	long n;
	tree t;	/* tree is defined in ptypes.h. */
}

%code {
	static void print_token_value (FILE *, int, YYSTYPE);
	#define YYPRINT(F, N, L) print_token_value (F, N, L)
	static void trace_token (enum yytokentype token, YYLTYPE loc);
}
