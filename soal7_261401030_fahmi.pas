program Soal7;

var
  kode: char;
  jam: integer;
  tarif: longint;

begin
  write('Kode kendaraan (M/K/B): ');
  readln(kode);

  kode := UpCase(kode);

  write('Lama parkir (jam): ');
  readln(jam);

  case kode of

    'M':
    begin
      if jam > 10 then
        tarif := 30000
      else
        tarif := 5000 + (jam - 1) * 3000;
    end;

    'K':
    begin
      if jam > 10 then
        tarif := 10000
      else
        tarif := 2000 + (jam - 1) * 1000;
    end;

    'B':
    begin
      if jam > 10 then
        tarif := 50000
      else
        tarif := 10000 + (jam - 1) * 5000;
    end;

  else
  begin
    writeln('Kode kendaraan tidak valid.');
    halt;
  end;

  end;

  writeln('Total tarif parkir = Rp', tarif);
end.