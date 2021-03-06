gap> s := SI_ring(3,["a","b"],[["dp",2]]);
<singular ring>
gap> p := SI_matrix(s,1,1,"a+b+ab");
<singular matrix (mutable):
ab+a+b>
gap> SI_\[(p,1);
<singular vector (mutable):
[ab+a+b]>
gap> SI_\[(p,2);
<singular vector (mutable):
[0]>
gap> SI_\[(p,3);
<singular vector (mutable):
[0]>
gap> SI_\[(p,4);
<singular vector (mutable):
[0]>
gap> m := SI_matrix(s,2,2,"a,b,ab,2");
<singular matrix (mutable):
a, b,
ab,-1>
gap> SI_\[(m,1,1);
<singular poly (mutable):a>
gap> SI_\[(m,2,1);
<singular poly (mutable):ab>
gap> SI_\[(m,2,2);
<singular poly (mutable):-1>
gap> SI_\*(m,2);
<singular matrix (mutable):
-a, -b,
-ab,1  >
gap> SI_\*(m,0);
<singular matrix (mutable):
0,0,
0,0 >
gap> a := SI_poly(s,"a");
<singular poly (mutable):a>
gap> SI_\*(m,a);
<singular matrix (mutable):
a2, ab,
a2b,-a >
gap> Display(m);
a, b,
ab,-1
gap> SI_\-(m,m);
<singular matrix (mutable):
0,0,
0,0 >
gap> SI_\-(m);
<singular matrix (mutable):
-a, -b,
-ab,1  >
