
/*Tábla létrehozása*/

CREATE TABLE Ugyfel
(UgyfelID INT IDENTITY PRIMARY KEY,
LOGIN varchar(100)	MASKED WITH (Function = 'partial(0,"XXX",1)'),
EMAIL varchar(100) MASKED WITH (Function = 'email()'),
NEV varchar(100) MASKED WITH (Function = 'partial(2,"XXX",2)'),
SZULEV int MASKED WITH (Function = 'random(1980,2000)'),
NEM varchar(1),
CIM varchar(100) MASKED WITH (Function = 'default()')
)

/*Adatok importálása*/

INSERT INTO Ugyfel
(LOGIN, EMAIL, NEV, SZULEV, NEM, CIM)
VALUES
('adam1', 'ádám.kiss@mail.hu', 'Kiss Ádám', 1991, 'F', '5630 Békés, Szolnoki út 8.'),
('adam3', 'adam3@gmail.com', 'Barkóci Ádám', 1970, 'F', '3910 Tokaj, Dózsa György utca 37.'),
('adam4', 'ádám.bieniek@mail.hu', 'Bieniek Ádám', 1976, 'F', '8630 Balatonboglár, Juhászföldi út 1.'),
('agnes', 'agnes@gmail.com', 'Lengyel Ágnes', 1979, 'N', '5200 Törökszentmiklós, Deák Ferenc út 5.'),
('agnes3', 'agnes3@gmail.com', 'Hartyánszky Ágnes', 1967, 'N', '6430 Bácsalmás, Posta köz 2.'),
('AGNESH', 'AGNESH@gmail.com', 'Horváth Ágnes', 1981, 'N', '8200 Veszprém, Rákóczi utca 21.'),
('AGNESK', 'AGNESK@gmail.com', 'Kovács Ágnes', 1988, 'N', '1084 Budapest, Endrődi Sándor utca 47.'),
('akos', 'ákos.bíró@mail.hu', 'Bíró Ákos', 1982, 'F', '9023 Győr, Kossuth Lajos utca 47/b.'),
('aladar', 'aladár.dunai@mail.hu', 'Dunai Aladár', 1980, 'F', '5931 Nagyszénás, Árpád utca 23.'),
('alexandra', 'alexandra.bagóczki@mail.hu', 'Bagóczki Alexandra', 1992, 'N', '2381 Táborfalva, Petőfi utca 1/2.'),
('alexis', 'alexbiro@gmail.com', 'Biró Alexander', 2000, 'F', '6914 Pitvaros, Deák F. u. 38.'),
('andi', 'andrea.maródi@mail.hu', 'Maródi Andrea', 1968, 'N', '5465 Cserkeszőlő, Árpád utca 4.'),
('andras2', 'andrás.tóth@mail.hu', 'Tóth András', 1997, 'F', '4071 Egyek, Petőfi utca 30.'),
('andras21', 'andrás.molnár@mail.hu', 'Molnár András', 1977, 'F', '7900 Szigetvár, Rákóczi utca 67.'),
('andras3', 'andrás.vígh@mail.hu', 'Vígh András', 1971, 'F', '1118 Budapest, Arany János utca 1.'),
('andras4', 'andras4@gmail.com', 'Back András', 1984, 'F', '3783 Edelény, Fő út 169.'),
('andras41', 'andras41@gmail.com', 'Komjáti András', 1997, 'F', '5065 Nagykörű, Kossuth út 24.'),
('ANDRASE', 'ANDRASE@gmail.com', 'Erdei András', 1997, 'F', '5071 Besenyszög, Szolnoki út 8.'),
('ANDRASN', 'andrás.nagy@mail.hu', 'Nagy András', 1980, 'F', '6500 Baja, Fő út 169.'),
('andrea', 'andrea.kiss@mail.hu', 'Kiss Andrea', 1993, 'N', '1113 Budapest, Petőfi Sándor utca 87.'),
('andrea3', 'andrea3@gmail.com', 'Szomor Andrea', 1996, 'N', '7960 Sellye, Bécsi utca 82.'),
('andrea4', 'andrea4@gmail.com', 'Neizer Andrea', 1981, 'N', '1124 Budapest, Kiss u. 8.'),
('ANDREAT', 'ANDREAT@gmail.com', 'Tornyos Andrea', 1986, 'N', '6131 Szank, Bécsi utca 82.'),
('anett3', 'anett.pivarcsi@mail.hu', 'Pivarcsi Anett', 1967, 'N', '1149 Budapest, Fő út 60.'),
('aniko', 'aniko@gmail.com', 'Tóth Anikó', 1973, 'N', '2085 Pilisvörösvár, Deák Ferenc út 5.'),
('aniko4', 'aniko4@gmail.com', 'Böröcz Anikó', 1978, 'N', '2484 Agárd, Petőfi Sándor tér 1.'),
('ANIKOS', 'ANIKOS@gmail.com', 'Simon Anikó', 1988, 'N', '5137 Jászkisér, Bécsi utca 82.'),
('anita', 'anita.hamvay-kovács@mail.hu', 'Hamvay-Kovács Anita', 1971, 'N', '7220 Sarkad, Táncsics utca 19.'),
('annamaria1', 'annamária.szűcs@mail.hu', 'Szűcs Annamária', 1990, 'N', '1191 Budapest, Rendeki utca 21.'),
('ANNAMARIAR', 'ANNAMARIAR@gmail.com', 'Regős Annamária', 1977, 'N', '8283 Káptalantóti, Petőfi Sándor tér 1.'),
('aron2', 'aron2@gmail.com', 'Jakab Áron', 1971, 'F', '7133 Fadd, Bajcsy-Zsilinszky utca 4.'),
('ARONK', 'áron.kelemen@mail.hu', 'Kelemen Áron', 1989, 'F', '8200 Veszprém, Petőfi utca 8.'),
('arpad2', 'árpád.ötvös@mail.hu', 'Ötvös Árpád', 1990, 'F', '2600 Vác, Padragi út 158.'),
('ARPADH', 'árpád.horváth@mail.hu', 'Horváth Árpád', 1990, 'F', '7349 Szászvár, Dózsa György u. 1.'),
('ARPADM', 'árpád.móricz@mail.hu', 'Móricz Árpád', 1986, 'F', '3910 Tokaj, Rákóczi utca 67.'),
('attila', 'attila@gmail.com', 'Csóti Attila', 1979, 'F', '3000 Hatvan, Bajcsy-Zsilinszky utca 4.'),
('attila1', 'attila.gulyás@mail.hu', 'Gulyás Attila', 1982, 'F', '3881 Abaújszántó, Szolnoki út 8.'),
('attila4', 'attila.baróti@mail.hu', 'Baróti Attila', 1975, 'F', '7149 Báta, Arany János utca 3.'),
('ATTILAO', 'ATTILAO@gmail.com', 'Opra Attila', 1995, 'F', '8283 Káptalantóti, Rákóczi út 200.'),
('balazs1', 'balázs.bozsik@mail.hu', 'Bozsik Balázs', 1992, 'F', '2300 Ráckeve, Bécsi utca 82.'),
('balazs2', 'balázs.szűcs@mail.hu', 'Szűcs Balázs', 1984, 'F', '3170 Szécsény, Szabadság utca 95.'),
('balazs3', 'balazs3@gmail.com', 'Bakódy Balázs', 1986, 'F', '2131 Göd, Arany János utca 1.'),
('balint', 'balint@gmail.com', 'Horváth Bálint', 1996, 'F', '6646 Tömörkény, Endrődi Sándor utca 47.'),
('balint1', 'balint1@gmail.com', 'Molnár Bálint', 1989, 'F', '9181 Kimle, Fő út 169.'),
('balint2', 'balint2@gmail.com', 'Vukasinovity Bálint', 1997, 'F', '2330 Dunaharaszti, Béke utca 7.'),
('balu', 'bálint.endresz@mail.hu', 'Endresz Bálint', 1976, 'F', '3973 Cigánd, Fő út 169.'),
('beata4', 'beáta.bagi@mail.hu', 'Bagi Beáta', 1994, 'N', '8477 Tüskevár, Felszabadulás utca 32.'),
('BEATRIXK', 'beatrix.kerényi@mail.hu', 'Kerényi Beatrix', 1972, 'N', '7396 Magyarszék, Kossuth Lajos utca 47/b.'),
('BEATRIXS', 'beatrix.szekendi@mail.hu', 'Szekendi Beatrix', 1981, 'N', '4060 Balmazújváros, Jászai tér 21.'),
('BELAF', 'BELAF@gmail.com', 'Farkas Béla', 1995, 'F', '5530 Vésztő, Petőfi Sándor utca 3.'),
('bence', 'bence@gmail.com', 'Győrffy Bence', 1987, 'F', '6900 Makó, Árpád utca 23.'),
('BENCEB', 'bence.bajusz@mail.hu', 'Bajusz Bence', 1973, 'F', '8391 Sármellék, Fő utca 56.'),
('bernadett1', 'bernadett1@gmail.com', 'Simon Bernadett', 1984, 'N', '2300 Ráckeve, Fő utca 108.'),
('bernadett2', 'bernadett.kovács@mail.hu', 'Kovács Bernadett', 1996, 'N', '4200 Hajdúszoboszló, Fő út 122.'),
('BERNADETTO', 'bernadett.orbán@mail.hu', 'Orbán Bernadett', 1987, 'N', '5085 Rákóczifalva, Arany János utca 1.'),
('bertalan', 'bertalan@gmail.com', 'Csiger Bertalan', 1977, 'F', '1192 Budapest, Fő út 169.'),
('brigitta', 'brigitta.székely@mail.hu', 'Székely Brigitta', 1978, 'N', '2462 Martonvásár, Fő utca 47.'),
('brigitta3', 'brigitta.pataki@mail.hu', 'Pataki Brigitta', 1991, 'N', '2730 Albertirsa, Rendeki utca 21.'),
('csongor3', 'csongor.nagymihály@mail.hu', 'Nagymihály Csongor', 1984, 'F', '9181 Kimle, Deák Ferenc út 5.'),
('dani', 'daniel@gmail.com', 'Vörös Dániel', 1986, 'F', '7150 Bonyhád, Dózsa György u. 1.'),
('daniel', 'dániel.rácz@mail.hu', 'Rácz Dániel', 1978, 'F', '9181 Kimle, Szabadság tér 9.'),
('daniel1', 'dániel.keszler@mail.hu', 'Keszler Dániel', 1969, 'F', '3580 Tiszaújváros, Kossuth Lajos utca 6.'),
('david', 'david@gmail.com', 'Ambrus Dávid', 1974, 'F', '1149 Budapest, Fő út 18.'),
('david1', 'david1@gmail.com', 'Sobják Dávid', 1970, 'F', '5083 Kengyel, Arany János utca 3.'),
('david4', 'david4@gmail.com', 'Berta Dávid', 1990, 'F', '3500 Miskolc, Balatoni út 12.'),
('debora', 'debóra.barna@mail.hu', 'Barna Debóra', 1976, 'N', '1155 Budapest, Fő út 169.'),
('denes', 'denes@gmail.com', 'Tömböly Dénes', 1975, 'F', '2400 Dunaújváros, Kossuth út 39.'),
('desdemona', 'mor.otto@mail.hu', 'Mór Ottó', 1968, 'F', '9200 Mosonmagyaróvár Fő u. 12.'),
('dora3', 'dóra.sarodi@mail.hu', 'Sarodi Dóra', 1995, 'N', '2855 Bokod, Fő út 18.'),
('edit', 'edit.bittmann@mail.hu', 'Bittmann Edit', 1984, 'N', '6077 Orgovány, Fő utca 60.'),
('emese', 'emese.kuruc@mail.hu', 'Kuruc Emese', 1989, 'N', '6700 Szeged, Rákóczi utca 67.'),
('eszter', 'eszter.molnár@mail.hu', 'Molnár Eszter', 1987, 'N', '6800 Hódmezővásárhely, Fő út 77.'),
('eszter2', 'eszter.balogh@mail.hu', 'Balogh Eszter', 1998, 'N', '6760 Kistelek, Kossuth utca 11.'),
('eszter4', 'eszter.fülöp@mail.hu', 'Fülöp Eszter', 1993, 'N', '3643 Dédestapolcsány, Kossuth Lajos utca 47/b.'),
('ESZTERE', 'eszter.érsek@mail.hu', 'Érsek Eszter', 1978, 'N', '6785 Pusztamérges, Kossuth Lajos utca 6.'),
('eva', 'eva@gmail.com', 'Enyedi Éva', 1967, 'N', '4231 Bököny, Petőfi utca 8.'),
('eva2', 'eva2@gmail.com', 'Perlinger Éva', 1971, 'N', '9653 Répcelak, Bécsi utca 82.'),
('EVAV', 'EVAV@gmail.com', 'Viktor Éva', 1980, 'N', '6913 Csanádpalota, Arany János utca 3.'),
('ferenc1', 'ferenc.orosz@mail.hu', 'Orosz Ferenc', 1983, 'F', '5061 Tiszasüly, Arany János utca 3.'),
('fruzsina4', 'fruzsina4@gmail.com', 'Frank Fruzsina', 1996, 'N', '9700 Szombathely, Szabadság utca 95.'),
('gabor1', 'gabor1@gmail.com', 'Köves Gábor', 1973, 'F', '6762 Sándorfalva, Árpád utca 23.'),
('gabor4', 'gábor.telek@mail.hu', 'Telek Gábor', 1987, 'F', '9071 Görbeháza, Fő út 169.'),
('GABORS', 'GABORS@gmail.com', 'Szöllősi Gábor', 1990, 'F', '3630 Putnok, Kossuth utca 27.'),
('gabriella1', 'gabriella1@gmail.com', 'Nagy Gabriella', 1982, 'N', '1077 Budapest, Dob utca 1'),
('gabriella10', 'gabriella10@gmail.com', 'Vida Gabriella', 1969, 'N', '2484 Agárd, Arany János utca 3.'),
('georgij', 'georgij.nyíri@mail.hu', 'Nyíri Georgij', 1983, 'F', '8391 Sármellék, Grassalkovich út 10.'),
('gusztav', 'gusztav@gmail.com', 'Bárci Gusztáv', 1967, 'F', '3643 Dédestapolcsány, Endrődi Sándor utca 47.'),
('GYONGYIK', 'gyöngyi.kornseé@mail.hu', 'Kornseé Gyöngyi', 1974, 'N', '8800 Nagykanizsa, Fő út 60.'),
('GYORGYO', 'GYORGYO@gmail.com', 'Oroszi György', 1980, 'F', '7220 Sarkad, Dózsa György u. 1.'),
('henrik3', 'henrik.nádudvari@mail.hu', 'Nádudvari Henrik', 1986, 'F', '1077 Budapest, Tanácsköztársaság tér 1.'),
('IBOLYAA', 'ibolya.andor@mail.hu', 'Andor Ibolya', 1983, 'N', '9023 Győr, Posta köz 2.'),
('ilona3', 'ilona3@gmail.com', 'Bosnyák Ilona', 1990, 'N', '2483 Gárdony, Posta köz 2.'),
('imre', 'imre.búza@mail.hu', 'Búza Imre', 1988, 'F', '9181 Kimle, Petőfi Sándor tér 1.'),
('imre1', 'imre.papp@mail.hu', 'Papp Imre', 1976, 'F', '1077 Budapest, Szolnoki út 8.'),
('istvan', 'istvan@gmail.com', 'Soós István', 1986, 'F', '2370 Dabas, Kossuth utca 27.'),
('istvan1', 'istván.vizi@mail.hu', 'Vizi István', 1997, 'F', '7086 Ozora, Rákóczi utca 1.'),
('ISTVANV', 'ISTVANV@gmail.com', 'Varga István', 1989, 'F', '6320 Solt, Hősök tere 11.'),
('janos3', 'janos3@gmail.com', 'Harangozó János', 1967, 'F', '8700 Marcali, Petőfi Sándor tér 1.'),
('JANOSG', 'JANOSG@gmail.com', 'Giliga János', 1975, 'F', '3300 Eger, Deák Ferenc út 5.'),
('JANOSP', 'JANOSP@gmail.com', 'Pálinkás János', 1984, 'F', '5920 Csorvás, Padragi út 158.'),
('jozsef', 'jozsef@gmail.com', 'Gergely József', 1985, 'F', '6050 Lajosmizse, Fő út 18.'),
('jozsef2', 'józsef.vajda@mail.hu', 'Vajda József', 1978, 'F', '6700 Szeged, Baracsi László utca 14.'),
('JOZSEFG', 'józsef.gyuris@mail.hu', 'Gyuris József', 1975, 'F', '2660 Balassagyarmat, Petőfi utca 1/2.'),
('JUDITH', 'JUDITH@gmail.com', 'Hídasi Judit', 1997, 'N', '2100 Gödöllő, Fő út 169.'),
('julia', 'julia@gmail.com', 'Tóth Júlia', 1993, 'N', '5310 Kisújszállás, Árpád utca 4.'),
('julia4', 'julia4@gmail.com', 'Nagy Júlia', 1985, 'N', '7000 Sárbogárd, Jászai tér 21.'),
('julianna4', 'julianna4@gmail.com', 'Szabó Julianna', 1990, 'N', '6700 Szeged, Kossuth Lajos utca 6.'),
('kanita12', 'anita.kiss12@gmail.com', 'Kiss Anita', 1975, 'N', '2230 Gyömrő Fő tér 3.'),
('kata', 'katalin.gondos@mail.hu', 'Gondos Katalin', 1968, 'N', '8237 Tihany, Kossuth Lajos utca 6.'),
('katalin', 'katalin.horváth@mail.hu', 'Horváth Katalin', 1968, 'N', '2424 Előszállás, Rákóczi út 200.'),
('katalin4', 'katalin4@gmail.com', 'Kertész Katalin', 1986, 'N', '2800 Tatabánya, Búvár utca 4.'),
('kati', 'katalin.zatykó@mail.hu', 'Zatykó Katalin', 1995, 'N', '7511 Ötvöskónyi, Kossuth Lajos utca 6.'),
('katka', 'katalin.kovács@mail.hu', 'Kovács Katalin', 1975, 'N', '8254 Kővágóörs, Petőfi utca 22.'),
('klaudia2', 'klaudia.bakó@mail.hu', 'Bakó Klaudia', 1982, 'N', '8254 Kővágóörs, Kossuth Lajos utca 6.'),
('kornel4', 'kornél.lukács@mail.hu', 'Lukács Kornél', 1975, 'F', '2053 Herceghalom, Bécsi utca 82.'),
('kristof4', 'kristof4@gmail.com', 'Poprádi Kristóf', 1984, 'F', '8220 Balatonalmádi, Mészáros utca 7.'),
('kriszti', 'kriszti@gmail.com', 'Horváth Krisztina', 1978, 'N', '6060 Tiszakécske, Árpád utca 4.'),
('krisztian4', 'krisztián.czérna@mail.hu', 'Czérna Krisztián', 1970, 'F', '1107 Budapest, Dózsa György utca 37.'),
('KRISZTIANM', 'KRISZTIANM@gmail.com', 'Mogyródi Krisztián', 1968, 'F', '9155 Lébény, Jászai tér 21.'),
('krisztina', 'krisztina@gmail.com', 'Szedlár Krisztina', 1979, 'N', '6646 Tömörkény, Arany János utca 1.'),
('krisztina1', 'krisztina.bori@mail.hu', 'Bori Krisztina', 1969, 'N', '2115 Vácszentlászló, Fő utca 47.'),
('KRISZTINAG', 'KRISZTINAG@gmail.com', 'Gyárfás Krisztina', 1987, 'N', '6762 Sándorfalva, Arany János utca 1.'),
('lajos', 'lajos.kiss@mail.hu', 'Kiss Lajos', 1978, 'F', '1077 Budapest, Dob utca 1'),
('lala', 'lajos.nagymihály@mail.hu', 'Nagymihály Lajos', 1997, 'F', '8638 Balatonlelle, Rákóczi út 200.'),
('laszlo1', 'lászló.farkas@mail.hu', 'Farkas László', 1967, 'F', '5200 Törökszentmiklós, Rendeki utca 21.'),
('laszlo2', 'lászló.móra@mail.hu', 'Móra László', 1975, 'F', '9970 Szentgotthárd, Petőfi utca 1/2.'),
('LASZLOA', 'lászló.antal@mail.hu', 'Antal László', 1969, 'F', '2484 Agárd, Bécsi utca 82.'),
('LASZLON', 'lászló.nagy@mail.hu', 'Nagy László', 1969, 'F', '1173 Budapest, Jászai tér 21.'),
('maria1', 'mária.baráth@mail.hu', 'Baráth Mária', 1995, 'N', '1047 Budapest, Posta köz 2.'),
('mark', 'márk.kispál@mail.hu', 'Kispál Márk', 1996, 'F', '1086 Budapest, Juhászföldi út 1.'),
('MARKH', 'márk.horváth@mail.hu', 'Horváth Márk', 1997, 'F', '4400 Nyíregyháza, Badacsonyi utca 12.'),
('marton', 'marton@gmail.com', 'Kalacsi Márton', 1989, 'F', '5137 Jászkisér, Fő út 169.'),
('MATEK', 'máté.koza@mail.hu', 'Koza Máté', 1997, 'F', '1011 Budapest, Központi telep 3.'),
('matyas2', 'matyas2@gmail.com', 'Botka Mátyás', 1972, 'F', '2700 Cegléd, Kossuth Lajos utca 6.'),
('MATYASS', 'mátyás.szilágyi@mail.hu', 'Szilágyi Mátyás', 1975, 'F', '9023 Győr, Kossuth Lajos utca 6.'),
('melissza', 'nagy_peter@indamail.hu', 'Nagy Péter', 1998, 'F', '6800 Hódmezővásárhely, Oldalkosát u. 1.'),
('MIHALYJ', 'mihály.juhász@mail.hu', 'Juhász Mihály', 1979, 'F', '6786 Ruzsa, Rákóczi utca 1.'),
('miklos2', 'miklos2@gmail.com', 'Gondos Miklós', 1995, 'F', '2100 Gödöllő, Árpád utca 23.'),
('MIKLOSB', 'miklós.balla@mail.hu', 'Balla Miklós', 1979, 'F', '4060 Balmazújváros, Szent István utca 2.'),
('MONIKAM', 'mónika.mohos@mail.hu', 'Mohos Mónika', 1974, 'N', '2241 Sülysáp, Baracsi László utca 14.'),
('NANDORF', 'nándor.fő@mail.hu', 'Fő Nándor', 1968, 'F', '5920 Csorvás, Bécsi utca 82.'),
('nikolett3', 'nikolett3@gmail.com', 'Horváth Nikolett', 1981, 'N', '1072 Budapest, Arany János utca 1.'),
('nikoletta4', 'nikoletta4@gmail.com', 'Kő Nikoletta', 1972, 'N', '5537 Zsadány, Fő út 18.'),
('NIKOLETTAT', 'nikoletta.tatár@mail.hu', 'Tatár Nikoletta', 1997, 'N', '1067 Budapest, Győri utca 12.'),
('norbert', 'norbert@gmail.com', 'Szűcs Norbert', 1969, 'F', '5071 Besenyszög, Győri utca 12.'),
('norbert2', 'norbert.hegedűs@mail.hu', 'Hegedűs Norbert', 1991, 'F', '2081 Piliscsaba, Rendeki utca 21.'),
('norbert4', 'norbert4@gmail.com', 'Mile Norbert', 1983, 'F', '3973 Cigánd, Bajcsy-Zsilinszky utca 4.'),
('norbert5', 'norbert5@gmail.com', 'Béres Norbert', 1975, 'F', '8640 Fonyód, Bajcsy-Zsilinszky utca 4.'),
('pal', 'pál.barabás@mail.hu', 'Barabás Pál', 1968, 'F', '1183 Budapest, Szolnoki út 8.'),
('peter1', 'peter1@gmail.com', 'Kozma Péter', 1976, 'F', '6913 Csanádpalota, Központi telep 3.'),
('peter2', 'peter2@gmail.com', 'Bozsó Péter', 1976, 'F', '4800 Vásárosnamény, Zombori út 2/A'),
('peter3', 'peter3@gmail.com', 'Szalai Péter', 1983, 'F', '1155 Budapest, Arany János utca 3.'),
('peter4', 'péter.bíró@mail.hu', 'Bíró Péter', 1985, 'F', '5137 Jászkisér, Rákóczi utca 67.'),
('PETERB', 'péter.berendi@mail.hu', 'Berendi Péter', 1969, 'F', '3980 Sátoraljaújhely, Vasút utca 4/10.'),
('polla', 'polla@gmail.com', 'Palágyi Polla', 1994, 'N', '2484 Agárd, Fő út 18.'),
('rajmond4', 'rajmond.rácz@mail.hu', 'Rácz Rajmond', 1993, 'F', '9155 Lébény, Petőfi utca 1/2.'),
('reka4', 'réka.szikszai@mail.hu', 'Szikszai Réka', 1969, 'N', '8254 Kővágóörs, Templom utca 73.'),
('RENATAK', 'renáta.kardos@mail.hu', 'Kardos Renáta', 1988, 'N', '7086 Ozora, Bécsi utca 82.'),
('RENATAS', 'RENATAS@gmail.com', 'Szirmai Renáta', 1991, 'N', '2053 Herceghalom, Kossuth utca 27.'),
('robert2', 'robert2@gmail.com', 'Patay Róbert', 1977, 'F', '2370 Dabas, Rákóczi utca 21.'),
('ROBERTI', 'róbert.iván@mail.hu', 'Iván Róbert', 1967, 'F', '2377 Örkény, Petőfi Sándor utca 3.'),
('ROBERTP', 'ROBERTP@gmail.com', 'Pásztor Róbert', 1972, 'F', '5137 Jászkisér, Ady Endre út 27.'),
('roland', 'roland@gmail.com', 'Tóth Roland', 1968, 'F', '2000 Szentendre, Fő út 169.'),
('roland1', 'roland.ferencz@mail.hu', 'Ferencz Roland', 1985, 'F', '2424 Előszállás, Fő út 169.'),
('roza2', 'roza2@gmail.com', 'Bucskó Róza', 1988, 'N', '5661 Újkígyós, Arany János utca 3.'),
('sandor', 'sandor@gmail.com', 'Karasz Sándor', 1970, 'F', '8283 Káptalantóti, Kossuth Lajos utca 1/a.'),
('sandor3', 'sándor.farkas@mail.hu', 'Farkas Sándor', 1989, 'F', '8640 Fonyód, Tanácsköztársaság tér 1.'),
('sandor4', 'sandor4@gmail.com', 'Nagy Sándor', 1997, 'F', '4600 Kisvárda, Fő utca 47.'),
('sara', 'sára.farkas@mail.hu', 'Farkas Sára', 1973, 'N', '5940 Tótkomlós, Felszabadulás utca 32.'),
('SEBASTIANF', 'SEBASTIANF@gmail.com', 'Foltényi Sebastián', 1992, 'F', '7960 Sellye, Grassalkovich út 10.'),
('sebestyen', 'sebestyen@gmail.com', 'Rab Sebestyén', 1992, 'F', '7130 Tolna, Központi telep 3.'),
('szabolcs', 'szabolcs.bodor@mail.hu', 'Bodor Szabolcs', 1990, 'F', '6786 Ruzsa, Ady Endre út 27.'),
('SZABOLCSM', 'szabolcs.miklós@mail.hu', 'Miklós Szabolcs', 1980, 'F', '1102 Budapest, Fő út 169.'),
('SZILARDS', 'szilárd.szalai@mail.hu', 'Szalai Szilárd', 1967, 'F', '1077 Budapest, Fő út 18.'),
('szilvia1', 'szilvia.tari@mail.hu', 'Tari Szilvia', 1971, 'N', '6080 Szabadszállás, Bécsi utca 82.'),
('tamara2', 'tamara.miklós@mail.hu', 'Miklós Tamara', 1980, 'N', '3910 Tokaj, Kossuth út 39.'),
('tamas', 'tamás.antal@mail.hu', 'Antal Tamás', 1984, 'F', '4440 Tiszavasvári, Posta köz 2.'),
('TAMASF', 'TAMASF@gmail.com', 'Fényes Tamás', 1997, 'F', '9023 Győr, Arany János utca 1.'),
('tibor', 'tibor.gombos@mail.hu', 'Gombos Tibor', 1993, 'F', '7100 Szekszárd, Kossuth utca 77.'),
('tibor2', 'tibor2@gmail.com', 'Dániel Tibor', 1985, 'F', '6646 Tömörkény, Árpád utca 23.'),
('tihamer', 'tihamér.kazy@mail.hu', 'Kazy Tihamér', 1991, 'F', '2370 Dabas, Fő utca 60.'),
('timea', 'timea@gmail.com', 'Papós Tímea', 1996, 'N', '1035 Budapest,  Kossuth út 77.'),
('timea2', 'tímea.dusha@mail.hu', 'Dusha Tímea', 1975, 'N', '5920 Csorvás, Kossuth utca 8.'),
('tunde', 'tunde@gmail.com', 'Turcsik Tünde', 1974, 'N', '7130 Tolna, Fő út 122.'),
('valentin', 'valentin.feró@mail.hu', 'Feró Valentin', 1986, 'F', '3895 Gönc, Búvár utca 4.'),
('veronika4', 'veronika4@gmail.com', 'Tankó Veronika', 1983, 'N', '6412 Balotaszállás, Rendeki utca 21.'),
('VIKTORIAU', 'viktoria.urbán@mail.hu', 'Urbán Viktoria', 1996, 'N', '3860 Encs, Népboltsor  2.'),
('VIKTORK', 'viktor.keresztúri@mail.hu', 'Keresztúri Viktor', 1989, 'F', '2532 Tokodaltáró, Nagy Lajos tér 4.'),
('vivien3', 'vivien3@gmail.com', 'Boros Vivien', 1991, 'N', '2117 Isaszeg, Fő út 122.'),
('zoltan', 'zoltán.fodor@mail.hu', 'Fodor Zoltán', 1979, 'F', '3441 Mezőkeresztes, Fő utca 23.'),
('zoltan4', 'zoltan4@gmail.com', 'Barna Zoltán', 1986, 'F', '8313 Balatongyörök, Jászai tér 21.'),
('ZOLTANP', 'zoltán.pintér@mail.hu', 'Pintér Zoltán', 1977, 'F', '6050 Lajosmizse, Fő út 18.'),
('ZOLTANT', 'zoltán.tóth@mail.hu', 'Tóth Zoltán', 1985, 'F', '4244 Újfehértó, Posta köz 2.'),
('zsofi1', 'zsofi1@gmail.com', 'Molnár Zsófi', 1983, 'N', '2730 Albertirsa, Árpád utca 23.'),
('zsolt1', 'zsolt.pulai@mail.hu', 'Pulai Zsolt', 1988, 'F', '8391 Sármellék, Fő utca 60.'),
('ZSOLTJ', 'ZSOLTJ@gmail.com', 'Józsa Zsolt', 1983, 'F', '8315 Gyenesdiás, Bajcsy-Zsilinszky utca 4.'),
('zsuzsa', 'zsuzsanna@gmail.com', 'Pusztai Zsuzsanna', 1980, 'N', '6783 Ásotthalom, Badacsonyi utca 12.'),
('zsuzsa3', 'zsuzsa.varsányi@mail.hu', 'Varsányi Zsuzsa', 1979, 'N', '8600 Siófok, Árpád utca 4.'),
('zsuzsanna', 'zsuzsanna.barta@mail.hu', 'Barta Zsuzsanna', 1994, 'N', '4172 Biharnagybajom, Dózsa György utca 37.'),
('ZSUZSAV', 'zsuzsa.vajda@mail.hu', 'Vajda Zsuzsa', 1976, 'N', '6786 Ruzsa, Kossuth utca 77.');

/*Felhasználó létrehozása*/

CREATE USER MaszkFelhasznalo WITHOUT Login;
GRANT SELECT ON Ugyfel TO MaszkFelhasznalo

/*SELECT parancs végrehajtása*/

EXECUTE AS User= 'MaszkFelhasznalo';
SELECT * FROM Ugyfel
REVERT