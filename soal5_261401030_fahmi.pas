program Soal5;

var
  M, N, i, j: integer;
  nilai, total, rataRata: real;
  lulus, tidakLulus: integer;

begin
  write('Jumlah mahasiswa: ');
  readln(M);

  write('Jumlah tugas: ');
  readln(N);

  lulus := 0;
  tidakLulus := 0;

  for i := 1 to M do
  begin
    total := 0;

    writeln;
    writeln('Mahasiswa ke-', i);

    for j := 1 to N do
    begin
      write('Nilai tugas ke-', j, ': ');
      readln(nilai);

      total := total + nilai;
    end;

    rataRata := total / N;

    writeln('Rata-rata = ', rataRata:0:2);

    if rataRata >= 65 then
    begin
      writeln('Status = LULUS');
      lulus := lulus + 1;
    end
    else
    begin
      writeln('Status = TIDAK LULUS');
      tidakLulus := tidakLulus + 1;
    end;
  end;

  writeln;
  writeln('=== HASIL AKHIR ===');
  writeln('Mahasiswa LULUS       : ', lulus);
  writeln('Mahasiswa TIDAK LULUS : ', tidakLulus);
end.