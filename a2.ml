# 1 "a2.mll"
 
  open A3
  exception Parsing_Error

# 7 "a2.ml"
let __ocaml_lex_tables = {
  Lexing.lex_base =
   "\000\000\228\255\002\000\000\000\231\255\000\000\079\000\000\000\
    \237\255\001\000\000\000\000\000\001\000\242\255\243\255\244\255\
    \245\255\246\255\011\000\001\000\002\000\002\000\251\255\252\255\
    \253\255\154\000\255\255\001\000\250\255\015\000\249\255\248\255\
    \247\255\241\255\016\000\010\000\240\255\006\000\021\000\239\255\
    \238\255\012\000\018\000\236\255\010\000\232\255\021\000\230\255\
    ";
  Lexing.lex_backtrk =
   "\255\255\255\255\026\000\027\000\255\255\027\000\020\000\027\000\
    \255\255\027\000\027\000\027\000\027\000\255\255\255\255\255\255\
    \255\255\255\255\027\000\027\000\027\000\027\000\255\255\255\255\
    \255\255\001\000\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    ";
  Lexing.lex_default =
   "\001\000\000\000\255\255\255\255\000\000\255\255\255\255\255\255\
    \000\000\255\255\255\255\255\255\255\255\000\000\000\000\000\000\
    \000\000\000\000\255\255\255\255\255\255\255\255\000\000\000\000\
    \000\000\255\255\000\000\255\255\000\000\255\255\000\000\000\000\
    \000\000\000\000\255\255\255\255\000\000\255\255\255\255\000\000\
    \000\000\255\255\255\255\000\000\255\255\000\000\255\255\000\000\
    ";
  Lexing.lex_trans =
   "\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\002\000\002\000\002\000\002\000\002\000\000\000\002\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \002\000\000\000\002\000\000\000\000\000\000\000\000\000\000\000\
    \014\000\013\000\022\000\024\000\008\000\023\000\000\000\019\000\
    \025\000\025\000\025\000\025\000\025\000\025\000\025\000\025\000\
    \025\000\025\000\032\000\000\000\015\000\017\000\016\000\000\000\
    \000\000\006\000\006\000\006\000\006\000\006\000\006\000\006\000\
    \006\000\006\000\006\000\006\000\006\000\006\000\006\000\006\000\
    \006\000\006\000\006\000\006\000\006\000\006\000\006\000\006\000\
    \006\000\006\000\006\000\000\000\018\000\031\000\000\000\000\000\
    \000\000\005\000\044\000\000\000\021\000\010\000\009\000\033\000\
    \034\000\012\000\040\000\027\000\037\000\020\000\003\000\046\000\
    \007\000\029\000\041\000\030\000\011\000\035\000\006\000\028\000\
    \036\000\038\000\039\000\042\000\043\000\045\000\004\000\006\000\
    \006\000\006\000\006\000\006\000\006\000\006\000\006\000\006\000\
    \006\000\047\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \006\000\006\000\006\000\006\000\006\000\006\000\006\000\006\000\
    \006\000\006\000\006\000\006\000\006\000\006\000\006\000\006\000\
    \006\000\006\000\006\000\006\000\006\000\006\000\006\000\006\000\
    \006\000\006\000\000\000\000\000\000\000\000\000\006\000\000\000\
    \006\000\006\000\006\000\006\000\006\000\006\000\006\000\006\000\
    \006\000\006\000\006\000\006\000\006\000\006\000\006\000\006\000\
    \006\000\006\000\006\000\006\000\006\000\006\000\006\000\006\000\
    \006\000\006\000\025\000\025\000\025\000\025\000\025\000\025\000\
    \025\000\025\000\025\000\025\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \026\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
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
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000";
  Lexing.lex_check =
   "\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\000\000\000\000\002\000\002\000\000\000\255\255\002\000\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \000\000\255\255\002\000\255\255\255\255\255\255\255\255\255\255\
    \000\000\000\000\000\000\000\000\000\000\000\000\255\255\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\018\000\255\255\000\000\000\000\000\000\255\255\
    \255\255\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\255\255\000\000\019\000\255\255\255\255\
    \255\255\000\000\005\000\255\255\000\000\000\000\000\000\012\000\
    \011\000\000\000\009\000\021\000\010\000\000\000\000\000\003\000\
    \000\000\020\000\007\000\029\000\000\000\034\000\006\000\027\000\
    \035\000\037\000\038\000\041\000\042\000\044\000\000\000\006\000\
    \006\000\006\000\006\000\006\000\006\000\006\000\006\000\006\000\
    \006\000\046\000\255\255\255\255\255\255\255\255\255\255\255\255\
    \006\000\006\000\006\000\006\000\006\000\006\000\006\000\006\000\
    \006\000\006\000\006\000\006\000\006\000\006\000\006\000\006\000\
    \006\000\006\000\006\000\006\000\006\000\006\000\006\000\006\000\
    \006\000\006\000\255\255\255\255\255\255\255\255\006\000\255\255\
    \006\000\006\000\006\000\006\000\006\000\006\000\006\000\006\000\
    \006\000\006\000\006\000\006\000\006\000\006\000\006\000\006\000\
    \006\000\006\000\006\000\006\000\006\000\006\000\006\000\006\000\
    \006\000\006\000\025\000\025\000\025\000\025\000\025\000\025\000\
    \025\000\025\000\025\000\025\000\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \000\000\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
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
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255";
  Lexing.lex_base_code =
   "";
  Lexing.lex_backtrk_code =
   "";
  Lexing.lex_default_code =
   "";
  Lexing.lex_trans_code =
   "";
  Lexing.lex_check_code =
   "";
  Lexing.lex_code =
   "";
}

