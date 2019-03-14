type token =
  | INT of (int)
  | BOOL of (bool)
  | ID of (string)
  | ABS
  | TILDA
  | NOT
  | PLUS
  | MINUS
  | TIMES
  | DIV
  | REM
  | CONJ
  | DISJ
  | EQ
  | GT
  | LT
  | LP
  | RP
  | IF
  | THEN
  | ELSE
  | FI
  | COMMA
  | PROJ
  | EOF

open Parsing;;
let _ = parse_error;;
# 2 "a3.mly"
    open A1
# 33 "a3.ml"
let yytransl_const = [|
  260 (* ABS *);
  261 (* TILDA *);
  262 (* NOT *);
  263 (* PLUS *);
  264 (* MINUS *);
  265 (* TIMES *);
  266 (* DIV *);
  267 (* REM *);
  268 (* CONJ *);
  269 (* DISJ *);
  270 (* EQ *);
  271 (* GT *);
  272 (* LT *);
  273 (* LP *);
  274 (* RP *);
  275 (* IF *);
  276 (* THEN *);
  277 (* ELSE *);
  278 (* FI *);
  279 (* COMMA *);
  280 (* PROJ *);
    0 (* EOF *);
    0|]

let yytransl_block = [|
  257 (* INT *);
  258 (* BOOL *);
  259 (* ID *);
    0|]

let yylhs = "\255\255\
\001\000\002\000\002\000\003\000\003\000\004\000\004\000\005\000\
\005\000\005\000\005\000\005\000\005\000\006\000\006\000\006\000\
\007\000\007\000\007\000\007\000\008\000\008\000\008\000\009\000\
\009\000\010\000\010\000\011\000\011\000\012\000\012\000\013\000\
\013\000\014\000\014\000\014\000\000\000"

let yylen = "\002\000\
\002\000\003\000\001\000\003\000\001\000\002\000\001\000\003\000\
\003\000\004\000\003\000\004\000\001\000\003\000\003\000\001\000\
\003\000\003\000\003\000\001\000\002\000\002\000\001\000\007\000\
\001\000\007\000\001\000\003\000\001\000\003\000\003\000\003\000\
\001\000\001\000\001\000\001\000\002\000"

let yydefred = "\000\000\
\000\000\000\000\035\000\036\000\034\000\000\000\000\000\000\000\
\000\000\000\000\000\000\037\000\000\000\000\000\005\000\000\000\
\000\000\000\000\020\000\023\000\025\000\027\000\029\000\033\000\
\021\000\022\000\006\000\000\000\000\000\000\000\000\000\000\000\
\001\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\032\000\000\000\028\000\000\000\000\000\000\000\
\004\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\019\000\018\000\017\000\000\000\031\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\024\000\026\000"

let yydgoto = "\002\000\
\012\000\013\000\014\000\015\000\016\000\017\000\018\000\019\000\
\020\000\021\000\022\000\029\000\023\000\024\000"

let yysindex = "\032\000\
\010\255\000\000\000\000\000\000\000\000\096\255\096\255\010\255\
\010\255\010\255\241\254\000\000\005\000\024\255\000\000\054\255\
\017\255\069\255\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\043\255\244\254\028\255\044\255\010\255\
\000\000\010\255\096\255\048\255\072\255\096\255\096\255\096\255\
\096\255\096\255\000\000\010\255\000\000\010\255\034\255\024\255\
\000\000\017\255\096\255\017\255\096\255\017\255\069\255\069\255\
\000\000\000\000\000\000\250\254\000\000\007\255\057\255\017\255\
\017\255\010\255\045\255\253\254\029\255\000\000\000\000"

let yyrindex = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\125\000\000\000\119\000\
\047\000\001\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\131\000\
\000\000\059\000\000\000\071\000\000\000\083\000\018\000\035\000\
\000\000\000\000\000\000\046\255\000\000\000\000\000\000\095\000\
\107\000\000\000\000\000\000\000\000\000\000\000\000\000"

let yygindex = "\000\000\
\000\000\250\255\049\000\248\255\000\000\242\255\016\000\002\000\
\000\000\000\000\013\000\040\000\000\000\000\000"

