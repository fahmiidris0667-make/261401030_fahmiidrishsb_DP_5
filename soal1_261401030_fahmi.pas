program Soal1;

var
  N, i: integer;
  harga, total, diskon, totalBayar: real;

begin
  writeln('=== TOKO BUKU ===');
  write('Masukkan jumlah barang: ');
  readln(N);

  total := 0;

  for i := 1 to N do
  begin
    write('Harga barang ke-', i, ': Rp');
    readln(harga);
    total := total + harga;
  end;

  if total < 100000 then
    diskon := 0
  else if total < 500000 then
    diskon := total * 0.10
  else
    diskon := total * 0.20;

  totalBayar := total - diskon;

  writeln;
  writeln('=== RINCIAN BELANJA ===');
  writeln('Total sebelum diskon : Rp', total:0:2);
  writeln('Besar diskon         : Rp', diskon:0:2);
  writeln('Total bayar akhir    : Rp', totalBayar:0:2);
end.