let rec read lexbuf =
   __ocaml_lex_read_rec lexbuf 0
and __ocaml_lex_read_rec lexbuf __ocaml_lex_state =
  match Lexing.engine __ocaml_lex_tables __ocaml_lex_state lexbuf with
      | 0 ->
# 39 "a2.mll"
                      ( EOF )
# 160 "a2.ml"

  | 1 ->
let
# 40 "a2.mll"
                   n
# 166 "a2.ml"
= Lexing.sub_lexeme lexbuf lexbuf.Lexing.lex_start_pos lexbuf.Lexing.lex_curr_pos in
# 40 "a2.mll"
                      ( INT (int_of_string n) )
# 170 "a2.ml"

  | 2 ->
# 41 "a2.mll"
                       ( PLUS )
# 175 "a2.ml"

  | 3 ->
# 42 "a2.mll"
                       (MINUS)
# 180 "a2.ml"

  | 4 ->
# 43 "a2.mll"
                       ( TIMES )
# 185 "a2.ml"

  | 5 ->
# 44 "a2.mll"
                       (DIV)
# 190 "a2.ml"

  | 6 ->
# 45 "a2.mll"
                       (REM)
# 195 "a2.ml"

  | 7 ->
# 46 "a2.mll"
                       (CONJ)
# 200 "a2.ml"

  | 8 ->
# 47 "a2.mll"
                       (DISJ)
# 205 "a2.ml"

  | 9 ->
# 48 "a2.mll"
                       (EQ)
# 210 "a2.ml"

  | 10 ->
# 49 "a2.mll"
                       (GT)
# 215 "a2.ml"

  | 11 ->
# 50 "a2.mll"
                       (LT)
# 220 "a2.ml"

  | 12 ->
# 51 "a2.mll"
                       (LP)
# 225 "a2.ml"

  | 13 ->
# 52 "a2.mll"
                       (RP)
# 230 "a2.ml"

  | 14 ->
# 53 "a2.mll"
                       (IF)
# 235 "a2.ml"

  | 15 ->
# 54 "a2.mll"
                       (THEN)
# 240 "a2.ml"

  | 16 ->
# 55 "a2.mll"
                       (ELSE)
# 245 "a2.ml"

  | 17 ->
# 56 "a2.mll"
                       (FI)
# 250 "a2.ml"

  | 18 ->
# 57 "a2.mll"
                       (COMMA)
# 255 "a2.ml"

  | 19 ->
# 58 "a2.mll"
                       (PROJ)
# 260 "a2.ml"

  | 20 ->
let
# 59 "a2.mll"
                    id
# 266 "a2.ml"
= Lexing.sub_lexeme lexbuf lexbuf.Lexing.lex_start_pos lexbuf.Lexing.lex_curr_pos in
# 59 "a2.mll"
                             (ID(id))
# 270 "a2.ml"

  | 21 ->
# 60 "a2.mll"
                      (BOOL(true))
# 275 "a2.ml"

  | 22 ->
# 61 "a2.mll"
                      (BOOL(false))
# 280 "a2.ml"

  | 23 ->
# 62 "a2.mll"
                      (ABS)
# 285 "a2.ml"

  | 24 ->
# 63 "a2.mll"
                      (TILDA)
# 290 "a2.ml"

  | 25 ->
# 64 "a2.mll"
                      (NOT)
# 295 "a2.ml"

  | 26 ->
# 65 "a2.mll"
                      (read lexbuf)
# 300 "a2.ml"

  | 27 ->
# 66 "a2.mll"
                      ( raise Parsing_Error )
# 305 "a2.ml"

  | __ocaml_lex_state -> lexbuf.Lexing.refill_buff lexbuf;
      __ocaml_lex_read_rec lexbuf __ocaml_lex_state

;;

