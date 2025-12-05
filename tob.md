# Műszaki specifikáció
## HR Önkiszolgáló Portál – Toborzás modul


-----

|Dokumentum információk|Col2|
|---|---|
|Projekt neve|HR Önkiszolgáló Portál – Toborzás modul|
|Projekt kódja||
|Megrendelő neve|MÁV Zrt.|
|Dokumentum címe|Műszaki specifikáció|
|Verziószám|0.1|


|Dokumentumtörténet|Col2|Col3|Col4|
|---|---|---|---|
|Verzió|Dátum|Szerkesztette|Leírás|
|0.1|2019.09.12.|Vörös Gábor|Műszaki specifikáció vázlat|
|0.2|2020.05.13.|Esztergályos Bettina|Műszaki specifikáció vázlat|
|||||
|||||
|||||
|||||
|||||
|||||


|Alkalmazáskövetés|Col2|Col3|
|---|---|---|
|AK kód|AK megnevezés|Kiegészítésre kerülő fejezet|
|AK-8563|Képfeltöltés|3.3.1.3, 5.5, 5.8|
|AK-9243|Keresési kérelem törlése|5.4.4|
||||
||||
||||
||||
||||
||||


**MÁV Szolgáltató Központ Zrt. IT Üzletág**
*1087 Budapest, Könyves Kálmán krt. 54-60. Tel.: +36-1 457-9300; fax: +36-1 457-9500; e-mail: it@mav-szk.hu*


-----

### **Tartalom **

1 Áttekintés ......................................................................................................................................... 6

1.1 A dokumentum célja ....................................................................................................................................... 6

2 Effector bemutatása ......................................................................................................................... 7

2.1 Bevezetés......................................................................................................................................................... 7

2.2 Effector bemutatása ........................................................................................................................................ 7

2.2.1 Effector platform áttekintés ............................................................................................. 7

2.2.2 Fizikai architektúra ........................................................................................................... 7

2.2.3 Logikai architektúra .......................................................................................................... 8

2.2.4 Adatkezelő réteg............................................................................................................... 9

2.2.5 Köztes logikai réteg......................................................................................................... 12

2.2.6 Megjelenésért felelős réteg ........................................................................................... 13

2.3 Effector képességek ...................................................................................................................................... 13

2.3.1 Integráció ........................................................................................................................ 13

2.3.2 Mobil nézet ..................................................................................................................... 14

2.3.3 Workflow motor ............................................................................................................. 15

2.3.4 Server Tool Service ......................................................................................................... 16

3 Üzleti funkciók ................................................................................................................................ 17

3.1 Szerepkörök, jogosultságok ........................................................................................................................... 17

3.2 Fogalmak ....................................................................................................................................................... 18

3.3 A rendszer funkcionális jellemzői .................................................................................................................. 18

3.3.1 Törzsadatok .................................................................................................................... 18

3.4 Követelmény modell...................................................................................................................................... 23

4 Folyamat modell – Üzleti folyamatok............................................................................................. 24

4.1 Álláshirdetés folyamata ................................................................................................................................. 24

5 Felület modell – Képernyők bemutatása ....................................................................................... 25

5.1 Az Effector Platform bemutatása .................................................................................................................. 25

5.1.1 Felhasználói felület ......................................................................................................... 25

5.1.2 Effector rendszerfunkciók .............................................................................................. 30

5.2 Kódszótárak ................................................................................................................................................... 36

5.2.1 Kódszótár – Területi igazgatóságok képernyő működése .............................................. 36

5.2.2 Kódszótár – Szakképzés fajta képernyő működése ........................................................ 38

5.2.3 Kódszótár – Településlista képernyő működése ............................................................ 41

5.2.4 Kódszótár – Munkakör csoport képernyő működése .................................................... 43

5.2.5 Kódszótár – Foglalkoztatási fok képernyő működése .................................................... 45

5.2.6 Kódszótár – Vállalati bemutatkozó képernyő működése............................................... 47

**MÁV Szolgáltató Központ Zrt. IT Üzletág**
*1087 Budapest, Könyves Kálmán krt. 54-60. Tel.: +36-1 457-9300; fax: +36-1 457-9500; e-mail: it@mav-szk.hu*


-----

5.2.7 Kódszótár – Állásportál szerződés képernyő működése ................................................ 49

5.2.8 Kódszótár – Keresési kérelem státuszai képernyő működése ....................................... 51

5.2.9 Kódszótár – Szakterület képernyő működése ................................................................ 53

5.2.10 Kódszótár – Szerződés fajta képernyő működése .......................................................... 55

5.2.11 Kódszótár –Képzés jellege képernyő működése ............................................................ 57

5.2.12 Kódszótár –Végzettségi szint képernyő működése ........................................................ 59

5.2.13 Kódszótár –Hirdetési csatornák képernyő működése.................................................... 61

5.3 Keresési kérelmek ......................................................................................................................................... 63

5.3.1 Képernyő működése ....................................................................................................... 63

5.3.2 Jogosultságkezelés.......................................................................................................... 64

5.3.3 Hívott szolgáltatások ...................................................................................................... 64

5.4 Keresési kérelmek űrlap ................................................................................................................................ 66

5.4.1 Képernyő működése ....................................................................................................... 66

5.4.2 Jogosultságkezelés.......................................................................................................... 69

5.4.3 Hibakezelés/Rendszerüzenetek ..................................................................................... 69

5.4.4 Hívott szolgáltatások ...................................................................................................... 69

5.5 Álláshirdetés módosítás űrlap ....................................................................................................................... 71

5.5.1 Képernyő működése ....................................................................................................... 72

5.5.2 Jogosultságkezelés.......................................................................................................... 74

5.5.3 Hibakezelés/Rendszerüzenetek ..................................................................................... 74

5.5.4 Hívott szolgáltatások ...................................................................................................... 75

5.6 Álláshirdetés publikálás ................................................................................................................................. 76

5.6.1 Képernyő működése ....................................................................................................... 76

5.6.2 Jogosultságkezelés.......................................................................................................... 77

5.6.3 Hívott szolgáltatások ...................................................................................................... 77

5.7 Toborzási feladatkosár .................................................................................................................................. 78

5.7.1 Jogosultságkezelés.......................................................................................................... 79

5.7.2 Hívott szolgáltatások ...................................................................................................... 79

5.8 Képek feltöltése ............................................................................................................................................. 80

5.8.1 Feltöltött képek felhasználása ........................................................................................ 81

5.9 Ablakfolyam diagramm ................................................................................................................................. 83

6 Tárolt eljárások ............................................................................................................................... 84

7 Fizikai adatmodell ........................................................................................................................... 85

8 Rendszerkapcsolati modell ........................................................................................................... 103

8.1 Érintett rendszerkapcsolatok ...................................................................................................................... 103

8.2 PublishMAVPortalAllashirdetesekV1 .......................................................................................................... 104

8.2.1 Átadandó állomány formátuma, névkonvenció ........................................................... 104

**MÁV Szolgáltató Központ Zrt. IT Üzletág**
*1087 Budapest, Könyves Kálmán krt. 54-60. Tel.: +36-1 457-9300; fax: +36-1 457-9500; e-mail: it@mav-szk.hu*


-----

8.2.2 Átadandó állomány struktúrája .................................................................................... 105

8.2.3 Előállítás módja, ütemezés, paraméterezés................................................................. 106

8.2.4 Átadás módja, helye, hibakezelés ................................................................................ 106

8.2.5 Logikai adatmapping .................................................................................................... 106

8.3 GetCVOAllashirdetesekV1 ........................................................................................................................... 108

8.3.1 Átadandó állomány formátuma, névkonvenció ........................................................... 108

8.3.2 Átadandó állomány struktúrája .................................................................................... 109

8.3.3 Előállítás módja, ütemezés, paraméterezés................................................................. 110

8.3.4 Átadás módja, helye, hibakezelés ................................................................................ 111

8.3.5 Logikai adatmapping .................................................................................................... 111

8.4 GetStartAproAllashirdetesekV1 .................................................................................................................. 112

8.4.1 Átadandó állomány formátuma, névkonvenció ........................................................... 112

8.4.2 Átadandó állomány struktúrája .................................................................................... 112

8.4.3 Előállítás módja, ütemezés, paraméterezés................................................................. 113

8.4.4 Átadás módja, helye, hibakezelés ................................................................................ 113

8.4.5 Logikai adatmapping .................................................................................................... 113

**MÁV Szolgáltató Központ Zrt. IT Üzletág**
*1087 Budapest, Könyves Kálmán krt. 54-60. Tel.: +36-1 457-9300; fax: +36-1 457-9500; e-mail: it@mav-szk.hu*


-----

### 1 Áttekintés

A MÁV Zrt. mint Megrendelő, felkérte a MÁV Szolgáltató Központ Zrt.-t, hogy fejlessze le a Toborzás modult a HR
Önkiszolgáló Portálhoz.
##### 1.1 A dokumentum célja

A dokumentum célja ismertetni a MÁV Zrt. által a Toborzás modullal szemben megfogalmazott megrendelői
elvárások alapján fejlesztésre kerülő rendszer műszaki specifikációját.

A dokumentumban vázolt információk a rendszer részletes tervét tartalmazzák. A műszaki specifikáció a MÁV SZK
által elkészítendő elemekre terjed ki részletesen. A rendszer működéséhez harmadik fél által biztosított elemek
csak a szükséges kapcsolódás szintjén szerepelnek, feltárva a működésre gyakorolt kritikus hatásukat.

**MÁV Szolgáltató Központ Zrt. IT Üzletág**
*1087 Budapest, Könyves Kálmán krt. 54-60. Tel.: +36-1 457-9300; fax: +36-1 457-9500; e-mail: it@mav-szk.hu*


-----

### 2 Effector bemutatása
##### 2.1 Bevezetés

Jelen fejezet célja, hogy az Effector Platform műszaki felépítését, működési elvét és megvalósulását mutassa be. Az
Effector Platform az Oriana Kft. terméke, amelyre vonatkozóan minden szerzői vagyoni jogot kizárólagosan birtokol.
A MÁV Szolgáltató Központ Zrt. ezt a technológiát alkalmazva készíti majd el a jelen specifikációban leírt Toborzás

modult.

Az Effector szoftver egy olyan low-code platform, amely létrehozatalának célja, hogy az egyedi fejlesztésékhez
képest gyorsabban (rövidebb átfutási idővel), költséghatékonyabban (kevesebb élőmunka-erő) és alacsonyabb
informatikai kompetenciával lehessen webes megjelenésű üzleti alkalmazásokat kialakítani.

Az Effector platform komponensei

  - Adatkezelő réteg

`o` Adatelemek

Az Effector alap tábláit tekintjük ezen rész elemeinek. Ezek a táblák elengedhetetlenek a helyes

működéshez.

`o` Működést támogató tárolt eljárások

Az Effector platform alap működését támogató tároltakat értjük ide. Ezek a tárolt eljárások
nélkülözhetetlenek a helyes működéshez.

  - Webszerver-modulok

Egyedi fejlesztésként megvalósított modulok, melyek különböző interfészek elérését biztosítják.

  - Kliens oldali megjelenést leíró fájlok

Script fájlok, melyek a platform kliens oldali megjelenítéséért felelősek. Tipikusan JavaScript, illetve HTML
fájlok tartoznak ide.

  - Studio: fejlesztőeszköz, amely egy Effector Platform alkalmazás

Az Effector Studio egy az Effector platformon fejlesztett alkalmazás, melyet megfelelő licencekkel lehet
igénybe venni. Ez az alkalmazás egy felületen szerkeszthető elemekkel támogatja, illetve gyorsítja a
fejlesztést.

Az Effector Platform zárt forráskódú, az üzleti logikát leíró adatmodell, tárolt eljárások és XML-k nyílt szabvány
szerint készülnek, így szabadon lehet módosítani vagy továbbfejleszteni (amennyiben erre a szállítási szerződés
lehetőséget biztosít).
##### 2.2 Effector bemutatása
###### 2.2.1 Effector platform áttekintés

Az Effector Platform egy gazdag funkciókészlettel rendelkező, folyamatosan fejlődő alapplatform.

A rendszer egy háromrétegű alkalmazás, ahol a három réteg az alábbiak szerint különül el egymástól:

  - Adatbázis

  - Szerver modul

  - Kliens alkalmazás
###### 2.2.2 Fizikai architektúra

Vékony kliens architektúra megvalósításával a kliensek különböző web böngészőn keresztül érik el az IIS szervert,
különböző kommunikáció protokollokat és technológiákat használva. Az IIS szerveren fut az alkalmazás, mely az
SQL szerveren elhelyezett adatbázissal folyamatos kapcsolatban van.

**MÁV Szolgáltató Központ Zrt. IT Üzletág**
*1087 Budapest, Könyves Kálmán krt. 54-60. Tel.: +36-1 457-9300; fax: +36-1 457-9500; e-mail: it@mav-szk.hu*


-----

|Rendszerkomponens megnevezése|Komponens szerepe és általános működés|
|---|---|
|MS SQL adatbázisszerver|Adatbázis szerver komponens, az alkalmazásban tárolt adatok kezelését végzi.|
|IIS szerver|Web szerver komponens. A komponens elérhetővé teszi a helyileg (esetleg más kiszolgálón) tárolt weblapokat a HTTP/HTTPS protokollon keresztül.|
|Microsoft .NET Framework 4.5.1|A gyors alkalmazásfejlesztést (RAD), platformfüggetlenséget és hálózati átlátszóságot támogató szoftverfejlesztői platform. A .NET Framework a Microsoft átfogó és konzisztens programozási modellje (keretrendszere) alkalmazások fejlesztéséhez.|
|Kliens oldali böngésző|Az alkalmazás által előállított weblapok kezelését végzi. Támogatott böngészők: ● Internet Explorer 9+ ● Firefox (legújabb verzió) ● Chrome (legújabb verzió)|

###### 2.2.3 Logikai architektúra

*2.2.3.1* *Szerver*

IIS szerveren futó alkalmazás Effector motorja kezeli a különböző tranzakciókat, lekérdezéseket, kéréseket. Ezen a
motoron keresztül érhetők el az adatbázisban tárolt adatok és a fájlrendszerben elhelyezett XML-ek és Customer

DLL-ek.

Az XML-ek a felhasználói felület megjelenését definiálják, a Customer DLL-ek a keretrendszer által nem
megvalósítható funkciókat biztosítják. Adatbázisban a felhasználók által a rendszerben rögzített adatok találhatóak.

A keretrendszer 3 fő rétegből tevődik össze, ők teljesen egymásra épülnek.

  - adatkezelő réteg,

  - köztes logikai réteg,

  - megjelenítésért felelős réteg.

A Service Endpoint jelöli a klienssel való kapcsolódási pontot.

*2.2.3.2* *Kliens*

A felhasználók a böngészőben megjelenő felületen keresztül használják az alkalmazást. A belső motor, mely
tartalmazza a Business Core-t és Cache-t Ajax technológiai megoldások segítségével kommunikál a szerver oldali

Effector motorral.

A Service Endpoint jelöli a szerverrel való kapcsolódási pontot.

**MÁV Szolgáltató Központ Zrt. IT Üzletág**
*1087 Budapest, Könyves Kálmán krt. 54-60. Tel.: +36-1 457-9300; fax: +36-1 457-9500; e-mail: it@mav-szk.hu*


-----

###### 2.2.4 Adatkezelő réteg

Támogatott adatbázis-kezelő: MS SQL 2012 R2 vagy újabb.

Az Effector a Microsoft által fejlesztett relációs adatbázis kezelő rendszerére épül. Az adatbázist intenzíven
használja, nem csak az adatok tárolására, de bizonyos szintű logika megvalósítására is.

*2.2.4.1* *Adatelemek, beépített adatmodell*
Beépített objektumokat kezelő „fő” táblák:

  - **Company** : cégek (ügyfelek) és azok alapadatai

  - **Document** : ügyletekhez, eseményekhez, egyéb üzleti objektumokhoz csatolt dokumentumok (a

dokumentumok fizikai tárolása fájlrendszerben történik, adatbázisban csak az elérési utat, és a további

adatokat tároljuk)

  - **Event** : eseményeket, feladatokat tárolunk benne. Rendszerint az eseményeket/feladatokat egy-egy

ProjectID alá csoportosítjuk, azonban ez nem kötelező

  - **People** : a rendszerben szereplő, résztvevő emberek/felhasználók/kontakt adatok listája

  - **Project** : Projecteket, folyamatokat tartalmazó tábla

További objektumokat kezelő táblák:

  - **User** : az Effectorba belépési joggal rendelkező felhasználók listája

  - **WorkFlow** : az üzleti folyamatok egyedi azonosítóval (és típussal) ellátott listája

Rendszer táblák (mindegyike az FSYS_ előtaggal kezdődik, itt a leírásukban ettől eltekintünk):

  - **AttachedWorkflow** : az összekapcsolt folyamatokat tárolja benne a rendszer.

  - **LabelLookup** : többnyelvű menürendszer esetén az itt eltárolt címkékre tudunk hivatkozni a definíciós

