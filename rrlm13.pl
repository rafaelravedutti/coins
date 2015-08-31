balanca1([X1, X2, X3, X4, Y1, Y2, Y3, Y4 | T], menor) :-
  X1 + X2 + X3 + X4 < Y1 + Y2 + Y3 + Y4.

balanca1([X1, X2, X3, X4, Y1, Y2, Y3, Y4 | T], maior) :-
  X1 + X2 + X3 + X4 > Y1 + Y2 + Y3 + Y4.

balanca1([X1, X2, X3, X4, Y1, Y2, Y3, Y4 | T], igual) :-
  X1 + X2 + X3 + X4 =:= Y1 + Y2 + Y3 + Y4.

balanca2([X1, X2, X3, X4, Y1, Y2, Y3, Y4, Z1, Z2, Z3, Z4], menor) :-
  X1 + X2 + X3 + Y1 < X4 + Z1 + Z2 + Z3.

balanca2([X1, X2, X3, X4, Y1, Y2, Y3, Y4, Z1, Z2, Z3, Z4], maior) :-
  X1 + X2 + X3 + Y1 > X4 + Z1 + Z2 + Z3.

balanca2([X1, X2, X3, X4, Y1, Y2, Y3, Y4, Z1, Z2, Z3, Z4], igual) :-
  X1 + X2 + X3 + Y1 =:= X4 + Z1 + Z2 + Z3.

balanca3([X1, X2, X3, X4, Y1, Y2, Y3, Y4, Z1, Z2, Z3, Z4], menor) :-
  balanca1([X1, X2, X3, X4, Y1, Y2, Y3, Y4 | T], menor),
  balanca2([X1, X2, X3, X4, Y1, Y2, Y3, Y4, Z1, Z2, Z3, Z4], menor),
  X1 < X3.

balanca3([X1, X2, X3, X4, Y1, Y2, Y3, Y4, Z1, Z2, Z3, Z4], maior) :-
  balanca1([X1, X2, X3, X4, Y1, Y2, Y3, Y4 | T], menor),
  balanca2([X1, X2, X3, X4, Y1, Y2, Y3, Y4, Z1, Z2, Z3, Z4], menor),
  X1 > X3.

balanca3([X1, X2, X3, X4, Y1, Y2, Y3, Y4, Z1, Z2, Z3, Z4], menor) :-
  balanca1([X1, X2, X3, X4, Y1, Y2, Y3, Y4 | T], menor),
  balanca2([X1, X2, X3, X4, Y1, Y2, Y3, Y4, Z1, Z2, Z3, Z4], menor),
  X1 < X3.

balanca3([X1, X2, X3, X4, Y1, Y2, Y3, Y4, Z1, Z2, Z3, Z4], igual) :-
  balanca1([X1, X2, X3, X4, Y1, Y2, Y3, Y4 | T], menor),
  balanca2([X1, X2, X3, X4, Y1, Y2, Y3, Y4, Z1, Z2, Z3, Z4], maior),
  X4 =:= Z1.

balanca3([X1, X2, X3, X4, Y1, Y2, Y3, Y4, Z1, Z2, Z3, Z4], diferente) :-
  balanca1([X1, X2, X3, X4, Y1, Y2, Y3, Y4 | T], menor),
  balanca2([X1, X2, X3, X4, Y1, Y2, Y3, Y4, Z1, Z2, Z3, Z4], maior),
  X4 =\= Z1.

balanca3([X1, X2, X3, X4, Y1, Y2, Y3, Y4, Z1, Z2, Z3, Z4], igual) :-
  balanca1([X1, X2, X3, X4, Y1, Y2, Y3, Y4 | T], maior),
  balanca2([X1, X2, X3, X4, Y1, Y2, Y3, Y4, Z1, Z2, Z3, Z4], menor),
  X4 =:= Z1.

balanca3([X1, X2, X3, X4, Y1, Y2, Y3, Y4, Z1, Z2, Z3, Z4], diferente) :-
  balanca1([X1, X2, X3, X4, Y1, Y2, Y3, Y4 | T], maior),
  balanca2([X1, X2, X3, X4, Y1, Y2, Y3, Y4, Z1, Z2, Z3, Z4], menor),
  X4 =\= Z1.

balanca3([X1, X2, X3, X4, Y1, Y2, Y3, Y4, Z1, Z2, Z3, Z4], menor) :-
  balanca1([X1, X2, X3, X4, Y1, Y2, Y3, Y4 | T], maior),
  balanca2([X1, X2, X3, X4, Y1, Y2, Y3, Y4, Z1, Z2, Z3, Z4], maior),
  X1 < X3.

balanca3([X1, X2, X3, X4, Y1, Y2, Y3, Y4, Z1, Z2, Z3, Z4], maior) :-
  balanca1([X1, X2, X3, X4, Y1, Y2, Y3, Y4 | T], maior),
  balanca2([X1, X2, X3, X4, Y1, Y2, Y3, Y4, Z1, Z2, Z3, Z4], maior),
  X1 > X3.

