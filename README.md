# prologNLP

##Discuss 1:

1 ?- np(X,[cai,xe],[]).
X= np(un(cai),nn(xe)).

2 ?- np(X, [cuon,xe],[]).
false

 

##Discuss 2:

1 ?- s(X,[ho,thich,doc,sach,o,thu_vien],[]).
X = s(np(prp(ho)),vp(rb(thich),vb(doc),np(nn(sach),pp(in(o),np(nn(thu_vien), pre))))).

2 ?- s(X,[ho,thich,doc,thu_vien,o,sach],[]).
false.

3 ?- s(X,[ho,thich,o,thu_vien],[]).
false.

4 ?- s(X,[ho,thich,doc,sach],[]).
X = s(np(prp(ho)), vp(rb(thich), vb(doc), np(nn(sach)))) 
