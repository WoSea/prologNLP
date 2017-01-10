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
