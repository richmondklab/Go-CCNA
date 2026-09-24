# Go CCNA

Notes de cours, travaux pratiques et aide-mémoire pour préparer le **CCNA (200-301)**, rédigés en français au fil de la formation.

L'objectif : un dépôt clair, pratique et ouvert à tous. Chaque module contient un résumé du cours, les commandes Cisco IOS à retenir, des labs Packet Tracer et des conseils de dépannage.

## Progression

| Cours | Contenu | Statut |
|-------|---------|--------|
| CCNA 1 (ITN) | Introduction aux réseaux | ⬜ à venir |
| [CCNA 2 (SRWE)](CCNA2/) | Commutation, routage et sans-fil | 🟨 en cours |
| CCNA 3 (ENSA) | Réseaux d'entreprise, sécurité et automatisation | ⬜ à venir |

## Sommaire CCNA 2 : Switching, Routing and Wireless Essentials

| # | Module | Statut |
|---|--------|--------|
| 1 | [Configuration de base des périphériques](CCNA2/01-configuration-de-base-des-peripheriques/) | ⬜ |
| 2 | [Concepts de commutation](CCNA2/02-concepts-de-commutation/) | ⬜ |
| 3 | [VLANs](CCNA2/03-vlans/) | ⬜ |
| 4 | [Routage inter-VLAN](CCNA2/04-routage-inter-vlan/) | ⬜ |
| 5 | [Concepts du STP](CCNA2/05-concepts-du-stp/) | ⬜ |
| 6 | [EtherChannel](CCNA2/06-etherchannel/) | ⬜ |
| 7 | [DHCPv4](CCNA2/07-dhcpv4/) | ⬜ |
| 8 | [SLAAC et DHCPv6](CCNA2/08-slaac-et-dhcpv6/) | ⬜ |
| 9 | [Concepts du FHRP](CCNA2/09-concepts-du-fhrp/) | ⬜ |
| 10 | [Concepts de sécurité du réseau local LAN](CCNA2/10-concepts-de-securite-du-reseau-local/) | ⬜ |
| 11 | [Configuration de la sécurité du commutateur](CCNA2/11-configuration-de-la-securite-du-commutateur/) | ⬜ |
| 12 | [Concepts WLAN](CCNA2/12-concepts-wlan/) | ⬜ |
| 13 | [Configuration WLAN](CCNA2/13-configuration-wlan/) | ⬜ |
| 14 | [Concepts du routage](CCNA2/14-concepts-du-routage/) | ⬜ |
| 15 | [Routage statique IP](CCNA2/15-routage-statique-ip/) | ⬜ |
| 16 | [Dépannage des routes statiques et par défaut](CCNA2/16-depannage-des-routes-statiques-et-par-defaut/) | ⬜ |
| | [Évaluations, checkpoints et examens finaux](CCNA2/evaluations/) | ⬜ |

Légende : ⬜ à faire · 🟨 en cours · ✅ terminé

## Organisation du dépôt

```
Go-CCNA/
├── README.md
├── CONTRIBUTING.md
├── cheatsheets/          # aide-mémoire (commandes IOS, sous-réseaux, VLAN...)
└── CCNA2/
    ├── 01-…/ à 16-…/
    │   ├── README.md     # cours résumé
    │   ├── labs/         # énoncés et fichiers Packet Tracer (.pkt)
    │   └── configs/      # configurations IOS finales
    └── evaluations/
```

## Prérequis pour les labs

- [Cisco Packet Tracer](https://www.netacad.com/) (compte Cisco Networking Academy)
- Notions de base en adressage IPv4/IPv6 (CCNA 1)

## Contribuer

Voir [CONTRIBUTING.md](CONTRIBUTING.md). Les corrections et suggestions sont les bienvenues.


> Ce dépôt est un travail personnel d'apprentissage. Il n'est ni affilié ni approuvé par Cisco. Les marques appartiennent à leurs propriétaires.
