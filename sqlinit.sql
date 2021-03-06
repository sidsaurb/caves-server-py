drop database if exists caves;
create database caves;
use caves;

-- All the passwords are assumed to be MD5 hashes

create table cred (Team varchar(20) not null, Password char(32) not null, currentlevel Integer not null default 0, WandFound Integer not null, SpiritFreed Integer not null,  primary key(Team));

create table level1 (Team varchar(20) not null, Challenge varchar(512) not null, Password varchar(50) not null, CompletedAt Datetime default null, primary key(Team));

create table level2 (Team varchar(20) not null, Challenge varchar(512) not null, Password varchar(50) not null, CompletedAt Datetime default null, primary key(Team));

create table level3 (Team varchar(20) not null, Challenge varchar(512) not null, Password varchar(50) not null, CompletedAt Datetime default null, primary key(Team));

create table level4 (Team varchar(20) not null, Challenge varchar(50) not null, Password varchar(50) not null, DESKey char(16) not null, CompletedAt Datetime default null, primary key(Team));

create table level5 (Team varchar(20) not null, Challenge varchar(50) not null, Password varchar(50) not null, AMat varchar(300) not null, EVec varchar(60) not null, CompletedAt Datetime default null,  primary key(Team));

create table level6 (Team varchar(20) not null, Challenge varchar(350) not null, Password varchar(50) not null, n varchar(350), p varchar(350), q varchar(350), d varchar(350), e varchar(350), CompletedAt Datetime default null, primary key(Team));

create table level7 (Team varchar(20) not null, Challenge varchar(250) not null, Password varchar(50) not null, CompletedAt Datetime default null, primary key(Team));

insert into cred values ("a", MD5("a"), 0, 0, 0);

insert into level1 values ("a", "Mewa wa mey twsam iepjoys gt mey ipbya. Pa xgn iph ayy, meysy wa hgmewhr gt whmysyam wh mey iepjoys. Agjy gt mey kpmys iepjoysa vwkk oy jgsy whmysyamwhr meph mewa ghy, hg cgly! Mey iguy nayu tgs mewa jyaapry wa p awjfky anoamwmnmwgh iwfeys wh vewie uwrwma epby oyyh aewtmyu ox 8 fkpiya. Mey fpaavgsu wa rwbyh oykgv, vwmegnm mey dngmya.\n\n\nuhXhQ03nfrv", MD5("level1"), null);

insert into level2 values ("a", "Lg ccud qh urg tgay ejbwdkt, wmgtf su bgud nkudnk lrd vjfbg. Yrhfm qvd vng sfuuxytj \"vkj_ecwo_ogp_ej_rnfkukf\" wt iq urtuwjm. Ocz iqa jdag vio uzthsivi pqx vkj pgyd encpggt. Uy hopg yjg fhkz arz hkscv ckoq pgfn vu wwygt nkioe zttft djkth.", MD5("level2"), null);

insert into level3 values ("a", "qmnjvsa nv wewc flct vprj tj tvvplvl fv xja vqildhc xmlnvc nacyclpa fc gyt vfvw. fv wgqyp, pqq pqcs y wsq rx qmnjvafy cgv tlvhf cw tyl aeuq fv xja tkbv cqnsqs. lhf avawnc cv eas fuqb qvq tc yllrqr xxwa cfy. psdc uqf avrqc gefq pyat trac xwv taa wwd dv eas flcbq. vd trawm vupq quw x decgqcwt, yq yafl vlqs yqkawq! sn fn wgafldw, gmavh qql vfhnprlw\n\n\nxud_ptobo_tm_kmly", MD5("level3"), null);

insert into level4 values("a", "1234567890abcdef1234567890abcdef", MD5("level4"), "3AF0C8E264B2E210", null);

insert into level5 values("a", "1234567890abcdef1234567890abcdef", MD5("level5"), "84 0 0 0 0 0 0 0;112 70 0 0 0 0 0 0;9 31 43 0 0 0 0 0;102 20 12 12 0 0 0 0;111 60 1 111 112 0 0 0;19 47 19 50 98 11 0 0;12 123 19 102 25 92 27 0;76 3 72 27 13 72 3 38", "1 5 98 45 125 12 49 37", null);

