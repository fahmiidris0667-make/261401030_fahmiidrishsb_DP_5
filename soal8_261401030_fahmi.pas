program Soal8;

var
  golongan: char;
  jamKerja, jamLembur: real;
  gajiPokok, lembur, bonus, totalGaji: longint;

begin
  write('Golongan (A/B/C): ');
  readln(golongan);

  golongan := UpCase(golongan);

  write('Jam kerja per minggu: ');
  readln(jamKerja);

  case golongan of
    'A': gajiPokok := 1500000;
    'B': gajiPokok := 2000000;
    'C': gajiPokok := 2500000;
  else
  begin
    writeln('Golongan tidak valid.');
    halt;
  end;
  end;

  if jamKerja > 40 then
    jamLembur := jamKerja - 40
  else
    jamLembur := 0;

  lembur := Round(jamLembur * 20000);

  bonus := 0;

  if (golongan = 'C') and (jamKerja > 50) then
    bonus := 100000;

  totalGaji := gajiPokok + lembur + bonus;

  writeln;
  writeln('Gaji Pokok : Rp', gajiPokok);
  writeln('Lembur     : Rp', lembur);
  writeln('Bonus      : Rp', bonus);
  writeln('Total Gaji : Rp', totalGaji);
end.