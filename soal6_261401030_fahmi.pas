program Soal6;

var
  tugas, uts, uas, kehadiran: real;
  nilaiAkhir: real;
  indeks: char;
  status: string;

begin
  write('Nilai Tugas (30%): ');
  readln(tugas);

  write('Nilai UTS (30%): ');
  readln(uts);

  write('Nilai UAS (40%): ');
  readln(uas);

  write('Kehadiran (%): ');
  readln(kehadiran);

  nilaiAkhir := (tugas * 0.30) +
                (uts * 0.30) +
                (uas * 0.40);

  if nilaiAkhir >= 85 then
    indeks := 'A'
  else if nilaiAkhir >= 75 then
    indeks := 'B'
  else if nilaiAkhir >= 60 then
    indeks := 'C'
  else if nilaiAkhir >= 50 then
    indeks := 'D'
  else
    indeks := 'E';

  if (nilaiAkhir >= 60) and (kehadiran >= 80) then
    status := 'LULUS'
  else
    status := 'TIDAK LULUS';

  writeln;
  writeln('Nilai Akhir : ', nilaiAkhir:0:2);
  writeln('Indeks       : ', indeks);
  writeln('Status       : ', status);
end.