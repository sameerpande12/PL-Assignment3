open A0


exception Not_implemented
exception Invalid_Expression_Type
exception DivisionByZero

exception Inconsistent_Tuple_Size
exception Empty_List_Error
exception Invalid_Parameter
exception EmptyStackException
exception ComputationError
exception ComputationError1_g
exception ComputationError2_g
exception Negative_Paramter_Exception
exception ComputationError1_r
exception ComputationError2_r
let rec getfirstn n l =

  match l with
    [] -> if( n<0) then raise Negative_Paramter_Exception else if (n>0) then raise EmptyStackException else []
  |(x::xs)-> if(n<0)then raise Negative_Paramter_Exception
    else if(n=0)then []
    else x::(getfirstn (n-1) xs)

let rec removefirstn n l =

  match l with
    [] ->  if( n<0) then raise Negative_Paramter_Exception else if (n>0) then raise EmptyStackException else []
  |(x::xs)-> if(n<0)then raise Negative_Paramter_Exception
    else if(n=0)then l
    else removefirstn (n-1) xs

(* abstract syntax *)
type  exptree =
  Var of string (* variables starting with a Capital letter, represented as alphanumeric strings with underscores (_) and apostrophes (') *)
  | N of int      (* Integer constant *)
  | B of bool     (* Boolean constant *)
  (* unary operators on integers *)
  | Abs of exptree                   (* abs *)
  | Negative of exptree              (* unary minus ~ *)
  (* unary operators on booleans *)
  | Not of exptree
  (* binary operators on integers *)
  | Add of exptree * exptree         (* Addition + *)
  | Sub of exptree * exptree         (* Subtraction - *)
  | Mult of exptree * exptree        (* Multiplication * *)
  | Div of exptree * exptree         (* div *)
  | Rem of exptree * exptree         (* mod *)
  (* binary operators on booleans *)
  | Conjunction of exptree * exptree (* conjunction /\ *)
  | Disjunction of exptree * exptree (* binary operators on booleans \/ *)
  (* comparison operations on integers *)
  | Equals of exptree * exptree      (* = *)
  | GreaterTE of exptree * exptree   (* >= *)
  | LessTE of exptree * exptree      (* <= *)
  | GreaterT of exptree * exptree    (* > *)
  | LessT of exptree * exptree       (* < *)
  (* expressions using parenthesis *)
  | InParen of exptree               (* ( ) *)
  (* a conditional expression *)
  | IfThenElse of exptree * exptree * exptree (* if then else fi  *)
  (* creating n-tuples (n >= 0) *)
  | Tuple of int * (exptree list)
  (* projecting the i-th component of an expression (which evaluates to an n-tuple, and 1 <= i <= n) *)
  | Project of (int*int) * exptree   (* Proj((i,n), e)  0 < i <= n *)

(* opcodes of the stack machine (in the same sequence as above) *)
type opcode = VAR of string | NCONST of bigint | BCONST of bool | ABS | UNARYMINUS | NOT
  | PLUS | MINUS | MULT | DIV | REM | CONJ | DISJ | EQS | GTE | LTE | GT | LT
  | PAREN | IFTE | TUPLE of int | PROJ of int*int

(* The type of value returned by the definitional interpreter. *)
type value = NumVal of int | BoolVal of bool | TupVal of int * (value list)

(* The language should contain the following types of expressions:  integers and booleans *)
type answer = Num of bigint | Bool of bool | Tup of int * (answer list)

let rec eval ex rho = match ex with
    N(n) -> NumVal(n)
  | B(b) -> BoolVal(b)
  | Var(x) -> rho x
  | Abs(e1)-> begin
      match eval e1 rho with
        NumVal(a) -> if a > 0 then NumVal(a) else NumVal(-a)
      |_ -> raise Invalid_Expression_Type
    end
  |Negative(e1)-> begin
      match eval e1 rho with
        NumVal(a) -> NumVal(- a)
      |_ -> raise Invalid_Expression_Type
    end
  |Not(e1) ->begin
      match (eval e1 rho) with
        (BoolVal(b1))-> BoolVal(not b1)
      |_ -> raise Invalid_Expression_Type
    end
  |Conjunction(e1,e2) ->begin
      match (eval e1 rho,eval e2 rho) with
        (BoolVal(b1),BoolVal(b2))-> BoolVal(b1 && b2)
      |_ -> raise Invalid_Expression_Type
    end
  |Disjunction(e1,e2)->begin
      match (eval e1 rho, eval e2 rho) with
        (BoolVal(b1),BoolVal(b2))-> BoolVal(b1 || b2)
      |_ -> raise Invalid_Expression_Type
    end

  |Add(e1,e2)-> begin
      match(eval e1 rho,eval e2 rho)with
        (NumVal(a), NumVal(b))-> NumVal( a + b)
      |_ -> raise Invalid_Expression_Type
    end
  |Sub(e1,e2)-> begin
      match(eval e1 rho,eval e2 rho)with
        (NumVal(a), NumVal (b))-> NumVal( a - b)
      |_ -> raise Invalid_Expression_Type
    end
  |Mult(e1,e2)-> begin
      match(eval e1 rho,eval e2 rho)with
        (NumVal(a), NumVal(b))-> NumVal( a * b)
      |_ -> raise Invalid_Expression_Type
    end
  |Div(e1,e2)-> begin
      match(eval e1 rho,eval e2 rho)with
        (NumVal(a), NumVal (b))->
        if( b = 0)then raise DivisionByZero
        else NumVal( a/b)
      |_ -> raise Invalid_Expression_Type
    end
  |Rem(e1,e2)-> begin
      match(eval e1 rho,eval e2 rho)with
        (NumVal (a), NumVal (b))->
        if( b = 0)then raise DivisionByZero
        else NumVal( a mod  b)
      |_ -> raise Invalid_Expression_Type
    end
  |Equals(e1,e2)->
    if( (eval e1 rho) = (eval e2 rho)) then BoolVal(true)
    else BoolVal(false)
  |GreaterTE(e1,e2)->
    begin
      match (eval e1 rho, eval e2 rho) with
        ( NumVal(a), NumVal(b)) -> BoolVal(  a>=b )
      |_ -> raise Invalid_Expression_Type
    end
  |LessTE(e1,e2)->
    begin
      match (eval e1 rho, eval e2 rho) with
        ( NumVal (a), NumVal(b)) -> BoolVal( a <= b )
      |_ -> raise Invalid_Expression_Type
    end
  |GreaterT(e1,e2)->
    begin
      match (eval e1 rho, eval e2 rho) with
        ( NumVal (a), NumVal(b)) -> BoolVal(  a > b )
      |_ -> raise Invalid_Expression_Type
    end
  |LessT(e1,e2)->
    begin
      match (eval e1 rho, eval e2 rho) with
        ( NumVal (a), NumVal(b)) -> BoolVal(  a < b )
      |_ -> raise Invalid_Expression_Type
    end

  | InParen(e)-> eval(e) rho
  |IfThenElse(e0,e1,e2)->
    ( match (eval e0 rho) with
        BoolVal(true) -> eval e1 rho
      | BoolVal(false) -> eval e2 rho

      |_ -> raise Invalid_Expression_Type
    )

  |Tuple(n,exp_list)->
    let rec eval_list elist = match elist with
        [] -> []
      | e::e1list -> (eval e rho)::(eval_list e1list) in
    TupVal(n, eval_list exp_list)
  |Project( (i,n) ,e) ->
    (match e with
       Tuple(x,elist)->
       if(x = n) then eval (List.nth elist (i-1)) rho
       else raise Invalid_Parameter
     |_ -> raise Invalid_Expression_Type
    )

let rec stackmc stk rho pgm = match pgm with
   [] -> List.hd stk
  | ( (NCONST(n))::l) ->  stackmc ((Num n)::stk) rho l
  | ( BCONST(b)::l) ->  stackmc ((Bool b)::stk) rho l
  | ( VAR(x)::l) -> stackmc ((rho x)::stk) rho l
  | (ABS::l)->
    (match stk with
       [] -> raise EmptyStackException
     |( Num(s)::s1)-> stackmc ( (Num(abs s))::s1) rho l
     |_ -> raise Invalid_Expression_Type
    )
  | (UNARYMINUS::l)->
    (match stk with
       [] -> raise EmptyStackException
     |(Num(s)::s1)-> stackmc (Num(minus s)::s1) rho l
     |_ -> raise Invalid_Expression_Type
    )
  | (NOT::l)->(
      match stk with
        [] -> raise EmptyStackException
      |(Bool(b)::s1)-> stackmc ( (Bool(not b))::s1) rho l
      |_ -> raise Invalid_Expression_Type
    )
  |(PLUS::l)->( match stk with
        ([])-> raise EmptyStackException
      | ( Num(s)::[])-> raise EmptyStackException
      | ( (Num s1)::(Num s2)::s3)-> stackmc ((Num(add s1 s2))::s3) rho l
      |_ -> raise Invalid_Expression_Type
    )
  |(MINUS::l)->( match stk with
        ([])-> raise EmptyStackException
      | (Num(s)::[])-> raise EmptyStackException
      | ( (Num s1)::(Num s2)::s3)-> stackmc ((Num(sub s1 s2))::s3) rho l
      |_ -> raise Invalid_Expression_Type
    )

  |(MULT::l)->( match stk with
        ([])-> raise EmptyStackException
      | (Num(s)::[])-> raise EmptyStackException
      | ( (Num s1)::(Num s2)::s3)-> stackmc ((Num(mult s1 s2))::s3) rho l
      |_ -> raise Invalid_Expression_Type
    )

  |(DIV::l)->( match stk with
        ([])-> raise EmptyStackException
      | (Num(s)::[])-> raise EmptyStackException
      | ( (Num s1)::(Num s2)::s3)-> stackmc ((Num(div s1 s2))::s3) rho l
      |_ -> raise Invalid_Expression_Type
    )

  |(REM::l)->( match stk with
        ([])-> raise EmptyStackException
      | (Num(s)::[])-> raise EmptyStackException
      | ( (Num s1)::(Num s2)::s3)-> stackmc ((Num(rem s1 s2))::s3) rho l
      |_ -> raise Invalid_Expression_Type
    )

  |(DISJ::l)->( match stk with
        ([])-> raise EmptyStackException
      | (Bool(s)::[])-> raise EmptyStackException
      | ( (Bool s1)::(Bool s2)::s3)-> stackmc ((Bool( s1 || s2))::s3) rho l
      |_ -> raise Invalid_Expression_Type
    )
  |(CONJ::l)->( match stk with
        ([])-> raise EmptyStackException
      | (Bool(s)::[])-> raise EmptyStackException
      | ( (Bool s1)::(Bool s2)::s3)-> stackmc ((Bool( s1 && s2))::s3) rho l
      |_ -> raise Invalid_Expression_Type
    )

  |(EQS::l)->( match stk with
        ([])-> raise EmptyStackException
      | (s::[])-> raise EmptyStackException
      | ( (Bool s1)::(Bool s2)::s3)-> stackmc ((Bool( s1 = s2))::s3) rho l
      | ( (Num s1)::(Num s2)::s3)-> stackmc ((Bool( eq s1 s2))::s3) rho l
      |_ -> raise Invalid_Expression_Type
    )

  |(GTE::l)->( match stk with
        ([])-> raise EmptyStackException
      | (s::[])-> raise EmptyStackException
      | ( (Num s1)::(Num s2)::s3)-> stackmc ((Bool( geq s1 s2))::s3) rho l
      |_ -> raise Invalid_Expression_Type
    )

  |(LTE::l)->( match stk with
        ([])-> raise EmptyStackException
      | (s::[])-> raise EmptyStackException
      | ( (Num s1)::(Num s2)::s3)-> stackmc ((Bool( leq s1 s2))::s3) rho l
      |_ -> raise Invalid_Expression_Type
    )

  |(GT::l)->( match stk with
        ([])-> raise EmptyStackException
      | (s::[])-> raise EmptyStackException
      | ( (Num s1)::(Num s2)::s3)-> stackmc ((Bool( gt s1 s2))::s3) rho l
      |_ -> raise Invalid_Expression_Type
    )

  |(LT::l)->( match stk with
        ([])-> raise EmptyStackException
      | (s::[])-> raise EmptyStackException
      | ( (Num s1)::(Num s2)::s3)-> stackmc ((Bool( lt s1 s2))::s3) rho l
      |_ -> raise Invalid_Expression_Type
    )

  |(PAREN::l)-> stackmc stk rho l
  |(IFTE::l)->( match stk with
        ([])-> raise EmptyStackException
      | (s::[])-> raise EmptyStackException
      | (s::s1::[])-> raise EmptyStackException
      | ( (Bool (s1))::s2::s3::s4)-> stackmc ((if(s1)then s2 else s3)::s4) rho l
      | _ -> raise Invalid_Parameter
    )
  | (TUPLE(n)::l)->
    stackmc ((Tup(n, getfirstn n stk))::(removefirstn n stk)) rho  l
  | ((PROJ(i,n))::l) ->
    (match stk with
      (Tup(n,plist)::s) ->
      stackmc  ((List.nth plist (i-1))::s)  rho l
     | _ -> raise Invalid_Parameter
    )

let rec compile ex = match ex with

    B(b) -> [ BCONST(b) ]
  | N(n) ->
            [ NCONST(mk_big n)]
  | Var(x) -> [VAR(x)]

  |Abs(e) -> compile(e)@[ABS]
  |Negative(e)-> compile(e)@[UNARYMINUS]

  |Not(e) ->   (compile(e))@[NOT]

  |Add(e1,e2) -> (compile(e2))@(compile(e1))@[PLUS]
  |Sub(e1,e2) ->(compile(e2))@(compile(e1))@[MINUS]
  |Mult(e1,e2)->(compile(e2))@(compile(e1))@[MULT]
  |Div(e1,e2) ->(compile(e2))@(compile(e1))@[DIV]
  |Rem(e1,e2) ->(compile(e2))@(compile(e1))@[REM]

  |Disjunction(e1,e2)-> (compile(e2))@(compile e1)@[DISJ]
  |Conjunction(e1,e2)-> (compile(e2))@(compile e1)@[CONJ]

  |Equals(e1,e2) -> (compile e2)@(compile e1)@[EQS]
  |GreaterTE(e1,e2)->(compile e2)@(compile e1)@[GTE]
  |LessTE(e1,e2)-> (compile e2)@(compile e1)@[LTE]
  |GreaterT(e1,e2)->(compile e2)@(compile e1)@[GT]
  |LessT(e1,e2)->(compile e2)@(compile e1)@[LT]
  |InParen(e)-> (compile e)@[PAREN]
  |IfThenElse(e0,e1,e2)->   (compile e2)@(compile e1)@(compile e0)@[IFTE]
  |Project((i,n),e)-> compile(e)@[PROJ(i,n)]
  |Tuple(n,elist)->
    let fn a b = (compile a) @ b in
    (List.fold_right fn (List.rev elist) [])@[TUPLE(n)]
