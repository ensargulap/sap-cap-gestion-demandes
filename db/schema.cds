using { cuid, managed } from '@sap/cds/common';

namespace gestion;

entity Demandes : cuid, managed {
  titre       : String(100);
  description : String(500);
  statut      : String(20) default 'Nouvelle';
  priorite    : String(10);
}