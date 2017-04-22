domains
  orang = biodata_diri(nama, umur, telpon, alamat, pekerjaan) /* deklarasi variabel person */ 
  umur = integer /* deklarasi variabel umur */
  nama, telpon, alamat, pekerjaan = string /* deklarasi variabel nama, telpon, alamat, pekerjaan */

predicates
  run - procedure () 

clauses
  run:-
      write("Nama Kamu Siapa ? "), readln(Nama),
      write("Pekerjaan Kamu Apa ? "), readln(Pekerjaan),
      write("Kamu Tinggal Dimana ? "), readln(Alamat),
      write("Berapa Umur Kamu ? "), readint(Umur),
      write("Kalo Boleh Tau, Nomor HP Kamu Berapa ? "), readln(Telpon),
      Bio=biodata_diri(Nama,Umur,Telpon,Alamat,Pekerjaan),
      write(Bio),nl,
      write("jika anda ingin lagi kembali lagi  OK ketik (y/n)"),
      readchar(Ch),nl,Ch='y', !.

  run :-
	 nl,nl,
	 write("Inputnya Salah, Coba lagi ya!!!!"),
	 nl,nl,run.

goal
  run.
