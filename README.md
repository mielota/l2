# l2

Dépôt contenant mes cours.

## Installation

### Dépendances

> typst, git

Vous aurez besoin de dépendances pour compiler les fichiers .typ en pdf, vous devez installer typst.
Utilisez votre gestionnaire de paquets Linux/snap/cargo pour installer typst. Voir [leur repo officiel.](https://github.com/typst/typst)

Vous pouvez vérifier si typst est effectivement installé avec :

```sh
typst --version
```

### La vraie installation

1. Clonez le repo sur votre machine :

```sh
git clone https://github.com/mielota/l2.git
```

## Utilisation

Référez vous au script helper pour compiler les fichiers typst en le format souhaité (pdf par défaut).

```sh
./helper help
```

Soyez sûrs d'avoir les dépendances nécessaires avec :
```sh
./helper check
```

Le contenu des cours se situe dans le répertoire content/.
Le dossier drafts/ est à ignorer, il est géré par moi et l'outil helper.

> L'outil helper a été créé spécialement pour ce dépôt pour gérer la compilation/suppression des fichiers typst
> Sentez vous libre de l'utiliser. (voir LICENSE)
