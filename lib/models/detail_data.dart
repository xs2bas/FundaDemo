// ignore_for_file: non_constant_identifier_names

class DetailData {
  String AangebodenSindsTekst;
  String PublicatieDatum;
  String HoofdFoto;
  String Adres;
  String Postcode;
  String Plaats;
  int WoonOppervlakte;
  int PerceelOppervlakte;
  int AantalBadkamers;
  int KoopPrijs;
  String VolledigeOmschrijving;
  KenmerkenKort kenmerkenKort;

  DetailData({
    this.AangebodenSindsTekst = '',
    this.PublicatieDatum = '',
    this.HoofdFoto = '',
    this.Adres = '',
    this.Postcode = '',
    this.Plaats = '',
    this.WoonOppervlakte = 0,
    this.PerceelOppervlakte = 0,
    this.AantalBadkamers = 0,
    this.KoopPrijs = 0,
    this.VolledigeOmschrijving = '',
    KenmerkenKort? kenmerkenKort,
  }) : kenmerkenKort = kenmerkenKort ?? KenmerkenKort();

  DetailData.fromJson(Map<String, dynamic> json)
      : AangebodenSindsTekst = json['AangebodenSindsTekst'] ?? '',
        PublicatieDatum = json['PublicatieDatum'] ?? '',
        Adres = json['Adres'] ?? '',
        Postcode = json['Postcode'] ?? '',
        Plaats = json['Plaats'] ?? '',
        WoonOppervlakte = json['WoonOppervlakte'] ?? 0,
        PerceelOppervlakte = json['PerceelOppervlakte'] ?? 0,
        AantalBadkamers = json['AantalBadkamers'] ?? 0,
        KoopPrijs = json['KoopPrijs'] ?? 0,
        VolledigeOmschrijving = json['VolledigeOmschrijving'] ?? '...',
        HoofdFoto = json['HoofdFoto'] ?? '',
        kenmerkenKort = json['KenmerkenKort'] != null ? KenmerkenKort.fromJson(json['KenmerkenKort']) : KenmerkenKort();
}

class KenmerkenKort {
  dynamic Ad;
  List Kenmerken;

  KenmerkenKort({
    this.Ad = '',
    this.Kenmerken = const [],
  });

  KenmerkenKort.fromJson(Map<String, dynamic> json)
      : Ad = json['Ad'] ?? '',
        Kenmerken = json['Kenmerken'] ?? [];
}
