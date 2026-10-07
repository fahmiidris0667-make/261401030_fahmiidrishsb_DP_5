program Soal2;

const
  PASSWORD_RAHASIA = 'pascal123';

var
  password: string;
  percobaan: integer;
  berhasil: boolean;

begin
  percobaan := 0;
  berhasil := false;

  repeat
    percobaan := percobaan + 1;

    write('Masukkan password (percobaan ', percobaan, '/3): ');
    readln(password);

    if password = PASSWORD_RAHASIA then
    begin
      writeln('Login Berhasil! Selamat Datang');
      berhasil := true;
      break;
    end
    else
      writeln('Password salah.');

  until percobaan = 3;

  if not berhasil then
    writeln('Akses Ditolak! Akun Terkunci.');
end.