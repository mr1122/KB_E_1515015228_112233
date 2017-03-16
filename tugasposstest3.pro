DOMAINS
mahasiswa,matakuliah = symbol
nilai = char

PREDICATES
nondeterm mengambil(mahasiswa,matakuliah)
nondeterm mendapat(mahasiswa,nilai)
nondeterm mahasiswa(mahasiswa)
nondeterm matakuliah(matakuliah)
nondeterm lulus(mahasiswa,matakuliah)
nondeterm tidak_lulus(mahasiswa,matakuliah)
run - nondeterm ()

CLAUSES
mahasiswa(irfan).
mahasiswa(komeng).
mahasiswa(dati).
mahasiswa(fatima).
mahasiswa(maspion).

mahasiswa(ricky).
mahasiswa(embang).
mahasiswa(salmin).
mahasiswa(vina).
mahasiswa(sondang).

mahasiswa(pamuji).
mahasiswa(luki).
mahasiswa(sadek).
mahasiswa(yusida).
mahasiswa(eka).

matakuliah(intelejensi_buatan).
matakuliah("PDE").
matakuliah(sistem_operasi).

mengambil(irfan,intelejensi_buatan).
mengambil(komeng,intelejensi_buatan).
mengambil(dati,intelejensi_buatan).
mengambil(fatima,intelejensi_buatan).
mengambil(maspion,intelejensi_buatan).

mengambil(ricky,"PDE").
mengambil(embang,"PDE").
mengambil(salmin,"PDE").
mengambil(vina,"PDE").
mengambil(sondang,"PDE").

mengambil(pamuji,sistem_opeerasi).
mengambil(luki,sistem_opeerasi).
mengambil(sadek,sistem_opeerasi).
mengambil(yusida,sistem_opeerasi).
mengambil(eka,sistem_opeerasi).

mendapat(irfan,'A').
mendapat(komeng,'D').
mendapat(dati,'C').
mendapat(fatima,'B').
mendapat(maspion,'C').

mendapat(ricky,'E').
mendapat(embang,'A').
mendapat(salmin,'D').
mendapat(vina,'B').
mendapat(sondang,'C').

mendapat(pamuji,'D').
mendapat(luki,'E').
mendapat(sadek,'B').
mendapat(yusida,'A').
mendapat(eka,'A').

lulus(X,Y):- mengambil(X,Y), mendapat(X,Z), Z <= 'C'.

tidak_lulus(X,Y):- mengambil(X,Y), mendapat(X,Z), 'D' <= Z.

run:-
	write("--------- Masih gak paham ----------"),nl,
	readchar(_).
GOAL
mahasiswa(Daftar_nama_mahasiswa);
matakuliah(Daftar_nama_matakuliah);
mengambil(Mahasiswa_intelejensi_buatan,intelejensi_buatan);
lulus(Mahasiswa_lulus,_);
tidak_lulus(Mahasiswa_tidaklulus,_),
run.