balanca3([X1, X2, X3, X4, Y1, Y2, Y3, Y4, Z1, Z2, Z3, Z4], igual) :-
  balanca1([X1, X2, X3, X4, Y1, Y2, Y3, Y4 | T], maior),
  balanca2([X1, X2, X3, X4, Y1, Y2, Y3, Y4, Z1, Z2, Z3, Z4], maior),
  X1 =:= X3.

balanca3([X1, X2, X3, X4, Y1, Y2, Y3, Y4, Z1, Z2, Z3, Z4], menor) :-
  balanca1([X1, X2, X3, X4, Y1, Y2, Y3, Y4 | T], igual),
  balanca2([X1, X2, X3, X4, Y1, Y2, Y3, Y4, Z1, Z2, Z3, Z4], menor),
  Z1 < Z3.

balanca3([X1, X2, X3, X4, Y1, Y2, Y3, Y4, Z1, Z2, Z3, Z4], maior) :-
  balanca1([X1, X2, X3, X4, Y1, Y2, Y3, Y4 | T], igual),
  balanca2([X1, X2, X3, X4, Y1, Y2, Y3, Y4, Z1, Z2, Z3, Z4], menor),
  Z1 > Z3.

balanca3([X1, X2, X3, X4, Y1, Y2, Y3, Y4, Z1, Z2, Z3, Z4], igual) :-
  balanca1([X1, X2, X3, X4, Y1, Y2, Y3, Y4 | T], igual),
  balanca2([X1, X2, X3, X4, Y1, Y2, Y3, Y4, Z1, Z2, Z3, Z4], menor),
  Z1 =:= Z3.

balanca3([X1, X2, X3, X4, Y1, Y2, Y3, Y4, Z1, Z2, Z3, Z4], menor) :-
  balanca1([X1, X2, X3, X4, Y1, Y2, Y3, Y4 | T], igual),
  balanca2([X1, X2, X3, X4, Y1, Y2, Y3, Y4, Z1, Z2, Z3, Z4], maior),
  Z1 < Z3.

balanca3([X1, X2, X3, X4, Y1, Y2, Y3, Y4, Z1, Z2, Z3, Z4], maior) :-
  balanca1([X1, X2, X3, X4, Y1, Y2, Y3, Y4 | T], igual),
  balanca2([X1, X2, X3, X4, Y1, Y2, Y3, Y4, Z1, Z2, Z3, Z4], maior),
  Z1 > Z3.

balanca3([X1, X2, X3, X4, Y1, Y2, Y3, Y4, Z1, Z2, Z3, Z4], igual) :-
  balanca1([X1, X2, X3, X4, Y1, Y2, Y3, Y4 | T], igual),
  balanca2([X1, X2, X3, X4, Y1, Y2, Y3, Y4, Z1, Z2, Z3, Z4], maior),
  Z1 =:= Z3.

balanca3([X1, X2, X3, X4, Y1, Y2, Y3, Y4, Z1, Z2, Z3, Z4], menor) :-
  balanca1([X1, X2, X3, X4, Y1, Y2, Y3, Y4 | T], menor),
  balanca2([X1, X2, X3, X4, Y1, Y2, Y3, Y4, Z1, Z2, Z3, Z4], igual),
  Y2 < Y4.

balanca3([X1, X2, X3, X4, Y1, Y2, Y3, Y4, Z1, Z2, Z3, Z4], maior) :-
  balanca1([X1, X2, X3, X4, Y1, Y2, Y3, Y4 | T], menor),
  balanca2([X1, X2, X3, X4, Y1, Y2, Y3, Y4, Z1, Z2, Z3, Z4], igual),
  Y2 > Y4.

balanca3([X1, X2, X3, X4, Y1, Y2, Y3, Y4, Z1, Z2, Z3, Z4], igual) :-
  balanca1([X1, X2, X3, X4, Y1, Y2, Y3, Y4 | T], menor),
  balanca2([X1, X2, X3, X4, Y1, Y2, Y3, Y4, Z1, Z2, Z3, Z4], igual),
  Y2 =:= Y4.

balanca3([X1, X2, X3, X4, Y1, Y2, Y3, Y4, Z1, Z2, Z3, Z4], menor) :-
  balanca1([X1, X2, X3, X4, Y1, Y2, Y3, Y4 | T], maior),
  balanca2([X1, X2, X3, X4, Y1, Y2, Y3, Y4, Z1, Z2, Z3, Z4], igual),
  Y2 < Y4.

