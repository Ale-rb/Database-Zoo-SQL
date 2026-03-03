# 🦁 Database Gestione Zoo

Questo repository contiene lo script SQL per la creazione e il popolamento di un database relazionale dedicato alla gestione di uno zoo.

## 📊 Architettura dei Dati
Il database segue una struttura relazionale normalizzata composta da:
- **Animali**: Registro delle specie e anagrafica.
- **Responsabili**: Tabella del personale addetto alla cura.
- **Cibi**: Catalogo alimenti con marca e prezzo.
- **Cibi_Animali**: Tabella di giunzione per gestire le diete (Relazione Many-to-Many).

## 🛠️ Caratteristiche Tecniche
- **Integrità Referenziale**: Utilizzo di Foreign Keys per collegare animali e responsabili.
- **Automazione**: Vincoli `ON DELETE CASCADE` e `ON UPDATE CASCADE` per la gestione coerente delle eliminazioni.
- **Ottimizzazione**: Utilizzo di tipi di dati corretti (UNSIGNED, Decimal) per il risparmio di memoria.
