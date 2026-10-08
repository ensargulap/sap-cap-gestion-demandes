const cds = require('@sap/cds')

module.exports = class DemandesService extends cds.ApplicationService {
  init() {
    const PRIORITES = ['Haute', 'Moyenne', 'Basse']

    // S'exécute avant la création ou la modification d'une demande
    this.before(['CREATE', 'UPDATE'], 'Demandes', (req) => {
      const { titre, priorite } = req.data

      // Règle 1 : le titre est obligatoire à la création
      if (req.event === 'CREATE' && (!titre || !titre.trim())) {
        req.error(400, 'Le titre est obligatoire', 'titre')
      }

      // Règle 2 : la priorité doit être une valeur autorisée
      if (priorite && !PRIORITES.includes(priorite)) {
        req.error(400, 'Priorité invalide : Haute, Moyenne ou Basse', 'priorite')
      }
    })

    return super.init()
  }
}