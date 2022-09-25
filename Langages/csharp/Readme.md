# C#

## Conventions de nommage

[Source](https://medium.com/@sangekar.shailesh15/net-naming-conventions-de550d6f8a44)

| identifier      | public        | protected     | internal      | private       | notes                                                                    |
|-----------------|---------------|---------------|---------------|---------------|--------------------------------------------------------------------------|
| Project File    | `PascalCase`  | X             | X             | X             | Faire correspondre le nom de l'assembly et le namespace.                 |
| Source File     | `PascalCase`  | X             | X             | X             | Faire correspondre le nom de la classe.                                  |
| Other Files     | `PascalCase`  | X             | X             | X             |                                                                          |
| Namespace       | `PascalCase`  | X             | X             | X             | Faire correspondre le nom du projet/assembly partiellement.              |
| Class or Struct | `PascalCase`  | `PascalCase`  | `PascalCase`  | `PascalCase`  | Ajouter un suffixe pour les classes et les structures.                   |
| Interface       | `IPascalCase` | `IPascalCase` | `IPascalCase` | `IPascalCase` | Ajouter un préfixe avec une majuscule I.                                 |
| Generic Class   | `PascalCase`  | `PascalCase`  | `PascalCase`  | `PascalCase`  | Utiliser `T` ou `K` comme identifiant de type.                           |
| Method          | `PascalCase`  | `PascalCase`  | `PascalCase`  | `PascalCase`  | Utiliser un verbe ou un couple verbe-objet.                              |
| Property        | `PascalCase`  | `PascalCase`  | `PascalCase`  | `PascalCase`  | Ne pas ajouter `Get` ou `Set` au préfixe.                                |
| Field           | `PascalCase`  | `PascalCase`  | `PascalCase`  | `_c`          | N'utiliser que les champs privés. Ne pas utiliser la notation hongroise! |
| Constant        | `PascalCase`  | `PascalCase`  | `PascalCase`  | `_c`          |                                                                          |
| Static Field    | `PascalCase`  | `PascalCase`  | `PascalCase`  | `_c`          | N'utiliser que les champs privés.                                        |
| Enum            | `PascalCase`  | `PascalCase`  | `PascalCase`  | `PascalCase`  | Les options sont également en PascalCase.                                |
| Delegate        | `PascalCase`  | `PascalCase`  | `PascalCase`  | `PascalCase`  |                                                                          |
| Event           | `PascalCase`  | `PascalCase`  | `PascalCase`  | `PascalCase`  |                                                                          |
| Inline Variable | X             | X             | X             | `camelCase`   | Éviter les noms courts et les noms en liste.                             |
| Parameter       | X             | X             | X             | `camelCase`   |                                                                          |