balanca3([X1, X2, X3, X4, Y1, Y2, Y3, Y4, Z1, Z2, Z3, Z4], maior) :-
  balanca1([X1, X2, X3, X4, Y1, Y2, Y3, Y4 | T], maior),
  balanca2([X1, X2, X3, X4, Y1, Y2, Y3, Y4, Z1, Z2, Z3, Z4], igual),
  Y2 > Y4.

balanca3([X1, X2, X3, X4, Y1, Y2, Y3, Y4, Z1, Z2, Z3, Z4], igual) :-
  balanca1([X1, X2, X3, X4, Y1, Y2, Y3, Y4 | T], maior),
  balanca2([X1, X2, X3, X4, Y1, Y2, Y3, Y4, Z1, Z2, Z3, Z4], igual),
  Y2 =:= Y4.

balanca3([X1, X2, X3, X4, Y1, Y2, Y3, Y4, Z1, Z2, Z3, Z4], menor) :-
  balanca1([X1, X2, X3, X4, Y1, Y2, Y3, Y4 | T], igual),
  balanca2([X1, X2, X3, X4, Y1, Y2, Y3, Y4, Z1, Z2, Z3, Z4], igual),
  Z4 < X1.

balanca3([X1, X2, X3, X4, Y1, Y2, Y3, Y4, Z1, Z2, Z3, Z4], maior) :-
  balanca1([X1, X2, X3, X4, Y1, Y2, Y3, Y4 | T], igual),
  balanca2([X1, X2, X3, X4, Y1, Y2, Y3, Y4, Z1, Z2, Z3, Z4], igual),
  Z4 > X1.

moeda_diferente(X, 1, "Mais leve") :-
  balanca1(X, menor), balanca2(X, menor), balanca3(X, menor).

moeda_diferente(X, 1, "Mais pesada") :-
  balanca1(X, maior), balanca2(X, maior), balanca3(X, maior).

moeda_diferente(X, 2, "Mais leve") :-
  balanca1(X, menor), balanca2(X, menor), balanca3(X, igual).

moeda_diferente(X, 2, "Mais pesada") :-
  balanca1(X, maior), balanca2(X, maior), balanca3(X, igual).

moeda_diferente(X, 3, "Mais leve") :-
  balanca1(X, menor), balanca2(X, menor), balanca3(X, maior).

moeda_diferente(X, 3, "Mais pesada") :-
  balanca1(X, maior), balanca2(X, maior), balanca3(X, menor).

moeda_diferente(X, 4, "Mais leve") :-
  balanca1(X, menor), balanca2(X, maior), balanca3(X, diferente).

moeda_diferente(X, 4, "Mais pesada") :-
  balanca1(X, maior), balanca2(X, menor), balanca3(X, diferente).

moeda_diferente(X, 5, "Mais leve") :-
  balanca1(X, maior), balanca2(X, menor), balanca3(X, igual).

moeda_diferente(X, 5, "Mais pesada") :-
  balanca1(X, menor), balanca2(X, maior), balanca3(X, igual).

moeda_diferente(X, 6, "Mais leve") :-
  balanca1(X, maior), balanca2(X, igual), balanca3(X, menor).

moeda_diferente(X, 6, "Mais pesada") :-
  balanca1(X, menor), balanca2(X, igual), balanca3(X, maior).

moeda_diferente(X, 7, "Mais leve") :-
  balanca1(X, maior), balanca2(X, igual), balanca3(X, igual).

moeda_diferente(X, 7, "Mais pesada") :-
  balanca1(X, menor), balanca2(X, igual), balanca3(X, igual).

moeda_diferente(X, 8, "Mais leve") :-
  balanca1(X, maior), balanca2(X, igual), balanca3(X, maior).

moeda_diferente(X, 8, "Mais pesada") :-
  balanca1(X, menor), balanca2(X, igual), balanca3(X, menor).

moeda_diferente(X, 9, "Mais leve") :-
  balanca1(X, igual), balanca2(X, maior), balanca3(X, menor).

moeda_diferente(X, 9, "Mais pesada") :-
  balanca1(X, igual), balanca2(X, menor), balanca3(X, maior).

moeda_diferente(X, 10, "Mais leve") :-
  balanca1(X, igual), balanca2(X, maior), balanca3(X, igual).

moeda_diferente(X, 10, "Mais pesada") :-
  balanca1(X, igual), balanca2(X, menor), balanca3(X, igual).

moeda_diferente(X, 11, "Mais leve") :-
  balanca1(X, igual), balanca2(X, maior), balanca3(X, maior).

moeda_diferente(X, 11, "Mais pesada") :-
  balanca1(X, igual), balanca2(X, menor), balanca3(X, menor).

moeda_diferente(X, 12, "Mais leve") :-
  balanca1(X, igual), balanca2(X, igual), balanca3(X, menor).

moeda_diferente(X, 12, "Mais pesada") :-
  balanca1(X, igual), balanca2(X, igual), balanca3(X, maior). 
