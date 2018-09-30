import java.utils.*;

%%

%state aaa, bbb, ccc
%class ABC

%{
	int foo = "Bar";
%}

%init{
	import java.crap.*;
%init}

%initthrow{
	import java.crap.*;
%initthrow}

MACRO = [^Something]+
%%