állományokban. A hivatkozás a következő módon történik: [#TableName.FieldName#]. Ilyenkor az aktuális

Lang értékhez tartozó Label mező értéket fogja visszaadni a rendszer, amely a felületen megjelenik. Erről

bővebben a Többnyelvűség fejezetben talál információt.

  - **Log** : a rendszer a mezők értékének változását ebben a táblában rögzíti. Az egyes rekordok beazonosításához

a következő mezők állnak rendelkezésre:

`o` BoType és BoTemplate mezők írják le, hogy milyen objektum változott (például Project és ISO2010)

`o` BoID: A változott objektum azonosítóját tartalmazza.

**MÁV Szolgáltató Központ Zrt. IT Üzletág**
*1087 Budapest, Könyves Kálmán krt. 54-60. Tel.: +36-1 457-9300; fax: +36-1 457-9500; e-mail: it@mav-szk.hu*


-----

  - **LongSessions** : a felületen történt belépés után ebben a táblában rögzítjük a bejelentkezett felhasználó

azonosítóját és a kertrendszer által generált azonosítót, továbbá a bejelentkezés dátumát. Ez a generált

azonosító az adatbázis kapcsolat nevével együtt a felhasználó gépén egy sütiben is tárolódik. Amikor a

felhasználó legközelebb behívja az oldalt, a sütiből visszaolvasott adatokkal a szerver megpróbálja

bejelentkeztetni az oldalra (felhasználónév és jelszó megadása nélkül). Az azonosításhoz az

osp_FSYS_GetUserLongSessionID tároltat használja fel a rendszer. Ebben lehet további biztonsági

funkciókat megvalósítani (például egy longsession mennyi ideig érvényes).

  - **LookupList** : ebben a táblában tároljuk a lenyíló listák értékeit. Az alábbi mezők bírnak jelentéssel ebben a

táblában:

`o` LookupListID értékét menti a rendszer a megfelelő mezője, ez valósítja meg az idegen kulcsot.

`o` LookupValue mező tartalma fog megjelenni a felületen a legördülő listákban.

`o` GroupNum mező csoportba foglalja az egyes rekordokat.

  - **LookupListGroup** : a FSYS_LookupListGroup táblában használható csoportok definícióját tartalmazza.

  - **ObjectTypesLookup** : ebben a táblában találhatóak a rendszerben szereplő objektum típusok, és altípusok,

a hozzájuk tartozó megjeleníthető címkékkel együtt. Az ObjectType a típus vagy altípus neve, a

ParentObject tartalmazza az ős osztály típusát, a DisplayLabel az ember által is értelmezhető és olvasható

leírást tartalmazza, amely a felületen is megjelenik.

  - **View** : a keretrendszerben lehetőség van az alapértelmezett skin megváltoztatására, illetve lehet

Component-enként és lehet Screen szinten nézetet menteni. Az elmentett értékek tárolhatók ebben a

táblában. Az itt található ObjectType oszlop más jelentéssel bír, mint a rendszer többi táblájában. Itt is a

rekord típusát tárolja, azonban értéke kizárólag az alábbiak egyike lehet:

`o` skin: a felhasználó által kiválasztott skin webcímét tartalmazza a Data oszlopban.

`o` View: a Screen szinten mentett nézetek adatait tárolja a Data oszlopban.

`o` PanelView: a Component szinten mentett nézetek adatait tárolja a Data oszlopban.

*2.2.4.2* *Speciális mezők*
**Deleted** mező: Az Effector táblák nagy részében szerepelő speciális mező, amelynek típusa tinyint, alapértelmezett
értéke pedig 0. Kialakításának oka:

  - Fizikai adat törlés nincs, így a Deleted mező hordozza azt az információt, hogy egy rekord törölt, vagy aktív.

  - Az Effector ál-tranzakciókezelést valósít meg. Az egyes adatok tranzakció kezelését - a tranzakció kezelés

szimulálásához - a szerverréteg valósítja meg a Deleted mező felhasználásával.

Deleted értékei:

  - 0: véglegesített, mentett adat

  - 1: törölt sort reprezentál.

  - 2: piszkos adat, melynek mentése nem végleges, épp tranzakcióban vesz részt.

**ObjectType** mező: Az egyes üzleti objektumok származtatásánál van jelentősége. Ez a mező az ős objektumokat
reprezentáló táblákban jelenik meg, és az adott rekordhoz leszármazott típust tartalmazza.

*2.2.4.3* *Adatbázis műveletek elvi működése*

  - A felhasználó a felső menüsorra kattintva egy képernyő megjelenítést kezdeményez (lekér egy screen-t)

  - Kérés (request) megy a megjelenésért felelős rétegből a köztes logikai réteg felé, mely tartalmazza azt, hogy

ki (azonosított felhasználó) és mit szeretne (melyik képernyő megjelenését kezdeményezte)

**MÁV Szolgáltató Központ Zrt. IT Üzletág**
*1087 Budapest, Könyves Kálmán krt. 54-60. Tel.: +36-1 457-9300; fax: +36-1 457-9500; e-mail: it@mav-szk.hu*


-----

- A köztes logikai réteg megvizsgálja, hogy a kért objektum adatai szerepelnek –e már a cache-ben. Ha nem,

akkor előállítja a megfelelő objektumokat az XML leírók alapján. Előállítja a többi hivatkozott objektum

alapjait is (képernyők – komponensek – fülek – stb.)

- Az előzőekben előállított objektumok közül azok, amelyeknél adat szükséges az adatbázisból, azok mennek

az adatkezelő rétegnek, ami a kérésre válaszul visszaadja őket – itt már adattal feltöltve.

- Az elkészült objektumok visszaérkeznek az aszinkron válaszban a kliensnek, ahol az Effector JavaScript

motor a feldolgozás után megjeleníti őket.

*1. ábra: új adat felvitele*

*2. ábra: adat törlése*

**MÁV Szolgáltató Központ Zrt. IT Üzletág**
*1087 Budapest, Könyves Kálmán krt. 54-60. Tel.: +36-1 457-9300; fax: +36-1 457-9500; e-mail: it@mav-szk.hu*


-----

*3. ábra: egyszerű és többes lekérdezés*
###### 2.2.5 Köztes logikai réteg

A köztes logikai réteg felel az adatkezelő, illetve a megjelenítésért felelős rétegek közötti kapcsolatért. Ezen réteg
egy XML leíró nyelv segítségével kerül kialakításra, mely az Effector ún. paraméterezésével történik.

A réteg fontos szerepe, hogy biztosítsa az adatbázisban tárolt adatok elérését egy böngészőben elérhető
alkalmazással. Ez az alkalmazás már tartalmazza a felületi, illetve design elemeket, melyek a megjelenítéshez
szükségesek.

A rétegnek rendkívül fontos szerepe, hogy a jogosultsági beállításokat kezelje. Így elérhető egy rendszerben az,
hogy a bejelentkezett felhasználók semmilyen esetben se érhessenek el, vagy módosíthassanak olyan adatokat,
melyekhez nincs megfelelő jogosultságuk. Ezen jogosultságok leképzéséhez a platform több lehetőséget is biztosít
a paraméterezés során.

*2.2.5.1* *XML-k*

Ezen fájlok segítségével építhető fel az Effector platformon egy alkalmazás, mely a szükséges üzleti igényeknek
megfelel. A fájlok a következő csoportokra különülnek el:

  - Profile

A megjeleníthető minor menük listáját tartalmazza. Az alapértelmezett képernyőt, illetve a gyors linkeket
is itt lehet definiálni.

  - MinorMenu

A minor menühöz tartozó képernyők listája.

  - Screen

Az adott képernyőn található komponenseket lehet megadni vele. Egy képernyőt lehet vízszintesen és
függőlegesen bontani, illetve állhat csak egyetlen komponensből is.

  - Component

Egy képernyő komponensekből áll. A komponensek megjelenítő egységeket tartalmaznak. Egy
komponensen tetszőleges számú megjelenítő (vagy fül) lehet.

  - DisplayDefinition

Adatok megjelenéséért felelős képernyőt leíró XML fájl, mely egy komponensen helyezkedik el. Ezeket az
adatokat több formában is meg tudja jeleníteni:

`o` Táblázatos megjelenítés

Egyszerű megjelenítés, mely csak nagyon alapvető formázásokra alkalmas, viszont sok adat
megjeleníthető, illetve riportolható vele.

**MÁV Szolgáltató Központ Zrt. IT Üzletág**
*1087 Budapest, Könyves Kálmán krt. 54-60. Tel.: +36-1 457-9300; fax: +36-1 457-9500; e-mail: it@mav-szk.hu*


-----

`o` Kártya nézet

Ez a megjelenítő egy táblázatos megjelenítőre épül, melynek sorait egy-egy kártyán tudja
megjeleníteni. Ezen kártyák felületi elemei nagy szabadsággal szerkeszthetőek, mivel HTML és CSS
nyelvek segítségével építhetőek fel.
`o` Naptár nézet

Egy naptár formájában, eseményekként jeleníti meg a lekérdezett adatokat.

`o` Szekció lista

A kártya nézethez hasonló megjelenítő, melyen egy előre definiált HTML struktúrában tudjuk az
adatokat megjeleníteni. Ezzel a nézettel egy könnyen olvasható, emellett felületi díszítésekkel
ellátott szöveget tudunk előállítani.

  - DataDefinition

Az Effector rendszerben a DataDefinition-ök az adatbázis és a megjelenítő komponensek között teremtik
meg a kapcsolatot. A megjelenítő komponensek adatforrásaként funkcionál.

  - ComboDefinition

Egy lenyíló lista definícióját tartalmazó XML.

  - EditForm

`o` Form

Az EditForm típus egy szerkesztő képernyő egy rekord celláinak felvitelére, módosítására.

`o` Fragment

A Fragment leegyszerűsítve nem más, mint a származtatott BusinessObject-hez tartozó EditForm

részlet.

  - Workflow

Az egyes folyamatokhoz tartozó folyamatlépések listáját a Workflow könyvtárban található XML
állományok írják le.

  - BusinessObject

Az üzleti objektumok a rendszerben egy adattábla, vagy egy adatbázis nézet kezelését valósítják meg, részt
vesznek a folyamatok definiálásban, illetve további adatbázis műveleteket írhatnak le. A fájlokat a
BusinessObject könyvtárba kell menteni. A fájlnévnek tükröznie kell az objektum nevét, és altípusát.
###### 2.2.6 Megjelenésért felelős réteg

A megjelenítésért felelős a réteg a platform egy AngularJS felhasználásával megvalósított része.

Az AngularJS egy Google által fejlesztett, nyílt forráskódú JavaScript keretrendszer dinamikus webes
alkalmazásokhoz. Segítségével nagyban egyszerűsödik a webes alkalmazások frontend fejlesztése. Használatával a
HTML eszköztára kibővül és az alkalmazások komponensei még egyértelműen elkülönülnek. Az Angular
adatkapcsolásának, illetve függőség injektálásának köszönhetően, rengeteg felesleges boilerplate kód elhagyható.

Emellett több külső komponens is felhasználásra került, melyek különböző megvalósított funkcionalitásokhoz
voltak szükségesek. Ilyen például a naptár vagy a táblázatos nézet.

Ez a réteg kizárólag a megjelenítésért felel. A köztes réteg segítségével megkapja a lekért adatokat az adatkezelő
rétegtől és ennek különböző paramétereit. Ezeket az adatokat jeleníti meg a megfelelő felületen, illetve a megfelelő
beállításokkal. Ilyen beállítások például a jogosultsági, illetve láthatósági szabályok, melyek a platformon fejlesztett
alkalmazások szerves részeit képezik.
##### 2.3 Effector képességek
###### 2.3.1 Integráció

*2.3.1.1* *Integráció adatbázis-adatbázis kapcsolattal*
Az Effector platform relációs adatbázis kezelővel képes együttműködni (preferáltan MS SQL-lel), az adatréteg
megvalósítójaként. A relációs adatbázis kezelők által biztosított együttműködésre alapozva az Effector adatbázisa

**MÁV Szolgáltató Központ Zrt. IT Üzletág**
*1087 Budapest, Könyves Kálmán krt. 54-60. Tel.: +36-1 457-9300; fax: +36-1 457-9500; e-mail: it@mav-szk.hu*


-----

összeköthető más adatbázisokkal linked database funkcióval adatfogadásra és adat biztosításra is a következő

módokon:

  - adat fogadás:

`o` kapcsolt adatbázis(ok) adatait (tábláit) felhasználó nézet (view) segítségével

`o` kapcsolt adatbázis(ok) adatait, üzleti logikáját felhasználó tárolt eljárások vagy függvények

segítségével

`o` kapcsolt adatbázis(ok) adatait felhasználó triggerek segítségével

  - adat átadás:

`o` Effector adatbázis adatait (tábláit) felhasználó nézet (view) segítségével

`o` Effector adatbázis adatait, üzleti logikáját felhasználó tárolt eljárások vagy függvények segítségével

`o` Effector adatbázis adatait felhasználó triggerek segítségével

Adatcsere ütemezése:

  - adatbázis nézet (view) esetén folyamatosan biztosított az on-line adatforrás

  - tárolt eljárások, függvények esetén felhasználói felületről érkező interakció vagy az adatbázis kezelő által

biztosított JOB funkció által ütemezve

  - triggerek esetén a kiváltó esemény bekövetkeztekor

*2.3.1.2* *Fájlalapú integráció*
Egyedi fejlesztéssel (azaz az Effector platform képességeit kiegészítve) kialakításra kerülhet olyan Effector platform
komponens, amely funkcióit motor képes kezelni. A létrehozott komponens alkalmassá tehető fájlok
feldolgozására, illetve fájlok létrehozatalára.

  - A fájl feldolgozás során a formátum nem kötött, azonban első sorban szöveges, csv, vagy xls formátumú

fájlok javasolt. A xls típus feldolgozásához alkalmazásblokk áll rendelkezésre (felhasználói interakcióhoz

kötött), amely alkalmas egy, vagy több, kötött szerkezetű Excel sablonból történő adatbetöltésre (egy

munkalappal kell rendelkeznie).

  - fájl generálás esetén a beépített funkció XLS, XLSX, PDF, CSV, ODS formátumú fájlok létrehozatalát

támogatja. Adott táblázatos képernyő

*2.3.1.3* *Integráció web service segítségével*
Web service típusú integráció egy új Effector motor komponens (Customer DLL) kialakításával valósítható meg,
amely a publikáló oldal definíciója szerint épül fel.

A kapcsolatért felelős szoftver komponens megszólítja az adatszolgáltatót, átveszi az adatokat tartalmazó állományt
valamint elhelyezi annak feldolgozása után az Effector applikáció adatbázisában kialakított fogadó területen
(Landing Zone).

A fogadó területről az Effector applikáció belső tárterületére tárolt eljárások segítségével kerülnek az adatok.

*2.3.1.4* *Felületi integráció*
Az Effector képernyőkön megjelenő komponensek egyik típusa: iframe. Az iframe tulajdonságait felhasználva
felületi integráció valósítható meg egy Effector applikáció és egy másik böngészőben megjelenő szoftver között.
Amennyiben a társrendszer URL segítségével differenciáltan címezhető, akkor a két szoftver közötti
együttműködést az src tag felhasználásával kell megteremteni.
###### 2.3.2 Mobil nézet

Az Effector motor adatmegjelenítő rétege HTML5 szabványnak megfelelő kódot állít elő, amely segítségével a
böngésző a fogadó oldali hardvertől függően képes az eszköz lehetőségeinek megfelelően megjeleníteni a felületi
elemeket. Osztott képernyő esetén a bal felső panel kerül megjelenítésre.

**MÁV Szolgáltató Központ Zrt. IT Üzletág**
*1087 Budapest, Könyves Kálmán krt. 54-60. Tel.: +36-1 457-9300; fax: +36-1 457-9500; e-mail: it@mav-szk.hu*


-----

###### 2.3.3 Workflow motor

Egy folyamat alatt egy ügyet (ügy, ügylet, projekt, workflow) értünk, ami feladatokból (feladat, esemény) áll. Az
alap koncepció az, hogy a feladat sorozat úgy fut végig, hogy amikor egy, a folyamatban soron következő feladatot
készre állítja annak felelőse, akkor létre jön a sorban azt követő feladat.

Egy folyamat rendelkezik saját típussal (amit a folyamat indítása előtt kell kiválasztani, és nem módosítható), és a
típusának megfelelően lehetőség van egyedi mezők rögzítésére. Ettől függ a létrejövő feladatok típusa, hozzá lehet
csatolni további résztvevőket, megjegyzéseket, dokumentumokat, illetve egyedi kiegészítő táblázatokat.

Egy feladat is rendelkezik saját típussal, és a típusának megfelelően lehetőség van egyedi mezők rögzítésére, hozzá
lehet csatolni további résztvevőket, megjegyzéseket, dokumentumokat, illetve egyedi kiegészítő táblázatokat.

Effectorban a folyamatok paraméterezése és modellezése az állapotátmeneteken, és a folyamatok induló-, és vég
állapotán alapul.

  - A folyamatokat összefogó objektum: Project objektum, ez az objektum az adott üzleti folyamat

reprezentációja.

  - Az egyes állapotok objektuma: Event objektumokkal és azok leszármazottaival kezeljük le. Egy folyamat

lépés egy eseménynek felel meg a rendszerben.

  - Az állapot átmeneteket az egyes üzleti objektumokban konfigurált ún. Triggerek segítségével

paraméterezhetjük.

Az "Üzleti találkozó egyeztetése" folyamat az alábbi jellemzőkkel írható le.

  - Állapotok ( **Események** ):

`o` A: A találkozó részleteinek rögzítése

`o` B: Időpont egyeztetés

`o` C: Találkozó eredményének rögzítése

  - Állapot átmenetek( **Triggerek** ):

`o` A -> B: Nincs rögzített időpont, további egyeztetés szükséges.

`o` A -> C: Van rögzített időpont, a találkozó lebonyolítható.

`o` B -> B: Időpont egyeztetés nem sikerült, újabb időpont egyeztetés szükséges.

`o` B -> C: Időpont egyeztetés sikeres, a találkozó lebonyolítható.

Ábrázolása folyamat ábrán a következő:

**MÁV Szolgáltató Központ Zrt. IT Üzletág**
*1087 Budapest, Könyves Kálmán krt. 54-60. Tel.: +36-1 457-9300; fax: +36-1 457-9500; e-mail: it@mav-szk.hu*


-----

Az Effectorban elhelyezett folyamatmotor képes a folyamatok verziózására is, így a folyamatok könnyebben

módosíthatóak.
###### 2.3.4 Server Tool Service

Az Effector platform mintegy kiegészítéseként került fejlesztésre a *Server Tool Service*, mely a szerveren egy
Windows Service-ként került megvalósításra. Ez a szerviz nem szükséges az Effector helyes működéséhez, csak egy
opcionális kiegészítője.

A szerviz funkcionalitása az adott szerveren történő egyedi fejlesztések és SQL scriptek ütemezett futtatása.
Konfigurációja során titkosítva meg kell adni az SQL szerver elérését és annak egyéb adatait, mellyel egy közvetlen
kapcsolaton keresztül kommunikál ezután.

Az adatbázisban lévő *ServerTool_Job* tábla határozza meg, hogy mely jobokat kell és milyen időközönként futtatni.
A táblának minden sora egy jobot reprezentál.

A tábla oszlopai a következő adatokat, illetve beállításokat tartalmazzák:

|Mező|Leírás|
|---|---|
|id|Egyedi azonosító, melyet a Rendszer a job azonosítására a későbbiekben is használ|
|name|A job szabadszövegese elnevezése|
|dll_name|DLL esetén a fájl elhelyezkedése a rendszerben. Használható a [##LocalProgramPath##], mely a szerviz rendszerbeli helyére mutat.|
|class_name|DLL esetén az interfészt megvalósító osztály neve névterekkel együtt|
|SQL|SQL futtatása esetén a futtatandó script|
|Mon|Hétfőn fusson-e?|
|Tue|Kedden fusson-e?|
|Wed|Szerdán fusson-e?|
|Thu|Csütörtökön fusson-e?|
|Fri|Péteken fusson-e?|
|Sat|Szombaton fusson-e?|
|Sun|Vasárnap fusson-e?|
|minsec_from|Óra:perc, amikortól a futtatás történjen (hh:mm formátumban)|
|minsec_to|Óra:perc, ameddig a futtatás történjen (hh:mm formátumban)|
|period|Hány percenként fusson le a job|
|last_run|Utolsó futtatás időpontja|
|running|Jelöli, hogy éppen fut-e a job|
|status_message|Utolsó futás státusz üzenete|
|Deleted|Csak abban az esetben futtatja az adott sort a szerviz, ha ennek értéke 0|



A DLL jobok futása során azok hibái, illetve üzenetei fejlesztéstől függően az ServerTool_Log táblába kerülnek
logolásra.

**MÁV Szolgáltató Központ Zrt. IT Üzletág**
*1087 Budapest, Könyves Kálmán krt. 54-60. Tel.: +36-1 457-9300; fax: +36-1 457-9500; e-mail: it@mav-szk.hu*


-----

### 3 Üzleti funkciók

A toborzók jelenleg az SAP E-toborzás felületén végzik el a szükséges teendőket az alábbiak szerint:














Az első lépés a munkaerő igénylése, amely a HÖP Toborzás modulon kívül egy másik rendszerben történik.

A következő lépés a munkaerő igény adatainak a rögzítése az SAP E-toborzás rendszerben, majd álláshirdetés
szövegek felvétele, végül publikálásuk a folyamat röviden.

Célok

  - Segítse a toborzók munkáját az állásajánlatok publikálásában

  - Egységes csoport szintű toborzás-kiválasztási folyamat kialakítása

  - Ugyanazon adatok csak egy helyen legyenek rögzítve

Ennek keretében a HÖP Toborzás szkópja az SAP E-toborzás rendszer teljes kiváltása, a folyamat fejlesztése és
megvalósítása a HÖP Toborzás modulban
##### 3.1 Szere p körök, j o g osultsá g ok







|Szerepkör|Betöltő munkavállaló|Feladat és jogosultság|
|---|---|---|
|IT adminisztrátor|MÁV SZK IT üzletág üzemeltetés HÖP alkalmazás megoldócsoport|HÖP rendszer informatikai menedzselését végzi, felhasználókat támogatja a rendszer használatában. Jogosultsága a teljes HÖP rendszerre kiterjed.|
|HÖP adminisztrátor|Cégcsoport szinten egy munkavállaló|HÖP kódszótárak értékek, valamint levélsablonok karbantartása. Jogosultsága csak a kódszótárakra és levélsablonokra terjed ki.|
|Toborzási folyamatgazda|MÁV-csoport Vállalatokként egy, vagy több, erre kijelölt személy|Rálátnak minden egyes hirdetési folyamatra. Meg tudja változtatni a toborzó(k) személyét és a hirdetés adatait az egyes hirdetéseknél. Teljes hozzáféréssel rendelkezik a hirdetéseknél.|


**MÁV Szolgáltató Központ Zrt. IT Üzletág**
*1087 Budapest, Könyves Kálmán krt. 54-60. Tel.: +36-1 457-9300; fax: +36-1 457-9500; e-mail: it@mav-szk.hu*


-----

|Szerepkör|Betöltő munkavállaló|Feladat és jogosultság|
|---|---|---|
|Toborzó|Toborzással foglalkozó munkatárs Hirdetés szövegével foglalkozó munkatárs|Jogosultsága van a hirdetések módosítható mezőinek változtatására és a jelentkezők kártyáinak létrehozására, módosítható mezőinek változtatására. Vezetőket ő tud hozzáadni a pozíciókhoz.|
|Engedélyező|Hirdetés szövegének engedélyezésével foglalkozó munkavállaló|Engedélyezi a hozzá workflowban érkező álláshirdetés szövegeket.|



- Kódszótár változtatást **HÖP adminisztrátor** végzi, de csak folyamatgazda kezdeményezheti, azonban: törlés csak
a többi folyamatgazda beleegyezésével, új adatmező felvitele/meglévő módosítása a többi folyamatgazda
tájékoztatásával, 2 munkanapon belüli hozzászólási lehetőséggel történhet (törlésnél vizsgálandó a statisztika).
##### 3.2 Fogalmak

**Munkaerőigénylés:** a keresési igény megindításához szükséges MJGY által aláírt engedély.

**Keresési kérelem** : a rendszerbe a munkaerőigénylés alapján berögzített adatok, keresési paraméterek.
##### 3.3 A rendszer funkcionális jellemzői
###### 3.3.1 Törzsadatok

Az igények alapján a következő pontokban szereplő törzsadatok határozhatók meg.

*3.3.1.1* *Kódszótárak*

A rendszer több kódszótárat is kezelni fog, amelyek törzsadatként fognak működni a rendszerben, de jellemzően
legördülő listák elemeit takarják. Ezek az alábbiak:

  - Területi igazgatóságok

  - Szakképzés fajta

  - Településlista *(magyarországi település lista)*

  - Munkakör csoport

  - Foglalkoztatási fok

  - Vállalati bemutatkozó *(„Rólunk”)*

  Állásportál szerződés

  - Keresési kérelem státuszai

  - Szakterület

  - Szerződés fajta

  - Képzés jellege

  - Végzettségi szint

  - Hirdetési csatornák

**MÁV Szolgáltató Központ Zrt. IT Üzletág**
*1087 Budapest, Könyves Kálmán krt. 54-60. Tel.: +36-1 457-9300; fax: +36-1 457-9500; e-mail: it@mav-szk.hu*


-----

*3.3.1.2* *Keresési kérelem*

Bármilyen álláshirdetés egy munkaerőigénnyel indul, amely kimondja azt, hogy milyen pozíciók betöltésére van
szükség, és hány fővel lehet azt betölteni.

Keresési kérelem státuszai az alábbiak lehetnek:

  - Folyamatban

A keresési kérelem minden adata módosítható, létrehozható benne új álláshirdetés szöveg, amely
publikálható is, de az álláshirdetés lejárati időpontja nem lehet későbbi, mint a kérelemé.

  - Lejárt

Módosításra megnyitható, de új álláshirdetés szöveg nem publikálható, ameddig a lejárat dátumát egy
jövőbeli időpontra nem módosítja a felhasználó, azaz Folyamatban-ra állítja a keresési kérelmet.

  - Lezárt

Már nem módosítható keresési kérelmek.

Keresési kérelem létrehozható újként, vagy egy kiválasztott keresési kérelem másolataként. A másolandó keresési
kérelem bármilyen státuszú lehet, a másolás folyamán egy új keresési kérelem jön létre.

A keresési kérelmek képernyőjén az alábbi szűrési lehetőségek lesznek:

  - Vállalat (bejelentkezett felhasználó vállalata, nem módosítható)

  - Keresési kérelem címe (szabad szöveges keresés)

  - Keresési kérelem státusza (Folyamatban / Lejárt / Lezárt)

  - Lezárás indoka

  - Toborzó

  - Munkavégzés helye

  - Szervezeti egység

  - Szakterület

Az alábbi adatok rögzítése szükséges:

  - Keresési kérelem címe (piacnak megfelelő elnevezés, elején a Toborzó1 monogramja, végén a feladás

dátuma)

  - Munkaerőigény iktatószáma (opcionális)

  - Munkaerőigény engedélyezésének dátuma

  - Lejárat dátuma

  - Munkakör megnevezése (munkaerőigény engedélye alapján a munkakör hivatalos neve, ez kerül majd

átadásra a külső rendszereknek)

  - Pozíció szám (1-200)

  - Területi igazgatóság (kódszótárból)

  - Szervezeti egység (opcionális, SAP IHIR törzsadatból választható)

  - Szakterület (kódszótárból)

  - Iskolai végzettség (kódszótárból)

  - Foglalkoztatás formája (kódszótárból)

  - Munkavégzés helye (kódszótárból)

  - Munkavégzés helye egyéb információk (szabadszöveges)

  - Munkakör csoport (kódszótárból)

  - Munkaidő (kódszótárból)

**MÁV Szolgáltató Központ Zrt. IT Üzletág**
*1087 Budapest, Könyves Kálmán krt. 54-60. Tel.: +36-1 457-9300; fax: +36-1 457-9500; e-mail: it@mav-szk.hu*


-----

  MMK (MÁV Munkaköri Kategória)

  - CV csatolandó (I/N)

  - MAP-os munkakör (I/N)

  - Bruttó bérigény mező megjelenjen (I/N)

  - Bruttó bérigény megadása kötelező (I/N)

  - Szerepkörök hozzárendelése:

`o` Toborzók

         - Toborzó1

         - Toborzó2

`o` Engedélyező

`o` Vezetők - *innercomponent*

         - MJGY – több is megadható

         - Vezető – több is megadható

*3.3.1.3* *Álláshirdetés szöveg*

Egy keresési kérelem alá több álláshirdetés szöveget is meg lehet adni (pl. junior, senior, stb.)

Álláshirdetési szöveg státuszai az alábbiak lehetnek

  - **Terv**

Az álláshirdetés szöveg létre lett hozva, de még nem engedélyezték, vagy engedélyezés után módosították.
Bármeddig maradhat ebbe a státuszba az álláshirdetés szöveg. Innen csak Elküldött státuszt tud
kiválasztani, további státuszok nem kiválaszthatók.

  - **Elküldött**

Az álláshirdetés szövege engedélyezésre el lett küldve az engedélyezőnek, és megjelenik a

feladatkosarában.

(Ha toborzó megnyitja az álláshirdetést a keresési kérelemből, a státusz ilyenkor read only,
folyamatgazdának is; akkor is ha ők az engedélyezők).

  - **Engedélyezett**

Az álláshirdetés szövegét engedélyezték. A felhasználó itt módosíthatja még a szöveget, de akkor újra
Terv státuszú lesz, illetve publikálást indíthat el (módosítás nélkül). Megjelenik a kártyán a publikálás
gomb (ha itt publikálnak, akkor változik a státusz), az űrlapot megnyitva két lehetőség van jogosultságtól
függően:

`o` Toborzó nyitja meg: neki minden readonly az űrlapon, nem változtathat
`o` Toborzási folyamatgazda nyitja meg: a státuszt átállíthatja terv-re (azután majd a toborzó is tudja

szerkeszteni), vagy lezárt-ra. A többi mezőt is módosíthatja.

  - **Publikált**

Az álláshirdetést publikálták. Ezt a státuszt a publikálási folyamat állítja be, űrlapot megnyitva jogosultság

szerint az alábbiak mentén működik:

`o` Toborzó nyitja meg: neki minden readonly az űrlapon, nem változtathat
`o` Toborzási folyamatgazda nyitja meg: minden mezőn módosíthat, a státuszt innen csak Lezárt-ra

állíthatja át, másra nem.

  - **Lejárt**
Éjszakai job figyeli, és ha a lejárati dátum eltelik, beállítja ezt a státuszt. Ilyenkor már csak folyamatgazda
nyithatja meg szerkesztésre az űrlapot (Toborzónak minden readonly), státuszt pedig csak lezártra
állíthatja.

  - **Lezárt**

A KEX állásajánlatok lezárása zárja le az álláshirdetés szövegeket is.

**MÁV Szolgáltató Központ Zrt. IT Üzletág**
*1087 Budapest, Könyves Kálmán krt. 54-60. Tel.: +36-1 457-9300; fax: +36-1 457-9500; e-mail: it@mav-szk.hu*


-----

Álláshirdetés szöveg létrehozható újként, vagy egy kiválasztott álláshirdetés másolataként. A másolandó
álláshirdetés bármilyen státuszú lehet, a másolás folyamán egy új álláshirdetési szöveg jön létre.

Az álláshirdetés szöveg fogja tartalmazni magának a hirdetésnek a szövegét, amelyet az egyes platformok felé lehet
majd publikálni. Nincs korlátozva a keresési kérelmek alatti álláshirdetések száma.

Az alábbi adatok rögzítésére lesz lehetőség:

  - Hirdetésszöveg (több is lehetséges)

`o` Álláshirdetés címe

`o` Álláshirdetés státusza (Terv, Elküldött, Engedélyezett, Publikált, Lezárt, Lejárt)
`o` Álláshirdetés lejárati dátuma

`o` Fénykép URL

`o` Video URL

`o` Fejléc szöveg (minden hirdetésnél szabadon szerkeszthető)
`o` Új munkatársunk feladatai lesznek

`o` Amire a munkakör betöltéséhez szükség van

`o` Tulajdonságok, melyek számunkra fontosak

`o` Előnyként értékeljük

`o` Amit ajánlunk

`o` Toborzó neve

`o` Toborzó telefonszáma

`o` Vállalati bemutatkozó (Kódszótárból)

*3.3.1.4* *Álláshirdetések jóváhagyása*

Minden álláshirdetés szöveget engedélyeztetni kell, mielőtt az publikálásra kerül.

Az engedélyező e-mail üzenetben értesül arról, hogy engedélyezési feladata van, majd a Toborzás feladatkosarába
belépve a feladat kártyájára kattintva hajthatja végre az engedélyezést. A felhasználónak itt lesz lehetősége az
álláshirdetés szöveg előnézetére a jóváhagyás előtt.

Jóváhagyás után az álláshirdetés szöveget létrehozó felhasználó e-mail üzenetben értesül arról, hogy az
álláshirdetést engedélyezték.

*3.3.1.5* *Álláshirdetések publikálása*

A létrehozott álláshirdetéseket minden esetben publikálni kell. Egy álláshirdetést többször is lehet publikálni. A
publikálás előfeltétele minden esetben egy jóváhagyás, amelyet a kérelemben meghatározott Engedélyezőnek
szükséges megtennie.

Platformonként külön-külön publikálható a jóváhagyott álláshirdetés szöveg.

Meg kell adni, hogy mettől meddig legyen elérhető az álláshirdetés az adott platformon (pl.: MÁV-csoport portál,
CV Online, stb.), majd el kell indítani a publikálását.

Előnézet megtekintésére lehetőség lesz a publikálás elindítása előtt.

A publikálás elindítása után a rendszer interfészeken keresztül elindítja az egyes platformok felé a publikálási
folyamatot, és az álláshirdetések automatikusan megjelennek a megadott állásportálokon.

**MÁV Szolgáltató Központ Zrt. IT Üzletág**
*1087 Budapest, Könyves Kálmán krt. 54-60. Tel.: +36-1 457-9300; fax: +36-1 457-9500; e-mail: it@mav-szk.hu*


-----

**sd Publikálás folyamata**

Felhasználó



|publishAllasajanlatRequest()|Col2|Col3|
|---|---|---|
|publishAllasajanlatAnswer (AjanlatLink)|||
||publishAllasajanlatAnswer||
||(AjanlatLink) publishAllasajanlatCVO(AjanlatLink)||
||publishAllasajanla|tPRO(AjanlatLink)|


**MÁV Szolgáltató Központ Zrt. IT Üzletág**
*1087 Budapest, Könyves Kálmán krt. 54-60. Tel.: +36-1 457-9300; fax: +36-1 457-9500; e-mail: it@mav-szk.hu*


-----

##### 3.4 Követelmény modell

**MÁV Szolgáltató Központ Zrt. IT Üzletág**
*1087 Budapest, Könyves Kálmán krt. 54-60. Tel.: +36-1 457-9300; fax: +36-1 457-9500; e-mail: it@mav-szk.hu*


-----

### 4 Folyamat modell – Üzleti folyamatok
##### 4.1 Álláshirdetés folyamata

Az álláshirdetés az alábbi magas szintű folyamat szerint lesz végrehajtható:












A Karrier Excel modulban jelenleg Álláshirdetés szövegeket kezel a rendszer, és ahhoz kapcsolódóan gyűjti a
jelentkezőket. Ez továbbra is így marad majd, viszont az Álláshirdetés szövegek előtti lépésként megjelenik a
keresési kérelem. Egy keresési kérelem alá több álláshirdetés tartozhat majd a jövőben.

**MÁV Szolgáltató Központ Zrt. IT Üzletág**
*1087 Budapest, Könyves Kálmán krt. 54-60. Tel.: +36-1 457-9300; fax: +36-1 457-9500; e-mail: it@mav-szk.hu*


-----

### 5 Felület modell – Képernyők bemutatása
##### 5.1 Az Effector Platform bemutatása

Ebben a fejezetben az Effector platform általános bemutatása olvasható, melynek kialakítása nem köthető a
megvalósítandó rendszerhez.
###### 5.1.1 Felhasználói felület

Az alábbi pontokban a szoftver felhasználói felületének struktúráját mutatjuk be.

*5.1.1.1* *Felületek felépítése*

**Munkamódszer:** Karrier Excel kiváltás, Szabadságmenedzsment, FEB, VBKJ

**Képernyők:** Kódszótárak, Állásajánlatok és jelentkezők

Munkamódszerek Képernyők Panel funkciók Felhasználói funkciók

Panel 1.

Panel 2.

*5.1.1.2* *Információs kártyák*

Az Effector rendszer szolgáltatásai között található az a nézetváltási mód, amely segítségével egy táblázatos
formában megjelenített adathalmazt információs kártyák segítségével is képes megjeleníteni egy kattintás
segítségével. Az információs kártyák HTML kóddal kerülnek felépítésre.

A megoldás előnye, hogy grafikai elemekkel, színekkel és képekkel lehet tömöríteni az információt, így egy-egy
adathalom áttekintése egyszerűbbé és gyorsabbá válik.

**MÁV Szolgáltató Központ Zrt. IT Üzletág**
*1087 Budapest, Könyves Kálmán krt. 54-60. Tel.: +36-1 457-9300; fax: +36-1 457-9500; e-mail: it@mav-szk.hu*


-----

*5.1.1.3* *Funkciógombok*

A gombra bal egér gombbal egyszer kattintva a program kezdőképernyője töltődik be.

Profil

módosítása /

Oldal újra
töltése /


Kijelentkezés

Gyorslinkek


A gombra kattintva a felhasználónak lehetősége nyílik a profilja szerkesztésére, az oldal újra
töltésére illetve a rendszerből való kijelentkezésre.

A gyorslinkek olyan korábban elmentett képernyők, melyek egy kattintással érhetőek el ebből
a menüből. Ilyenkor nem csak a mentett képernyő töltődik be, hanem ugyanazok a beállítások
(szűrők, rendezések, oszlopok láthatósága, mérete, sorrendje), amelyek a mentés
pillanatában be voltak állítva.

A gombra történő kattintás hatására megnyílik a gyorslinkek menü, ahol a felhasználónak
lehetősége van:

   Új gyorslink hozzáadására az aktuális nézetről az

gombra történő kattintással.

   A korábban felvett gyorslinkek megnyitására a nevükre történő kattintással:

`o` Az alapértelmezett kezdőképernyő

`o` Felhasználó által mentett gyorslinkek

`o` Az utolsó kijelentkezés előtti képernyő

   Az egyes gyorslinkek kezelésére a nevük mellett található ikonra történő

kattintással van lehetőség:

`o` Beállítás alapértelmezett kezdő képernyőnek:

`o` Elnevezés szerkesztése:

`o` Frissítés az aktuális nézetre:


**MÁV Szolgáltató Központ Zrt. IT Üzletág**
*1087 Budapest, Könyves Kálmán krt. 54-60. Tel.: +36-1 457-9300; fax: +36-1 457-9500; e-mail: it@mav-szk.hu*


-----

Munkafolyamat
térkép

Menüpont

nézet váltás

Bezárás

Panel

méretezése

Panel fejléc
elrejtése

Eszköztár

elrejtése /
megjelenítése

Szűrő panel
elrejtése /
megjelenítése

Nézet váltás:

Lista nézet

Nézet váltás:

Kártya nézet


`o` Eltávolítás:

A gombra kattintva megtekinthetők a rendszer menüpontjai és azok képernyői. A gomb a
képernyő bal felső sarkában található.

A gombra kattintva a menüpontok nézete változtatható meg.

A megnyitott panelt zárja be a gomb. Ilyenkor a módosított adatok nem kerülnek mentésre a

rendszerben.

A gombra kattintva az alapértelmezett panel kiszélesedik, az ellenkező irányú nyílra kattintva
visszaáll alaphelyzetbe.

A gombra történő kattintás hatására a panel fejléce elrejtésre kerül. A lefelé mutató nyílra
történő kattintás hatására a panel fejléc újra láthatóvá válik. Ez a funkciógomb megtalálható
mindegyik képernyő jobb felső sarkában.

A gombra történő kattintással a panelen található eszköztár elrejthető / megjeleníthető. A
gomb megtalálható mindegyik főmenü panel jobb felső sarkában.

A gombra történő kattintással a panelen található szűrő eszköztár elrejthető / megjeleníthető.
A gomb megtalálható mindegyik főmenü panel jobb felső sarkában.

A gombra kattintva az alapértelmezett kártya nézetről lista nézetre, vagy lista nézetről kártya
nézetre válthat a felhasználó. A két forma kinézete a következő képeken kerül bemutatásra:

Kártyanézet:

Lista nézet:


**MÁV Szolgáltató Központ Zrt. IT Üzletág**
*1087 Budapest, Könyves Kálmán krt. 54-60. Tel.: +36-1 457-9300; fax: +36-1 457-9500; e-mail: it@mav-szk.hu*


-----

Frissítés

Látható elemek

száma


A gombra történő kattintás hatására az aktuális képernyő adatai újra betöltésre kerülnek.

Az adott nézetben aktuálisan megjelenített elemek számát mutatja


Szűrőfeltételt lehet megadni az adott oszlopra vonatkozóan.
Szűrés

Rendezni lehet a táblázat sorait növekvő/csökkenő sorrendbe.

Rendezés

Oszlop elrejtése [Az adott oszlop elrejtésére szolgál. ]

Az adott űrlap, lépés stb. rögzítéséhez szükséges.

Mentés

Az adott űrlap, lépés stb. módosításainak elvetéséhez szükséges.

Mégsem


Törlés


Az adott űrlap, lépés stb. törléséhez szükséges. A gombra történő kattintás hatására
figyelmeztető üzenet jelenik meg „Biztosan törölni szeretné?” Igen / Mégsem gombokkal.


*5.1.1.4* *Szűrő mezők*

Szabadszöveges szűrőmező

Legördülő lista

Időszak szűrő


Szövegre, szövegrészletre szűr. Ehhez semmiféle ún. joker
karakter használata nem szükséges.

Az összes elérhető elem közül egy listából van lehetősége

a felhasználónak választani.

A lista a ikonra történő kattintással nyitható le.

Az ikonra történő kattintás hatására a kiválasztott érték

törlésre kerül a mezőből, a szűrést megszüntetve ezzel.

A ikonra történő kattintás hatására az aktuálisan

bejelentkezett felhasználó kerül kiválasztásra.

A szűrővel egy időszak beállítására van lehetősége a
felhasználónak a kezdő dátum és a vég dátum
megadásával.

A ikonnal választható ki az adott időszak, amelyre a
felhasználó szűrni szeretne (pl. Ma).

A ikonnal naptárból tudja választani a felhasználó a
dátumokat. Amennyiben ki van választva egy időtartam, az

időben előre és hátra a és ikonokkal lehet mozogni.

Időszak törlésére az ikonnal van lehetőség.


**MÁV Szolgáltató Központ Zrt. IT Üzletág**
*1087 Budapest, Könyves Kálmán krt. 54-60. Tel.: +36-1 457-9300; fax: +36-1 457-9500; e-mail: it@mav-szk.hu*


-----

Jelölőnégyzet

*5.1.1.5* *Adat mezők*


Ezzel a fajta szűrővel az Igen / Nem típusú adathalmaz
szűrhető. A négyzet állapotai:

: igen

: nem

: mindkettő


Az űrlapok kitöltése során különböző mező típusok találhatók, a fejezet ezek felsorolását és rövid bemutatását

tartalmazza.


Szabadszöveges vagy szám mező

Maszkolt mező

Legördülő lista

Több soros szabadszöveges mező

Értékválasztó mező

Dátum mező

Fájlfeltöltést jelölő mező

Jelölőnégyzet


A mezőbe szabadon szöveg vagy szám írható be.

A mezőbe írt érték a ikonra történő kattintással

törölhető.

A mezőbe csak az előre megadott formátumba írhatók be
számok vagy betűk.

Az összes elérhető elem közül egy listából van lehetősége

a felhasználónak választani.

A lista a ikonra történő kattintással nyitható le.

A mezőbe írt érték a ikonra történő kattintással

törölhető.

Szabadszöveges mező, melyben hosszabb szöveg adható

meg.
Mérete a jobb alsó sarok egérrel történő húzása esetén

állítható.

Az elérhető elemek közül egy új ablakban tud választani

a felhasználó a ikonra történő kattintás hatására.

Dátum és időpont bevitelére szolgáló mező. Kitölthető

billentyűzetről, vagy a ikonra történő kattintással
felnyíló naptárból kattintással választható ki.

A ikonra történő kattintás hatására megnyílik a fájl
kiválasztására szolgáló ablak.

Igen / Nem típusú érték megadására szolgál. Állapotai:

: Igen

: Nem


Kötelezően kitöltendő mező A kötelezően kitöltendő mezők kitöltése nélkül a

szerkesztett adatok nem menthetők. Ezek a mezők

narancssárga színnel vannak jelölve.

**MÁV Szolgáltató Központ Zrt. IT Üzletág**
*1087 Budapest, Könyves Kálmán krt. 54-60. Tel.: +36-1 457-9300; fax: +36-1 457-9500; e-mail: it@mav-szk.hu*


-----

Nem szerkeszthető mező
###### 5.1.2 Effector rendszerfunkciók


Bármely típusú mező esetén, ha az szürke háttérrel
rendelkezik, akkor értéke rögzített, nem módosítható.


Ebben a fejezetben az Effector platform alap funkciói kerülnek bemutatásra. Ezek a funkciók nem a jelen fejlesztés
során kerülnek kialakításra, minden Effector platformon futó alkalmazás rendelkezik az alábbi funkcionalitásokkal.

*5.1.2.1* *Licenc kezelés*

Az Effector platform licencköteles termék (felhasználási feltételek: Effector EULA 2.1 [http://oriana.hu/eula)](http://oriana.hu/eula) .

Az eléréshez szükséges licencek disztribúcióját az Effector platformba épített Licence szerver és kliens funkciók
végzik.

A megvásárolt licencek típusát és számát Szállító ajánlata, illetve a majdani licencigazolás tartalmazza.

A kialakított teszt környezetre a Megrendelő annyi licencet igényelhet, amennyi a zavartalan és teljes körű
teszteléshez szükséges (figyelembe véve a tesztelők (kulcsfelhasználók) és a különböző jogosultsági körök számát).

Ez a licencszám azonban semmi esetre sem haladhatja meg Megrendelő által megvásárolt licencek számát
(típusonként). A megrendelőnek korlátlan licencszáma van.

*5.1.2.2* *Felhasználók és jogosultságok kezelése*

A jogosultságok kezelése a következők szerint történik az Effectorban:

  - **licence alapú felhasználói hozzáférés**

Felhasználó rögzítése: *Licence kezelő (Szerver)* munkamódszer

  - **felhasználói csoporttagság**

Csoport beállítás: *Licence kezelő (Kliens)* és *Licence kezelő (Szerver)* munkamódszerek

  - **felhasználói jogosultság alkalmazás példány(ok) használatára**

Alkalmazás példány jogosultság beállítás: *Licence kezelő (Szerver)* munkamódszer

A kliens oldali képernyőkön (Licence kezelő – Kliens) keresztül a felhasználók csoport jogosultsága szerkeszthető,
az adott alkalmazás példány tekintetében. Az adott alkalmazás példány alatt értjük azt a rendszert, melybe az
Adminisztrátor felhasználó aktuálisan be van jelentkezve.

A *Licence kezelő (Kliens)* képernyőn tehát a csoportnak **az adott alkalmazás példány** (melyben az HÖP
Adminisztrátor elvégzi a beállításokat) **vonatkozásában**, a csoporttal kapcsolatos módosításai végezhetők el.

5.1.2.2.1 Felhasználói csoportok kezelése

Az Effector platform lehetőséget biztosít arra, hogy a felhasználókat felhasználói csoportokba rendezzük, majd az
egyes felhasználói csoportoknak láthatósági jogosultságot állítsunk be képernyő szinten.

**MÁV Szolgáltató Központ Zrt. IT Üzletág**
*1087 Budapest, Könyves Kálmán krt. 54-60. Tel.: +36-1 457-9300; fax: +36-1 457-9500; e-mail: it@mav-szk.hu*


-----

A felhasználói csoportok kezelésére a *Licence kezelő (Kliens)* munkamódszeren, a *Csoportok* képernyőn van
lehetőség.





*5.1.2.2.1.1* *Felhasználói csoportok létrehozása*

A bal oldali panelen az gombra történő kattintással van lehetőség új felhasználói csoport létrehozására.

Az gombra kattintással szükséges megadni az új csoport megnevezését.

A gombra történő kattintás hatására létrejön a csoport.

*5.1.2.2.1.2* *Felhasználói csoportok törlése*

Egy felhasználói csoport törlésére a törölni kívánt csoport kijelölése után a gombra történő kattintással
van lehetőség.

**MÁV Szolgáltató Központ Zrt. IT Üzletág**
*1087 Budapest, Könyves Kálmán krt. 54-60. Tel.: +36-1 457-9300; fax: +36-1 457-9500; e-mail: it@mav-szk.hu*


-----

*5.1.2.2.1.3* *Felhasználó hozzáadása, törlése felhasználói csoportból*

A bal oldali panelen kiválasztott csoporthoz tartozó felhasználók a jobb alsó panelen láthatóak. Felhasználó
hozzáadására a gomb megnyomásával van lehetőség.

Ekkor a felnyíló ablakban a Felhasználó lenyíló menüből a felhasználó kiválasztása után a gombra történő
kattintás hatására a kiválasztott felhasználó bekerül a csoportba.

A kijelölt felhasználó csoportból való eltávolítására a gombra történő kattintással van
lehetőség.

5.1.2.2.2 Felhasználó összes csoport tagságának kezelése

Az egyes felhasználók összes csoporttagságát a *Licence kezelő (Kliens)* munkamódszeren, a *Felhasználók* képernyőn
van lehetőség adminisztrálni.

**MÁV Szolgáltató Központ Zrt. IT Üzletág**
*1087 Budapest, Könyves Kálmán krt. 54-60. Tel.: +36-1 457-9300; fax: +36-1 457-9500; e-mail: it@mav-szk.hu*


-----

A kijelölt felhasználó csoportjai a jobb oldali *Csoport tagságok* panelen láthatóak. Ezen a képernyőn lehetőség van

a kijelölt felhasználót új csoporthoz hozzárendelni a gombra történő kattintással, illetve lehetőség van

csoportból eltávolítani a csoport kijelölésével és a gombra történő kattintással.

A gombbal a *Licence kezelő (Szerver)* oldalon létrehozott vagy törölt felhasználókat a kliens oldalon is
szinkronizálni lehet. A szinkronizálás után csoportokba lehet rendezni az új felhasználókat.

(Alapvetően az adott felhasználó belépése után is történik szinkronizáció. A szinkronizáció manuális indításának
hiányában a csoportba rendezés csak a felhasználó belépése után történhet meg.)

A HÖP rendszerben ez a gomb semmilyen hatással nem lesz a felhasználókra, mivel a szinkronizáció automatikusan
meg fog történni.

**MÁV Szolgáltató Központ Zrt. IT Üzletág**
*1087 Budapest, Könyves Kálmán krt. 54-60. Tel.: +36-1 457-9300; fax: +36-1 457-9500; e-mail: it@mav-szk.hu*


-----

5.1.2.2.3 Munkamódszerek és képernyők láthatóságának beállítása

Ebben a fejezetben a korábban létrehozott felhasználói csoportok jogosultságainak beállítása kerül kifejtésre. A
látható menüelemek beállítására a *Licence kezelő (Kliens)* munkamódszeren, a *Csoportok* képernyőn van lehetőség.

A bal oldali panelen kijelölt felhasználói csoporthoz tartozó menüelemek kezelésére a jobb felső panelen ( *Látható*

*menüelemek* ) található gombra történő kattintással történhet.

A gombra kattintva az alábbi képernyő lesz látható:

A képernyőn lehetőség van a különböző munkamódszerek és az azok alá tartozó képernyők láthatóságának ki- és
bekapcsolására. A képernyő bal oldalán a munkamódszerek, a képernyő jobb oldalán pedig a kijelölt
munkamódszerhez tartozó képernyők láthatóak.

A „ *Láthatóság ki/bekapcsolása* ” linkre kattintva van lehetőség az egész munkamódszer vagy akár az egyes
képernyők láthatóságának állítására.

**MÁV Szolgáltató Központ Zrt. IT Üzletág**
*1087 Budapest, Könyves Kálmán krt. 54-60. Tel.: +36-1 457-9300; fax: +36-1 457-9500; e-mail: it@mav-szk.hu*


-----

és

A színes munkamódszer jelöli a látható, a szürke a nem látható munkamódszert vagy képernyőt.

Ha egy felhasználónak Light User Licenc kerül kiosztásra, akkor a Licenc fájl előállításakor beégetett képernyők
láthatóak csak az ő számára. (Ezekből a fenti módszerrel láthatóság kikapcsolható, de helyette másik képernyő
nem állítható be.)

*5.1.2.3* *Naplózás*

5.1.2.3.1 Felhasználók által végzett adatmódosítás naplózása

Az Effector platform a rajta futó alkalmazások felhasználói felületein keresztül érkező adatbázis állapotot érintő
módosításokat automatikusan naplózza. A naplóbejegyzések az adatbázisban kerülnek tárolásra elkülönített

területen.

A naplózás során a következő adatok kerülnek bejegyzésre:

  - Változtatott adat leírása,

  - Változtatott adat eredeti értéke,

  - Változtatott adat módosított értéke,

  - Változás időpillanata,

  - Változást kezdeményező felhasználó.

A naplóállományok dedikált adatbázis táblákban helyezkednek el. Ezek elérhetőek a Microsoft SQL Server
Management Studio alkalmazás segítségével. Program beöltését követően csatlakozni kell az adatbázisszerverhez,
majd kiválasztani az adatbázist, azon belül a Tables katalógust lenyitva ki kell keresni a felsorolt táblaneveket:

  - FSYS_Log: A keretrendszer a mezők értékének változását ebben a táblában rögzíti. A BoType és BoTemplate

mezők írják le, hogy milyen objektum változott, a BoID pedig, hogy mi volt az objektum azonosítója.

  - Értelem szerűen a könnyebb olvasást elősegítendő BoType a fő objektum, BoTemplate pedig annak egy

leszármazottja; például projekt és a különböző projektek típusai.

  - FSYS_LongSessions: A felületen történt belépés után ebben a táblában rögzítjük a bejelentkezett

felhasználó azonosítóját (UserID) és a kertrendszer által generált azonosítót (LongSessionID), továbbá a
bejelentkezés/kijelentkezés dátumát (LoginDate/LogoutDate).

5.1.2.3.2 Futás közbeni hibák naplózása

Az alkalmazás használata során bekövetkező hiba esetén referencia számsor azonosítja a hibát. Egy hiba részletes
leírását az IIS szerveren a telepítéskor beállított elérési útvonalon belül a _temp/errorlog.log kiterjesztésű fájljai
tartalmazzák. Ezek a leírások szintén megtalálhatóak a rendszeren belül a Hibanapló képernyőn (LHS/Hibanapló).

Ezt az oldalt csak IT adminisztrátori jogokkal rendelkező felhasználó tekintheti meg. Hibanaplóba történő bejegyzés
létrejöttekor a rendszer nem küld automatikus e-mail-t.

**MÁV Szolgáltató Központ Zrt. IT Üzletág**
*1087 Budapest, Könyves Kálmán krt. 54-60. Tel.: +36-1 457-9300; fax: +36-1 457-9500; e-mail: it@mav-szk.hu*


-----

##### 5.2 Kódszótárak

Kódszótárakban fogja kezelni a TOB azokat a törzsadatokat, amelyek az űrlapok valamely elemének választási
lehetőségeit tartalmazzák.
###### 5.2.1 Kódszótár – Területi igazgatóságok képernyő működése

A kódszótár karbantartó képernyője az alábbiak szerint fog megjelenni a képernyőn:

Látható, hogy adat szinten az alábbi oszlopokat tartalmazza:

  - Sorszám

  - CV Online külső kód

  - Startapró külső kód

  - Csoportportál külső kód

  - Igazgatóságok

  - Vállalatkód

Az egyes sorszámokra kattintva szerkeszthetők a hozzá tartozó Területi igazgatóság adatok. Új elem gomb
szerepel a képernyőn, mivel újabb területi igazgatóságok vehetők fel a HÖP adminisztrátorok által.

**MÁV Szolgáltató Központ Zrt. IT Üzletág**
*1087 Budapest, Könyves Kálmán krt. 54-60. Tel.: +36-1 457-9300; fax: +36-1 457-9500; e-mail: it@mav-szk.hu*


-----

|Felirat|Kontrol elem típusa|Hossz|Alapértelmezett érték|Kötelezőség|Egyéb|
|---|---|---|---|---|---|
|[KódszótárNeve]ID|Autocomplete|Int|következő sorszám|Igen|Nem szerkeszthető|
|CV online külső kód|Textbox|Char100|Üres|Nem||
|Startapró külső kód|Textbox|Char100|Üres|Nem||
|Csoportportál külső kód|Textbox|Char100|Üres|Nem||
|Igazgatóságok|Textbox|Char100|Üres|Igen||
|Vállalat kód|Dropdown list|int|Üres|Igen||
|Deleted|-nem látható-|Boolean|0|Igen|0=Aktív, 1=Törölt|


Az adatbázisban a tábla neve:

*5.2.1.1* *Jogosultságkezelés*
A kódszótár karbantartó képernyőket a HÖP adminisztrátor tudja elérni szerkesztési joggal, más számára a
képernyők menüpontjai nem láthatók.

*5.2.1.2* *Hibakezelés/Rendszerüzenetek*
Az adott képernyőhöz tartozó különféle rendszerüzenetek, hibaüzenetek felsorolása az alábbi táblázat szerint.





|Esetleírás (HA)|Hibaüzenet (AKKOR)|Jelzés típusa|Futás befolyásolás|
|---|---|---|---|
|Igazgatóságok mező üres|Az igazgatóságokmező kitöltése kötelező!|Hiba|Nem menti el a kódszótár rekordot.|
|Vállalat kód mező üres|A vállalat kód mező kitöltése kötelező!|Hiba|Nem menti el a kódszótár rekordot.|
|Törlés esemény, ha az adott rekordra van hivatkozás egy másik táblából.|Az adott kódszótár rekord használatban van, nem törölhető!|Hiba|Kódszótár elem nem törölhető!|


**MÁV Szolgáltató Központ Zrt. IT Üzletág**
*1087 Budapest, Könyves Kálmán krt. 54-60. Tel.: +36-1 457-9300; fax: +36-1 457-9500; e-mail: it@mav-szk.hu*


-----

*5.2.1.3* *Hívott szolgáltatások*
Az adott képernyőhöz tartozó szolgáltatások felsorolása az alábbi táblázat szerint.

|Funkciógomb/link/vezérlőelem esemény|Hívott ablak|Hívott szolgáltatás|
|---|---|---|
|Ablakbetöltés|-|Kódszótár lista betöltése|
|Új elem gomb|Területi igazgatóságok képernyő meghívása.||

###### 5.2.2 Kódszótár – Szakképzés fajta képernyő működése

A kódszótár karbantartó képernyője az alábbiak szerint fog megjelenni a képernyőn:

Látható, hogy adat szinten az alábbi oszlopokat tartalmazza:

  - Sorszám

  - CV Online külső kód

  - Startapró külső kód

  - Csoportportál külső kód

  - Szakképzés fajta

Az egyes sorszámokra kattintva szerkeszthetők a hozzá tartozó Szakképzés fajta adatok. Új elem gomb szerepel a
képernyőn, mivel újabb sorok vehetők fel a HÖP adminisztrátorok által.

**MÁV Szolgáltató Központ Zrt. IT Üzletág**
*1087 Budapest, Könyves Kálmán krt. 54-60. Tel.: +36-1 457-9300; fax: +36-1 457-9500; e-mail: it@mav-szk.hu*


-----

|Felirat|Kontrol elem típusa|Hossz|Alapértelmezett érték|Kötelezőség|Egyéb|
|---|---|---|---|---|---|
|[KódszótárNeve]ID|Autocomplete|Int|következő sorszám|Igen|Nem szerkeszthető|
|CV online külső kód|Textbox|Char100|Üres|Nem||
|Startapró külső kód|Textbox|Char100|Üres|Nem||
|Csoportportál külső kód|Textbox|Char100|Üres|Nem||
|Szakképzés fajta|Textbox|Char100|Üres|Igen||
|Deleted|-nem látható-|Boolean|0|Igen|0=Aktív, 1=Törölt|


Az adatbázisban a tábla neve:

*5.2.2.1* *Jogosultságkezelés*
A kódszótár karbantartó képernyőket a HÖP adminisztrátor tudja elérni szerkesztési joggal, más számára a
képernyők menüpontjai nem láthatók.

*5.2.2.2* *Hibakezelés/Rendszerüzenetek*
Az adott képernyőhöz tartozó különféle rendszerüzenetek, hibaüzenetek felsorolása az alábbi táblázat szerint.





|Esetleírás (HA)|Hibaüzenet (AKKOR)|Jelzés típusa|Futás befolyásolás|
|---|---|---|---|
|Szakképzés fajta mező üres|A Szakképzés fajta mező kitöltése kötelező!|Hiba|Nem menti el a kódszótár rekordot.|
|Törlés esemény, ha az adott rekordra van hivatkozás egy másik táblából.|Az adott kódszótár rekord használatban van, nem törölhető!|Hiba|Kódszótár elem nem törölhető!|


*5.2.2.3* *Hívott szolgáltatások*
Az adott képernyőhöz tartozó szolgáltatások felsorolása az alábbi táblázat szerint.

**MÁV Szolgáltató Központ Zrt. IT Üzletág**
*1087 Budapest, Könyves Kálmán krt. 54-60. Tel.: +36-1 457-9300; fax: +36-1 457-9500; e-mail: it@mav-szk.hu*


-----

|Funkciógomb/link/vezérlőelem esemény|Hívott ablak|Hívott szolgáltatás|
|---|---|---|
|Ablakbetöltés|-|Kódszótár lista betöltése|
|Új elem gomb|Szakképzés fajta űrlap||


**MÁV Szolgáltató Központ Zrt. IT Üzletág**
*1087 Budapest, Könyves Kálmán krt. 54-60. Tel.: +36-1 457-9300; fax: +36-1 457-9500; e-mail: it@mav-szk.hu*


-----

###### 5.2.3 Kódszótár – Településlista képernyő működése

A kódszótár karbantartó képernyője az alábbiak szerint fog megjelenni a képernyőn:

Látható, hogy adat szinten az alábbi oszlopokat tartalmazza:

  - Sorszám

  - CV Online külső kód

  - Startapró külső kód

  - Település

Az egyes sorszámokra kattintva szerkeszthetők a hozzá tartozó Szakképzés fajta adatok. Új elem gomb szerepel a
képernyőn, mivel újabb sorok vehetők fel a HÖP adminisztrátorok által.

**MÁV Szolgáltató Központ Zrt. IT Üzletág**
*1087 Budapest, Könyves Kálmán krt. 54-60. Tel.: +36-1 457-9300; fax: +36-1 457-9500; e-mail: it@mav-szk.hu*


-----

|Felirat|Kontrol elem típusa|Hossz|Alapértelmezett érték|Kötelezőség|Egyéb|
|---|---|---|---|---|---|
|[KódszótárNeve]ID|Autocomplete|Int|következő sorszám|Igen|Nem szerkeszthető|
|CV online külső kód|Textbox|Char100|Üres|Nem||
|Startapró külső kód|Textbox|Char100|Üres|Nem||
|Település|Textbox|Char100|Üres|Igen||
|Deleted|-nem látható-|Boolean|0|Igen|0=Aktív, 1=Törölt|


Az adatbázisban a tábla neve:

*5.2.3.1* *Jogosultságkezelés*
A kódszótár karbantartó képernyőket a HÖP adminisztrátor tudja elérni szerkesztési joggal, más számára a
képernyők menüpontjai nem láthatók.

*5.2.3.2* *Hibakezelés/Rendszerüzenetek*
Az adott képernyőhöz tartozó különféle rendszerüzenetek, hibaüzenetek felsorolása az alábbi táblázat szerint.





|Esetleírás (HA)|Hibaüzenet (AKKOR)|Jelzés típusa|Futás befolyásolás|
|---|---|---|---|
|Település mező üres|A Település mező kitöltése kötelező!|Hiba|Nem menti el a kódszótár rekordot.|
|Törlés esemény, ha az adott rekordra van hivatkozás egy másik táblából.|Az adott kódszótár rekord használatban van, nem törölhető!|Hiba|Kódszótár elem nem törölhető!|


*5.2.3.3* *Hívott szolgáltatások*
Az adott képernyőhöz tartozó szolgáltatások felsorolása az alábbi táblázat szerint.

|Funkciógomb/link/vezérlőelem esemény|Hívott ablak|Hívott szolgáltatás|
|---|---|---|
|Ablakbetöltés|-|Kódszótár lista betöltése|
|Új elem gomb|Településlista űrlap||



**MÁV Szolgáltató Központ Zrt. IT Üzletág**
*1087 Budapest, Könyves Kálmán krt. 54-60. Tel.: +36-1 457-9300; fax: +36-1 457-9500; e-mail: it@mav-szk.hu*


-----

###### 5.2.4 Kódszótár – Munkakör csoport képernyő működése

A kódszótár karbantartó képernyője az alábbiak szerint fog megjelenni a képernyőn:

Látható, hogy adat szinten az alábbi oszlopokat tartalmazza:

  - Sorszám

  - CV Online külső kód

  - Startapró külső kód

  - Csoportportál külső kód

  - Munkakör csoport

Az egyes sorszámokra kattintva szerkeszthetők a hozzá tartozó Területi igazgatóság adatok. Új elem gomb
szerepel a képernyőn, mivel újabb területi igazgatóságok vehetők fel a HÖP adminisztrátorok által.





|Felirat|Kontrol elem típusa|Hossz|Alapértelmezett érték|Kötelezőség|Egyéb|
|---|---|---|---|---|---|
|[KódszótárNeve]ID|Autocomplete|Int|következő sorszám|Igen|Nem szerkeszthető|
|CV online külső kód|Textbox|Char100|Üres|Nem||
|Startapró külső kód|Textbox|Char100|Üres|Nem||


**MÁV Szolgáltató Központ Zrt. IT Üzletág**
*1087 Budapest, Könyves Kálmán krt. 54-60. Tel.: +36-1 457-9300; fax: +36-1 457-9500; e-mail: it@mav-szk.hu*


-----

|Felirat|Kontrol elem típusa|Hossz|Alapértelmezett érték|Kötelezőség|Egyéb|
|---|---|---|---|---|---|
|Csoportportál külső kód|Textbox|Char100|Üres|Nem||
|Munkakör csoport|Textbox|Char100|Üres|Igen||
|Deleted|-nem látható-|Boolean|0|Igen|0=Aktív, 1=Törölt|


Az adatbázisban a tábla neve:

*5.2.4.1* *Jogosultságkezelés*
A kódszótár karbantartó képernyőket a HÖP adminisztrátor tudja elérni szerkesztési joggal, más számára a
képernyők menüpontjai nem láthatók.

*5.2.4.2* *Hibakezelés/Rendszerüzenetek*
Az adott képernyőhöz tartozó különféle rendszerüzenetek, hibaüzenetek felsorolása az alábbi táblázat szerint.





|Esetleírás (HA)|Hibaüzenet (AKKOR)|Jelzés típusa|Futás befolyásolás|
|---|---|---|---|
|Munkakör csoport mező üres|A Munkakör csoport mező kitöltése kötelező!|Hiba|Nem menti el a kódszótár rekordot.|
|Törlés esemény, ha az adott rekordra van hivatkozás egy másik táblából.|Az adott kódszótár rekord használatban van, nem törölhető!|Hiba|Kódszótár elem nem törölhető!|


*5.2.4.3* *Hívott szolgáltatások*
Az adott képernyőhöz tartozó szolgáltatások felsorolása az alábbi táblázat szerint.

|Funkciógomb/link/vezérlőelem esemény|Hívott ablak|Hívott szolgáltatás|
|---|---|---|
|Ablakbetöltés|-|Kódszótár lista betöltése|
|Új elem gomb|Munkakör csoport űrlap||



**MÁV Szolgáltató Központ Zrt. IT Üzletág**
*1087 Budapest, Könyves Kálmán krt. 54-60. Tel.: +36-1 457-9300; fax: +36-1 457-9500; e-mail: it@mav-szk.hu*


-----

###### 5.2.5 Kódszótár – Foglalkoztatási fok képernyő működése

A kódszótár karbantartó képernyője az alábbiak szerint fog megjelenni a képernyőn:

Látható, hogy adat szinten az alábbi oszlopokat tartalmazza:

  - Sorszám

  - CV Online külső kód

  - Startapró külső kód

  - Csoportportál külső kód

  - Foglalkoztatási fok

Az egyes sorszámokra kattintva szerkeszthetők a hozzá tartozó adatok. Új elem gomb szerepel a képernyőn, mivel
újabb adatok vehetők fel a HÖP adminisztrátorok által.







|Felirat|Kontrol elem típusa|Hossz|Alapértelmezett érték|Kötelezőség|Egyéb|
|---|---|---|---|---|---|
|[KódszótárNeve]ID|Autocomplete|Int|következő sorszám|Igen|Nem szerkeszthető|
|CV online külső kód|Textbox|Char100|Üres|Nem||
|Startapró külső kód|Textbox|Char100|Üres|Nem||
|Csoportportál külső kód|Textbox|Char100|Üres|Nem||


**MÁV Szolgáltató Központ Zrt. IT Üzletág**
*1087 Budapest, Könyves Kálmán krt. 54-60. Tel.: +36-1 457-9300; fax: +36-1 457-9500; e-mail: it@mav-szk.hu*


-----

|Felirat|Kontrol elem típusa|Hossz|Alapértelmezett érték|Kötelezőség|Egyéb|
|---|---|---|---|---|---|
|Foglalkoztatási fok|Textbox|Char100|Üres|Igen||
|Deleted|-nem látható-|Boolean|0|Igen|0=Aktív, 1=Törölt|


Az adatbázisban a tábla neve:

*5.2.5.1* *Jogosultságkezelés*
A kódszótár karbantartó képernyőket a HÖP adminisztrátor tudja elérni szerkesztési joggal, más számára a
képernyők menüpontjai nem láthatók.

*5.2.5.2* *Hibakezelés/Rendszerüzenetek*
Az adott képernyőhöz tartozó különféle rendszerüzenetek, hibaüzenetek felsorolása az alábbi táblázat szerint.





|Esetleírás (HA)|Hibaüzenet (AKKOR)|Jelzés típusa|Futás befolyásolás|
|---|---|---|---|
|Foglalkoztatási fok mező üres|A Foglalkoztatási fok mező kitöltése kötelező!|Hiba|Nem menti el a kódszótár rekordot.|
|Törlés esemény, ha az adott rekordra van hivatkozás egy másik táblából.|Az adott kódszótár rekord használatban van, nem törölhető!|Hiba|Kódszótár elem nem törölhető!|


*5.2.5.3* *Hívott szolgáltatások*
Az adott képernyőhöz tartozó szolgáltatások felsorolása az alábbi táblázat szerint.

|Funkciógomb/link/vezérlőelem esemény|Hívott ablak|Hívott szolgáltatás|
|---|---|---|
|Ablakbetöltés|-|Kódszótár lista betöltése|
|Új elem gomb|Foglalkoztatási fok űrlap||



**MÁV Szolgáltató Központ Zrt. IT Üzletág**
*1087 Budapest, Könyves Kálmán krt. 54-60. Tel.: +36-1 457-9300; fax: +36-1 457-9500; e-mail: it@mav-szk.hu*


-----

###### 5.2.6 Kódszótár – Vállalati bemutatkozó képernyő működése

A kódszótár karbantartó képernyője az alábbiak szerint fog megjelenni a képernyőn:

Látható, hogy adat szinten az alábbi oszlopokat tartalmazza:

  - Sorszám

  - Vállalat

  - Vállalati bemutatkozó

  - CV Online külső kód

  - Startapró külső kód

  - E-mail

Az egyes sorszámokra kattintva szerkeszthetők a hozzá tartozó adatok. Új elem gomb szerepel a képernyőn, mivel
újabb adatok vehetők fel a HÖP adminisztrátorok által.

**MÁV Szolgáltató Központ Zrt. IT Üzletág**
*1087 Budapest, Könyves Kálmán krt. 54-60. Tel.: +36-1 457-9300; fax: +36-1 457-9500; e-mail: it@mav-szk.hu*


-----

|Felirat|Kontrol elem típusa|Hossz|Alapértelmezett érték|Kötelezőség|Egyéb|
|---|---|---|---|---|---|
|[KódszótárNeve]ID|Autocomplete|Int|következő sorszám|Igen|Nem szerkeszthető|
|Vállalat|Dropdown list|int|Üres|Igen||
|CV online külső kód|Textbox|Char100|Üres|Nem||
|Startapró külső kód|Textbox|Char100|Üres|Nem||
|E-mail|Textbox|Char100|Üres|Nem||
|Vállalati bemutatkozó|Multiline Textbox|Text|Üres|Igen||
|Deleted|-nem látható-|Boolean|0|Igen|0=Aktív, 1=Törölt|


Az adatbázisban a tábla neve:

*5.2.6.1* *Jogosultságkezelés*
A kódszótár karbantartó képernyőket a HÖP adminisztrátor tudja elérni szerkesztési joggal, más számára a
képernyők menüpontjai nem láthatók.

*5.2.6.2* *Hibakezelés/Rendszerüzenetek*
Az adott képernyőhöz tartozó különféle rendszerüzenetek, hibaüzenetek felsorolása az alábbi táblázat szerint.





|Esetleírás (HA)|Hibaüzenet (AKKOR)|Jelzés típusa|Futás befolyásolás|
|---|---|---|---|
|Vállalat mező üres|A Vállalat mező kitöltése kötelező!|Hiba|Nem menti el a kódszótár rekordot.|
|Vállalati bemutatkozó mező üres|A Vállalati bemutatkozó mező kitöltése kötelező!|Hiba|Nem menti el a kódszótár rekordot.|
|Törlés esemény, ha az adott rekordra van hivatkozás egy másik táblából.|Az adott kódszótár rekord használatban van, nem törölhető!|Hiba|Kódszótár elem nem törölhető!|


*5.2.6.3* *Hívott szolgáltatások*
Az adott képernyőhöz tartozó szolgáltatások felsorolása az alábbi táblázat szerint.

|Funkciógomb/link/vezérlőelem esemény|Hívott ablak|Hívott szolgáltatás|
|---|---|---|
|Ablakbetöltés|-|Kódszótár lista betöltése|
|Új elem gomb|Vállalati bemutatkozó űrlap||



**MÁV Szolgáltató Központ Zrt. IT Üzletág**
*1087 Budapest, Könyves Kálmán krt. 54-60. Tel.: +36-1 457-9300; fax: +36-1 457-9500; e-mail: it@mav-szk.hu*


-----

###### 5.2.7 Kódszótár – Állásportál szerződés képernyő működése

A kódszótár karbantartó képernyője az alábbiak szerint fog megjelenni a képernyőn:

Látható, hogy adat szinten az alábbi oszlopokat tartalmazza:

  - Sorszám

  - Vállalat

  - Megnevezés

  - Interfész

  Érvényesség kezdete

  Érvényesség vége

Az egyes sorszámokra kattintva szerkeszthetők a hozzá tartozó adatok. Új elem gomb szerepel a képernyőn, mivel
újabb adatok vehetők fel a HÖP adminisztrátorok által.





|Felirat|Kontrol elem típusa|Hossz|Alapértelmezett érték|Kötelezőség|Egyéb|
|---|---|---|---|---|---|
|[KódszótárNeve]ID|Autocomplete|Int|következő sorszám|Igen|Nem szerkeszthető|
|Vállalat|Dropdown list|int|Üres|Nem||


**MÁV Szolgáltató Központ Zrt. IT Üzletág**
*1087 Budapest, Könyves Kálmán krt. 54-60. Tel.: +36-1 457-9300; fax: +36-1 457-9500; e-mail: it@mav-szk.hu*


-----

|Felirat|Kontrol elem típusa|Hossz|Alapértelmezett érték|Kötelezőség|Egyéb|
|---|---|---|---|---|---|
|Megnevezés|Textbox|Char100|Üres|Nem||
|Interfész|Textbox|Char100|Üres|Nem||
|Érvényesség kezdete|Date|date|Üres|Nem||
|Érvényesség vége|Date|date|Üres|Nem||
|Deleted|-nem látható-|Boolean|0|Igen|0=Aktív, 1=Törölt|


Az adatbázisban a tábla neve:

*5.2.7.1* *Jogosultságkezelés*
A kódszótár karbantartó képernyőket a HÖP adminisztrátor tudja elérni szerkesztési joggal, más számára a
képernyők menüpontjai nem láthatók.

*5.2.7.2* *Hibakezelés/Rendszerüzenetek*
Az adott képernyőhöz tartozó különféle rendszerüzenetek, hibaüzenetek felsorolása az alábbi táblázat szerint.




|Esetleírás (HA)|Hibaüzenet (AKKOR)|Jelzés típusa|Futás befolyásolás|
|---|---|---|---|
|Törlés esemény, ha az adott rekordra van hivatkozás egy másik táblából.|Az adott kódszótár rekord használatban van, nem törölhető!|Hiba|Kódszótár elem nem törölhető!|


*5.2.7.3* *Hívott szolgáltatások*
Az adott képernyőhöz tartozó szolgáltatások felsorolása az alábbi táblázat szerint.

|Funkciógomb/link/vezérlőelem esemény|Hívott ablak|Hívott szolgáltatás|
|---|---|---|
|Ablakbetöltés|-|Kódszótár lista betöltése|
|Új elem gomb|Állásportál szerződés szerkesztése űrlap||



**MÁV Szolgáltató Központ Zrt. IT Üzletág**
*1087 Budapest, Könyves Kálmán krt. 54-60. Tel.: +36-1 457-9300; fax: +36-1 457-9500; e-mail: it@mav-szk.hu*


-----

###### 5.2.8 Kódszótár – Keresési kérelem státuszai képernyő működése

A kódszótár karbantartó képernyője az alábbiak szerint fog megjelenni a képernyőn:

Látható, hogy adat szinten az alábbi oszlopokat tartalmazza:

  - Sorszám

  - Keresési kérelem státusz

Az egyes sorszámokra kattintva szerkeszthetők a hozzá tartozó adatok. Új elem gomb szerepel a képernyőn, mivel
újabb adatok vehetők fel a HÖP adminisztrátorok által.








|Felirat|Kontrol elem típusa|Hossz|Alapértelmezett érték|Kötelezőség|Egyéb|
|---|---|---|---|---|---|
|[KódszótárNeve]ID|Autocomplete|Int|következő sorszám|Igen|Nem szerkeszthető|
|Keresési kérelem státusz|Textbox|Char100|Üres|Igen||
|Deleted|-nem látható-|Boolean|0|Igen|0=Aktív, 1=Törölt|


Az adatbázisban a tábla neve:

**MÁV Szolgáltató Központ Zrt. IT Üzletág**
*1087 Budapest, Könyves Kálmán krt. 54-60. Tel.: +36-1 457-9300; fax: +36-1 457-9500; e-mail: it@mav-szk.hu*


-----

*5.2.8.1* *Jogosultságkezelés*
A kódszótár karbantartó képernyőket a HÖP adminisztrátor tudja elérni szerkesztési joggal, más számára a
képernyők menüpontjai nem láthatók.

*5.2.8.2* *Hibakezelés/Rendszerüzenetek*
Az adott képernyőhöz tartozó különféle rendszerüzenetek, hibaüzenetek felsorolása az alábbi táblázat szerint.




|Esetleírás (HA)|Hibaüzenet (AKKOR)|Jelzés típusa|Futás befolyásolás|
|---|---|---|---|
|Törlés esemény, ha az adott rekordra van hivatkozás egy másik táblából.|Az adott kódszótár rekord használatban van, nem törölhető!|Hiba|Kódszótár elem nem törölhető!|
|Keresési kérelem státusza mező üres|A Keresési kérelem státusza mező kitöltése kötelező!|Hiba|Nem menti el a kódszótár rekordot.|


*5.2.8.3* *Hívott szolgáltatások*
Az adott képernyőhöz tartozó szolgáltatások felsorolása az alábbi táblázat szerint.

|Funkciógomb/link/vezérlőelem esemény|Hívott ablak|Hívott szolgáltatás|
|---|---|---|
|Ablakbetöltés|-|Kódszótár lista betöltése|
|Új elem gomb|Keresési kérelem státuszai űrlap||



**MÁV Szolgáltató Központ Zrt. IT Üzletág**
*1087 Budapest, Könyves Kálmán krt. 54-60. Tel.: +36-1 457-9300; fax: +36-1 457-9500; e-mail: it@mav-szk.hu*


-----

###### 5.2.9 Kódszótár – Szakterület képernyő működése

A kódszótár karbantartó képernyője az alábbiak szerint fog megjelenni a képernyőn:

Látható, hogy adat szinten az alábbi oszlopokat tartalmazza:

  - Sorszám

  - CV Online külső kód

  - Startapró külső kód

  - Csoportportál külső kód

  - Szakterület

Az egyes sorszámokra kattintva szerkeszthetők a hozzá tartozó adatok. Új elem gomb szerepel a képernyőn, mivel
újabb adatok vehetők fel a HÖP adminisztrátorok által.





|Felirat|Kontrol elem típusa|Hossz|Alapértelmezett érték|Kötelezőség|Egyéb|
|---|---|---|---|---|---|
|[KódszótárNeve]ID|Autocomplete|Int|következő sorszám|Igen|Nem szerkeszthető|
|CV online külső kód|Textbox|Char100|Üres|Nem||
|Startapró külső kód|Textbox|Char100|Üres|Nem||


**MÁV Szolgáltató Központ Zrt. IT Üzletág**
*1087 Budapest, Könyves Kálmán krt. 54-60. Tel.: +36-1 457-9300; fax: +36-1 457-9500; e-mail: it@mav-szk.hu*


-----

|Felirat|Kontrol elem típusa|Hossz|Alapértelmezett érték|Kötelezőség|Egyéb|
|---|---|---|---|---|---|
|Csoportportál külső kód|Textbox|Char100|Üres|Nem||
|Szakterület|Textbox|Char100|Üres|Igen||
|Deleted|-nem látható-|Boolean|0|Igen|0=Aktív, 1=Törölt|


Az adatbázisban a tábla neve:

*5.2.9.1* *Jogosultságkezelés*
A kódszótár karbantartó képernyőket a HÖP adminisztrátor tudja elérni szerkesztési joggal, más számára a
képernyők menüpontjai nem láthatók.

*5.2.9.2* *Hibakezelés/Rendszerüzenetek*
Az adott képernyőhöz tartozó különféle rendszerüzenetek, hibaüzenetek felsorolása az alábbi táblázat szerint.





|Esetleírás (HA)|Hibaüzenet (AKKOR)|Jelzés típusa|Futás befolyásolás|
|---|---|---|---|
|Törlés esemény, ha az adott rekordra van hivatkozás egy másik táblából.|Az adott kódszótár rekord használatban van, nem törölhető!|Hiba|Kódszótár elem nem törölhető!|
|Szakterület mező üres|A Szakterület mező kitöltése kötelező!|Hiba|Nem menti el a kódszótár rekordot.|


*5.2.9.3* *Hívott szolgáltatások*
Az adott képernyőhöz tartozó szolgáltatások felsorolása az alábbi táblázat szerint.

|Funkciógomb/link/vezérlőelem esemény|Hívott ablak|Hívott szolgáltatás|
|---|---|---|
|Ablakbetöltés|-|Kódszótár lista betöltése|
|Új elem gomb|Szakterület szerkesztése űrlap||



**MÁV Szolgáltató Központ Zrt. IT Üzletág**
*1087 Budapest, Könyves Kálmán krt. 54-60. Tel.: +36-1 457-9300; fax: +36-1 457-9500; e-mail: it@mav-szk.hu*


-----

###### 5.2.10 Kódszótár – Szerződés fajta képernyő működése

A kódszótár karbantartó képernyője az alábbiak szerint fog megjelenni a képernyőn:

Látható, hogy adat szinten az alábbi oszlopokat tartalmazza:

  - Sorszám

  - CV Online külső kód

  - Startapró külső kód

  - Szerződés fajta

Az egyes sorszámokra kattintva szerkeszthetők a hozzá tartozó adatok. Új elem gomb szerepel a képernyőn, mivel
újabb adatok vehetők fel a HÖP adminisztrátorok által.





|Felirat|Kontrol elem típusa|Hossz|Alapértelmezett érték|Kötelezőség|Egyéb|
|---|---|---|---|---|---|
|[KódszótárNeve]ID|Autocomplete|Int|következő sorszám|Igen|Nem szerkeszthető|
|CV online külső kód|Textbox|Char100|Üres|Nem||
|Startapró külső kód|Textbox|Char100|Üres|Nem||
|Szerződés fajta|Textbox|Char100|Üres|Igen||
|Deleted|-nem látható-|Boolean|0|Igen|0=Aktív, 1=Törölt|


Az adatbázisban a tábla neve:

**MÁV Szolgáltató Központ Zrt. IT Üzletág**
*1087 Budapest, Könyves Kálmán krt. 54-60. Tel.: +36-1 457-9300; fax: +36-1 457-9500; e-mail: it@mav-szk.hu*


-----

*5.2.10.1* *Jogosultságkezelés*
A kódszótár karbantartó képernyőket a HÖP adminisztrátor tudja elérni szerkesztési joggal, más számára a
képernyők menüpontjai nem láthatók.

*5.2.10.2* *Hibakezelés/Rendszerüzenetek*
Az adott képernyőhöz tartozó különféle rendszerüzenetek, hibaüzenetek felsorolása az alábbi táblázat szerint.





|Esetleírás (HA)|Hibaüzenet (AKKOR)|Jelzés típusa|Futás befolyásolás|
|---|---|---|---|
|Törlés esemény, ha az adott rekordra van hivatkozás egy másik táblából.|Az adott kódszótár rekord használatban van, nem törölhető!|Hiba|Kódszótár elem nem törölhető!|
|Szerződés fajta mező üres|A Szerződés fajta mező kitöltése kötelező!|Hiba|Nem menti el a kódszótár rekordot.|


*5.2.10.3* *Hívott szolgáltatások*
Az adott képernyőhöz tartozó szolgáltatások felsorolása az alábbi táblázat szerint.

|Funkciógomb/link/vezérlőelem esemény|Hívott ablak|Hívott szolgáltatás|
|---|---|---|
|Ablakbetöltés|-|Kódszótár lista betöltése|
|Új elem gomb|Szerződés fajta űrlap||



**MÁV Szolgáltató Központ Zrt. IT Üzletág**
*1087 Budapest, Könyves Kálmán krt. 54-60. Tel.: +36-1 457-9300; fax: +36-1 457-9500; e-mail: it@mav-szk.hu*


-----

###### 5.2.11 Kódszótár –Képzés jellege képernyő működése

A kódszótár karbantartó képernyője az alábbiak szerint fog megjelenni a képernyőn:

Látható, hogy adat szinten az alábbi oszlopokat tartalmazza:

  - Sorszám

  - CV Online külső kód

  - Startapró külső kód

  - Csoportportál külső kód

  - Képzés jellege

Az egyes sorszámokra kattintva szerkeszthetők a hozzá tartozó adatok. Új elem gomb szerepel a képernyőn, mivel
újabb adatok vehetők fel a HÖP adminisztrátorok által.







|Felirat|Kontrol elem típusa|Hossz|Alapértelmezett érték|Kötelezőség|Egyéb|
|---|---|---|---|---|---|
|[KódszótárNeve]ID|Autocomplete|Int|következő sorszám|Igen|Nem szerkeszthető|
|CV online külső kód|Textbox|Char100|Üres|Nem||
|Startapró külső kód|Textbox|Char100|Üres|Nem||
|Csoportportál külső kód|Textbox|Char100|Üres|Nem||


**MÁV Szolgáltató Központ Zrt. IT Üzletág**
*1087 Budapest, Könyves Kálmán krt. 54-60. Tel.: +36-1 457-9300; fax: +36-1 457-9500; e-mail: it@mav-szk.hu*


-----

|Felirat|Kontrol elem típusa|Hossz|Alapértelmezett érték|Kötelezőség|Egyéb|
|---|---|---|---|---|---|
|Képzés jellege|Textbox|Char100|Üres|Igen||
|Deleted|-nem látható-|Boolean|0|Igen|0=Aktív, 1=Törölt|


Az adatbázisban a tábla neve:

*5.2.11.1* *Jogosultságkezelés*
A kódszótár karbantartó képernyőket a HÖP adminisztrátor tudja elérni szerkesztési joggal, más számára a
képernyők menüpontjai nem láthatók.

*5.2.11.2* *Hibakezelés/Rendszerüzenetek*
Az adott képernyőhöz tartozó különféle rendszerüzenetek, hibaüzenetek felsorolása az alábbi táblázat szerint.





|Esetleírás (HA)|Hibaüzenet (AKKOR)|Jelzés típusa|Futás befolyásolás|
|---|---|---|---|
|Törlés esemény, ha az adott rekordra van hivatkozás egy másik táblából.|Az adott kódszótár rekord használatban van, nem törölhető!|Hiba|Kódszótár elem nem törölhető!|
|Képzés jellege mező üres|A Képzés jellege mező kitöltése kötelező!|Hiba|Nem menti el a kódszótár rekordot.|


*5.2.11.3* *Hívott szolgáltatások*
Az adott képernyőhöz tartozó szolgáltatások felsorolása az alábbi táblázat szerint.

|Funkciógomb/link/vezérlőelem esemény|Hívott ablak|Hívott szolgáltatás|
|---|---|---|
|Ablakbetöltés|-|Kódszótár lista betöltése|
|Új elem gomb|Képzés jellege űrlap||



**MÁV Szolgáltató Központ Zrt. IT Üzletág**
*1087 Budapest, Könyves Kálmán krt. 54-60. Tel.: +36-1 457-9300; fax: +36-1 457-9500; e-mail: it@mav-szk.hu*


-----

###### 5.2.12 Kódszótár –Végzettségi szint képernyő működése

A kódszótár karbantartó képernyője az alábbiak szerint fog megjelenni a képernyőn:

Látható, hogy adat szinten az alábbi oszlopokat tartalmazza:

  - Sorszám

  - CV Online külső kód

  - Startapró külső kód

  - Végzettségi szint

Az egyes sorszámokra kattintva szerkeszthetők a hozzá tartozó adatok. Új elem gomb szerepel a képernyőn, mivel
újabb adatok vehetők fel a HÖP adminisztrátorok által.





|Felirat|Kontrol elem típusa|Hossz|Alapértelmezett érték|Kötelezőség|Egyéb|
|---|---|---|---|---|---|
|[KódszótárNeve]ID|Autocomplete|Int|következő sorszám|Igen|Nem szerkeszthető|
|CV online külső kód|Textbox|Char100|Üres|Nem||
|Startapró külső kód|Textbox|Char100|Üres|Nem||
|Végzettségi szint|Textbox|Char100|Üres|Igen||
|Deleted|-nem látható-|Boolean|0|Igen|0=Aktív, 1=Törölt|


**MÁV Szolgáltató Központ Zrt. IT Üzletág**
*1087 Budapest, Könyves Kálmán krt. 54-60. Tel.: +36-1 457-9300; fax: +36-1 457-9500; e-mail: it@mav-szk.hu*


-----

Az adatbázisban a tábla neve:

*5.2.12.1* *Jogosultságkezelés*
A kódszótár karbantartó képernyőket a HÖP adminisztrátor tudja elérni szerkesztési joggal, más számára a
képernyők menüpontjai nem láthatók.

*5.2.12.2* *Hibakezelés/Rendszerüzenetek*
Az adott képernyőhöz tartozó különféle rendszerüzenetek, hibaüzenetek felsorolása az alábbi táblázat szerint.





|Esetleírás (HA)|Hibaüzenet (AKKOR)|Jelzés típusa|Futás befolyásolás|
|---|---|---|---|
|Törlés esemény, ha az adott rekordra van hivatkozás egy másik táblából.|Az adott kódszótár rekord használatban van, nem törölhető!|Hiba|Kódszótár elem nem törölhető!|
|Végzettségi szint mező üres|A Végzettségi szint mező kitöltése kötelező!|Hiba|Nem menti el a kódszótár rekordot.|


*5.2.12.3* *Hívott szolgáltatások*
Az adott képernyőhöz tartozó szolgáltatások felsorolása az alábbi táblázat szerint.

|Funkciógomb/link/vezérlőelem esemény|Hívott ablak|Hívott szolgáltatás|
|---|---|---|
|Ablakbetöltés|-|Kódszótár lista betöltése|
|Új elem gomb|Végzettségi szint űrlap||



**MÁV Szolgáltató Központ Zrt. IT Üzletág**
*1087 Budapest, Könyves Kálmán krt. 54-60. Tel.: +36-1 457-9300; fax: +36-1 457-9500; e-mail: it@mav-szk.hu*


-----

###### 5.2.13 Kódszótár –Hirdetési csatornák képernyő működése

A kódszótár karbantartó képernyője az alábbiak szerint fog megjelenni a képernyőn:

Látható, hogy adat szinten az alábbi oszlopokat tartalmazza:

  - Sorszám

  - Csatorna kód

  - Hirdetési csatornák

Az egyes sorszámokra kattintva szerkeszthetők a hozzá tartozó adatok. Új elem gomb szerepel a képernyőn, mivel
újabb adatok vehetők fel a HÖP adminisztrátorok által.





|Felirat|Kontrol elem típusa|Hossz|Alapértelmezett érték|Kötelezőség|Egyéb|
|---|---|---|---|---|---|
|[KódszótárNeve]ID|Autocomplete|Int|következő sorszám|Igen|Nem szerkeszthető|
|Csatorna kód|Textbox|Char100|Üres|Igen||
|Hirdetési csatornák|Textbox|Char100|Üres|Igen||
|Deleted|-nem látható-|Boolean|0|Igen|0=Aktív, 1=Törölt|


Az adatbázisban a tábla neve:

**MÁV Szolgáltató Központ Zrt. IT Üzletág**
*1087 Budapest, Könyves Kálmán krt. 54-60. Tel.: +36-1 457-9300; fax: +36-1 457-9500; e-mail: it@mav-szk.hu*


-----

*5.2.13.1* *Jogosultságkezelés*
A kódszótár karbantartó képernyőket a HÖP adminisztrátor tudja elérni szerkesztési joggal, más számára a
képernyők menüpontjai nem láthatók.

*5.2.13.2* *Hibakezelés/Rendszerüzenetek*
Az adott képernyőhöz tartozó különféle rendszerüzenetek, hibaüzenetek felsorolása az alábbi táblázat szerint.





|Esetleírás (HA)|Hibaüzenet (AKKOR)|Jelzés típusa|Futás befolyásolás|
|---|---|---|---|
|Törlés esemény, ha az adott rekordra van hivatkozás egy másik táblából.|Az adott kódszótár rekord használatban van, nem törölhető!|Hiba|Kódszótár elem nem törölhető!|
|Csatorna kód mező üres|A Csatorna kód mező kitöltése kötelező!|Hiba|Nem menti el a kódszótár rekordot.|
|Hirdetési csatornák mező üres|A Hirdetési csatornák mező kitöltése kötelező!|Hiba|Nem menti el a kódszótár rekordot.|


*5.2.13.3* *Hívott szolgáltatások*
Az adott képernyőhöz tartozó szolgáltatások felsorolása az alábbi táblázat szerint.

|Funkciógomb/link/vezérlőelem esemény|Hívott ablak|Hívott szolgáltatás|
|---|---|---|
|Ablakbetöltés|-|Kódszótár lista betöltése|
|Új elem gomb|Hirdetési csatornák űrlap||



**MÁV Szolgáltató Központ Zrt. IT Üzletág**
*1087 Budapest, Könyves Kálmán krt. 54-60. Tel.: +36-1 457-9300; fax: +36-1 457-9500; e-mail: it@mav-szk.hu*


-----

##### 5.3 Keresési kérelmek

Bármilyen álláshirdetés egy munkaerőigénnyel indul, amely kimondja azt, hogy milyen pozíciók betöltésére van
szükség, és hány fővel lehet azt betölteni.

Keresési kérelem státuszai az alábbiak lehetnek:

  - Folyamatban

A keresési kérelem minden adata módosítható, létrehozható benne új álláshirdetés szöveg, amely
publikálható is, de az álláshirdetés lejárati időpontja nem lehet későbbi, mint a kérelemé.

  - Lejárt

Módosításra megnyitható, de új álláshirdetés szöveg nem publikálható, ameddig a lejárat dátumát egy
jövőbeli időpontra nem módosítja a felhasználó, azaz Folyamatban-ra állítja a keresési kérelmet.

  - Lezárt

Már nem módosítható keresési kérelmek.

Keresési kérelem létrehozható újként, vagy egy kiválasztott keresési kérelem másolataként. A másolandó keresési
kérelem bármilyen státuszú lehet, a másolás folyamán egy új keresési kérelem jön létre.

A keresési kérelmek képernyőjén az alábbi szűrési lehetőségek lesznek:

  - Vállalat (bejelentkezett felhasználó vállalata, nem módosítható)

  - Keresési kérelem címe (szabad szöveges keresés)

  - Keresési kérelem státusza (Folyamatban / Lejárt / Lezárt)

  - Lezárás indoka

  - Toborzó

  - Munkavégzés helye

  - Szervezeti egység

  - Szakterület

A keresési kérelmek képernyőn lehet megtekinteni az adott vállalathoz rögzített keresési kérelmeket.
###### 5.3.1 Képernyő működése

A képernyő az alábbiak szerint fog megjelenni:

**MÁV Szolgáltató Központ Zrt. IT Üzletág**
*1087 Budapest, Könyves Kálmán krt. 54-60. Tel.: +36-1 457-9300; fax: +36-1 457-9500; e-mail: it@mav-szk.hu*


-----

A képernyő a kártyás megjelenítési módot használja, amikor az adatsorokat egy-egy kártyán jeleníti meg. Egy kártya

1-1 keresési kérelmet mutat.

Abban az esetben, ha a *Munkavégzés helye egyéb információk* mezőbe írás kerül a Keresési kérelem űrlapon,
akkor a *Munkavégzés helye* helyett annak szövege kerül megjelenítésre a kártyán!
###### 5.3.2 Jogosultságkezelés

Toborzó és toborzási folyamatgazda teljes jogosultsággal fér hozzá ehhez a képernyőhöz.
###### 5.3.3 Hívott szolgáltatások

Az adott képernyőhöz tartozó szolgáltatások felsorolása az alábbi táblázat szerint.



|Funkciógomb/link/vezérlőelem esemény|Hívott ablak|Hívott szolgáltatás|
|---|---|---|
|Ablakbetöltés|-|Keresési kérelem panel betöltése.|
|Keresési kérelem panel szűrési feltételeinek módosítása|-|Keresési kérelem panel betöltése a módosított szűrési feltételekkel|


**MÁV Szolgáltató Központ Zrt. IT Üzletág**
*1087 Budapest, Könyves Kálmán krt. 54-60. Tel.: +36-1 457-9300; fax: +36-1 457-9500; e-mail: it@mav-szk.hu*


-----

|Funkciógomb/link/vezérlőelem esemény|Hívott ablak|Hívott szolgáltatás|
|---|---|---|
|Keresési kérelem kártya nevén kattintva|Keresési kérelem űrlap megnyitása a kiválasztott kártya adataival|-|
|Új Keresési kérelem hozzáadása gombra kattintva|Keresési kérelem űrlap megnyitása üres adatokkal.|-|


**MÁV Szolgáltató Központ Zrt. IT Üzletág**
*1087 Budapest, Könyves Kálmán krt. 54-60. Tel.: +36-1 457-9300; fax: +36-1 457-9500; e-mail: it@mav-szk.hu*


-----

##### 5.4 Keresési kérelmek űrlap

Az alábbi adatok rögzítése szükséges:

  - Keresési kérelem címe (piacnak megfelelő elnevezés, elején a Toborzó1 monogramja, végén a feladás

dátuma)

  - Munkaerőigény iktatószáma (opcionális)

  - Munkaerőigény engedélyezésének dátuma

  - Lejárat dátuma

  - Munkakör megnevezése (munkaerőigény engedélye alapján a munkakör hivatalos neve, ez kerül majd

átadásra a külső rendszereknek)

  - Pozíció szám (1-200)

  - Területi igazgatóság (kódszótárból)

  - Szervezeti egység (opcionális, SAP IHIR törzsadatból választható)

  - Szakterület (kódszótárból)

  - Iskolai végzettség (kódszótárból)

  - Foglalkoztatás formája (kódszótárból)

  - Munkavégzés helye (kódszótárból)

  - Munkavégzés helye egyéb információk (szabadszöveges)

  - Munkakör csoport (kódszótárból)

  - Munkaidő (kódszótárból)

  MMK (MÁV Munkaköri Kategória)

  - CV csatolandó (I/N)

  - MAP-os munkakör (I/N)

  - Bruttó bérigény mező megjelenjen (I/N)

  - Bruttó bérigény megadása kötelező (I/N)

  - Szerepkörök hozzárendelése:

`o` Toborzók

         - Toborzó1

         - Toborzó2

`o` Engedélyező

`o` Vezetők - *innercomponent*

         - MJGY – több is megadható

         - Vezető – több is megadható
###### 5.4.1 Képernyő működése

A képernyő az alábbiak szerint fog megjelenni:

**MÁV Szolgáltató Központ Zrt. IT Üzletág**
*1087 Budapest, Könyves Kálmán krt. 54-60. Tel.: +36-1 457-9300; fax: +36-1 457-9500; e-mail: it@mav-szk.hu*


-----

A képernyő a kereséséi kérelem alapadatait, a toborzó 1 és toborzó 2-t, valamint a hozzá rendelt vezetőket
tartalmazza a bal oldalon, míg a jobb oldalon a keresési kérelemhez létrehozott álláshirdetések jelennek meg
kártyás megjelenítésben. Az álláshirdetések kártyáin az adatok az alábbiak szerint jelennek meg:

**MÁV Szolgáltató Központ Zrt. IT Üzletág**
*1087 Budapest, Könyves Kálmán krt. 54-60. Tel.: +36-1 457-9300; fax: +36-1 457-9500; e-mail: it@mav-szk.hu*


-----

Ahhoz, hogy Új álláshirdetés szöveget lehessen rögzíteni, először el kell menteni az újonnan létrehozandó Keresési

kérelmet.



















|Felirat|Kontrol elem típusa|Hossz|Alapértelmezett érték|Kötelezőség|Egyéb|
|---|---|---|---|---|---|
|Keresési kérelem címe|Textbox|Char250|Üres|Igen||
|Munkaerőigény iktatószáma|Textbox|Char50|Üres|Igen||
|Munkaerőigény engedélyezésének dátuma|Date|date|Üres|Nem||
|Lejárat dátuma|Date|date|Üres|Igen||
|Munkakör megnevezése|Textbox|Char250|Üres|Nem||
|Pozíció szám (1-200)|Textbox|int|Üres|Igen|Csak 1 és 200 közötti szám adható meg|
|Területi igazgatóság|Dropdown list|int|Üres|Nem|Területi igazgatóságok kódszótárból|
|Szervezeti egység|Dropdown list|int|Üres|Nem||
|Szakterület|Dropdown list|int|Üres|Igen|Szakterület kódszótárból|
|Iskolai végzettség|Dropdown list|int|Üres|Igen|Szakképzés fajta kódszótárból|
|Foglalkoztatás formája|Dropdown list|int|Üres|Igen|Szerződés fajta kódszótárból|
|Befejezés dátuma|Date|date|Üres|Nem|Ha a Foglalkoztatás formája Határozott idejű, akkor jelenik meg kötelezőként ez a mező|
|Munkavégzés helye|Dropdown list|int|Üres|Igen|Település lista kódsztárból|
|Munkavégzés helye egyéb információk|Textbox|Char250|Üres|Nem||
|Munkakör csoport|Dropdown list|int|Üres|Igen|Munkakör csoport kódszótárból|
|Munkaidő|Dropdown list|int|Üres|Igen|Foglalkoztatási fok kódszótárból|
|MMK (MÁV Munkaköri Kategória)|Dropdown list|int|Üres|Nem||
|CV csatolandó|Checkbox|boolean|0|Nem|0=Nem; 1=Igen|
|MAP-os munkakör|Checkbox|boolean|0|Nem|0=Nem; 1=Igen|


**MÁV Szolgáltató Központ Zrt. IT Üzletág**
*1087 Budapest, Könyves Kálmán krt. 54-60. Tel.: +36-1 457-9300; fax: +36-1 457-9500; e-mail: it@mav-szk.hu*


-----

|Felirat|Kontrol elem típusa|Hossz|Alapértelmezett érték|Kötelezőség|Egyéb|
|---|---|---|---|---|---|
|Bruttó bérigény mező megjelenik|Checkbox|boolean|0|Nem|0=Nem; 1=Igen|
|Bruttó bérigény megadása kötelező|Checkbox|boolean|0|Nem|0=Nem; 1=Igen|
|Toborzó1|Pop-up list|int|Üres|Nem|People táblából|
|Toborzó2|Pop-up list|int|Üres|Nem|People táblából|
|Engedélyező|Pop-up list|int|Üres|Nem|People táblából|
|Vezetők|Table|-|Üres|Nem|People táblából|
|Keresési kérelem lezárása|Checkbox|boolean|0|Nem|0=Aktív; 1=Lezárt|
|Keresési kérelem lezárása indok|Dropdown list|int|Üres|Nem|Kitöltése kötelező, ha Keresési kérelem lezárása=0; Keresési kérelem státuszai kódszótárból|

###### 5.4.2 Jogosultságkezelés

Toborzó és toborzási folyamatgazda teljes jogosultsággal fér hozzá ehhez a képernyőhöz.
###### 5.4.3 Hibakezelés/Rendszerüzenetek

Az adott képernyőhöz tartozó különféle rendszerüzenetek, hibaüzenetek felsorolása az alábbi táblázat szerint.


|Esetleírás (HA)|Hibaüzenet (AKKOR)|Jelzés típusa|Futás befolyásolás|
|---|---|---|---|
|Kötelező mező üres|A kötelező mezők kitöltése kötelező!|Hiba|Nem menti el a keresési kérelem rekordot.|

###### 5.4.4 Hívott szolgáltatások



Az adott képernyőhöz tartozó szolgáltatások felsorolása az alábbi táblázat szerint.

|Funkciógomb/link/vezérlőelem esemény|Hívott ablak|Hívott szolgáltatás|
|---|---|---|
|Ablakbetöltés|-|Keresési kérelem űrlap betöltése.|
|Mentés gomb|-|Keresési kérelem módosításainak mentése|
|Mégsem gomb|-|Keresési kérelem adatok bezárása mentés nélkül|



**MÁV Szolgáltató Központ Zrt. IT Üzletág**
*1087 Budapest, Könyves Kálmán krt. 54-60. Tel.: +36-1 457-9300; fax: +36-1 457-9500; e-mail: it@mav-szk.hu*


-----

|Funkciógomb/link/vezérlőelem esemény|Hívott ablak|Hívott szolgáltatás|
|---|---|---|
|Törlés gomb*|Törlés jóváhagyása|-|
|Törlés jóváhagyásánál Igen gomb|-|Keresési kérelem rekord törlése|
|Álláshirdetés szöveg kártya nevén kattintva|Álláshirdetés szöveg űrlap megnyitása a kiválasztott kártya adataival|-|
|Új Álláshirdetés szöveg hozzáadása gombra kattintva|Álláshirdetés szöveg űrlap megnyitása üres adatokkal.|-|
|Új Álláshirdetés szöveg másolással gombra kattintva|Álláshirdetés szöveg űrlap megnyitása a másolt álláshirdetés szöveg adataival kitöltve|-|


*Törlés gomb abban az esetben jelenik meg a Keresési kérelem formon, ha nincs hozzá tartozó álláshirdetés, vagy

a hozzá tartozó álláshirdetések Terv állapotúak.

**MÁV Szolgáltató Központ Zrt. IT Üzletág**
*1087 Budapest, Könyves Kálmán krt. 54-60. Tel.: +36-1 457-9300; fax: +36-1 457-9500; e-mail: it@mav-szk.hu*


-----

##### 5.5 Álláshirdetés módosítás űrlap

Egy keresési kérelem alá több álláshirdetés szöveget is meg lehet adni (pl. junior, senior, stb.)

Álláshirdetési szöveg státuszai az alábbiak lehetnek

  - **Terv**

Az álláshirdetés szöveg létre lett hozva, de még nem engedélyezték, vagy engedélyezés után módosították.
Bármeddig maradhat ebbe a státuszba az álláshirdetés szöveg. Innen csak Elküldött státuszt tud
kiválasztani, további státuszok nem kiválaszthatók.

  - **Elküldött**

Az álláshirdetés szövege engedélyezésre el lett küldve az engedélyezőnek, és megjelenik a

feladatkosarában.

(Ha toborzó megnyitja az álláshirdetést a keresési kérelemből, a státusz ilyenkor read only,
folyamatgazdának is; akkor is ha ők az engedélyezők).

  - **Engedélyezett**

Az álláshirdetés szövegét engedélyezték. A felhasználó itt módosíthatja még a szöveget, de akkor újra
Terv státuszú lesz, illetve publikálást indíthat el (módosítás nélkül). Megjelenik a kártyán a publikálás
gomb (ha itt publikálnak, akkor változik a státusz), az űrlapot megnyitva két lehetőség van jogosultságtól
függően:

`o` Toborzó nyitja meg: neki minden readonly az űrlapon, nem változtathat
`o` Toborzási folyamatgazda nyitja meg: a státuszt átállíthatja terv-re (azután majd a toborzó is tudja

szerkeszteni), vagy lezárt-ra. A többi mezőt is módosíthatja.

  - **Publikált**

Az álláshirdetést publikálták. Ezt a státuszt a publikálási folyamat állítja be, űrlapot megnyitva jogosultság

szerint az alábbiak mentén működik:

`o` Toborzó nyitja meg: neki minden readonly az űrlapon, nem változtathat
`o` Toborzási folyamatgazda nyitja meg: minden mezőn módosíthat, a státuszt innen csak Lezárt-ra

állíthatja át, másra nem.

  - **Lejárt**
Éjszakai job figyeli, és ha a lejárati dátum eltelik, beállítja ezt a státuszt. Ilyenkor már csak folyamatgazda
nyithatja meg szerkesztésre az űrlapot (Toborzónak minden readonly), státuszt pedig csak lezártra
állíthatja.

  - **Lezárt**
A KEX állásajánlatok lezárása zárja le az álláshirdetés szövegeket is. Álláshirdetés szöveg létrehozható
újként, vagy egy kiválasztott álláshirdetés másolataként. A másolandó álláshirdetés bármilyen státuszú
lehet, a másolás folyamán egy új álláshirdetési szöveg jön létre.

Az álláshirdetés szöveg fogja tartalmazni magának a hirdetésnek a szövegét, amelyet az egyes platformok felé lehet
majd publikálni. Nincs korlátozva a keresési kérelmek alatti álláshirdetések száma.

Az alábbi adatok rögzítésére lesz lehetőség:

  - Hirdetésszöveg (több is lehetséges)

`o` Álláshirdetés címe

`o` Álláshirdetés státusza (Terv, Elküldött, Engedélyezett, Publikált, Lezárt, Lejárt)
`o` Álláshirdetés lejárati dátuma

`o` Fénykép URL

`o` Video URL

`o` Fejléc szöveg

**MÁV Szolgáltató Központ Zrt. IT Üzletág**
*1087 Budapest, Könyves Kálmán krt. 54-60. Tel.: +36-1 457-9300; fax: +36-1 457-9500; e-mail: it@mav-szk.hu*


-----

`o` Új munkatársunk feladatai lesznek

`o` Amire a munkakör betöltéséhez szükség van

`o` Tulajdonságok, melyek számunkra fontosak

`o` Előnyként értékeljük

`o` Amit ajánlunk

`o` Toborzó neve

`o` Toborzó telefonszáma

`o` Vállalati bemutatkozó (Kódszótárból)
###### 5.5.1 Képernyő működése

A képernyő az alábbiak szerint fog megjelenni:

**MÁV Szolgáltató Központ Zrt. IT Üzletág**
*1087 Budapest, Könyves Kálmán krt. 54-60. Tel.: +36-1 457-9300; fax: +36-1 457-9500; e-mail: it@mav-szk.hu*


-----

|Felirat|Kontrol elem típusa|Hossz|Alapértelmezett érték|Kötelezőség|Egyéb|
|---|---|---|---|---|---|
|Álláshirdetés címe|Textbox|Char255|Üres|Igen||
|Álláshirdetés státusza|Dropdown list|int|Terv|Igen||


**MÁV Szolgáltató Központ Zrt. IT Üzletág**
*1087 Budapest, Könyves Kálmán krt. 54-60. Tel.: +36-1 457-9300; fax: +36-1 457-9500; e-mail: it@mav-szk.hu*


-----

|Felirat|Kontrol elem típusa|Hossz|Alapértelmezett érték|Kötelezőség|Egyéb|
|---|---|---|---|---|---|
|Álláshirdetés lejárati dátuma|Date|date|Üres|Igen||
|Fénykép URL|Textbox|Char1000|Üres|Nem|Fénykép URL címe|
|Video URL|Textbox|Char1000|Üres|Nem|Video URL címe|
|Fejléc szöveg|Multiline textbox|Text|Üres|Nem||
|Új munkatársunk feladatai lesznek|Multiline textbox|Text|Üres|Nem||
|Amire a munkakör betöltéséhez szükség van|Multiline textbox|Text|Üres|Nem||
|Tulajdonságok, melyek számunkra fontosak|Multiline textbox|Text|Üres|Nem||
|Előnyként értékeljük|Multiline textbox|Text|Üres|Nem||
|Amit ajánlunk|Multiline textbox|Text|Üres|Nem||
|Toborzó neve|Textbox|Char250|Keresési kérelemben kiválasztott Toborzó1 neve|Igen||
|Toborzó telefonszáma|Textbox|Char50|Keresési kérelemben kiválasztott Toborzó1 telefonszáma|Igen||
|Vállalati bemutatkozó|Multiline textbox|Text|Vállalati bemutatkozó kódszótárból|Nem||


Jobb oldalon láthatóak a pozíciók.
###### 5.5.2 Jogosultságkezelés

Toborzó és toborzási folyamatgazda teljes jogosultsággal fér hozzá ehhez a képernyőhöz.
###### 5.5.3 Hibakezelés/Rendszerüzenetek

Az adott képernyőhöz tartozó különféle rendszerüzenetek, hibaüzenetek felsorolása az alábbi táblázat szerint.

**MÁV Szolgáltató Központ Zrt. IT Üzletág**
*1087 Budapest, Könyves Kálmán krt. 54-60. Tel.: +36-1 457-9300; fax: +36-1 457-9500; e-mail: it@mav-szk.hu*


-----

|Esetleírás (HA)|Hibaüzenet (AKKOR)|Jelzés típusa|Futás befolyásolás|
|---|---|---|---|
|Valamelyik kötelező mező üres|A kötelező mezők kitöltése kötelező!|Hiba|Nem menti el az álláshirdetés szöveg rekordot.|

###### 5.5.4 Hívott szolgáltatások



Az adott képernyőhöz tartozó szolgáltatások felsorolása az alábbi táblázat szerint.

|Funkciógomb/link/vezérlőelem esemény|Hívott ablak|Hívott szolgáltatás|
|---|---|---|
|Ablakbetöltés|-|Állásajánlat szöveg űrlap betöltése.|
|Mentés gomb|-|Állásajánlat szöveg módosításainak mentése|
|Mégsem gomb|-|Állásajánlat szöveg adatok bezárása mentés nélkül|



**MÁV Szolgáltató Központ Zrt. IT Üzletág**
*1087 Budapest, Könyves Kálmán krt. 54-60. Tel.: +36-1 457-9300; fax: +36-1 457-9500; e-mail: it@mav-szk.hu*


-----

##### 5.6 Álláshirdetés publikálás

A létrehozott álláshirdetéseket minden esetben publikálni kell. Egy álláshirdetést egyszer lehet publikálni. A
publikálás előfeltétele minden esetben egy jóváhagyás, amelyet a kérelemben meghatározott Engedélyezőnek
szükséges megtennie.

Platformonként külön-külön publikálható a jóváhagyott álláshirdetés szöveg.

Előnézet megtekintésére lehetőség lesz a publikálás elindítása előtt.

A publikálás elindítása után a rendszer interfészeken keresztül elindítja az egyes platformok felé a publikálási
folyamatot, és az álláshirdetések automatikusan megjelennek a megadott állásportálokon.
###### 5.6.1 Képernyő működése

A képernyő az alábbiak szerint fog megjelenni:








|Felirat|Kontrol elem típusa|Hossz|Alapértelmezett érték|Kötelezőség|Egyéb|
|---|---|---|---|---|---|
|Álláshirdetés címe|Textbox|Char255|Álláshirdetés kártyáról|Igen|Nem módosítható|
|MÁV Csoportportál publikálás|Checkbox|boolean|0|Nem|0=Nem; 1=Igen|
|CV Online publikálás|Checkbox|boolean|0|Nem|0=Nem; 1=Igen|
|Startapró publikálás|Checkbox|boolean|0|Nem|0=Nem; 1=Igen|


**MÁV Szolgáltató Központ Zrt. IT Üzletág**
*1087 Budapest, Könyves Kálmán krt. 54-60. Tel.: +36-1 457-9300; fax: +36-1 457-9500; e-mail: it@mav-szk.hu*


-----

###### 5.6.2 Jogosultságkezelés

Toborzó és toborzási folyamatgazda teljes jogosultsággal fér hozzá ehhez a képernyőhöz.
###### 5.6.3 Hívott szolgáltatások

Az adott képernyőhöz tartozó szolgáltatások felsorolása az alábbi táblázat szerint.




|Funkciógomb/link/vezérlőelem esemény|Hívott ablak|Hívott szolgáltatás|
|---|---|---|
|Ablakbetöltés|-|Álláshirdetés publikálás űrlap betöltése.|
|MÁV Csoportportál publikálás checkbox pipálással Publikálás gomb megnyomása|-|publishMAVPortalAllashirdetesekV1 interfész hívása|
|CV Online publikálás checkbox pipálással Publikálás gomb megnyomása|-|Álláshirdetés getCVOAllashirdetesekV1 interfész hívásban szerepel|
|Startapró publikálás checkbox pipálással Publikálás gomb megnyomása|-|Álláshirdetés getStartAproAllashirdetesekV1 interfész hívásban szerepel|
|Mégsem gomb|-|Ablak bezárása álláshirdetés publikálás nélkül|


**MÁV Szolgáltató Központ Zrt. IT Üzletág**
*1087 Budapest, Könyves Kálmán krt. 54-60. Tel.: +36-1 457-9300; fax: +36-1 457-9500; e-mail: it@mav-szk.hu*


-----

##### 5.7 Toborzási feladatkosár

Abban az esetben, ha egy álláshirdetés szöveg „Terv” státusza „Elküldött”-re lesz állítva az „Álláshirdetés

módosítása” űrlapon, akkor a „Keresési kérelem” űrlap bal oldali panelén megadott „Engedélyező” felhasználónak

a „Toborzási feladatkosarában” megjelenik az adott álláshirdetés szövegének kártyája.

A Toborzási feladatkosár képernyőjén az alábbi szűrési lehetőségek lesznek:

  - Vállalat (bejelentkezett felhasználó vállalata, nem módosítható)

  - Munkavégzés helye

  - Szervezeti egység

  - Toborzó

A képernyő az alábbiak szerint néz ki:

A kártyán az alábbi adatok kerülnek megjelenítésre:

**MÁV Szolgáltató Központ Zrt. IT Üzletág**
*1087 Budapest, Könyves Kálmán krt. 54-60. Tel.: +36-1 457-9300; fax: +36-1 457-9500; e-mail: it@mav-szk.hu*


-----

Az engedélyező a kártyán az álláshirdetés címére kattintva megnyithatja az ***Álláshirdetés módosítás*** űrlapot,
melyen csak az Álláshirdetés státusza mező lesz módosítható számára.

A kártyán szereplő gombok segítségével dönthet az álláshirdetés szövegének elfogadásáról vagy elutasításáról.
###### 5.7.1 Jogosultságkezelés

Az Engedélyező a kártyán az álláshirdetés címére kattintva megnyithatja az ***Álláshirdetés módosítás*** űrlapot,
melyen csak az Álláshirdetés státusza mező lesz módosítható számára.

A Toborzási folyamatgazda teljes jogosultsággal fér hozzá ehhez a képernyőhöz. Ha az álláshirdetés címére kattintva
megnyithatja az ***Álláshirdetés módosítás*** űrlapot, azon bármely mező módosítható számára.
###### 5.7.2 Hívott szolgáltatások

Az adott képernyőhöz tartozó szolgáltatások felsorolása az alábbi táblázat szerint.




|Funkciógomb/link/vezérlőelem esemény|Hívott ablak|Hívott szolgáltatás|
|---|---|---|
|Ablakbetöltés|-|Toborzási feladatkosár képernyő betöltése.|
|Toborzási feladatkosár képernyő szűrési feltételeinek módosítása|-|Toborzási feladatkosár képernyő betöltése a módosított szűrési feltételekkel|
|Elutasítás gomb|-|Az adott álláshirdetés szöveg elutasításra kerül, és eltűnik a Toborzási feladatkosár képernyőről. (Ezzel az Álláshirdetés módosítása űrlapon ismét Terv álláshirdetés státuszba kerül.)|
|Engedélyezés gomb|-|Az adott álláshirdetés szöveg engedélyezésre kerül, és eltűnik a Toborzási feladatkosár képernyőről.|


**MÁV Szolgáltató Központ Zrt. IT Üzletág**
*1087 Budapest, Könyves Kálmán krt. 54-60. Tel.: +36-1 457-9300; fax: +36-1 457-9500; e-mail: it@mav-szk.hu*


-----

|Funkciógomb/link/vezérlőelem esemény|Hívott ablak|Hívott szolgáltatás|
|---|---|---|
|||(Ezzel az Álláshirdetés módosítása űrlapon Engedélyezett álláshirdetés státuszba kerül.)|

##### 5.8 Toborzás képtár

A képernyő megjelenése az alábbi képen látható.

A képernyőn a bal oldali panelen van lehetőség új kép feltöltésére, illetve meglévő kép törlésére. A jobb oldali
panelen a kiválasztott kép előnézete jelenik meg.

Az gombra kattintva megnyíló, lenti képen látható ablakban lesz lehetőség új kép
feltöltésére. A Vállalat mező a bejelentkezett felhasználó vállalatával töltődik ki alapértelmezetten, módosítani csak
HRP admin és IT admin számára lehetséges.

A Kép mezőben a gombra kattintva nyílik lehetőség kép feltöltésére, ami PNG vagy JPG formátumú lehet, ezt a
rendszer mentés során le is ellenőrzi. A feltöltendő kép elnevezésének a vállalat rövid nevével kell kezdődnie, hogy
a vállalatok képei ne keveredhessenek.

A Kulcsszavaknál megadott szavak a kereshetőséget támogatják.

**MÁV Szolgáltató Központ Zrt. IT Üzletág**
*1087 Budapest, Könyves Kálmán krt. 54-60. Tel.: +36-1 457-9300; fax: +36-1 457-9500; e-mail: it@mav-szk.hu*


-----

A rendszer a feltöltött képeket a Csoportportál erre a célra kijelölt mappájába menti.
###### 5.8.1 Jogosultságkezelés

A képernyőt toborzási folyamatgazdák csak saját vállalatukra vonatkozóan, HRP admin és IT admin az összes
vállalatra vonatkozóan használhatják.
###### 5.8.2 Hívott szolgáltatások

Az adott képernyőhöz tartozó szolgáltatások felsorolása az alábbi táblázat szerint.




|Funkciógomb/link/vezérlőelem esemény|Hívott ablak|Hívott szolgáltatás|
|---|---|---|
|Ablakbetöltés|-|Toborzási képtár képernyő betöltése.|
|Toborzási képtár képernyő szűrési feltételeinek módosítása|-|Toborzási képtár képernyő betöltése a módosított szűrési feltételekkel|
|Új kép feltöltése gomb|Új kép|-|

###### 5.8.3 Feltöltött képek felhasználása

A feltöltött képeket toborzó az Álláshirdetés Fénykép URL mezőjében a legördülő lista lehetőségek közül választva
tudja a hirdetéshez kapcsolni.

**MÁV Szolgáltató Központ Zrt. IT Üzletág**
*1087 Budapest, Könyves Kálmán krt. 54-60. Tel.: +36-1 457-9300; fax: +36-1 457-9500; e-mail: it@mav-szk.hu*


-----

A kiválasztott kép elérési útja kerül átadásra az álláshirdetés publikálása során a Csoportportál felé.

**MÁV Szolgáltató Központ Zrt. IT Üzletág**
*1087 Budapest, Könyves Kálmán krt. 54-60. Tel.: +36-1 457-9300; fax: +36-1 457-9500; e-mail: it@mav-szk.hu*


-----

##### 5.9 Ablakfolyam diagramm

**MÁV Szolgáltató Központ Zrt. IT Üzletág**
*1087 Budapest, Könyves Kálmán krt. 54-60. Tel.: +36-1 457-9300; fax: +36-1 457-9500; e-mail: it@mav-szk.hu*


-----

### 6 Tárolt eljárások

Az Effector platformban az üzleti logika az MS SQL-ben kap helyet, tárolt eljárások formájában.

**MÁV Szolgáltató Központ Zrt. IT Üzletág**
*1087 Budapest, Könyves Kálmán krt. 54-60. Tel.: +36-1 457-9300; fax: +36-1 457-9500; e-mail: it@mav-szk.hu*


-----

### 7 Fizikai adatmodell
















































































##### 7.1 dbo.msk_tob_allashirdetesek





|COLUMN NAME|DATATYPE|NOT NULL|COMMENTS|
|---|---|---|---|
|Msk_tob_allashirdetese kID|int|True|Properties: AutoNum = 1 Increment = 1 NotForRep = 0 property = AutoNum=1;StartNum=60000001;Increme nt=1; StartNum = 60000001|
|Idkeresesikerelem|int|False||
|Targy|varchar(255)|False||


**MÁV Szolgáltató Központ Zrt. IT Üzletág**
*1087 Budapest, Könyves Kálmán krt. 54-60. Tel.: +36-1 457-9300; fax: +36-1 457-9500; e-mail: it@mav-szk.hu*


-----

|COLUMN NAME|DATATYPE|NOT NULL|COMMENTS|
|---|---|---|---|
|||||
|StatuszID|int|False||
|Datum_lejarat|date|False||
|CsatolmanyID|int|False||
|Fejlecszoveg|varchar(max)|False||
|Feladatok|varchar(max)|False||
|Tulajdonsagok|varchar(max)|False||
|Elvarasok|varchar(max)|False||
|Elonytjelent|varchar(max)|False||
|Juttatasok|varchar(max)|False||
|Tovabbi_info|varchar(max)|False||
|Toborzo_info|varchar(max)|False||
|Toborzonev|varchar(250)|False||
|Toborzotelefonszam|varchar(50)|False||
|Vallalatibemutatkozo|varchar(max)|False||
|Datum_jovahagyas|date|False||
|Datum_publikalas|date|False||
|Link|varchar(2000)|False||
|Datum_lezaras|date|False||


**MÁV Szolgáltató Központ Zrt. IT Üzletág**
*1087 Budapest, Könyves Kálmán krt. 54-60. Tel.: +36-1 457-9300; fax: +36-1 457-9500; e-mail: it@mav-szk.hu*


-----

|COLUMN NAME|DATATYPE|NOT NULL|COMMENTS|
|---|---|---|---|
|||||
|VegzettsegiszintID|int|False||
|Pubcsoportportal|bit|False||
|PubCVO|bit|False||
|PubSTA|bit|False||
|FenykepURL|varchar(1000)|False||
|VideoURL|varchar(1000)|False||
|Deleted|tinyint|False||
|LetrehozoID|int|False||
|StatuszCSP|tinyint|False||
|StatuszCVO|tinyint|False||
|StatuszSTA|tinyint|False||




|PRIMARY KEY NAME|COLUMNS|COMMENTS|
|---|---|---|
|PK__msk_tob___A3C94052AD929390|Msk_tob_allashirdetes ekID||




|TYPE / NAME|COLUMNS|COMMENTS|
|---|---|---|
|«index» IXFK_msk_tob_allashirdetesek_msk_tob_keptar|CsatolmanyID||
|«index» IXFK_msk_tob_allashirdetesek_msk_tob_keresesik erelem|Idkeresesikerelem||
|«index» IXFK_msk_tob_allashirdetesek_msk_tob_vegzettse giszint|VegzettsegiszintID||


**MÁV Szolgáltató Központ Zrt. IT Üzletág**
*1087 Budapest, Könyves Kálmán krt. 54-60. Tel.: +36-1 457-9300; fax: +36-1 457-9500; e-mail: it@mav-szk.hu*


-----

|FOREIGN KEY NAME|COLUMNS|REFERENCES|
|---|---|---|
|FK_msk_tob_allashirdetesek_msk_tob_keptar|CsatolmanyID|dbo.msk_tob_keptar(Msk_tob_kept arID)|
|FK_msk_tob_allashirdetesek_msk_tob_keresesiker elem|Idkeresesikerelem|dbo.msk_tob_keresesikerelem(Msk _tob_keresesikerelemID)|
|FK_msk_tob_allashirdetesek_msk_tob_vegzettsegi s...|VegzettsegiszintID|dbo.msk_tob_vegzettsegiszint(Msk _tob_vegzettsegiszintID)|
|||dbo.msk_tob_vallalatleiras()|
|||dbo.msk_tob_LookupList()|

##### 7.2 dbo.msk_tob_csatornaszerzodes





|COLUMN NAME|DATATYPE|NOT NULL|COMMENTS|
|---|---|---|---|
|Msk_tob_csatornaszerz odesID|int|True|Properties: AutoNum = 1 Increment = 1 NotForRep = 0 property = AutoNum=1;StartNum=1;Increment=1; StartNum = 1|
|Datumtol|date|False||
|Datumig|date|False||
|Idceg|int|False||
|HirdetesicsatornaID|int|False||
|Deleted|tinyint|False||
|Megnevezes|varchar(100)|False||


**MÁV Szolgáltató Központ Zrt. IT Üzletág**
*1087 Budapest, Könyves Kálmán krt. 54-60. Tel.: +36-1 457-9300; fax: +36-1 457-9500; e-mail: it@mav-szk.hu*


-----

|PRIMARY KEY NAME|COLUMNS|COMMENTS|
|---|---|---|
|PK_msk_tob_csatornaszerzodesID|Msk_tob_csatornaszer zodesID||




|TYPE / NAME|COLUMNS|COMMENTS|
|---|---|---|
|«index» IXFK_msk_tob_csatornaszerzodes_msk_tob_hirdet esicsatornak|HirdetesicsatornaID||



|FOREIGN KEY NAME|COLUMNS|REFERENCES|
|---|---|---|
|FK_msk_tob_csatornaszerzodes_msk_tob_hirdetesi c...|HirdetesicsatornaID|dbo.msk_tob_hirdetesicsatornak(M sk_tob_hirdetesicsatornakID)|

##### 7.3 dbo.msk_tob_foglalkoztatasifok








|COLUMN NAME|DATATYPE|NOT NULL|COMMENTS|
|---|---|---|---|
|Msk_tob_foglalkoztatas ifokID|int|True|Properties: AutoNum = 1 Increment = 1 NotForRep = 0 property = AutoNum=1;StartNum=1;Increment=1; StartNum = 1|
|CVOextID|varchar(50)|False||
|STAextID|varchar(50)|False||
|Foglalkoztatasifok|varchar(250)|False||
|Deleted|tinyint|True||
|CSPextID|int|False||



|PRIMARY KEY NAME|COLUMNS|COMMENTS|
|---|---|---|
|PK_msk_tob_foglalkoztatasifokID|Msk_tob_foglalkoztata sifokID||

##### 7.4 dbo.msk_tob_hirdetesicsatornak



**MÁV Szolgáltató Központ Zrt. IT Üzletág**
*1087 Budapest, Könyves Kálmán krt. 54-60. Tel.: +36-1 457-9300; fax: +36-1 457-9500; e-mail: it@mav-szk.hu*


-----

|COLUMN NAME|DATATYPE|NOT NULL|COMMENTS|
|---|---|---|---|
|Msk_tob_hirdetesicsator nakID|int|True|Properties: AutoNum = 1 Increment = 1 NotForRep = 0 property = AutoNum=1;StartNum=1;Increment=1; StartNum = 1|
|Csatornakod|varchar(50)|False||
|Hirdetesicsatornak|varchar(250)|False||
|Deleted|tinyint|True||



|PRIMARY KEY NAME|COLUMNS|COMMENTS|
|---|---|---|
|PK_msk_tob_hirdetesicsatornak|Msk_tob_hirdetesicsat ornakID||

##### 7.5 dbo.msk_tob_keptar







|COLUMN NAME|DATATYPE|NOT NULL|COMMENTS|
|---|---|---|---|
|Msk_tob_keptarID|int|True|Properties: AutoNum = 1 Increment = 1 NotForRep = 0 property = AutoNum=1;StartNum=1;Increment=1; StartNum = 1|
|DocumentID|int|False||
|CompanyID|int|False||
|Kulcsszavak|varchar(max)|False||
|Deleted|tinyint|False||




|PRIMARY KEY NAME|COLUMNS|COMMENTS|
|---|---|---|
|PK_msk_tob_keptar|Msk_tob_keptarID||


**MÁV Szolgáltató Központ Zrt. IT Üzletág**
*1087 Budapest, Könyves Kálmán krt. 54-60. Tel.: +36-1 457-9300; fax: +36-1 457-9500; e-mail: it@mav-szk.hu*


-----

##### 7.6 dbo.msk_tob_kepzesfajta





|COLUMN NAME|DATATYPE|NOT NULL|COMMENTS|
|---|---|---|---|
|Msk_tob_kepzesfajtaID|int|True|Properties: AutoNum = 1 Increment = 1 NotForRep = 0 property = AutoNum=1;StartNum=1;Increment=1; StartNum = 1|
|CVOextID|varchar(50)|False||
|STAextID|varchar(50)|False||
|Kepzesfajta|varchar(250)|False||
|Deleted|tinyint|True||
|CSPextID|varchar(50)|False||



|PRIMARY KEY NAME|COLUMNS|COMMENTS|
|---|---|---|
|PK_msk_tob_kepzesfajtaID|Msk_tob_kepzesfajtaI D||

##### 7.7 dbo.msk_tob_kepzesjelleg







|COLUMN NAME|DATATYPE|NOT NULL|COMMENTS|
|---|---|---|---|
|Msk_tob_kepzesjellegI D|int|True|Properties: AutoNum = 1 Increment = 1 NotForRep = 0 property = AutoNum=1;StartNum=1;Increment=1; StartNum = 1|
|CVOextID|varchar(50)|False||
|STAextID|varchar(50)|False||
|Kepzesjelleg|varchar(250)|False||


**MÁV Szolgáltató Központ Zrt. IT Üzletág**
*1087 Budapest, Könyves Kálmán krt. 54-60. Tel.: +36-1 457-9300; fax: +36-1 457-9500; e-mail: it@mav-szk.hu*


-----

|COLUMN NAME|DATATYPE|NOT NULL|COMMENTS|
|---|---|---|---|
|||||
|Deleted|tinyint|True||
|CSPextID|varchar(50)|False||



|PRIMARY KEY NAME|COLUMNS|COMMENTS|
|---|---|---|
|PK_msk_tob_kepzesjellegID|Msk_tob_kepzesjellegI D||

##### 7.8 dbo.msk_tob_keresesikerelem







|COLUMN NAME|DATATYPE|NOT NULL|COMMENTS|
|---|---|---|---|
|Msk_tob_keresesikerele mID|int|True|Properties: AutoNum = 1 Increment = 1 NotForRep = 0 property = AutoNum=1;StartNum=1;Increment=1; StartNum = 1|
|Cim|varchar(250)|False||
|StatuszID|int|False||
|Iktatoszam|varchar(50)|False||
|Engedelyezesidatum|date|False||
|Munkakor|varchar(250)|False||
|Lejaratidatum|date|False||
|Pozicioszam|int|False||
|TeruletiigazgatosagID|int|False||
|SzakteruletID|int|False||
|||||


**MÁV Szolgáltató Központ Zrt. IT Üzletág**
*1087 Budapest, Könyves Kálmán krt. 54-60. Tel.: +36-1 457-9300; fax: +36-1 457-9500; e-mail: it@mav-szk.hu*


-----

|COLUMN NAME|DATATYPE|NOT NULL|COMMENTS|
|---|---|---|---|
|SzervezetiegyesegID|int|False||
|SzerzodesfajtaID|int|False||
|MunkavegzeshelyeID|int|False||
|Munkavegzeshelyeegye b|varchar(250)|False||
|Cv|tinyint|False||
|MunkakorcsoportID|int|False||
|FoglalkoztatasifokID|int|False||
|Kepzes_fajtaID|int|False||
|Kepzes_szakiranyID|int|False||
|MMKkod|int|False||
|Berlatszik|tinyint|False||
|Berkotelezo|tinyint|False||
|Map_job|tinyint|False||
|Idtoborzo1|int|False||
|Idtoborzo2|int|False||
|Idengedelyezo|int|False||
|Idceg|int|False||
|||||


**MÁV Szolgáltató Központ Zrt. IT Üzletág**
*1087 Budapest, Könyves Kálmán krt. 54-60. Tel.: +36-1 457-9300; fax: +36-1 457-9500; e-mail: it@mav-szk.hu*


-----

|COLUMN NAME|DATATYPE|NOT NULL|COMMENTS|
|---|---|---|---|
|Deleted|tinyint|False||
|Szerzodes_befejezes|date|False||
|Lezaras|bit|False||




|PRIMARY KEY NAME|COLUMNS|COMMENTS|
|---|---|---|
|PK_msk_tob_keresesikerelemID|Msk_tob_keresesikerel emID||




|TYPE / NAME|COLUMNS|COMMENTS|
|---|---|---|
|«index» IXFK_msk_tob_keresesikerelem_msk_tob_foglalk oztatasifok|FoglalkoztatasifokID||
|«index» IXFK_msk_tob_keresesikerelem_msk_tob_kepzesf ajta|Kepzes_fajtaID||
|«index» IXFK_msk_tob_keresesikerelem_msk_tob_kepzesj elleg|Kepzes_fajtaID||
|«index» IXFK_msk_tob_keresesikerelem_msk_tob_kepzesj elleg_02|Kepzes_szakiranyID||
|«index» IXFK_msk_tob_keresesikerelem_msk_tob_keresesi kerelemstatusz|StatuszID||
|«index» IXFK_msk_tob_keresesikerelem_msk_tob_munkak oricsoport|MunkakorcsoportID||
|«index» IXFK_msk_tob_keresesikerelem_msk_tob_szakter ulet|SzakteruletID||
|«index» IXFK_msk_tob_keresesikerelem_msk_tob_szerzod esfajta|SzerzodesfajtaID||
||||


**MÁV Szolgáltató Központ Zrt. IT Üzletág**
*1087 Budapest, Könyves Kálmán krt. 54-60. Tel.: +36-1 457-9300; fax: +36-1 457-9500; e-mail: it@mav-szk.hu*


-----

|«index» IXFK_msk_tob_keresesikerelem_msk_tob_telepule sek|MunkavegzeshelyeID|Col3|
|---|---|---|
|«index» IXFK_msk_tob_keresesikerelem_msk_tob_teruletii gazgatosagok|TeruletiigazgatosagID||
|«index» IX_msk_tob_keresesikerelem(Idceg,Deleted)_INC LUDE(Msk_tob_keresesikerelemID,Cim,StatuszID,Iktatoszam,)|Idceg, Deleted||
|«index» IX_msk_tob_keresesikerelem(Idengedelyezo,Delet ed)|Idengedelyezo, Deleted||
|«index» IX_msk_tob_keresesikerelem(StatuszID,Deleted)|StatuszID, Deleted||
|«index» IX_msk_tob_keresesikerelem(SzakteruletID,Delete d)|SzakteruletID, Deleted||


|TRIGGER NAME|COMMENTS|
|---|---|
|keresesikerelem_update||







|FOREIGN KEY NAME|COLUMNS|REFERENCES|
|---|---|---|
|FK_msk_tob_keresesikerelem_msk_tob_munkakor icso...|MunkakorcsoportID|dbo.msk_tob_munkakoricsoport(M sk_tob_munkakoricsoportID)|
|||dbo.msk_tob_LookupList()|
|FK_msk_tob_keresesikerelem_msk_tob_szerzodesf ajta|SzerzodesfajtaID|dbo.msk_tob_szerzodesfajta(Msk_t ob_szerzodesfajtaID)|
|FK_msk_tob_keresesikerelem_msk_tob_szakterule t|SzakteruletID|dbo.msk_tob_szakterulet(Msk_tob_ szakteruletID)|
|FK_msk_tob_keresesikerelem_msk_tob_foglalkozt at...|FoglalkoztatasifokID|dbo.msk_tob_foglalkoztatasifok(M sk_tob_foglalkoztatasifokID)|
||Kepzes_szakiranyID|dbo.msk_tob_kepzesjelleg(Msk_to b_kepzesjellegID)|


**MÁV Szolgáltató Központ Zrt. IT Üzletág**
*1087 Budapest, Könyves Kálmán krt. 54-60. Tel.: +36-1 457-9300; fax: +36-1 457-9500; e-mail: it@mav-szk.hu*


-----

|FK_msk_tob_keresesikerelem_msk_tob_kepzesjell eg_02|Col2|Col3|
|---|---|---|
|FK_msk_tob_keresesikerelem_msk_tob_kepzesfajt a|Kepzes_fajtaID|dbo.msk_tob_kepzesfajta(Msk_tob _kepzesfajtaID)|
|FK_msk_tob_keresesikerelem_msk_tob_teruletiiga z...|TeruletiigazgatosagID|dbo.msk_tob_teruletiigazgatosagok (Msk_tob_teruletiigazgatosagokID)|
|FK_msk_tob_keresesikerelem_msk_tob_keresesike re...|StatuszID|dbo.msk_tob_keresesikerelemstatus z(Msk_tob_keresesikerelemstatuszI D)|
|FK_msk_tob_keresesikerelem_msk_tob_telepulese k|MunkavegzeshelyeID|dbo.msk_tob_telepulesek(Msk_tob _telepulesekID)|

##### 7.9 dbo.msk_tob_keresesikerelem_vezetok








|COLUMN NAME|DATATYPE|NOT NULL|COMMENTS|
|---|---|---|---|
|Msk_tob_keresesikerele m_vezetokID|int|True|Properties: AutoNum = 1 Increment = 1 NotForRep = 0 property = AutoNum=1;StartNum=1;Increment=1; StartNum = 1|
|Idvezeto|int|False||
|Idkeresesikerelem|int|False||
|Mjgy|int|False||
|Deleted|tinyint|False||
|Statuszolovezeto|tinyint|False||




|PRIMARY KEY NAME|COLUMNS|COMMENTS|
|---|---|---|
|PK_msk_tob_keresesikerelem_vezetokID|Msk_tob_keresesikerel em_vezetokID||


|TYPE / NAME|COLUMNS|COMMENTS|
|---|---|---|
||||


**MÁV Szolgáltató Központ Zrt. IT Üzletág**
*1087 Budapest, Könyves Kálmán krt. 54-60. Tel.: +36-1 457-9300; fax: +36-1 457-9500; e-mail: it@mav-szk.hu*


-----

|TRIGGER NAME|COMMENTS|
|---|---|
|VezetoNullazo||


|FOREIGN KEY NAME|COLUMNS|REFERENCES|
|---|---|---|
|FK_msk_tob_keresesikerelem_vezetok_msk_tob_k ere...|Idkeresesikerelem|dbo.msk_tob_keresesikerelem(Msk _tob_keresesikerelemID)|

##### 7.10 dbo.msk_tob_keresesikerelemmasolas







|COLUMN NAME|DATATYPE|NOT NULL|COMMENTS|
|---|---|---|---|
|Msk_tob_keresesikerele mmasolasID|int|False||
|Megnevezes|varchar(100)|False||

##### 7.11 dbo.msk_tob_keresesikerelemstatusz





|COLUMN NAME|DATATYPE|NOT NULL|COMMENTS|
|---|---|---|---|
|Msk_tob_keresesikerele mstatuszID|int|True|Properties: AutoNum = 1 Increment = 1 NotForRep = 0 property = AutoNum=1;StartNum=1;Increment=1; StartNum = 1|
|Keresesikerelemstatusz|varchar(250)|False||
|Deleted|tinyint|True||




|PRIMARY KEY NAME|COLUMNS|COMMENTS|
|---|---|---|
|PK_msk_tob_keresesikerelemstatuszID|Msk_tob_keresesikerel emstatuszID||


**MÁV Szolgáltató Központ Zrt. IT Üzletág**
*1087 Budapest, Könyves Kálmán krt. 54-60. Tel.: +36-1 457-9300; fax: +36-1 457-9500; e-mail: it@mav-szk.hu*


-----

##### 7.12 dbo.msk_tob_LookupList




|COLUMN NAME|DATATYPE|NOT NULL|COMMENTS|
|---|---|---|---|
|LookupListID|int|False||
|GroupNum|int|False||
|LookupValue|varchar(255)|False||
|Department|int|False||
|Deleted|tinyint|False||
|sort|int|False||
|TechnicalName|varchar(1000)|False||

##### 7.13 dbo.msk_tob_munkakoricsoport





|COLUMN NAME|DATATYPE|NOT NULL|COMMENTS|
|---|---|---|---|
|Msk_tob_munkakoricso portID|int|True|Properties: AutoNum = 1 Increment = 1 NotForRep = 0 property = AutoNum=1;StartNum=1;Increment=1; StartNum = 1|
|CVOextID|varchar(50)|False||
|STAextID|varchar(50)|False||
|Munkakoricsoport|varchar(200)|False||
|Deleted|tinyint|True||
|CSPextID|varchar(50)|False||


**PRIMARY KEY NAME** **COLUMNS** **COMMENTS**

**MÁV Szolgáltató Központ Zrt. IT Üzletág**
*1087 Budapest, Könyves Kálmán krt. 54-60. Tel.: +36-1 457-9300; fax: +36-1 457-9500; e-mail: it@mav-szk.hu*


-----

##### 7.14 dbo.msk_tob_szakterulet







|COLUMN NAME|DATATYPE|NOT NULL|COMMENTS|
|---|---|---|---|
|Msk_tob_szakteruletID|int|True|Properties: AutoNum = 1 Increment = 1 NotForRep = 0 property = AutoNum=1;StartNum=1;Increment=1; StartNum = 1|
|CVOextID|varchar(45)|False||
|STAextID|varchar(50)|False||
|Szakterulet|varchar(250)|False||
|Deleted|tinyint|True||
|CSPextID|varchar(50)|False||



|PRIMARY KEY NAME|COLUMNS|COMMENTS|
|---|---|---|
|PK_msk_tob_szakteruletID|Msk_tob_szakteruletI D||

##### 7.15 dbo.msk_tob_szerzodesfajta







|COLUMN NAME|DATATYPE|NOT NULL|COMMENTS|
|---|---|---|---|
|Msk_tob_szerzodesfajta ID|int|True|Properties: AutoNum = 1 Increment = 1 NotForRep = 0 property = AutoNum=1;StartNum=1;Increment=1; StartNum = 1|
|CVOextID|varchar(50)|False||
|STAextID|varchar(50)|False||


**MÁV Szolgáltató Központ Zrt. IT Üzletág**
*1087 Budapest, Könyves Kálmán krt. 54-60. Tel.: +36-1 457-9300; fax: +36-1 457-9500; e-mail: it@mav-szk.hu*


-----

|COLUMN NAME|DATATYPE|NOT NULL|COMMENTS|
|---|---|---|---|
|||||
|Szerzodesfajta|varchar(250)|False||
|Deleted|tinyint|True||



|PRIMARY KEY NAME|COLUMNS|COMMENTS|
|---|---|---|
|PK_msk_tob_szerzodesfajtaID|Msk_tob_szerzodesfajt aID||

##### 7.16 dbo.msk_tob_telepulesek







|COLUMN NAME|DATATYPE|NOT NULL|COMMENTS|
|---|---|---|---|
|Msk_tob_telepulesekID|int|True|Properties: AutoNum = 1 Increment = 1 NotForRep = 0 property = AutoNum=1;StartNum=1;Increment=1; StartNum = 1|
|CVOextID|varchar(50)|False||
|STAextID|varchar(50)|False||
|Telepules|varchar(250)|False||
|Deleted|tinyint|True||



|PRIMARY KEY NAME|COLUMNS|COMMENTS|
|---|---|---|
|PK_msk_tob_telepulesekID|Msk_tob_telepulesekI D||

##### 7.17 dbo.msk_tob_teruletiigazgatosagok







|COLUMN NAME|DATATYPE|NOT NULL|COMMENTS|
|---|---|---|---|
|Msk_tob_teruletiigazgat osagokID|int|True|Properties: AutoNum = 1 Increment = 1 NotForRep = 0|


**MÁV Szolgáltató Központ Zrt. IT Üzletág**
*1087 Budapest, Könyves Kálmán krt. 54-60. Tel.: +36-1 457-9300; fax: +36-1 457-9500; e-mail: it@mav-szk.hu*


-----

|COLUMN NAME|DATATYPE|NOT NULL|COMMENTS|
|---|---|---|---|
||||property = AutoNum=1;StartNum=1;Increment=1; StartNum = 1|
|CVOextID|varchar(50)|False||
|STAextID|varchar(50)|False||
|Igazgatosagok|varchar(250)|False||
|Deleted|tinyint|True||
|VallalatKod|varchar(50)|False||
|CSPextID|varchar(50)|False||



|PRIMARY KEY NAME|COLUMNS|COMMENTS|
|---|---|---|
|PK_msk_tob_teruletiigazgatosagokID|Msk_tob_teruletiigazg atosagokID||

##### 7.18 dbo.msk_tob_vallalatleiras







|COLUMN NAME|DATATYPE|NOT NULL|COMMENTS|
|---|---|---|---|
|Msk_tob_vallalatleirasI D|int|True|Properties: AutoNum = 1 Increment = 1 NotForRep = 0 property = AutoNum=1;StartNum=1;Increment=1; StartNum = 1|
|Idceg|int|False||
|Leiras|varchar(max)|False||
|Deleted|tinyint|False||
|CVOextID|varchar(50)|False||
|STAextID|varchar(50)|False||


**MÁV Szolgáltató Központ Zrt. IT Üzletág**
*1087 Budapest, Könyves Kálmán krt. 54-60. Tel.: +36-1 457-9300; fax: +36-1 457-9500; e-mail: it@mav-szk.hu*


-----

|COLUMN NAME|DATATYPE|NOT NULL|COMMENTS|
|---|---|---|---|
|||||
|Email|varchar(max)|False||



|PRIMARY KEY NAME|COLUMNS|COMMENTS|
|---|---|---|
|PK_msk_tob_vallalatleirasID|Msk_tob_vallalatleiras ID||

##### 7.19 dbo.msk_tob_vegzettsegiszint







|COLUMN NAME|DATATYPE|NOT NULL|COMMENTS|
|---|---|---|---|
|Msk_tob_vegzettsegiszi ntID|int|True|Properties: AutoNum = 1 Increment = 1 NotForRep = 0 property = AutoNum=1;StartNum=1;Increment=1; StartNum = 1|
|CVOextID|varchar(50)|False||
|STAextID|varchar(50)|False||
|Vegzettsegiszint|varchar(250)|False||
|Deleted|tinyint|True||




|PRIMARY KEY NAME|COLUMNS|COMMENTS|
|---|---|---|
|PK_msk_tob_vegzettsegiszintID|Msk_tob_vegzettsegisz intID||


**MÁV Szolgáltató Központ Zrt. IT Üzletág**
*1087 Budapest, Könyves Kálmán krt. 54-60. Tel.: +36-1 457-9300; fax: +36-1 457-9500; e-mail: it@mav-szk.hu*


-----

### 8 Rendszerkapcsolati modell
##### 8.1 Érintett rendszerkapcsolatok






|Rendszerkapcsolat neve|Kapcsolódó rendszer|Kapcsolati irány|Gyakoriság|Kapcsolat célja|Adatkörök|
|---|---|---|---|---|---|
|publishMAVPortalAllashirdetesekV1|MÁV Csoport Portál, TIBCO|adat fogadó|ad-hoc|Álláshirdetések publikálásához adatok biztosítása|Álláshirdetések|
|getCVOAllashirdetesekV1|CV Online, TIBCO|adat fogadó|ad-hoc|Álláshirdetések portálon való megjelenéséhez adatok biztosítása|Álláshirdetések|


**MÁV Szolgáltató Központ Zrt. IT Üzletág**
*1087 Budapest, Könyves Kálmán krt. 54-60. Tel.: +36-1 457-9300; fax: +36-1 457-9500; e-mail: it@mav-szk.hu*


-----

|Rendszerkapcsolat neve|Kapcsolódó rendszer|Kapcsolati irány|Gyakoriság|Kapcsolat célja|Adatkörök|
|---|---|---|---|---|---|
|getStartAproAllashirdetesekV1|Startapró, TIBCO|adat fogadó|ad-hoc|Álláshirdetések portálon való megjelenéséhez adatok biztosítása|Álláshirdetések|

##### 8.2 PublishMAVPortalAllashirdetesekV1






Ezen az interfészen keresztül fogja megkapni a MÁV Csoport Portál a HÖP TOB modulban publikált

álláshirdetéseket.
###### 8.2.1 Átadandó állomány formátuma, névkonvenció

Az átadás webservice-eken keresztül történik, a TIBCO middleware közbeiktatásával. A leírását az alábbi csatolt

excel táblázat tartalmazza.



|Col1|Azonosító|Innnn|
|---|---|---|
||Név|PublishMAVPortalAllashirdetesekV1|
||Leírás|Álláshirdetések publikálása a MÁV Csoportportál felé|
||Tipus|szinkron|
||Szolgáltató rendszer technológiája|HTTPS|
|||Név|
|||Mező neve GetCVOAllashirdetesekV1Request|
||Kérés||
|||Header|
|||MAVPortalAllashirdetesek|
|||MAVPortalAllashirdetes|
||||
||||
||Válasz|GetCVOAllashirdetesekV1Response|
|||Header|
|||ServiceFault|
|||ResponseData|
|||link|
||||
||||
||||
||||
||||
||||
||||
||||


**MÁV Szolgáltató Központ Zrt. IT Üzletág**
*1087 Budapest, Könyves Kálmán krt. 54-60. Tel.: +36-1 457-9300; fax: +36-1 457-9500; e-mail: it@mav-szk.hu*


-----

###### 8.2.2 Átadandó állomány struktúrája

|XML tag|Típus|Hossz|Leírás|Megjegyzés|
|---|---|---|---|---|
|<ADVERT ID>|string|255|Hirdetés azonosító|Objektum azonosító|
|<COMPANY>|string|100||Üzletág|
|<TITLE>|string|255|Hirdetés megnevezése.|Álláshirdetés címe|
|<DESCRIPTION>|string|65535|Hirdetés leírása|Feladatok|
|<LOCATION>|int/string|11 or N/A|munkavégzés helye|Munkavégzés helye|
|<CATEGORY>|int/string|11 or N/A|álláskategória|SAP szakterület|
|<COMPANYID>|int|11|cég azonosító|Vállalat megnevezése|
|<DEPARTMENT>|string|255|részleg|Szakterület|
|<REQUIREMENTS>|string|65535|elvárás|A munkakör betöltésének feltételei|
|<QUALITIES>|string|65535|előny|Előnyt jelent|
|<BENEFITS>|string|65535|juttatások|Amit ajánlunk|
|<min_experience>|int|11|||
|<min_education>|int|11|||
|<driver_license>|boolean|1|||
|<LINK>|string|255|link||
|<created_at>|datetime|N/A|létrehozás ideje|Nincs benne az XML-ben.|
|<ACTIVATION_DATE>|date|YYYY-mm-dd|aktiválás dátuma|Közzétételi időszak - kezdő dátum|
|<EXPIRATION_DATE>|date|YYYY-mm-dd|lejárati dátum|Közzétételi időszak - záró dátum|
|<order_date>|datetime|N/A|rendelés dátuma|Nincs benne az XML-ben.|
|<CONTRACT>|int/string|11 or N/A|szerződés fajtája|Szerződés fajta|
|<SCHEDULE>|int/string|11 or N/A|munkaórák száma|Foglalkoztatási fok|
|<COMPANY_NAME/>|string|100|alternatív cég megnevezés||
|<EMAIL/>|string|128|alternatív e-mail cím||
|<PHONE/>|string|100|alternatív telefonszám||
|<VACANCY_NR>|int|11|pozíciók száma|Pozíciók száma|
|<WORK_LOCATION>|string|255|munkavégzés helye|Munkavégzés helye|
|<HIDE_COMPANY>|boolean|1|cégnév elrejtése|fix érték: false|
|<SHOW_APPLY_BUTTON>|boolean|1|jelentkezés gomb megjelenítése|fix érték: false|
|<CUSTOM_TEMPLATE_ID>|int|11|fogadó azonosítója|fix érték: 286|
|<TASKS>-|string|65535||További Információk|
|<ADDITIONAL_INFO>|string|65535||További információ|
|<recruiter info>|string|65535||Bővebb felvilágosítást ad|
|<recruiter_id>|int|11|||
|<recruiter_email>|string|255|||
|<recruiter_felvado>|string|255|||
|<MAP_job>|int|1|||
|<CV>|int|1|||
|<SUBSIDIARY>|string|255||Üzletág kód|
|<INDUSTRY>|string|255||Területi igazgatóság|
|<HIERARCHY_LEVEL>|string|255||Munkakörcsoport|
|<EDUCATION_TYPE>|string|255||Képzésfajta|
|<EDUCATION_FIELD>|string|255||Képzés szakiránya|
|<FIELD_OF_STUDY>|string|255||Szak (TEXT80)|


**MÁV Szolgáltató Központ Zrt. IT Üzletág**
*1087 Budapest, Könyves Kálmán krt. 54-60. Tel.: +36-1 457-9300; fax: +36-1 457-9500; e-mail: it@mav-szk.hu*


-----

|XML tag|Típus|Hossz|Leírás|Megjegyzés|
|---|---|---|---|---|
|<QUALIFICATION>||||Kvalifikáció|
|<LANGUAGES>|||||
|<LANGUAGE>|string|255||Idegen nyelv|
|<PROFICIENCY>|string|255||Idegen nyelv|
|<ITKNOWLEDGES>|||||
|<ITKNOWLEDGE>|string|255||Informatika|
|<PROFICIENCY>|string|255||Informatika|
|<MIN_EXPERIENCES>|||||
|<MIN_EXPERIENCE>|string|255||Szakmai, vezetzői tapasztalat|
|<PROFICIENCY>|string|255||Szakmai, vezetzői tapasztalat|
|<DRIVER_LICENSE>|||||
|<DRIVER_LICENSE>|string|255||Gépjárművezetői engedély|
|<BRBER_VISIBLE>|int|1|Bruttó Bér mező látható||
|<BRBER_MANDANTORY>|int|1|Bruttó bér mező kötelező||

###### 8.2.3 Előállítás módja, ütemezés, paraméterezés

Az interfészt a HÖP indítja, amikor a Toborzó megnyomja az álláshirdetés publikálás gombját. Ez teljes mértékben
ad-hoc és minden egyes interfész hívás egy darab álláshirdetést tartalmaz, amelynek az AdvertID az egyedi
azonosítója. A MÁV Csoport Portál egy válasz üzenetet küld a HÖP felé 150 másodpercen belül az álláshirdetés
linkjével, melyen publikálásra került az álláshirdetés. A másik két interfész csak ennek a linknek az ismeretében
szolgáltatja az álláshirdetést, amennyiben adott portálon is meghirdetésre kerül.

Változásokat nem kezelünk.
###### 8.2.4 Átadás módja, helye, hibakezelés

Az interfész a TIBCO middleware-en megy keresztül, a TIBCO megoldócsoport tud a hibakezelésben majd az
üzemeltetés segítségére lenni, illetve a TIBCO eszközei használhatók erre.
###### 8.2.5 Logikai adatmapping




|COLUMN NAME|DATATYPE|NOT NULL|Megjegyzés|MAP|
|---|---|---|---|---|
|id|int|True|Hirdetés azonosító|<ADVERT ID>|
|company|int|False|Üzletág|<COMPANY>|
|title|varchar(255)|False|Álláshirdetés címe|<TITLE>|
|description|vachar(max)|False|Feladatok|<DESCRIPTION>|
|location|varchar(250)|False|Munkavégzés helye|<LOCATION>|
|category|varchar(50)|False|SAP szakterület|<CATEGORY>|
|companyid|int|False|Vállalat megnevezése|<COMPANYID>|
|department|int|False|Szakterület|<DEPARTMENT>|


**MÁV Szolgáltató Központ Zrt. IT Üzletág**
*1087 Budapest, Könyves Kálmán krt. 54-60. Tel.: +36-1 457-9300; fax: +36-1 457-9500; e-mail: it@mav-szk.hu*


-----

|COLUMN NAME|DATATYPE|NOT NULL|Megjegyzés|MAP|
|---|---|---|---|---|
|requirements|varchar(max)|False|A munkakör betöltésének feltételei|<REQUIREMENTS>|
|qualities|varchar(max)|False|Előnyt jelent|<QUALITIES>|
|benefits|varchar(max)|False|Amit ajánlunk|<BENEFITS>|
|minExperience|int|False||<min_experience>|
|minEducation|int|False||<min_education>|
|driverLicense|int|False||<driver_license>|
|Link|varchar(2000)|False|link|<LINK>|
|activationDate|date|False|Közzétételi időszak - kezdő dátum|<ACTIVATION_DATE>|
|expirationDate|date|False|Közzétételi időszak - záró dátum|<EXPIRATION_DATE>|
|contract|varchar(250)|False|Szerződés fajta|<CONTRACT>|
|schedule|varchar(50)|False|Foglalkoztatási fok|<SCHEDULE>|
|companyName|int|False|alternatív cég megnevezés|<COMPANY_NAME/>|
|email|int|False|alternatív e-mail cím|<EMAIL/>|
|phone|int|False|alternatív telefonszám|<PHONE/>|
|vacancyNumber|int|False|Pozíciók száma|<VACANCY_NR>|
|workLocation|varchar(250)|False|Munkavégzés helye|<WORK_LOCATION>|
|hideCompany|int|False|Cégnév elrejtése|<HIDE_COMPANY>|
|showApplyButton|int|False|Jelentkezés gomb megjelenítése|<SHOW_APPLY_BUTTON>|
|customTemplateId|varchar(50)|False|Fogadó azonosítója|<CUSTOM_TEMPLATE_ID>|
|tasks|varchar(max)|False|További Információk|<TASKS>-|
|additionalInfo|varchar(max)|False|További információ|<ADDITIONAL_INFO>|
|recuiterInfo|varchar(max)|False|Bővebb felvilágosítást ad|<recruiter info>|
|recuiterId|varchar(10)|False||<recruiter_id>|
|recuiterEmail|varchar(100)|False||<recruiter_email>|
|recuiterFelvado|int|False||<recruiter_felvado>|
|MAPJob|tinyint|False||<MAP_job>|
|CV|tinyint|False||<CV>|
|subsidiary|int|False|Üzletág kód|<SUBSIDIARY>|
|industry|varchar(250)|False|Területi igazgatóság|<INDUSTRY>|
|hierarchyLeve|varchar(200)|False|Munkakörcsoport|<HIERARCHY_LEVEL>|
|educationType|varchar(250)|False|Képzésfajta|<EDUCATION_TYPE>|
|educationField|varchar(250)|False|Képzés szakiránya|<EDUCATION_FIELD>|


**MÁV Szolgáltató Központ Zrt. IT Üzletág**
*1087 Budapest, Könyves Kálmán krt. 54-60. Tel.: +36-1 457-9300; fax: +36-1 457-9500; e-mail: it@mav-szk.hu*


-----

|COLUMN NAME|DATATYPE|NOT NULL|Megjegyzés|MAP|
|---|---|---|---|---|
|fieldsOfStudy|int|False|Szak (TEXT80)|<FIELD_OF_STUDY>|
|BrBerVisible|tinyint|False|Bruttó Bér mező látható|<BRBER_VISIBLE>|
|BrBerMandantory|tinyint|False|Bruttó bér mező kötelező|<BRBER_MANDANTORY>|

##### 8.3 GetCVOAllashirdetesekV1

Ezen az interfészen keresztül fogja megkapni a CV Online a HÖP TOB modulban publikált és MÁV Csoport Portálon
már megjelent álláshirdetéseket.
###### 8.3.1 Átadandó állomány formátuma, névkonvenció

Az átadás webservice-eken keresztül történik, a TIBCO middleware közbeiktatásával. A leírását az alábbi csatolt

excel táblázat tartalmazza.

**MÁV Szolgáltató Központ Zrt. IT Üzletág**
*1087 Budapest, Könyves Kálmán krt. 54-60. Tel.: +36-1 457-9300; fax: +36-1 457-9500; e-mail: it@mav-szk.hu*


-----

|<?xml version="1.0" encoding="UTF-8"?>|Col2|Col3|Col4|
|---|---|---|---|
|<WebAdverts>||||
||<advert ID="1">|||
|||<company>MÁV Zrt.||
|||<title>Title</title>||
|||<description>Descri||
|||<locations>||
||||<location>|
|||</locations>||
|||<categories>||
||||<category|
|||</categories>||
|||<companyID>410706||
|||<department>Részle||
|||<requirements>Elvá||
|||<qualities>Előny</q||
|||<benefits>Amit nyúj||
|||<min_experience>X||
|||<min_education>X</||
|||<driver_license>fals||
|||<link>http://www.hi||
|||<activation_date>20||
|||<expiration_date>YY||
|||<contract>Határozatl||
|||<schedule>40.00 </s||
|||<company_name/>||
|||<email/>||
|||<phone/>||
|||<vacancy_nr>1</vac||
|||<work_location>Bud||
|||<hide_company>fals||
|||<show_apply_butto||
|||<custom_template_I||
|||<tasks>Feladatok</t||
|||<additional_info>Kie||
|||<recruiter_info>||
||||Bővebb fe|
|||</recruiter_info>||
||</advert>|||
|</WebAdverts>||||

###### 8.3.2 Átadandó állomány struktúrája

**MÁV Szolgáltató Központ Zrt. IT Üzletág**
*1087 Budapest, Könyves Kálmán krt. 54-60. Tel.: +36-1 457-9300; fax: +36-1 457-9500; e-mail: it@mav-szk.hu*


-----

|XML tag|Típus|Hossz|Leírás|Megjegyzés|
|---|---|---|---|---|
|<ADVERT ID>|string|255|SAP hirdetés azonosító|Objektum azonosító|
|<COMPANY>|string|100|e-mail cím (ha több cég van)|Üzletág megnevezés|
|<TITLE>|string|255|hirdetés megnevezése|Álláshirdetés címe|
|<DESCRIPTION>|string|65535|hirdetés leírása|Vállalat <bemutatása>|
|<LOCATION>|int/string|11 or N/A|munkavégzés helye|Munkavégz. Helye|
|<CATEGORY>|int/string|11 or N/A|álláskategória|Szakterület|
|<COMPANYID>|int|11|cég azonosító|Üzletág kód|
|<DEPARTMENT>|string|255|részleg|Szakterület|
|<REQUIREMENTS>|string|65535|elvárás|A munkakör betöltésének feltételei|
|<QUALITIES>|string|65535|előny|Előnyt jelent|
|<BENEFITS>|string|65535|juttatások|Amit ajánlunk|
|<MIN_EXPERIENCE>|int|11|minimum tapasztalat||
|<MIN_EDUCATION>|int|11|minimum végzettség||
|<DRIVER_LICENSE>|boolean|1|jogosítvány||
|<LINK>|string|255|link||
|<ACTIVATION_DATE>|date|YYYY-mm-dd|aktiválás dátuma|Közzétételi időszak - kezdő dátum|
|<EXPIRATION_DATE>|date|YYYY-mm-dd|lejárati dátum|Közzétételi időszak - záró dátum|
|<CONTRACT>|int/string|11 or N/A|szerződés fajtája|Szerződésfajta|
|<SCHEDULE>|int/string|11 or N/A|munkaórák száma|Teljes munkaidő|
|<COMPANY_NAME>|string|100|alternatív cég megnevezés||
|<EMAIL>|string|128|alternatív e-mail cím||
|<PHONE>|string|100|alternatív telefonszám||
|<VACANCY_NR>|int|11|pozíciók száma|Pozíciók száma|
|<WORK_LOCATION>|string|255|munkavégzés helye|Munkavégzés helye|
|<HIDE_COMPANY>|boolean|1|cégnév elrejtése|0|
|<SHOW_APPLY_BUTTON>|boolean|1|jelentkezés gomb megjelenítése|1|
|<CUSTOM_TEMPLATE_ID>|int|11|fogadó azonosítója||
|<TASKS>|string|65535||Feladatok|
|<ADDITIONAL_INFO>|string|65535||További információ|
|<RECRUITER INFO>|string|65535||Bővebb felvilágosítást ad|

###### 8.3.3 Előállítás módja, ütemezés, paraméterezés

Az interfészt a CV Online indítja a TIBCO megszólításával, ami teljes mértékben ad-hoc. Minden egyes interfész hívás
egy álláshirdetés csomagot tartalmaz, amelyben az egyes álláshirdetések egyedi azonosítója az AdvertID. Minden
csomagban a még nem lejárt álláshirdetések vannak.

Változásokat nem kezelünk.

**MÁV Szolgáltató Központ Zrt. IT Üzletág**
*1087 Budapest, Könyves Kálmán krt. 54-60. Tel.: +36-1 457-9300; fax: +36-1 457-9500; e-mail: it@mav-szk.hu*


-----

###### 8.3.4 Átadás módja, helye, hibakezelés

Az interfész a TIBCO middleware-en megy keresztül, a TIBCO megoldócsoport tud a hibakezelésben majd az
üzemeltetés segítségére lenni, illetve a TIBCO eszközei használhatók erre.
###### 8.3.5 Logikai adatmapping

|COLUMN NAME|DATATYPE|NOT NULL|Megjegyzés|MAP|
|---|---|---|---|---|
|PID|int|False|Hirdetés azonosító|<ADVERT ID>|
|PCOMPANYNAME|varchar(255)|False|Üzletág megnevezés|<COMPANY>|
|PTITLE|varchar(max)|False|Álláshirdetés címe|<TITLE>|
|PDESCRIPTION|varchar(max)|False|hirdetés leírása|<DESCRIPTION>|
|PLOCATION|varchar(250)|False|Munkavégz. Helye|<LOCATION>|
|PCATEGORY|varchar(45)|False|álláskategória|<CATEGORY>|
|PCOMPANYID|int|False|Üzletág kód|<COMPANYID>|
|PDEPARTMENT|varchar(250)|False|Szakterület|<DEPARTMENT>|
|PREQUIREMENTS|varchar(max)|False|A munkakör betöltésének feltételei|<REQUIREMENTS>|
|PQUALITIES|varchar(max)|False|Előnyt jelent|<QUALITIES>|
|PBENEFITS|varchar(max)|False|Amit ajánlunk|<BENEFITS>|
|PMINEXPERIENCE|int|True|minimum tapasztalat|<MIN_EXPERIENCE>|
|PMINEDUSATION|varchar(50)|False|minimum végzettség|<MIN_EDUCATION>|
|PDRIVERLICENCE|int|True|jogosítvány|<DRIVER_LICENSE>|
|PLINK|varchar(2000)|False|link|<LINK>|
|PACTIVATIONDATE|date|False|Közzétételi időszak - kezdő dátum|<ACTIVATION_DATE>|
|PEXPIRATIONDATE|date|False|Közzétételi időszak - záró dátum|<EXPIRATION_DATE>|
|PCONTRACT|varchar(250)|False|Szerződésfajta|<CONTRACT>|
|PSCHEDULE|varchar(50)|False|Teljes munkaidő|<SCHEDULE>|
|PCOMPANYNAME|varchar(255)|False|alternatív cég megnevezés|<COMPANY_NAME>|
|PEMAIL|varchar(max)|False|alternatív e-mail cím|<EMAIL>|
|PPHONE|varchar(50)|False|alternatív telefonszám|<PHONE>|
|PVACANCYNUMBER|int|False|Pozíciók száma|<VACANCY_NR>|
|PWORKLOCATION|varchar(250)|False|Munkavégzés helye|<WORK_LOCATION>|
|PHIDECOMPANY|int|True|cégnév elrejtése|<HIDE_COMPANY>|
|PSHOWAPPLYBUTTON|int|True|jelentkezés gomb megjelenítése|<SHOW_APPLY_BUTTON>|
|PCUSTOMTEMPLATEID|varchar(50)|False|fogadó azonosítója|<CUSTOM_TEMPLATE_ID>|
|PTASKS|varchar(max)|False|Feladatok|<TASKS>|
|PADDITIONALINFO|varchar(max)|False|További információ|<ADDITIONAL_INFO>|
|PRECUITERINFO|varchar(301)|False|Bővebb felvilágosítást ad|<RECRUITER INFO>|



**MÁV Szolgáltató Központ Zrt. IT Üzletág**
*1087 Budapest, Könyves Kálmán krt. 54-60. Tel.: +36-1 457-9300; fax: +36-1 457-9500; e-mail: it@mav-szk.hu*


-----

##### 8.4 GetStartAproAllashirdetesekV1

Ezen az interfészen keresztül fogja megkapni a Startapró a HÖP TOB modulban publikált és MÁV Csoport Portálon
már megjelent álláshirdetéseket.
###### 8.4.1 Átadandó állomány formátuma, névkonvenció

Az átadás webservice-eken keresztül történik, a TIBCO middleware közbeiktatásával. A leírását az alábbi csatolt

excel táblázat tartalmazza.

|<?xml version="1.0" encoding="UTF-8"?>|Col2|Col3|Col4|Col5|
|---|---|---|---|---|
|<import email="String">|||||
||<item itemId="String" refId="String" cont||||
|||<allast_kinal>|||
||||<title>String-Ch150<||
||||<description>String-||
||||<regio>String-listábó||
||||<ar>0</ar>||
||||<images>||
|||||<image>St|
||||</images>||
||||<url>String-URL</url||
||||<cegnev_szektor>Str||
||||<pozicio>String</po||
||||<orientacio>String-li||
||||<munkavegzes_hely||
||||<iskolai_vegzettseg>||
||||<nyelvtudas>String<||
||||<jelentkezesi_hatari||
||||<foglalkoztatas_mod||
||||<munkaido>String-li||
||||<fizetesi_szint>Strin||
||||<specialis_jelleg>Str||
|||</allast_kinal>|||
||</item>||||
|</import>|||||

###### 8.4.2 Átadandó állomány struktúrája

|XML tag|Típus|Hossz|Leírás|Megjegyzés|
|---|---|---|---|---|
|<ITEMID>|string|||Objektum azonosító|



**MÁV Szolgáltató Központ Zrt. IT Üzletág**
*1087 Budapest, Könyves Kálmán krt. 54-60. Tel.: +36-1 457-9300; fax: +36-1 457-9500; e-mail: it@mav-szk.hu*


-----

|XML tag|Típus|Hossz|Leírás|Megjegyzés|
|---|---|---|---|---|
|<REFID>|string||||
|<CONTACTNAME>|string|||Toborzó1 neve|
|<CONTACTPHONE>|string|||Toborzó1 telefonszáma|
|<ALLAS>|||||
|<TITLE>|string|150|Hirdetés megnevezése||
|<DESCRIPTION>|string|15000|Hirdetés leírása||
|<REGIO>|string|250|Munkavégzés helye||
|<AR>|int|11||nem releváns, értéke mindig 0|
|<IMAGES>|||||
|<IMAGE>|string|255|Képek url||
|<URL>|string|255|Link|MÁV Csoportportálra mutató link|
|<CEGNEVSZEKTOR>|string|65535|Cégnév, szektor||
|<POZICIO>|string|65535|Pozíció||
|<ORIENTACIO>|string|65535|Orientáció||
|<MUNKAVEGZESHELYE>|string|65535|Munkavégzés helye||
|<ISKOLAIVEGZETTSEG>|string|65535|Iskolai végzettség||
|<NYELVTUDAS>|string|65535|Nyelvtudás||
|<JELENTKEZESIHATARIDO>|date|YYYY-mm-dd|Jelentkezési határidő||
|<FOGLALKOZTATASMODJA>|string|65535|Foglalkoztatás módja||
|<MUNKAIDO>|string|65535|Munkaidő||
|<FIZETESISZINT>|string|65535|Fizetési szint||
|<SPECIALISJELLEG>|string|65535|Speciális jelleg||

###### 8.4.3 Előállítás módja, ütemezés, paraméterezés

Az interfészt a Startapró indítja a TIBCO megszólításával, ami teljes mértékben ad-hoc. Minden egyes interfész hívás
egy álláshirdetés csomagot tartalmaz, amelyben az egyes álláshirdetések egyedi azonosítója az AdvertID. Minden
csomagban a még nem lejárt álláshirdetések vannak.

Változásokat nem kezelünk.
###### 8.4.4 Átadás módja, helye, hibakezelés

Az interfész a TIBCO middleware-en megy keresztül, a TIBCO megoldócsoport tud a hibakezelésben majd az
üzemeltetés segítségére lenni, illetve a TIBCO eszközei használhatók erre.
###### 8.4.5 Logikai adatmapping

|COLUMN NAME|DATATYPE|NOT NULL|Megjegyzés|MAP|
|---|---|---|---|---|
|PITEMID|int|False||<ITEMID>|



**MÁV Szolgáltató Központ Zrt. IT Üzletág**
*1087 Budapest, Könyves Kálmán krt. 54-60. Tel.: +36-1 457-9300; fax: +36-1 457-9500; e-mail: it@mav-szk.hu*


-----

|COLUMN NAME|DATATYPE|NOT NULL|Megjegyzés|MAP|
|---|---|---|---|---|
|PREFID|varchar(1)|True||<REFID>|
|PCONTACTNAME|varchar(250)|False|Toborzó1 neve|<CONTACTNAME>|
|PCONTACTPHONE|varchar(50)|False|Toborzó1 telefonszáma|<CONTACTPHONE>|
|PTITLE|varchar(max)|False|Hirdetés megnevezése|<TITLE>|
|PDESCRIPTION|varchar(max)|False|Hirdetés leírása|<DESCRIPTION>|
|PREGIO|varchar(250)|False|Munkavégzés helye|<REGIO>|
|PAR|int|True|nem releváns, értéke mindig 0|<AR>|
|PIMAGE|varchar(1000)|False|Képek url|<IMAGE>|
|PURL|varchar(1000)|False|MÁV Csoportportálra mutató link|<URL>|
|PCEGNEV_SZEKTOR|varchar(1)|True|Cégnév, szektor|<CEGNEVSZEKTOR>|
|PPOZICIO|varchar(250)|False|Pozíció|<POZICIO>|
|PORIENTACIO|varchar(50)|False|Orientáció|<ORIENTACIO>|
|PMUNKAVEGZES_HELYE|varchar(250)|False|Munkavégzés helye|<MUNKAVEGZESHELYE>|
|PISKOLAI_VEGZETTSEG|varchar(250)|False|Iskolai végzettség|<ISKOLAIVEGZETTSEG>|
|PNYELVTUDAS|varchar(1)|True|Nyelvtudás|<NYELVTUDAS>|
|PJELENTKEZESI_HATARIDO|date|False|Jelentkezési határidő|<JELENTKEZESIHATARIDO>|
|PFOGLALKOZTATAS_MODJA|varchar(50)|False|Foglalkoztatás módja|<FOGLALKOZTATASMODJA>|
|PMUNKAIDO|varchar(50)|False|Munkaidő|<MUNKAIDO>|
|PFIZETESI_SZINT|varchar(1)|True|Fizetési szint|<FIZETESISZINT>|
|PSPECIALIS_JELLEG|varchar(1)|True|Speciális jelleg|<SPECIALISJELLEG>|


**MÁV Szolgáltató Központ Zrt. IT Üzletág**
*1087 Budapest, Könyves Kálmán krt. 54-60. Tel.: +36-1 457-9300; fax: +36-1 457-9500; e-mail: it@mav-szk.hu*


-----