let yytablesize = 410
let yytable = "\027\000\
\016\000\031\000\028\000\030\000\033\000\045\000\032\000\025\000\
\026\000\032\000\003\000\004\000\005\000\006\000\007\000\008\000\
\044\000\015\000\070\000\032\000\050\000\052\000\054\000\038\000\
\039\000\049\000\009\000\066\000\010\000\003\000\004\000\005\000\
\001\000\011\000\014\000\034\000\064\000\060\000\065\000\062\000\
\032\000\057\000\058\000\059\000\047\000\009\000\013\000\046\000\
\003\000\004\000\005\000\006\000\007\000\055\000\056\000\032\000\
\063\000\067\000\008\000\068\000\043\000\051\000\069\000\030\000\
\009\000\044\000\010\000\035\000\036\000\037\000\011\000\011\000\
\003\000\004\000\005\000\006\000\007\000\040\000\041\000\042\000\
\048\000\071\000\009\000\061\000\000\000\053\000\000\000\000\000\
\009\000\000\000\010\000\000\000\000\000\000\000\012\000\011\000\
\003\000\004\000\005\000\006\000\007\000\000\000\000\000\000\000\
\000\000\000\000\010\000\000\000\000\000\000\000\000\000\000\000\
\009\000\000\000\010\000\000\000\000\000\000\000\007\000\011\000\
\000\000\000\000\000\000\000\000\003\000\000\000\000\000\000\000\
\000\000\000\000\002\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\016\000\
\016\000\000\000\000\000\000\000\016\000\016\000\016\000\016\000\
\016\000\032\000\016\000\000\000\016\000\016\000\016\000\016\000\
\015\000\015\000\000\000\000\000\000\000\015\000\015\000\015\000\
\015\000\015\000\000\000\015\000\000\000\015\000\015\000\015\000\
\015\000\014\000\014\000\000\000\000\000\000\000\014\000\014\000\
\014\000\014\000\014\000\000\000\014\000\000\000\014\000\014\000\
\014\000\014\000\013\000\013\000\013\000\013\000\013\000\000\000\
\013\000\000\000\013\000\013\000\013\000\013\000\008\000\008\000\
\008\000\008\000\008\000\000\000\008\000\000\000\008\000\008\000\
\008\000\008\000\011\000\011\000\011\000\011\000\011\000\000\000\
\011\000\000\000\011\000\011\000\011\000\011\000\009\000\009\000\
\009\000\009\000\009\000\000\000\009\000\000\000\009\000\009\000\
\009\000\009\000\012\000\012\000\012\000\012\000\012\000\000\000\
\012\000\000\000\012\000\012\000\012\000\012\000\010\000\010\000\
\010\000\010\000\010\000\000\000\010\000\000\000\010\000\010\000\
\010\000\010\000\007\000\007\000\000\000\000\000\000\000\000\000\
\007\000\003\000\007\000\007\000\007\000\007\000\003\000\002\000\
\003\000\003\000\003\000\003\000\002\000\000\000\002\000\002\000\
\002\000\002\000"

let yycheck = "\008\000\
\000\000\017\001\009\000\010\000\000\000\018\001\013\001\006\000\
\007\000\013\001\001\001\002\001\003\001\004\001\005\001\006\001\
\023\001\000\000\022\001\013\001\035\000\036\000\037\000\007\001\
\008\001\034\000\017\001\021\001\019\001\001\001\002\001\003\001\
\001\000\024\001\000\000\012\001\051\000\044\000\053\000\046\000\
\013\001\040\000\041\000\042\000\001\001\017\001\000\000\020\001\
\001\001\002\001\003\001\004\001\005\001\038\000\039\000\013\001\
\023\001\001\001\000\000\066\000\018\001\014\001\018\001\018\001\
\017\001\023\001\019\001\014\001\015\001\016\001\000\000\024\001\
\001\001\002\001\003\001\004\001\005\001\009\001\010\001\011\001\
\032\000\069\000\000\000\044\000\255\255\014\001\255\255\255\255\
\017\001\255\255\019\001\255\255\255\255\255\255\000\000\024\001\
\001\001\002\001\003\001\004\001\005\001\255\255\255\255\255\255\
\255\255\255\255\000\000\255\255\255\255\255\255\255\255\255\255\
\017\001\255\255\019\001\255\255\255\255\255\255\000\000\024\001\
\255\255\255\255\255\255\255\255\000\000\255\255\255\255\255\255\
\255\255\255\255\000\000\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\007\001\
\008\001\255\255\255\255\255\255\012\001\013\001\014\001\015\001\
\016\001\013\001\018\001\255\255\020\001\021\001\022\001\023\001\
\007\001\008\001\255\255\255\255\255\255\012\001\013\001\014\001\
\015\001\016\001\255\255\018\001\255\255\020\001\021\001\022\001\
\023\001\007\001\008\001\255\255\255\255\255\255\012\001\013\001\
\014\001\015\001\016\001\255\255\018\001\255\255\020\001\021\001\
\022\001\023\001\012\001\013\001\014\001\015\001\016\001\255\255\
\018\001\255\255\020\001\021\001\022\001\023\001\012\001\013\001\
\014\001\015\001\016\001\255\255\018\001\255\255\020\001\021\001\
\022\001\023\001\012\001\013\001\014\001\015\001\016\001\255\255\
\018\001\255\255\020\001\021\001\022\001\023\001\012\001\013\001\
\014\001\015\001\016\001\255\255\018\001\255\255\020\001\021\001\
\022\001\023\001\012\001\013\001\014\001\015\001\016\001\255\255\
\018\001\255\255\020\001\021\001\022\001\023\001\012\001\013\001\
\014\001\015\001\016\001\255\255\018\001\255\255\020\001\021\001\
\022\001\023\001\012\001\013\001\255\255\255\255\255\255\255\255\
\018\001\013\001\020\001\021\001\022\001\023\001\018\001\013\001\
\020\001\021\001\022\001\023\001\018\001\255\255\020\001\021\001\
\022\001\023\001"

