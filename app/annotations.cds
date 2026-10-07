using DemandesService as service from '../srv/demandes-service';

annotate service.Demandes with @(
  UI.HeaderInfo : {
    TypeName       : 'Demande',
    TypeNamePlural : 'Demandes',
    Title          : { Value : titre }
  },

  UI.LineItem : [
    { Value : titre,     Label : 'Titre' },
    { Value : statut,    Label : 'Statut' },
    { Value : priorite,  Label : 'Priorité' },
    { Value : createdAt, Label : 'Créée le' }
  ],

  UI.FieldGroup #Details : {
    Data : [
      { Value : titre },
      { Value : description },
      { Value : statut },
      { Value : priorite }
    ]
  },

  UI.Facets : [
    {
      $Type  : 'UI.ReferenceFacet',
      Label  : 'Détails',
      Target : '@UI.FieldGroup#Details'
    }
  ]
);