insert into level6 values("a", "111532591028106883354404771783497711072869750113114662172410483273271241168316387963919872754547680899061779997073154137130657239973489719400212666379475354732740240026445298439419241528341468407883799590985551515903597054458165373900832998648656465545571438024335771288908188296842407446261294583663478231544", MD5("level6"), "115291869999264651780989115326559208448164531201341297245626791540867302122548364924926389184428498861924925320784787388613242271566781654811465357895875131740018970696984922559867978584676000788613793121078808636770867662880809585616883118218741191327451273332827802855405418746268833615561619725581941320703", "165", "541", "45", "45", null);

insert into level7 values("a", "12 25 45 68 98 56 25 69 85 41 25 63 25 65 89 54 12 56 58 45 12 55 33 22 45 65 89 45 12 55 66 55 45", MD5("level7"), null);



insert into cred values ("b", MD5("b"), 7, 1, 1);

insert into level1 values ("b", "Mewa wa mey twsam iepjoys gt mey ipbya. Pa xgn iph ayy, meysy wa hgmewhr gt whmysyam wh mey iepjoys. Agjy gt mey kpmys iepjoysa vwkk oy jgsy whmysyamwhr meph mewa ghy, hg cgly! Mey iguy nayu tgs mewa jyaapry wa p awjfky anoamwmnmwgh iwfeys wh vewie uwrwma epby oyyh aewtmyu ox 8 fkpiya. Mey fpaavgsu wa rwbyh oykgv, vwmegnm mey dngmya.\n\n\nuhXhQ03nfrv", MD5("level1b"), null);

insert into level2 values ("b", "Lg ccud qh urg tgay ejbwdkt, wmgtf su bgud nkudnk lrd vjfbg. Yrhfm qvd vng sfuuxytj \"vkj_ecwo_ogp_ej_rnfkukf\" wt iq urtuwjm. Ocz iqa jdag vio uzthsivi pqx vkj pgyd encpggt. Uy hopg yjg fhkz arz hkscv ckoq pgfn vu wwygt nkioe zttft djkth.", MD5("level2b"), null);

insert into level3 values ("b", "qmnjvsa nv wewc flct vprj tj tvvplvl fv xja vqildhc xmlnvc nacyclpa fc gyt vfvw. fv wgqyp, pqq pqcs y wsq rx qmnjvafy cgv tlvhf cw tyl aeuq fv xja tkbv cqnsqs. lhf avawnc cv eas fuqb qvq tc yllrqr xxwa cfy. psdc uqf avrqc gefq pyat trac xwv taa wwd dv eas flcbq. vd trawm vupq quw x decgqcwt, yq yafl vlqs yqkawq! sn fn wgafldw, gmavh qql vfhnprlw\n\n\nxud_ptobo_tm_kmly", MD5("level3b"), null);

insert into level4 values("b", "1234567890abcdef1234567890abcdef", MD5("level4b"), "9AE0A1E2BCB2E260", null);

insert into level5 values("b", "1234567890abcdef1234567890abcdef", MD5("level5b"), "84 0 0 0 0 0 0 0;112 70 0 0 0 0 0 0;9 31 43 0 0 0 0 0;102 20 12 12 0 0 0 0;111 60 1 111 112 0 0 0;19 47 120 15 98 11 0 0;12 111 19 105 75 92 27 0;76 3 72 27 13 85 3 38", "1 5 9 54 125 12 49 37", null);

insert into level6 values("b", "111532591028106883354404771783497711072869750113114662172410483273271241168316387963919872754547680899061779997073154137130657239973489719400212666379475354732740240026445298439419241528341468407883799590985551515903597054458165373900832998648656465545571438024335771288908188296842407446261294583663478231544", MD5("level6b"), "115291869999264651780989115326559208448164531201341297245626791540867302122548364924926389184428498861924925320784787388613242271566781654811465357895875131740018970696984922559867978584676000788613793121078808636770867662880809585616883118218741191327451273332827802855405418746268833615561619725581941320703", "165", "541", "45", "45", null);

insert into level7 values("b", "12 25 45 68 98 56 25 120 85 10 25 63 25 65 89 54 12 56 58 45 12 55 33 22 45 65 89 45 12 55 66 55 45", MD5("level7b"), null);
