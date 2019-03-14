{
  open A3
  exception Parsing_Error
}

let plus =  '+'
let minus = '-'
let mult =  '*'
let unaryminus = '~'
let abs =   "abs"
let div =   "div"
let mod =   "mod"

let open_paren = '('
let closing_paren = ')'


let bool_true = 'T'
let bool_false = 'F'
let bool_not = "not"
let bool_and = "/\\"
let bool_or = "\\/"

let eq = '='
let gt = '>'
let lt = '<'

let if_cond = "if"
let then_cond = "then"
let else_cond = "else"
let fi_cond = "fi"

let identifier = ['A'-'Z'] ['a'-'z' 'A'-'Z' '0'-'9' '_' '\'' ]*
let whitespace = [' ' '\t' '\n' '\r']+
let comma = ','
let proj = "proj"

let digits = ['0'-'9']
let nonzeroDigits = ['1'-'9']
let integers =  ('0'|(nonzeroDigits digits*))


rule read = parse
   eof                { EOF }
   | integers as n  { INT (int_of_string n) }
   | plus              { PLUS }
   | minus             {MINUS}
   | mult              { TIMES }
   | div               {DIV}
   | mod               {REM}
   | bool_and          {CONJ}
   | bool_or           {DISJ}
   | eq                {EQ}
   | gt                {GT}
   | lt                {LT}
   | open_paren        {LP}
   | closing_paren     {RP}
   | if_cond           {IF}
   | then_cond         {THEN}
   | else_cond         {ELSE}
   | fi_cond           {FI}
   | comma             {COMMA}
   | proj              {PROJ}
   | bool_true        {BOOL(true)}
   | bool_false       {BOOL(false)}
   | identifier  as id       {ID(id)}
   | abs              {ABS}
   | unaryminus       {TILDA}
   | bool_not         {NOT}
   | whitespace       {read lexbuf}
   | _                { raise Parsing_Error }
