program Soal4;

var
  pilihan: integer;
  a, b: real;
  x, y: integer;
  ulang: char;

begin
  repeat

    writeln;
    writeln('=== KALKULATOR ===');
    writeln('1. Penjumlahan');
    writeln('2. Pengurangan');
    writeln('3. Perkalian');
    writeln('4. Pembagian Real');
    writeln('5. DIV dan MOD');

    write('Pilih operasi: ');
    readln(pilihan);

    case pilihan of

      1:
      begin
        write('Angka pertama: ');
        readln(a);
        write('Angka kedua: ');
        readln(b);
        writeln('Hasil = ', a + b:0:2);
      end;

      2:
      begin
        write('Angka pertama: ');
        readln(a);
        write('Angka kedua: ');
        readln(b);
        writeln('Hasil = ', a - b:0:2);
      end;

      3:
      begin
        write('Angka pertama: ');
        readln(a);
        write('Angka kedua: ');
        readln(b);
        writeln('Hasil = ', a * b:0:2);
      end;

      4:
      begin
        write('Angka pertama: ');
        readln(a);
        write('Angka kedua: ');
        readln(b);

        if b = 0 then
          writeln('Tidak bisa dibagi dengan nol.')
        else
          writeln('Hasil = ', a / b:0:2);
      end;

      5:
      begin
        write('Bilangan pertama: ');
        readln(x);
        write('Bilangan kedua: ');
        readln(y);

        if y = 0 then
          writeln('Tidak bisa menggunakan DIV/MOD dengan nol.')
        else
        begin
          writeln('Hasil DIV = ', x div y);
          writeln('Hasil MOD = ', x mod y);
        end;
      end;

    else
      writeln('Pilihan tidak valid.');
    end;

    write('Apakah ingin melakukan perhitungan lagi? (Y/T): ');
    readln(ulang);

  until (ulang = 'T') or (ulang = 't');

  writeln('Program selesai.');
end.