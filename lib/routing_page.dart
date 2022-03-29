import 'package:application_1/grouppages/blues_page.dart';
import 'package:application_1/grouppages/country_page.dart';
import 'package:application_1/grouppages/metal_page.dart';
import 'package:application_1/grouppages/punk_page.dart';
import 'package:application_1/grouppages/rap_page.dart';
import 'package:flutter/material.dart';
import 'grouppages/rock_page.dart';

class Pages extends StatelessWidget {
  Pages({Key? key, @required this.pagename}) : super(key: key);

  final String? pagename;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: ((() {
              if (pagename == "Punk") {
                return Padding(
                    padding: EdgeInsets.only(left: 57),
                    child: Text(
                      "Social Distortion",
                      style: TextStyle(color: Colors.redAccent),
                    ));
              }
              if (pagename == "Punk(2)") {
                return Padding(
                    padding: EdgeInsets.only(left: 75),
                    child: Text(
                      "The Ramones",
                      style: TextStyle(color: Colors.redAccent),
                    ));
              }
              if (pagename == "Punk(3)") {
                return Padding(
                    padding: EdgeInsets.only(left: 75),
                    child: Text(
                      "Sex Pistols",
                      style: TextStyle(color: Colors.black),
                    ));
              }
              if (pagename == "Country") {
                return Padding(
                    padding: EdgeInsets.only(left: 75),
                    child: Text(
                      "A.R.C. Angels",
                      style: TextStyle(color: Colors.black),
                    ));
              }
              if (pagename == "Country(2)") {
                return Padding(
                    padding: EdgeInsets.only(left: 80),
                    child: Text(
                      "Aerosmith",
                      style: TextStyle(color: Colors.black),
                    ));
              }
              if (pagename == "Country(3)") {
                return Padding(
                    padding: EdgeInsets.only(left: 70),
                    child: Text(
                      "Allthemwitches",
                      style: TextStyle(color: Colors.black),
                    ));
              }
              if (pagename == "Blues") {
                return Padding(
                    padding: EdgeInsets.only(left: 75),
                    child: Text(
                      "Blue Blues Band",
                      style: TextStyle(color: Colors.black),
                    ));
              }
              if (pagename == "Blues(2)") {
                return Padding(
                    padding: EdgeInsets.only(left: 90),
                    child: Text(
                      "B.B. King",
                      style: TextStyle(color: Colors.black),
                    ));
              }
              if (pagename == "Blues(3)") {
                return Padding(
                    padding: EdgeInsets.only(left: 100),
                    child: Text(
                      "ZZ Top",
                      style: TextStyle(color: Colors.black),
                    ));
              }
              if (pagename == "Metal") {
                return Padding(
                    padding: EdgeInsets.only(left: 75),
                    child: Text(
                      "Iron Maiden",
                      style: TextStyle(color: Colors.red[500]),
                    ));
              }
              if (pagename == "Metal(2)") {
                return Padding(
                    padding: EdgeInsets.only(left: 75),
                    child: Text(
                      "Judas Priest",
                      style: TextStyle(color: Colors.red[800]),
                    ));
              }
              if (pagename == "Metal(3)") {
                return Padding(
                    padding: EdgeInsets.only(left: 75),
                    child: Text(
                      "Black Sabbath",
                      style: TextStyle(color: Colors.purple),
                    ));
              }
              if (pagename == "Rock") {
                return Padding(
                    padding: EdgeInsets.only(left: 68),
                    child: Text(
                      "Greta Van Fleet",
                      style: TextStyle(color: Colors.black),
                    ));
              }
              if (pagename == "Rock(2)") {
                return Padding(
                    padding: EdgeInsets.only(left: 75),
                    child: Text(
                      "Led Zeppelin",
                      style: TextStyle(color: Colors.black),
                    ));
              }
              if (pagename == "Rock(3)") {
                return Padding(
                    padding: EdgeInsets.only(left: 75),
                    child: Text(
                      "Guns N' Roses",
                      style: TextStyle(color: Colors.black),
                    ));
              }

              if (pagename == "Rap") {
                return Padding(
                    padding: EdgeInsets.only(left: 95),
                    child: Text(
                      "Cartel",
                      style: TextStyle(color: Colors.black),
                    ));
              }
              if (pagename == "Rap(2)") {
                return Padding(
                    padding: EdgeInsets.only(left: 75),
                    child: Text(
                      "Sansar Salvo",
                      style: TextStyle(color: Colors.black),
                    ));
              }
              if (pagename == "Rap(3)") {
                return Padding(
                    padding: EdgeInsets.only(left: 90),
                    child: Text(
                      "Eminem",
                      style: TextStyle(color: Colors.black),
                    ));
              }
            })()),
            elevation: 0,
            flexibleSpace: ((() {
              if (pagename == "Punk(3)") {
                return Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Color(0xffb20a2c),
                      Color(0xfffffbd5),
                    ]),
                  ),
                );
              }
              if (pagename == "Punk" || pagename == "Punk(2)") {
                return Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Color(0xff000000),
                      Color(0xff434343),
                    ]),
                  ),
                );
              }
              if (pagename == "Country" ||
                  pagename == "Country(2)" ||
                  pagename == "Country(3)") {
                return Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xff1e130c), Color(0xff9a8478)],
                    ),
                  ),
                );
              }
              if (pagename == "Rap" ||
                  pagename == "Rap(2)" ||
                  pagename == "Rap(3)") {
                return Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.green, Colors.greenAccent]),
                  ),
                );
              }
              if (pagename == "Blues" ||
                  pagename == "Blues(2)" ||
                  pagename == "Blues(3)") {
                return Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Color(0xff0B486B), Color(0xffF56217)]),
                  ),
                );
              }
            })()),
            backgroundColor: ((() {
              if (pagename == "Metal" ||
                  pagename == "Metal(2)" ||
                  pagename == "Metal(3)") {
                return Colors.black;
              }
              if (pagename == "Rock" ||
                  pagename == "Rock(2)" ||
                  pagename == "Rock(3)") {
                return Colors.white;
              }
            })()),
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: ((() {
                  if (pagename == "Metal" ||
                      pagename == "Punk" ||
                      pagename == "Punk(2)" ||
                      pagename == "Metal(2)" ||
                      pagename == "Metal(3)") {
                    return Icon(Icons.arrow_back_ios, color: Colors.white);
                  } else {
                    return Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                    );
                  }
                })())),
          ),
          body: ((() {
            if (pagename == "Rock") {
              return RockTemplate(
                data1:
                    "Greta Van Fleet, 2012'de kurulan Michigan, Frankenmuth'tan bir Amerikan rock grubudur. Grup; Kiszka kardeşler Josh (vokal), Jake (gitar) ve Sam (bas gitar) ve Danny Wagner (davul) üyelerinden oluşmuştur.",
                data2:
                    "İlk stüdyo EP'leri Black Smoke Rising'i yayınladılar . İlk single'ları  Highway Tune , Eylül 2017'de Billboard US Mainstream Rock ve Active Rock listelerinde üst üste dört hafta zirvede kaldı.",
                data3:
                    "İlk tam uzunluktaki stüdyo albümleri Anthem of the Peaceful Army, 19 Ekim 2018'de yayınlandı ve piyasaya sürüldükten sonraki ilk hafta Billboard Rock Albüm listelerinde zirveye ulaştı. ",
                data4:
                    "Greta Van Fleet, genellikle Led Zeppelin ile karşılaştırılır. Grubun gitaristi Jake; Jimmy Page'in ne yaptığını, düşündüğünü bildiğim noktaya kadar gerçekten yoğun bir şekilde Jimmy Page'i incelediği bir yıl geçirdiğini söylemiştir.",
                data5:
                    "Greta Van Fleet'in müziği hard rock ve blues rock olarak kategorize edildi. Dört üyenin hepsi blues üzerinden bağlanmış olsa da, her birinin kendi müzik zevkleri var: Jake, rock and roll'a yöneliyor, Sam cazı seviyor, Danny Foklorik Müziği tercih ediyor ve Josh dünya müziğini seviyor",
                groupname: "greta",
              );
            }
            if (pagename == "Rock(2)") {
              return RockTemplate(
                groupname: "ledzep",
                data1:
                    "Led Zeppelin, 1968 yılında Londra'da kurulan İngiliz rock grubudur. Led Zeppelin, gitarda Jimmy Page, davulda John Bonham, bas gitarda John Paul Jones ve vokalist olarak da Robert Plant tarafından dört kişilik bir grup olarak kurulmuştur.",
                data2:
                    "Grup daha çok Heavy Metal müzik tarzının öncülerinden biri olarak tanınsa da yaptığı müzikle Blues, Rockabilly de dahil olmak üzere birçok farklı popüler müzik türünü aynı potada eritti. Popüler ve kolay erişilebilir kalmakla beraber istikrarlı bir şekilde yenilikçi olunabileceğini de kanıtlamışlardır. ",
                data3:
                    "Grup, bugüne kadar 111 milyonu Amerika'da olmak üzere dünya genelinde toplam 300 milyonun üzerinde albüm satışına ulaşmıştır (Amerika'da satış sıralamasında The Beatles'ın ardından ikinci sıradadır).",
                data4:
                    "Led Zeppelin, Rolling Stone dergisi tarafından tartışmasız rock tarihinin en uzun soluklu gruplarından biri olarak tanımlanmıştır.",
                data5:
                    "Led Zeppelin'in adı bulunmayan dördüncü albümünün kapağında grup elemanlarının imza olarak kullandığı dört mistik şekil : John Bonham birbirine bağlı üç çemberden oluşan şekli; John Paul Jones özgüven ve ustalığı tasvir eden Kelt şeklini; Robert Plant Mu uygarlığının bir şeklini; ve Jimmy Page de “Zoso” olarak söylenen gizemli şekli.",
              );
            }
            if (pagename == "Rock(3)") {
              return RockTemplate(
                data1:
                    "Guns N' Roses, 1985 yılında Los Angeles, Kaliforniya'da kurulmuş Amerikalı bir rock müzik grubudur. Axl Rose, Slash, Izzy Stradlin, Duff McKagan, ve Steven Adler'dan oluşan klasik kadrosu ile 1986 yılında Geffen Records ile kontrat imzalayan grubun klasik kadrosunda Axl Rose, Slash ve Duff McKagan günümüzde de grupta yer almaktadır.",
                data2:
                    "Grubun ilk albümü Appetite For Destruction 1987 yılında satışa sunuldu. Yayınlanışının üzerinden bir yıl geçtikten sonra hem albüm hem de albümden yayınlanan ikinci single Sweet Child o' Mine Amerikan müzik listelerinde 1 numaraya kadar yükseldi. Günümüze dek tüm dünyada 28 milyon sadece ABD'de ise 18 milyon satan albüm ABD'de bir gruba ya da bir sanatçıya ait en çok satan ilk albüm olma özelliğini taşımaktadır.",
                data3:
                    "1988 yılında dünya turnesine devam eden grup bu yılın sonlarına doğru GN'R LIES albümünü yine Geffen müzik'ten piyasaya çıkardılar. Albüm Live Like A Suicide albümünden 4 şarkıyı ve yeni 4 akustik şarkıyı barındırmaktaydı. Bu albümde de yine Patience ve I Used To Love Her gibi büyük hitler vardı. Albüm sadece Amerika'da 5 milyon sattı.",
                data4:
                    "Milyonlarca albüm satıp kapalı gişe konserler veren grup, artık medyanın odak noktasıydı. GNR müzikal başarılarıyla olduğu kadar skandallarıyla da artık zirvede yer alıyordu.",
                data5:
                    "989'da grup Amerikan Müzik ödülleri'nde en iyi Hard Rock albümü (Appetite For Destruction) ve en iyi hard rock şarkısı (Paradise City) ödüllerini kazandı.",
                groupname: "gunsnroses",
              );
            }
            if (pagename == "Rap") {
              return RapTemplate(
                  groupname: "cartel",
                  data:
                      "   Grup, Almanya'da üç ayrı rap grubun bir araya gelmesiyle doğdu. Cartel'i oluşturan topluluklar, Karakan, Erci E ve Cinai Şebeke'ydi. Karakan'ın üyeleri Alper Ağa ve Kâbus Kerim iken, Cinai Şebeke ise M. Ali (Emali), Babalu (Ichibaba), Olcay (Ole) ve İnceefe (Çelik bilek Apo)'den oluşuyordu. Grubun Cartel adındaki ilk albümü önce Polygram Music tarafından Avrupa'da yayınlandı. Kısa zamanda Avrupa'da medyanın dikkatini üzerine çeken grup hakkında MTV müzik kanalında röportajlar yayınlandı."
                      "Cartel, 1995 yılında Almanya'da kurulan büyük ilgi toplayan bir Türk rap grubu. Grup, Almanya'da iki ayrı rap grubu ve hepsinden bağımsız olan Erci E'nin bir araya gelmesiyle doğdu. Grubun Cartel adındaki albümü ilk önce Avrupa'da yayınlandı. Kısa zamanda Avrupa'da medyanın dikkatini çeken grup hakkında MTV müzik kanalında röportajlar yayınlandı. Türk müziğinin sesini dünyaya duyuran nadir topluluklardan birisi olmayı başaran grup Türkiye'de de büyük yankı uyandırdı."
                      "Şu ana kadar İstanbul'da BJK İnönü Stadyumu'nda konser veren ilk ve tek Türk Rap müzik grubudur. Radyo ve TV kuruluşları ilk haftada satılan ilk 100.000 CD’yi “Altın Kaset” ve 250.000 Cd’yi de “Çifte Platin” ödülüne layık gördüler ve popüler durumunu daha iyi gösterdiler."
                      "Cartel en başarılı Türkçe Rap grubu olarak bilinir ve söylenen şarkılar Türkçe, Almanca, İngilizce ve İspanyolca olduğu için söz zenginliğini bir kez daha gösterir. Cartelin CD'si Türkiye'de çıkmadan önce, Almanya'da 29.000 satmıştır."
                      "Türkiye'de toplam 543.000 adet satmıştır ve Türkçe Rap tarihine en çok satan grup olarak geçmiştir. ");
            }
            if (pagename == "Rap(2)") {
              return RapTemplate(
                  groupname: "sansarsalvo",
                  data:
                      "Sansar Salvo, ya da gerçek adıyla Ekincan Arslan (d. 18 Ağustos 1989; Kadıköy, İstanbul, Türkiye), Türk rap sanatçısı ve söz yazarı."
                      "2009 yılında Seremoni Efendisi albümünü yayınlayan sanatçı, 2010 yılında kansere yakalanmıştır. 2013 yılına kadar tedavi gören Sansar Salvo, yine aynı yıl 24. Şarjör albümünü piyasaya sürerek müzik hayatına kaldığı yerden devam etmiştir."
                      "2019 yılında Kaan Boşnak ile Koptu Kayış isimli bir parça çıkartmıştır.");
            }
            if (pagename == "Rap(3)") {
              return RapTemplate(
                  groupname: "eminem",
                  data:
                      "Marshall Bruce Mathers III (d. 17 Ekim 1972), meşhur olduğu sahne adıyla Eminem ya da ikinci kişiliği Slim Shady, Akademi ve Grammy ödüllü Amerikalı rapçi, yapımcı, şarkıcı ve oyuncudur."
                      "1999 yılında çıkardığı ilk ciddi albümü The Slim Shady LP ile şöhrete ulaştı ve bu albümle En İyi Rap Albümü dalında Grammy Ödülü kazandı. Bir sonraki albümü The Marshall Mathers LP, en hızlı satan rap albümü olarak tarihe geçti."
                      " Bu albümle yakaladığı başarıyla kendi plak şirketi Shady Records'u kuran Eminem, arkadaşlarıyla birlikte planladığı hiphop grubu projesi D12'i de hayata geçirme fırsatı buldu."
                      "The Marshall Mathers LP ve üçüncü albümü The Eminem Show ile de Grammy ödüllerini başkasına kaptırmayan Eminem, 2002 yılında başrol oynadığı 8 Mile filmi için yaptığı Lose Yourself şarkısıyla da En İyi Şarkı dalında ödül kazandı. Tüm zamanların en iyi rapçilerinden biri olan Eminem, 2005'te çıktığı turlardan sonra bir duraksama dönemine girdi. Ancak daha sonra çalışmalarına devam eden sanatçı, 19 Mayıs 2009'da, 2004'ten beri ilk albümü olan Relapse'i çıkarttı.");
            }
            if (pagename == "Metal") {
              return MetalTemplate(
                data: "Iron Maiden, 1975 yılında Londra'da kurulmuş bir İngiliz heavy metal grubudur. Grup basçı Steve Harris tarafından kurulmuştur. Bugüne kadar 16 stüdyo albümü, 11 canlı albüm, 4 EP ve 7 derleme albüm olmak üzere toplamda 38 albüm yayımlayan grubun, toplam albüm satışları kesin olarak bilinmemekle birlikte bu sayının 100 milyonun üzerinde olduğu düşünülmektedir."
                    "Grup çeşitli kadro değişikliklerinin ardından kendi adını taşıyan ilk albümü Iron Maiden'ı 1980 yılında çıkarmıştır. Solist Bruce Dickinson'ın gruba katılmasının ardından 1982 yılında yayımladıkları The Number of the Beast adlı albümleriyle Iron Maiden dünya çapında şöhrete erişmiş ve 1980'ler boyunca peş peşe çıkardıkları albümlerle büyük başarı kazanmıştır. 1993 yılında solist Dickinson gruptan ayrılmış ve yerine Blaze Bayley gelmiştir. Bu dönemde grubun albüm satışları belirgin şekilde düşmüştür. Dickinson ve 1989 yılında gruptan ayrılan gitarist Adrian Smith 1999'da kadroya yeniden dahil olmuşlardır. 2021'de yayınladıkları son stüdyo albümleri Senjutsu, Billboard 200'de üçüncü, on üç ülkede de birinci sıraya yükselmiştir.",
                groupname: "ironmaiden",
                name1: "Dave Murray",
                name2: "Adrian Smith",
                name3: "Steve Harris",
              );
            }
            if (pagename == "Metal(2)") {
              return MetalTemplate(
                data: "Grubun 1990 yılında çıkardığı Painkiller albümünden sonra, 1992 yılında Rob Halford gruptan ayrılmış ve onun yerine Ripper Owens geçmiştir. Ripper'ın kendi yorumunu kattığı şarkılar her ne kadar belli bir kesimi memnun etse de Halford hayranları bu değişikliği iyi karşılamamıştır. Diğer albümlere göre daha küçük bir İngiliz plak şirketi ile yapılan anlaşma ile 1997 yılında Jugulator albümü çıkmıştır. Ripper'ın etkileyici ve Halford'a göre daha yoğun vokali olmasına karşın, grubun ilk vokalini arayan kesim fazladır. Ripper Owens, gruba uyum sağlayamayarak gruptan ayrılmıştır. Owens'in, Judas Priest şarkıları çalan bir fan grubundan, hayranı olduğu grubun frontmani olması Rockstar adlı filme esin kaynağı olmuştur. Filmde yaratılan kurgusal grup, bazı metal ve Judas Priest fanları tarafından kült konumuna yükseltilmiştir."
                    "Rob Halford'un kadroya geri dönüşüyle, 2005'te, Angel Of Retribution albümünü yayınlamıştır. Grup, Ripper Owens yıllarının ardından, Painkiller'a yakın bir albüm çıkartarak büyük başarı sağlamıştır. Grup aynı kadroyla 2008 yılında da 23 şarkıdan oluşan Nostradamus adlı albümü piyasaya sürmüştür.",
                groupname: "judas",
                name1: "Glenn Tipton",
                name2: "Rob Halford",
                name3: "Ian Hill",
              );
            }
            if (pagename == "Metal(3)") {
              return MetalTemplate(
                data: "Black Sabbath; 1968 yılında Aston, Birmingham'da Tony Iommi (gitar), Ozzy Osbourne (vokal), Geezer Butler (bass) ve Bill Ward (davul) tarafından kurulan İngiliz rock grubudur ve çoğunlukla heavy metal müziğin öncüsü olarak kabul edilir. Grup; Black Sabbath (1970), Paranoid (1970) ve Master of Reality (1971) albümleriyle heavy metal tarzının ortaya çıkmasını ve tanımlanmasını sağlamıştır."
                    "Grup birçok üye değişimi yaşamış olmasına rağmen, yıllar boyunca grubun tek değişmeyen üyesi Tony Iommi olmuştur. Tony Iommi ve Bill Ward 1967 ve 1968'li yıllarda Mythology adlı grupta, Ozzy Osbourne ve Geezer Butler ise Rare Breed’de çalıyordu."
                    "aha sonra dördü birleşip Polka Tulk Blues isimli bir grup kurdular, ismi değişip Earth oldu. Butler bir gün sokakta Boris Karloff’un oynadığı Black Sabbath filmini izlemek için sıraya giren insanları gördü ve insanların korkmak için bir filme gidiyorlarsa korkmak için müzik de dinleyebileceklerini düşündü bunun ardından Osbourne ve Butler Black Sabbath isimli bir şarkı yazdı, grubun ismi değişip Black Sabbath oldu ve dark blues olarak tanımladıkları müziği yapmaya başladılar.",
                groupname: "sabbath",
                name1: "Geezer Butler",
                name2: "Tony Iommi",
                name3: "Ozzy Osbourne",
              );
            }
            if (pagename == "Blues") {
              return BluesTemplate(
                groupname: "bbb",
                data:
                    "   Blue Blues Band, 1990'da Batu Mutlugil (gitar), Yavuz Çetin (gitar) ve Zafer Şanlı (bas gitar) tarafından kurulmuş Türk blues grubu. Grubun ilk yılında davulda Cenap Oğuz yer alırken daha sonra Kerim Çaplı, bas gitar da ise Sunay Özgür (1992) Yavuz Çetin'in 2001'deki ölümüne kadar blues çalmıştır. Hali hazırda faal olan Hayal Kahvesi (Beyoğlu) mekanının açıldığı 1991 yılında grup Batu Mutlugil, Yavuz Çetin, Zafer Şanlı, Kerim Çaplı′lı kadrosu ile sahne almıştır. Sonra ise Batu Mutlugil'in barı Mojo'da, kalan 7 yıl ise İstanbul, Ankara, Eskişehir gibi pek çok yerlerde sahneye çıkmıstır.",
              );
            }
            if (pagename == "Blues(2)") {
              return BluesTemplate(
                data:
                    "   Riley B. King veya B. B. King (d. 16 Eylül 1925 - ö. 14 Mayıs 2015), Amerikan blues gitaristi ve bestecisi. 'King' lakabını taşıyan üç büyük Blues sanatçısından biridir. B.B takısı; Beale Street Blues Boy (Beale Caddesi Bluescu Çocuk) olarak 1948'de kendisine lakap olarak verilmiştir. Daha sonra Blues Boy King (Blues'in Çocuk/Genç Kralı) olmuş ve son olarak ise B. B. King şeklinde kısaltılmıştır."
                    " Gitar hakimiyeti çok iyi usta bir müzisyendir. Birçok sanatçıyla düeti vardır. En önemlilerinden bazıları Jimi Hendrix, Eric Clapton ve Gary Moore gibi müzisyenlerdir. Yaşına rağmen uzun süre konserler vermiştir. En ünlü şarkılarından biri The Thrill is Gone'dur.",
                groupname: "bbking",
              );
            }
            if (pagename == "Blues(3)") {
              return BluesTemplate(
                data:
                    "    ZZ Top, 1969 yılında Houston, Teksas'ta kurulmuş olan Amerikan müzik grubudur. Grup, Billy Gibbons, Dusty Hill ve Frank Beard'dan oluşmaktadır. Blues Rock, rock ve Hard Rock tarzında müzik yapan grup üyeleri özellikle sakalları, şapkaları ve geniş güneş gözlükleri ile dikkat çeker."
                    " 1969′da kurulan rock grubu ZZ TOP’ın basçısı ve ikinci vokalisti olan Dusty Hill, 72 yaşında öldü. Grubun Facebook sayfasından yapılan açıklamada 72 yaşındaki Hill'in Houston'daki evinde öldüğü belirtildi.Gitaristin ölüm nedeni açıklanmadı, ancak 21 Temmuz'da kalça problemi nedeniyle Teksas'a döndüğü aktarıldı. ",
                groupname: "zztop",
              );
            }
            if (pagename == "Country") {
              return CountryTemplate(
                data1:
                    "Arc Angels, 1990'ların başında Austin, Teksas'ta kurulmuş bir Blues rock süper grubudur.",
                data2:
                    "Arc Angels'ın 1992'deki ilk albümü kritik bir onayla karşılandı ve Billboard tablosunda 127 numaraya ulaştı.",
                data3:
                    "Grup, televizyonda ilk çıkışını 9 Haziran 1992'de Late Night with David Letterman'da Living In A Dream performansıyla yaptı.",
                groupname: "arcangels",
              );
            }
            if (pagename == "Country(2)") {
              return CountryTemplate(
                data1:
                    "Aerosmith, 1970 yılında ABD'nin Massachusetts eyaletinin Boston şehrinde kurulmuş bir rock müzik grubudur.",
                data2:
                    "Gruba Boston'ın Kötü Çocukları ve Amerika'nın en büyük rock and roll grubu ithamı yapılır. ",
                data3:
                    "Aerosmith, blues kökenli hard rock tarzındaki müzikleri ile birçok rock grubuna ilham kaynağı olmuştur.",
                groupname: "aerosmith",
              );
            }
            if (pagename == "Country(3)") {
              return CountryTemplate(
                data1:
                    "All Them Witches, Nashville, Tennessee'den bir Amerikan rock grubudur.",
                data2:
                    "Grup davulcu Robby Staebler, çok sayıda  enstrüman çalan Charles Michael Parks Jr.'dan oluşuyor.",
                data3:
                    "Staebler, gitarist Ben McLeod'u bir barda slayt gitar çalarken gördükten sonra işe aldı.",
                groupname: "atw",
              );
            }
            if (pagename == "Punk") {
              return PunkTemplate(
                groupname: "socialdist",
                data1:
                    "Sex Pistols, İngiliz punk rock türünde simgeleşmiş ve pek çok gruba ilham kaynağı olmuş bir punk grubudur. BBC tarafından tam anlamıyla bir İngiliz punk grubu şeklinde tasvir edilmiştir. Grup yalnızca üç sene boyunca (1975-1978) aktif kalmış ve dağılmıştır. Bu süre içerisinde yalnızca bir stüdyo albümü kaydetmiş (1977'de Never Mind the Bollocks, Here's the Sex Pistols) ve dört adet single yayınlamışlardır."
                    "Yayınladıkları tek stüdyo albümü, 2003 yılında Rolling Stone dergisinin yayınladığı tüm zamanların en iyi 500 albümü listesinde 41. sırada yer almıştır. 2010 yılında yeniden toplanarak Londra'da bir konser vermiştir.",
                data2:
                    "Sex Pistols'ın kurucuları, vokalist Johnny Rotten, basçı Glen Matlock, gitarist Steve Jones ve baterist Paul Cook'tur.",
              );
            }
            if (pagename == "Punk(2)") {
              return PunkTemplate(
                groupname: "ramones",
                data1:
                    "Ramones, 1974 yılında New York'ta kurulmuş, 2263 konser vermiş, 14 stüdyo albümü olan Amerikalı bir punk rock grubudur. Müzikleri basit olarak görülse de birçok kişiye ulaşmışlardır."
                    "Vokalde Joey Ramone (Jeffrey Hyman, grup ilk kurulduğunda davul çalıyordu), gitarda Johnny Ramone (John Cummings), bas gitarda Dee Dee Ramone (Douglas Colvin, 1974-1989) ve davulda Tommy Ramone (Thomas Erdelyi, 1974-1978) olarak kurulan (zaman geçtikçe gruptan ayrılanlarla değişen elemanlar:Marky Ramone-Marc Steven Bell; 1978-1983,1987-1996; Richie Ramone-Richard Reinhardt, 1983-1987; Elvis Ramone-Clem Burke; Billy Rogers; ",
                data2:
                    "  C.J. Ramone-Christopher Ward, 1989-1996) New York underground rock çevresinde, bilhassa CBGB adlı barda çalmışlardır.",
              );
            }
            if (pagename == "Punk(3)") {
              return PunkTemplate(
                groupname: "sexpistols",
                data1:
                    "Sex Pistols, İngiliz punk rock türünde simgeleşmiş ve pek çok gruba ilham kaynağı olmuş bir punk grubudur. BBC tarafından tam anlamıyla bir İngiliz punk grubu şeklinde tasvir edilmiştir. Grup yalnızca üç sene boyunca (1975-1978) aktif kalmış ve dağılmıştır."
                    "Bu süre içerisinde yalnızca bir stüdyo albümü kaydetmiş (1977'de Never Mind the Bollocks, Here's the Sex Pistols) ve dört adet single yayınlamışlardır."
                    "Yayınladıkları tek stüdyo albümü, 2003 yılında Rolling Stone dergisinin yayınladığı tüm zamanların en iyi 500 albümü listesinde 41. sırada yer almıştır.[1] 2010 yılında yeniden toplanarak Londra'da bir konser vermiştir.",
                data2:
                    "Sex Pistols'ın kurucuları, vokalist Johnny Rotten, basçı Glen Matlock, gitarist Steve Jones ve baterist Paul Cook'tur. ",
              );
            }
          })()),
        ),
      ),
    );
  }
}
