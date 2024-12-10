aliased(A, B) :- alias(A, B).
fieldof(A, FIELD, B) :- constructor(A, B, FIELD).
fieldof(U, F, V) :- aliased(U, W), fieldof(W, F, V).
aliased(A, B) :- accessor(A, C, FIELD), fieldof(C, FIELD, B).
aliased(A, B) :- alias_if_def(A, B, C), used(C).
used(A) :- used(X), use(X, A).
