# Markdown

## Markdown pur

### Image cliquable

```md
[![BetterClock](https://user-images.githubusercontent.com/70631622/169669787-4f5f1fe4-e05e-4a92-9165-aa7932a0962c.png)](https://github.com/FlorianLatapie/BetterClock)
```

[![BetterClock](https://user-images.githubusercontent.com/70631622/169669787-4f5f1fe4-e05e-4a92-9165-aa7932a0962c.png)](https://github.com/FlorianLatapie/BetterClock)

### Encarts de note et d'avertissement

[Source](https://github.com/orgs/community/discussions/16925) et [précisions](https://github.com/orgs/community/discussions/16925#discussioncomment-2827410)

```md
> **Note**  
> This is a note
```

> **Note**  
> This is a note

```md
> **Warning**  
> This is a warning
```

> **Warning**  
> This is a warning

## Markdown cursed

### HTML

#### Texte rétractable

[Source](https://gist.github.com/pierrejoubert73/902cc94d79424356a8d20be2b382e1ab)

```md
<details><summary>Click me</summary>

### Heading

1. Foo
2. Bar
    * Baz
    * Qux

### Some Code

  ```js
  function logSomething(something) {
    console.log('Something', something);
  }

</details>
```

<details><summary>Click me</summary>

### Heading

1. Foo
2. Bar
    * Baz
    * Qux

### Some Code

  ```js
  function logSomething(something) {
    console.log('Something', something);
}
  ```

</details>
