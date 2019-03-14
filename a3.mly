%{
    open A1
%}

/*
- Tokens (token name and rules) are modified wrt to A2. Please make necessary changes in A3
- LP and RP are left and right parenthesis
- Write grammar rules to recognize
  - >= <= from GT EQ LT tokens
  - if then else fi
*/
/* Tokens are defined below.  */
%token <int> INT
%token <bool> BOOL
%token <string> ID
%token ABS TILDA NOT PLUS MINUS TIMES DIV REM CONJ DISJ EQ GT LT LP RP IF THEN ELSE FI COMMA PROJ EOF
%start main
%type <A1.exptree> main /* Return type */
%%
/*
DESIGN a grammar for a simple expression language, taking care to enforce precedence rules (e.g., BODMAS)
The language should contain the following types of expressions:  integers and booleans.
*/

main:
  or_expression EOF   { $1 }
;
or_expression:
  or_expression DISJ and_expression                      {Disjunction($1,$3)}
  | and_expression                                        {$1}
;
and_expression:
  and_expression CONJ not_expression                   {Conjunction($1,$3)}
  | not_expression                                     {$1}
;
not_expression:
  NOT not_expression {Not($2)}
  | compare_expression {$1}

compare_expression:
  compare_expression EQ sum_expression { Equals($1,$3)}
  | compare_expression LT sum_expression { LessT($1,$3)}
  | compare_expression LT EQ sum_expression {LessTE($1,$4)}
  | compare_expression GT sum_expression { GreaterT($1,$3)}
  | compare_expression GT EQ sum_expression {GreaterTE($1,$4)}
  | sum_expression {$1}
;
sum_expression:
  sum_expression MINUS muldivrem_expression { Sub($1,$3)}
  | sum_expression PLUS muldivrem_expression { Add($1,$3)}
  | muldivrem_expression {$1}
;
muldivrem_expression:
  muldivrem_expression REM abs_negative_expression {Rem($1,$3)}
 | muldivrem_expression DIV abs_negative_expression {Div($1,$3)}
 | muldivrem_expression TIMES abs_negative_expression {Mult($1,$3)}
 | abs_negative_expression   {$1}

abs_negative_expression:
 ABS abs_negative_expression {Abs($2)}
 |TILDA abs_negative_expression {Negative($2)}
 | ifte_expression {$1}
;
ifte_expression:
  IF or_expression THEN or_expression ELSE or_expression FI {IfThenElse($2,$4,$6)}
  | proj_expression {$1}
;

proj_expression:
 PROJ LP INT COMMA INT RP tuple_expression { Project(($3,$5),$7)}
 | tuple_expression {$1}
;
tuple_expression:
  LP tuple_list RP { Tuple( List.length ($2), $2) }
  | paren_expression { $1}
;
tuple_list:
  or_expression COMMA or_expression { (($1)::[($3)]) }
  | or_expression COMMA tuple_list  { ($1)::($3)}
;

paren_expression:
  LP or_expression RP { InParen($2)}
  | constant {$1}
;
constant:
ID {Var($1)}
| INT {N($1)}
| BOOL {B($1)}
;
