# prologNLP

##Discuss 1:
s(s(X, Y))--> np(X), vp(X,Y).

vp(vp(X,Y),A)-->vb(X,A),np(np(Y,A)).
np(np(X,Y))-->prp(X,A).
np(np(X,Y))--> un(X, A), nn(Y,A).

un(un(cai), thing)--> [cai].
un(un(cuon), book)--> [cuon].
un(un(chiec), car)--> [chiec].

vb(vb(la),tobe)-->[la].
nn(nn(xe), car)-->[xe].
nn(nn(la), car)-->[la].


nn(nn(ban), thing) --> [ban].
nn(nn(xe), thing) --> [xe].
nn(nn(la), thing) --> [la].
nn(nn(sach), book) --> [sach].

prp(prp(no),it)-->[no].

=> 
1 ?- np(X,[cai,xe],[]).
X= np(un(cai),nn(xe)).

2 ?- np(X, [cuon,xe],[]).
false

3 ?- 
=====================================================================

##Discuss 2:
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

=>
1 ?- s(X,[ho,thich,doc,sach,o,thu_vien],[]).
X = s(np(prp(ho)), vp(rb(thich), vb(doc), np(nn(sach), pp(in(o), np(nn(thu_vien), pre))))) .

2 ?- s(X,[ho,thich,doc,thu_vien,o,sach],[]).
false.

3 ?- s(X,[ho,thich,o,thu_vien],[]).
false.

4 ?- s(X,[ho,thich,doc,sach],[]).
X = s(np(prp(ho)), vp(rb(thich), vb(doc), np(nn(sach)))) 
