---
title: Rendre les règles visibles
description: Pourquoi la documentation comportementale doit exposer les effets, conditions et exceptions au point de décision.
language: fr
portfolio_role: Article méthodologique
---

# Rendre les règles visibles

![Règles produit rendues visibles au point de décision](../../assets/articles/making-rules-visible/cover.png)

## Pourquoi les utilisateurs reconstruisent ce que le produit n’explicite pas

Beaucoup de problèmes attribués à la documentation ne commencent pas par un manque d’information.

L’information existe. Les règles existent. Le produit applique une logique. Mais cette logique n’est pas visible là où un utilisateur, un agent support, un développeur ou une équipe produit doit prendre une décision.

Cet écart crée un effort de reconstruction. Les personnes n’appliquent plus un modèle explicite. Elles reconstituent un comportement implicite à partir de fragments.

Comprendre un système et reconstituer son comportement ne sont pas la même activité. La compréhension repose sur des relations visibles. La reconstruction repose sur l’inférence, la mémoire et l’essai-erreur.

La documentation comportementale sert à réduire cet écart.

Son rôle n’est pas seulement d’expliquer des fonctionnalités. Son rôle est de rendre les comportements anticipables.

## Le mécanisme récurrent

Dans les produits complexes, une action simple déclenche souvent plusieurs effets.

Modifier des dates peut affecter un prix, une disponibilité, une fenêtre d’annulation ou des options associées. Changer un rôle peut modifier les validations, les limites, la visibilité et les notifications. Activer un paramètre peut reconfigurer plusieurs paramètres en aval.

La logique existe. Le système l’applique. Mais elle apparaît souvent après l’action, pas avant.

L’utilisateur découvre alors les règles par correction, et non par anticipation.

Le problème n’est pas seulement documentaire. C’est un problème de visibilité du comportement produit.

## Pattern 1 : les effets ne sont pas visibles au point d’action

Un libellé d’action décrit généralement une intention. Il décrit rarement l’ensemble des effets déclenchés par cette action.

Un bouton peut être clair en surface et laisser implicites des conséquences importantes.

L’utilisateur comprend l’action locale, mais pas la chaîne comportementale qu’elle déclenche.

Exemple de pattern :

| Élément visible | Comportement masqué | Effort de reconstruction produit |
|---|---|---|
| Changer de plan | Le cycle de facturation, les limites fonctionnelles, les permissions et le renouvellement peuvent changer | L’utilisateur doit inférer les parties du compte affectées |
| Inviter un membre | Le rôle, l’accès à l’espace, les notifications et l’audit trail peuvent varier | L’administrateur doit reconstituer le modèle de permissions |
| Désactiver une intégration | La synchronisation, l’historique, les alertes et les workflows dépendants peuvent être affectés | L’opérateur doit identifier manuellement les effets en aval |

Le problème n’est pas une formulation insuffisante. Le problème est une exposition incomplète du comportement.

Quand les effets secondaires ne sont pas visibles, la décision repose sur une hypothèse partielle. La compréhension arrive seulement après observation des conséquences.

## Pattern 2 : les règles sont dispersées

Dans d’autres cas, la logique produit est documentée, mais fragmentée.

Une condition apparaît dans un article. Une exception apparaît dans un autre. Un cas d’usage associé apparaît ailleurs. Chaque fragment peut être exact, mais la règle complète n’est visible nulle part.

Cela crée une fragmentation cognitive.

L’utilisateur ne lit plus une règle. Il assemble une règle.

Cette distinction est centrale. Une règle peut exister formellement et rester indisponible opérationnellement. Si elle doit être assemblée avant d’être utilisée, elle n’est pas disponible au point de décision.

Les règles dispersées produisent des effets prévisibles :

