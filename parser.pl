% Elvin Latifi

parse(ParseTree) --> assign(ParseTree).
assign(assignment(ident(Id), assign_op, Expression, semicolon)) --> id(Id), [=], expr(Expression), [;].
expr(expression(Term)) --> term(Term).
expr(expression(Term, AddOrSubOp, Expression)) --> term(Term), add_sub_op(AddOrSubOp), expr(Expression).
term(term(Factor)) --> factor(Factor).
term(term(Factor, MulOrDivOp, Term)) --> factor(Factor), mul_div_op(MulOrDivOp), term(Term).
factor(factor(int(Int))) --> int(Int).
factor(factor(Id)) --> id(Id).
factor(factor(left_paren, Expression, right_paren)) --> ['('], expr(Expression), [')'].
add_sub_op(add_op) --> [+].
add_sub_op(sub_op) --> [-].
mul_div_op(mult_op) --> [*].
mul_div_op(div_op) --> [/].
id(X) --> [X], {atom(X)}.
int(I) --> [I], {integer(I)}.