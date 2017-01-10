s(s(X, Y)) --> np(X), vp(Y, A).

vp(vp(X, Y, Z), A) --> rb(X, A), vb(Y,A,B), np(Z).
np(np(X)) --> prp(X, A).
np(np(X)) --> nn(X, A).
np(np(X,Y)) --> nn(X,Y,A).
np(np(X,Y))-->nn(X,A),pp(Y).

pp(pp(X,Y))--> in(X,A),np(Y).


prp(prp(ho), human) --> [ho].
rb(rb(thich), human) --> [thich].
vb(vb(doc), human, thing) --> [doc].
nn(nn(sach), thing) --> [sach].
in(in(o), pre) --> [o].
nn(nn(thu_vien),pre,place) --> [thu_vien].
