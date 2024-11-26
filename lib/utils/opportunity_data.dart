import '../models/opportunity.dart';

List<Opportunity> getSampleOpportunities() {
  return [
    Opportunity(
      title: 'Ação Solidária no Asilo',
      description: 'Ajude a alegrar o dia dos idosos com atividades recreativas.',
      date: '10/12/2024',
    ),
    Opportunity(
      title: 'Mutirão de Limpeza na Praia',
      description: 'Contribua para a preservação do meio ambiente coletando resíduos.',
      date: '15/12/2024',
    ),
    Opportunity(
      title: 'Oficina de Arte para Crianças',
      description: 'Ensine artesanato e pintura para crianças carentes.',
      date: '20/12/2024',
    ),
  ];
}
