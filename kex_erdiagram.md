```mermaid
erDiagram
    msk_kex_jelentkezok ||--o{ msk_kex_interju : "idjelentkezo -> msk_kex_jelentkezokID"
    msk_kex_LookupList ||--o{ msk_kex_interju : "ideredmeny -> LookupListID"
    msk_kex_LookupList ||--o{ msk_kex_interju : "iddolgozik -> LookupListID"
    msk_kex_LookupList ||--o{ msk_kex_interju : "idmegjelent -> LookupListID"
    msk_kex_jelentkezok ||--o{ msk_kex_ajanlat : "idjelentkezo -> msk_kex_jelentkezokID"
    msk_kex_LookupList ||--o{ msk_kex_ajanlat : "idelfogadva -> LookupListID"
    msk_kex_LookupList ||--o{ msk_kex_ajanlat : "idtovabbi_egyeztetes -> LookupListID"
    msk_tob_pozicio ||--o{ msk_kex_ajanlat : "PozicioID -> PozicioID"
    msk_tob_pozicio ||--o{ msk_kex_ajanlat : "PozicioIDLast -> PozicioID"
    people ||--o{ msk_kex_allasajanlatok : "idtoborzo1 -> PeopleID"
    people ||--o{ msk_kex_allasajanlatok : "idtoborzo2 -> PeopleID"
    people ||--o{ msk_kex_allasajanlatok : "idvezeto -> PeopleID"
    msk_kex_tanfolyamhelyek ||--o{ msk_kex_allasajanlatok : "idtanfolyamhely -> id"
    msk_kex_tanfolyamtipusok ||--o{ msk_kex_allasajanlatok : "idtanfolyamtipus -> id"
    msk_kex_lezarasindokok ||--o{ msk_kex_allasajanlatok : "Idlezarasindok -> Msk_kex_lezarasindokokID"
    msk_kex_allasajanlatok ||--o{ msk_kex_gdpr_jelentkezok : "idallasajanlat -> msk_kex_allasajanlatokID"
    msk_kex_hash ||--o{ msk_kex_gdpr_jelentkezok : "HashID -> Msk_kex_hashID"
    msk_kex_mananonindokok ||--o{ msk_kex_gdpr_jelentkezok : "Idanonindok -> Msk_kex_mananonindokokID"
    msk_kex_jelentkezok ||--o{ msk_kex_teszt : "idjelentkezo -> msk_kex_jelentkezokID"
    msk_kex_teszttipusok ||--o{ msk_kex_teszt : "idteszttipus -> msk_kex_teszttipusokID"
    msk_kex_LookupList ||--o{ msk_kex_teszt : "idmegirta -> LookupListID"
    msk_kex_LookupList ||--o{ msk_kex_teszt : "ideredmeny -> LookupListID"
    msk_kex_jelentkezok ||--o{ msk_kex_orvosi : "idjelentkezo -> msk_kex_jelentkezokID"
    msk_kex_orvositipusok ||--o{ msk_kex_orvosi : "idorvositipus -> msk_kex_orvositipusokID"
    msk_kex_LookupList ||--o{ msk_kex_orvosi : "idelkezdte -> LookupListID"
    msk_kex_LookupList ||--o{ msk_kex_orvosi : "ideredmeny -> LookupListID"
    msk_kex_allasajanlatok ||--o{ msk_kex_jelentkezok : "idallasajanlat -> msk_kex_allasajanlatokID"
    msk_kex_ertesuleshelyek ||--o{ msk_kex_jelentkezok : "honnanertesult -> nev"
    msk_kex_LookupList ||--o{ msk_kex_jelentkezok : "idcv_toborzo -> LookupListID"
    msk_kex_LookupList ||--o{ msk_kex_jelentkezok : "idcv_vezeto -> LookupListID"
    msk_kex_LookupList ||--o{ msk_kex_jelentkezok : "idtanfolyamos -> LookupListID"
    msk_kex_tanfolyamhelyek ||--o{ msk_kex_jelentkezok : "idtanfolyamhely -> id"
    msk_kex_tanfolyamtipusok ||--o{ msk_kex_jelentkezok : "idtanfolyamtipus -> id"
    msk_kex_LookupList ||--o{ msk_kex_jelentkezok : "idmap_dokumentacio -> LookupListID"
    msk_kex_LookupList ||--o{ msk_kex_jelentkezok : "idfelveve -> LookupListID"
    msk_kex_elutasitasindokok ||--o{ msk_kex_jelentkezok : "idelutasitasindok -> id"
    msk_kex_visszalepesindokok ||--o{ msk_kex_jelentkezok : "idvisszalepesindok -> id"
    msk_kex_szin ||--o{ msk_kex_jelentkezok : "idszin -> msk_kex_szinid"
    msk_kex_LookupList ||--o{ msk_kex_jelentkezok : "tanfolyamos -> LookupListID"
    msk_kex_hash ||--o{ msk_kex_jelentkezok : "HashID -> Msk_kex_hashID"
    msk_kex_ajanloszelvenyforrasa ||--o{ msk_kex_jelentkezok : "MAPAjanloszelvenyForrasa -> AjanloszelvenyforrasaID"
    msk_kex_LookupList ||--o{ msk_kex_jelentkezok : "AI_idstatusz -> LookupListID"
    people ||--o{ msk_kex_allasajanlat_vezetok : "Idvezeto -> PeopleID"
    msk_kex_allasajanlatok ||--o{ msk_kex_allasajanlat_vezetok : "idallasajanlat -> msk_kex_allasajanlatokID"
    msk_kex_LookupList ||--o{ msk_kex_allasajanlat_vezetok : "Mjgy -> LookupListID"
    msk_kex_jelentkezok ||--o{ msk_kex_felvstatusz : "Idjelentkezo -> msk_kex_jelentkezokID"
    msk_kex_LookupList ||--o{ msk_kex_felvstatusz : "Idfelvstatusz -> LookupListID"
    msk_kex_elutasitasindokok ||--o{ msk_kex_felvstatusz : "Idelutasitasindok -> id"
    msk_kex_visszalepesindokok ||--o{ msk_kex_felvstatusz : "Idvisszalepesindok -> id"
    msk_kex_jelentkezok ||--o{ msk_kex_mananonindok : "Idjelentkezo -> msk_kex_jelentkezokID"
    msk_kex_mananonindokok ||--o{ msk_kex_mananonindok : "Idanonindok -> Msk_kex_mananonindokokID"
    msk_kex_hash ||--o{ msk_kex_jelentkezesek : "Hash -> Hash"

    msk_kex_tanfolyamhelyek {
        int_PK id
        varchar csoport
        varchar nev
        boolean deleted
    }
    msk_kex_interju {
        int_PK msk_kex_interjuID
        int_FK idjelentkezo
        date datum
        int_FK idbehivva "45 nem használt"
        int_FK ideredmeny "123"
        int_FK iddolgozik "45"
        int_FK idmegjelent "45 igen/nem"
        text megjegyzes
        boolean deleted
    }
    msk_kex_ajanlat {
        int_PK msk_kex_ajanlatID
        int_FK idjelentkezo
        date datum
        int_FK idelfogadva "4Igen 5Nem"
        int_FK idtovabbi_egyeztetes "45"
        boolean deleted
        int_FK PozicioID "NULL értéke esetén Elutasítva vagy Visszalépett..."
        int_FK PozicioIDLast "csak technikai ... mutatja az utoljára kiválasz..."
    }
    mailtemplates {
        int_PK id
        varchar name
        text text
    }
    msk_kex_allasajanlatok {
        int_FK msk_kex_allasajanlatokID "Msk_tob_allashirdetesekID = msk_kex_allasajanla..."
        varchar uzletag "<COMPANY>MÁV-START Zrt.</COMPANY>"
        varchar targy "<TITLE>Jegyvizsgáló</TITLE>"
        text leiras "<DESCRIPTION>A MÁV-START Zrt. integrált vasúti ..."
        varchar hely "<LOCATIONS>   <LOCATION>Szolnok</LOCATION> </LO..."
        int_FK idkategoria "<CATEGORIES> <CATEGORY>0022</CATEGORY> </CATEGO..."
        int_FK idceg "<COMPANYID>932420</COMPANYID> vagy visszafejten..."
        varchar reszleg "<DEPARTMENT>Személyszállítás</DEPARTMENT> Már n..."
        text elvarasok "<REQUIREMENTS>-8. általános végzettség -utazási..."
        text elonytjelent "<QUALITIES>"
        text juttatasok "<BENEFITS>-hosszútávú munkalehetőség -cafeteria..."
        date datum_aktivalas "<ACTIVATION_DATE>2018-02-12</ACTIVATION_DATE>"
        date datum_lejarat "<EXPIRATION_DATE>2018-12-12</EXPIRATION_DATE>"
        varchar szerzodes_fajta "<CONTRACT>Határozatlan idejű</CONTRACT>"
        varchar foglalkoztatasi_fok "<SCHEDULE>40.00 </SCHEDULE> pl 40.00  Azaz negy..."
        int_FK poziciok_szama "<VACANCY_NR> 23</VACANCY_NR>"
        varchar munkavegzes_helye "<WORK_LOCATION>Szolnok</WORK_LOCATION>"
        text feladatok "<TASKS>-jegyek ellenőrzése -általános feladatok..."
        text tovabbi_info "<ADDITIONAL_INFO/>"
        text toborzo_info "<RECRUITER_INFO> Bővebb felvilágosítást ad: Tob..."
        varchar toborzo_torzsszam "<RECRUITER_ID>59999999</RECRUITER_ID> Csak táro..."
        varchar vallalat "<SUBSIDIARY>976</SUBSIDIARY> ból visszafejtett ..."
        varchar igazgatosag "<INDUSTRY>0042</INDUSTRY>"
        varchar munkakor_csoport "<HIERARCHY_LEVEL>0010</HIERARCHY_LEVEL>"
        varchar kepzes_fajta "<EDUCATION_TYPE>0030</EDUCATION_TYPE>"
        varchar kepzes_szakirany "<EDUCATION_FIELD>0090</EDUCATION_FIELD>"
        varchar szak "<FIELD_OF_STUDY/>"
        text idegen_nyelv "XML: <LANGUAGES> <LANGUAGE>50002542</LANGUAGE> ..."
        text informatika "XML: <ITKNOWLEDGES> <ITKNOWLEDGE>50002547</ITKN..."
        text szakmai_tapasztalat "XML: <MIN_EXPERIENCES> <MIN_EXPERIENCE>50002554..."
        text jogositvany "XML: <DRIVER_LICENSES> <DRIVER_LICENSE>50002550..."
        varchar link "Állásajánlatra mutató link"
        boolean toborzo_feluliras_flag "Amennyiben a toborzó beállítása kézileg megtört..."
        int_FK idszin "NINCS HASZNÁLATBAN 190606 Triggerrel adatokból...."
        int_FK idtoborzo1 "Állandó tobozó  NULL"
        int_FK idtoborzo2 "helyettesítő toborzó"
        int_FK idvezeto "Vezető – szakmai vezető, aki a pályázók elbírál..."
        date datum_tanfolyam
        int_FK idtanfolyamhely
        int_FK idtanfolyamtipus
        date datum_lezaras "Amikor a lezárás indok bekerül (tárolt eljárás)"
        boolean aktiv
        boolean deleted "Lezáráskor lesz 1 értékű az6az érvényes és futó..."
        int_FK Idlezarasindok "KEX2 - a lezárás indok beállításra kerül (tárol..."
    }
    msk_kex_elutasitasindokok {
        int_PK id
        varchar nev
        boolean deleted
    }
    msk_kex_ertesuleshelyek {
        int_PK id
        varchar nev
        boolean deleted
    }
    msk_kex_gdpr_jelentkezok {
        int_FK msk_kex_gdpr_jelentkezokID
        varchar idallasajanlat
        int_FK iddrupal
        varchar targy
        varchar hp_torzsszam
        varchar hp_nev
        varchar nev
        varchar email
        varchar telefonszam
        varchar cvlink
        text cvtartalom
        boolean gdpr
        varchar ajanlo_nev
        datetime datum
        varchar honnanertesult
        boolean deleted "mindig 0. 1. DLL napi futással két év után DELE..."
        int_FK cvlinkid
        int_FK idceg "KEX2 - Felvételkor az állásajánlat IDCEG kerül ..."
        int_FK HashID "KEX2 - A HASH-hez kapcsolt ID Anonimizáláskor NULL"
        varchar EmailCC "Ha mégis változott az email az ide kerül, az EM..."
        int_FK Idanonindok "KEX2-Az adatkezelési időszak ideje alatt lehető..."
        date gdpr_vege "A formon csak kijelzésre előre kalkulált (+2év)..."
        varchar MAPCompany
        date map_beerkezes
        int_FK idmap_dokumentacio
        varchar MAPEmail
        int_FK MAPPeopleID
        date map_hatarido
        int_FK MAPAjanloszelvenyForrasa
        boolean MAPErvenyes
        int_FK JelentkezokID
    }
    msk_kex_tanfolyamtipusok {
        int_PK id
        varchar nev
        boolean deleted
    }
    msk_kex_teszt {
        int_PK msk_kex_tesztID
        int_FK idjelentkezo
        date datum
        int_FK idteszttipus
        int_FK idbehivva "45 nincs használatban"
        int_FK idmegirta "45"
        int_FK ideredmeny "45"
        text megjegyzes
        boolean deleted
    }
    msk_kex_orvosi {
        int_PK msk_kex_orvosiID
        int_FK idjelentkezo
        date datum
        int_FK idorvositipus
        int_FK idelkezdte "45"
        int_FK ideredmeny "45"
        boolean deleted
        date igenylesdatuma
        date kiallitasdatuma "kiállitás - igénylés = napokszáma"
    }
    msk_kex_orvositipusok {
        int_PK msk_kex_orvositipusokID
        varchar nev
        boolean deleted
    }
    msk_kex_szin {
        int_FK msk_kex_szinid
        varchar nev
        varchar szin
        boolean deleted
        int_FK order "190612"
        varchar ID
    }
    msk_kex_jelentkezok {
        int_FK msk_kex_jelentkezokID
        varchar idallasajanlat
        int_FK iddrupal
        varchar targy
        varchar hp_torzsszam
        varchar hp_nev
        varchar nev "Anonm XXXX"
        varchar email "Anonm XXXX"
        varchar telefonszam "Anonm XXXX"
        int_FK cvlink "Ideiglenes használatban és végelgesen használja..."
        text cvtartalom "Anonm XXXX ??"
        boolean gdpr
        varchar ajanlo_nev
        datetime datum "Jelentkezés időpontja"
        varchar honnanertesult
        int_FK idcv_toborzo "IGEN/NEM/TALÁN"
        int_FK idcv_vezeto "IGEN/NEM/TALÁN"
        text cv_toborzo_megj
        text cv_vezeto_megj
        int_FK idtanfolyamos "Tanfolyamos pozícióra jelentkezett-e igen/nem"
        int_FK idtanfolyamhely
        int_FK idtanfolyamtipus
        date map_hatarido "AFTER_INSERT trigger created dátum +7 nap (ha m..."
        int_FK idmap_dokumentacio "Ajánlótól dokumentációt megkaptuk-e (Igen/Nem) ..."
        int_FK idfelveve "IGEN/NEM"
        date datum_elutasitas
        int_FK idelutasitasindok
        date datum_visszalepes
        int_FK idvisszalepesindok
        int_FK berigeny "Bérigény; bruttó  alapbér"
        int_FK idszin "Más néven: STÁTUSZ !! Triggerrel A jelentkezők ..."
        boolean deleted "0= érvényes jelentkező. 1 = a kapcsolódó állása..."
        date datum_tanfolyam
        boolean tanfolyamos "Tanfolyam státusz (igen/nem)"
        int_FK cvlinkid "A document tábla DocumentID értékét tartalmazza"
        int_FK JelentkezesiDokID "KEX2 -  A document tábla DocumentID értékét tar..."
        int_FK AdatkezelesiDokID "KEX2 -  A document tábla DocumentID értékét tar..."
        int_FK MotivaciosDokID "KEX2 -  A document tábla DocumentID értékét tar..."
        int_FK MunkavallaloiDokID "KEX2 -  A document tábla DocumentID értékét tar..."
        int_FK HashID "KEX2 -  A HASH-hez kapcsolt ID Többször is szer..."
        varchar EmailCC "Ha mégis változott az email az ide kerül, az EM..."
        boolean Updated "Technikai mező update trigger témakörben, hogy ..."
        date map_beerkezes "MAP ajánló beérkezés dátuma"
        date gdpr_vege "A formon csak kijelzésre előre kalkulált (+2év)..."
        varchar MAPCompany
        varchar MAPEmail
        int_FK MAPPeopleID "Ajánló törzsszáma"
        int_FK MAPAjanloszelvenyForrasa "Ajánlószelvény forrása"
        boolean MAPErvenyes
        varchar Statuszok "A1B0C0.... A státuszok generálását trigger végz..."
        datetime AI_CVSent "CV OCR szöveges adatkinyerésre elküldve."
        text AI_CVText "A CVből OCR kinyert szöveges adat, mely feldolg..."
        datetime AI_ProcessStart "Az AI LLM részére feldolgozásra elküldésre került"
        text AI_CVAnswer "AZ AI LLM szöveges válasza"
        int_FK AI_idstatusz "NULL,0 - Nincs értékelés 1 = Ajánlott felvételr..."
    }
    msk_kex_teszttipusok {
        int_PK msk_kex_teszttipusokID
        varchar nev
        boolean deleted
    }
    msk_kex_LookupList {
        int_PK LookupListID
        int_FK GroupNum
        varchar LookupValue
        int_FK Department
        boolean deleted
        int_FK sort
        varchar TechnicalName
    }
    msk_kex_visszalepesindokok {
        int_PK id
        varchar nev
        boolean deleted
    }
    people {
        varchar PeopleID
        varchar CompanyID
        varchar Title
        varchar Name
        varchar Jobtitle
        varchar Fax
        varchar Phone
        varchar Mobile
        varchar Email
        varchar City
        varchar Zip
        varchar Street
        varchar IsGroup
        varchar CreatedbyID
        varchar ReportsTo
        varchar IsResource
        varchar Active
        varchar PrivateContact
        varchar Department
        varchar ObjectType
        varchar Deleted
        varchar avatar
        varchar MenuType
        varchar MenuIconsVisible
        varchar CustomLogoIsVisible
        varchar EnableVisualEffects
        varchar UsernameIsVisible
        varchar LHS_User_ID
        varchar torzsszam
        varchar PSTLZ "Munkáltatói jogkörgyakorló vagy felettes?"
    }
    msk_kex_toborzofeor {
        int_FK id
        int_FK feor
        boolean Deleted
    }
    msk_kex_lezarasindokok {
        int_FK Msk_kex_lezarasindokokID
        varchar Indokok
        boolean Deleted
    }
    msk_kex_mananonindokok {
        int_FK Msk_kex_mananonindokokID
        varchar Indokok
        boolean Deleted
    }
    msk_kex_allasajanlat_vezetok {
        int_PK msk_kex_allasajanlat_vezetokID
        int_FK Idvezeto
        int_FK idallasajanlat
        int_FK Mjgy "9=Vezető 10=Mjgy"
        boolean Deleted
    }
    msk_kex_felvstatusz {
        int_PK Msk_kex_felvstatuszID
        int_FK Idjelentkezo
        int_FK Idfelvstatusz "6,7,8 Felvéve, Elutasítva, Visszalépett"
        date Datum "Státusz dátuma"
        date Belepesdatum "o Belépés várható dátuma: Felvételi státusz = f..."
        int_FK Idelutasitasindok "KEX2-o Elutasítás indoka: Felvételi státusz = e..."
        int_FK Idvisszalepesindok "KEX2-Visszalépés indoka: Felvételi státusz = vi..."
        boolean Deleted
        varchar PERNR "A felvett MAP jelentkező törzsszáma amit egysze..."
        int_FK PeopleID
        boolean VallalatonBeluli "Felületen beírásra kerül"
    }
    msk_kex_hash {
        int_PK Msk_kex_hashID
        varchar Hash "A HASH kód (MD5 elégséges) (email cím + | + ceg..."
        boolean Deleted "0= GDPR-ban szerepel és 2 év múlva törlendő 1 =..."
    }
    msk_kex_mananonindok {
        int_FK Msk_kex_mananonindokID
        int_FK Idjelentkezo
        int_FK Idanonindok
        date datum
        text indoklas
        boolean Deleted
    }
    msk_MailSend_Log {
        int_PK id
        varchar modul
        int_FK SentToJelentkezoID "Akinek megy az email ID. De hogy milyen táblána..."
        int_FK SentToJelentkezoTablaID "0=People tábla 1=Jelentkezok tábla 2=gdpr_jelen..."
    }
    msk_kex_ajanloszelvenyforrasa {
        int_PK AjanloszelvenyforrasaID
        varchar nev
        string Deleted
    }
    msk_kex_jelentkezesek {
        int_PK Msk_kex_jelentkezesekID
        int_FK Cnt
        varchar Hash
        int_FK Deleted
    }
    msk_tob_pozicio {
        int_FK PozicioID
        int_FK Idkeresesikerelem
        varchar Iktatoszam
        varchar Aliktatoszam
        date Engedelyezesidatum
        int_FK StatuszID "30	10	Foglalt	 31	10	Betöltött	 32	10	Betöltetl..."
        boolean Deleted
        int_FK Pre_Torles
        int_FK TorlesIndokID
        varchar PozicioInfo
        date PozicioVisszavDatum
    }
```