| Pattern de fragmentation | Conséquence opérationnelle |
|---|---|
| Prérequis séparés de l’action | Les utilisateurs commencent des workflows qui ne peuvent pas aboutir |
| Exceptions séparées de la règle principale | Les utilisateurs généralisent abusivement le cas par défaut |
| Limites de rôle séparées du comportement fonctionnel | Les administrateurs interprètent mal l’accès ou la logique de validation |
| Libellés d’interface séparés du comportement API | Support et engineering décrivent des réalités différentes |

La documentation devient alors une carte de pages, pas une carte de comportements.

## Pattern 3 : les termes restent stables alors que les comportements changent

Un troisième cas est plus discret.

Le même terme apparaît dans plusieurs contextes alors que le comportement associé diffère.

Le libellé reste stable. Le comportement ne l’est pas.

L’utilisateur transfère une règle valide dans un contexte vers un autre contexte où elle ne s’applique plus. L’erreur ne vient pas d’une mauvaise lecture. Elle vient d’une ambiguïté comportementale.

Une terminologie stable peut créer une fausse cohérence lorsqu’elle masque une divergence comportementale.

Exemple :

| Terme | Contexte A | Contexte B | Ambiguïté créée |
|---|---|---|---|
| Membre | Peut modifier les paramètres de l’espace | Peut seulement consulter le contenu d’un projet | Même libellé, droits opérationnels différents |
| Actif | Abonnement facturable | Intégration connectée mais sans synchronisation | Même état, signification système différente |
| Propriétaire | Contrôle la facturation | Contrôle l’accès aux données | Même rôle, autorité différente |

C’est pourquoi la couche d’alignement terminologique n’est pas cosmétique. Elle limite la divergence de compréhension entre produit, documentation, support et utilisateurs.

## Ce que produisent ces patterns

Les mêmes effets apparaissent d’un produit à l’autre :

- erreurs qui ressemblent à des erreurs utilisateur mais restent largement prévisibles ;
- support qui traite des symptômes plutôt que des causes ;
- friction d’onboarding créée par des conditions invisibles ;
- explications incohérentes entre équipes ;
- décisions opérationnelles prises à partir de modèles de comportement incomplets.

L’utilisateur complète ce que le produit n’expose pas.

C’est le cœur du problème.

## Un cadre de documentation comportementale

Une unité documentaire utile pour un comportement complexe n’est pas seulement une page, un guide ou une description de fonctionnalité.

C’est un cadre comportemental.

```text
action -> effets -> conditions -> exceptions -> récupération
```

Chaque élément a une fonction précise.

| Élément | Fonction |
|---|---|
| Action | Nomme ce que l’utilisateur ou le système initie |
| Effets | Expose ce qui change en conséquence |
| Conditions | Définit quand l’action s’applique |
| Exceptions | Définit quand la règle change |
| Récupération | Définit comment détecter et corriger un état échoué ou non souhaité |

Quand ces éléments sont séparés, l’utilisateur reconstruit.

Quand ils sont visibles ensemble, il peut décider.

## Livrables documentaires

Ce cadre peut produire plusieurs livrables de portfolio :

| Livrable | Fonction |
|---|---|
| Matrice comportementale | Compare actions, effets, conditions, exceptions et chemins de récupération |
| Cartographie des dépendances | Montre quels paramètres, états, rôles ou workflows s’influencent |
| Couche d’alignement terminologique | Stabilise les termes entre produit, documentation, support et engineering |
| Audit de friction cognitive | Identifie où les utilisateurs doivent reconstruire le comportement depuis des fragments |
| Sprint de documentation comportementale | Convertit les comportements implicites en documentation opérationnelle explicite |

Ces livrables déplacent la documentation de la production de contenu vers la lisibilité du système.

## Fonction dans le portfolio

Cet article définit la méthode centrale de la documentation comportementale.

Il montre la capacité à dépasser l’explication de fonctionnalités pour identifier les relations invisibles qui déterminent le comportement produit.

Le travail ne consiste pas à ajouter du texte. Il consiste à réduire l’effort de reconstruction.

Rendre les règles visibles, c’est rendre le produit plus facile à raisonner.
