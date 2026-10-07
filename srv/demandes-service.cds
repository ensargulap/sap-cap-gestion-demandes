using gestion from '../db/schema';

service DemandesService {
  entity Demandes as projection on gestion.Demandes;
}