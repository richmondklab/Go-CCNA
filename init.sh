#!/usr/bin/env bash
# Génère l'arborescence du dépôt Go CCNA pour le cours CCNA 2 (SRWE).
# Usage : depuis la racine du dépôt -> bash init.sh
# Le script ne remplace jamais un fichier existant.
set -e

COURS="CCNA2"

# numéro|dossier|titre
MODULES=(
"01|configuration-de-base-des-peripheriques|Configuration de base des périphériques"
"02|concepts-de-commutation|Concepts de commutation"
"03|vlans|VLANs"
"04|routage-inter-vlan|Routage inter-VLAN"
"05|concepts-du-stp|Concepts du STP"
"06|etherchannel|EtherChannel"
"07|dhcpv4|DHCPv4"
"08|slaac-et-dhcpv6|SLAAC et DHCPv6"
"09|concepts-du-fhrp|Concepts du FHRP (protocoles de redondance au premier saut)"
"10|concepts-de-securite-du-reseau-local|Concepts de sécurité du réseau local LAN"
"11|configuration-de-la-securite-du-commutateur|Configuration de la sécurité du commutateur"
"12|concepts-wlan|Concepts WLAN"
"13|configuration-wlan|Configuration WLAN"
"14|concepts-du-routage|Concepts du routage"
"15|routage-statique-ip|Routage statique IP"
"16|depannage-des-routes-statiques-et-par-defaut|Dépannage des routes statiques et par défaut"
)

read -r -d '' TEMPLATE <<'EOF' || true
# Module __NUM__ : __TITLE__

> Statut : ⬜ à faire

## Objectifs du module

-

## Notions clés

-

## Commandes IOS

```
Switch(config)#
```

| Commande | Rôle |
|----------|------|
|          |      |

## Travaux pratiques

Voir le dossier [`labs/`](labs/) (fichiers Packet Tracer `.pkt` et énoncés).
Les configurations finales sont dans [`configs/`](configs/).

## Erreurs fréquentes et dépannage

-

## Questions de révision

1.
EOF

mkdir -p cheatsheets

for m in "${MODULES[@]}"; do
  IFS='|' read -r num dossier titre <<< "$m"
  dir="$COURS/$num-$dossier"
  mkdir -p "$dir/labs" "$dir/configs"
  touch "$dir/labs/.gitkeep" "$dir/configs/.gitkeep"
  if [ ! -f "$dir/README.md" ]; then
    contenu="${TEMPLATE//__NUM__/$((10#$num))}"
    contenu="${contenu//__TITLE__/$titre}"
    printf '%s\n' "$contenu" > "$dir/README.md"
  fi
done

# Évaluations (checkpoints, Packet Tracer, examens)
mkdir -p "$COURS/evaluations"
if [ ! -f "$COURS/evaluations/README.md" ]; then
cat > "$COURS/evaluations/README.md" <<'EOF'
# Évaluations CCNA 2 (SRWE)

## Examens Checkpoint

- [ ] Concepts de commutation, VLAN et routage inter-VLAN (modules 1 à 4)
- [ ] Réseaux redondants (modules 5 et 6)
- [ ] Réseaux disponibles et fiables (modules 7 à 9)
- [ ] Sécurité de couche 2 et réseau sans fil WLAN (modules 10 à 13)
- [ ] Concepts de routage et configuration (modules 14 à 16)

## Évaluations Packet Tracer et examens finaux

- [ ] ITN Practice Packet Tracer Assessment
- [ ] SRWE Practice Packet Tracer Assessment - Part 1
- [ ] SRWE Practice Packet Tracer Assessment - Part 2
- [ ] Examen final de pratique SRWE
- [ ] Examen final du cours SRWE
- [ ] SRWE Final Packet Tracer Assessment
- [ ] CCNA 200-301 Exam v1.1 Supplemental Module
EOF
fi

[ -f CONTRIBUTING.md ] || cat > CONTRIBUTING.md <<'EOF'
# Contribuer

Les corrections et ajouts sont les bienvenus.

1. Ouvrez une *issue* pour signaler une erreur ou proposer un ajout.
2. Créez une branche, puis une *pull request* décrivant le changement.
3. Respectez le modèle de page des modules (objectifs, notions, commandes, lab, dépannage, révision).
4. Mettez les configurations dans des blocs de code et les fichiers Packet Tracer dans `labs/`.
EOF

echo "Arborescence créée dans : $(pwd)"