let yynames_const = "\
  ABS\000\
  TILDA\000\
  NOT\000\
  PLUS\000\
  MINUS\000\
  TIMES\000\
  DIV\000\
  REM\000\
  CONJ\000\
  DISJ\000\
  EQ\000\
  GT\000\
  LT\000\
  LP\000\
  RP\000\
  IF\000\
  THEN\000\
  ELSE\000\
  FI\000\
  COMMA\000\
  PROJ\000\
  EOF\000\
  "

let yynames_block = "\
  INT\000\
  BOOL\000\
  ID\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'or_expression) in
    Obj.repr(
# 26 "a3.mly"
                      ( _1 )
# 267 "a3.ml"
               : A1.exptree))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'or_expression) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'and_expression) in
    Obj.repr(
# 29 "a3.mly"
                                                         (Disjunction(_1,_3))
# 275 "a3.ml"
               : 'or_expression))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'and_expression) in
    Obj.repr(
# 30 "a3.mly"
                                                          (_1)
# 282 "a3.ml"
               : 'or_expression))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'and_expression) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'not_expression) in
    Obj.repr(
# 33 "a3.mly"
                                                       (Conjunction(_1,_3))
# 290 "a3.ml"
               : 'and_expression))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'not_expression) in
    Obj.repr(
# 34 "a3.mly"
                                                       (_1)
# 297 "a3.ml"
               : 'and_expression))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'not_expression) in
    Obj.repr(
# 37 "a3.mly"
                     (Not(_2))
# 304 "a3.ml"
               : 'not_expression))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'compare_expression) in
    Obj.repr(
# 38 "a3.mly"
                       (_1)
# 311 "a3.ml"
               : 'not_expression))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'compare_expression) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'sum_expression) in
    Obj.repr(
# 41 "a3.mly"
                                       ( Equals(_1,_3))
# 319 "a3.ml"
               : 'compare_expression))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'compare_expression) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'sum_expression) in
    Obj.repr(
# 42 "a3.mly"
                                         ( LessT(_1,_3))
# 327 "a3.ml"
               : 'compare_expression))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : 'compare_expression) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : 'sum_expression) in
    Obj.repr(
# 43 "a3.mly"
                                            (LessTE(_1,_4))
# 335 "a3.ml"
               : 'compare_expression))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'compare_expression) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'sum_expression) in
    Obj.repr(
# 44 "a3.mly"
                                         ( GreaterT(_1,_3))
# 343 "a3.ml"
               : 'compare_expression))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : 'compare_expression) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : 'sum_expression) in
    Obj.repr(
# 45 "a3.mly"
                                            (GreaterTE(_1,_4))
# 351 "a3.ml"
               : 'compare_expression))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'sum_expression) in
    Obj.repr(
# 46 "a3.mly"
                   (_1)
# 358 "a3.ml"
               : 'compare_expression))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'sum_expression) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'muldivrem_expression) in
    Obj.repr(
# 49 "a3.mly"
                                            ( Sub(_1,_3))
# 366 "a3.ml"
               : 'sum_expression))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'sum_expression) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'muldivrem_expression) in
    Obj.repr(
# 50 "a3.mly"
                                             ( Add(_1,_3))
# 374 "a3.ml"
               : 'sum_expression))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'muldivrem_expression) in
    Obj.repr(
# 51 "a3.mly"
                         (_1)
# 381 "a3.ml"
               : 'sum_expression))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'muldivrem_expression) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'abs_negative_expression) in
    Obj.repr(
# 54 "a3.mly"
                                                   (Rem(_1,_3))
# 389 "a3.ml"
               : 'muldivrem_expression))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'muldivrem_expression) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'abs_negative_expression) in
    Obj.repr(
# 55 "a3.mly"
                                                    (Div(_1,_3))
# 397 "a3.ml"
               : 'muldivrem_expression))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'muldivrem_expression) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'abs_negative_expression) in
    Obj.repr(
# 56 "a3.mly"
                                                      (Mult(_1,_3))
# 405 "a3.ml"
               : 'muldivrem_expression))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'abs_negative_expression) in
    Obj.repr(
# 57 "a3.mly"
                             (_1)
# 412 "a3.ml"
               : 'muldivrem_expression))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'abs_negative_expression) in
    Obj.repr(
# 60 "a3.mly"
                             (Abs(_2))
# 419 "a3.ml"
               : 'abs_negative_expression))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'abs_negative_expression) in
    Obj.repr(
# 61 "a3.mly"
                                (Negative(_2))
# 426 "a3.ml"
               : 'abs_negative_expression))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'ifte_expression) in
    Obj.repr(
# 62 "a3.mly"
                   (_1)
# 433 "a3.ml"
               : 'abs_negative_expression))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 5 : 'or_expression) in
    let _4 = (Parsing.peek_val __caml_parser_env 3 : 'or_expression) in
    let _6 = (Parsing.peek_val __caml_parser_env 1 : 'or_expression) in
    Obj.repr(
# 65 "a3.mly"
                                                            (IfThenElse(_2,_4,_6))
# 442 "a3.ml"
               : 'ifte_expression))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'proj_expression) in
    Obj.repr(
# 66 "a3.mly"
                    (_1)
# 449 "a3.ml"
               : 'ifte_expression))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 4 : int) in
    let _5 = (Parsing.peek_val __caml_parser_env 2 : int) in
    let _7 = (Parsing.peek_val __caml_parser_env 0 : 'tuple_expression) in
    Obj.repr(
# 70 "a3.mly"
                                           ( Project((_3,_5),_7))
# 458 "a3.ml"
               : 'proj_expression))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'tuple_expression) in
    Obj.repr(
# 71 "a3.mly"
                    (_1)
# 465 "a3.ml"
               : 'proj_expression))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'tuple_list) in
    Obj.repr(
# 74 "a3.mly"
                   ( Tuple( List.length (_2), _2) )
# 472 "a3.ml"
               : 'tuple_expression))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'paren_expression) in
    Obj.repr(
# 75 "a3.mly"
                     ( _1)
# 479 "a3.ml"
               : 'tuple_expression))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'or_expression) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'or_expression) in
    Obj.repr(
# 78 "a3.mly"
                                    ( ((_1)::[(_3)]) )
# 487 "a3.ml"
               : 'tuple_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'or_expression) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'tuple_list) in
    Obj.repr(
# 79 "a3.mly"
                                    ( (_1)::(_3))
# 495 "a3.ml"
               : 'tuple_list))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'or_expression) in
    Obj.repr(
# 83 "a3.mly"
                      ( InParen(_2))
# 502 "a3.ml"
               : 'paren_expression))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'constant) in
    Obj.repr(
# 84 "a3.mly"
             (_1)
# 509 "a3.ml"
               : 'paren_expression))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 87 "a3.mly"
   (Var(_1))
# 516 "a3.ml"
               : 'constant))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 88 "a3.mly"
      (N(_1))
# 523 "a3.ml"
               : 'constant))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : bool) in
    Obj.repr(
# 89 "a3.mly"
       (B(_1))
# 530 "a3.ml"
               : 'constant))
(* Entry main *)
; (fun __caml_parser_env -> raise (Parsing.YYexit (Parsing.peek_val __caml_parser_env 0)))
|]
let yytables =
  { Parsing.actions=yyact;
    Parsing.transl_const=yytransl_const;
    Parsing.transl_block=yytransl_block;
    Parsing.lhs=yylhs;
    Parsing.len=yylen;
    Parsing.defred=yydefred;
    Parsing.dgoto=yydgoto;
    Parsing.sindex=yysindex;
    Parsing.rindex=yyrindex;
    Parsing.gindex=yygindex;
    Parsing.tablesize=yytablesize;
    Parsing.table=yytable;
    Parsing.check=yycheck;
    Parsing.error_function=parse_error;
    Parsing.names_const=yynames_const;
    Parsing.names_block=yynames_block }
let main (lexfun : Lexing.lexbuf -> token) (lexbuf : Lexing.lexbuf) =
   (Parsing.yyparse yytables 1 lexfun lexbuf : A1.exptree)
