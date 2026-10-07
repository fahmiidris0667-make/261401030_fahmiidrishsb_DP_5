program Soal3;

var
  N, pilihan, i: integer;

begin
  writeln('=== DERET ANGKA ===');

  write('Masukkan N: ');
  readln(N);

  writeln('1. Ganjil');
  writeln('2. Genap');
  write('Pilih kategori: ');
  readln(pilihan);

  if (pilihan <> 1) and (pilihan <> 2) then
  begin
    writeln('Pilihan tidak valid.');
    halt;
  end;

  i := 1;

  writeln('Hasil deret:');

  while i <= N do
  begin
    if i mod 5 = 0 then
    begin
      i := i + 1;
      continue;
    end;

    if (pilihan = 1) and (i mod 2 = 0) then
    begin
      i := i + 1;
      continue;
    end;

    if (pilihan = 2) and (i mod 2 <> 0) then
    begin
      i := i + 1;
      continue;
    end;

    write(i, ' ');
    i := i + 1;
  end;

  writeln;
end.