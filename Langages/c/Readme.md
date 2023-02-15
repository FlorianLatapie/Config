# C

## Dingueries en C

### Booléen ni vrai ni faux

Après avoir discuté avec Tom "zdimension" Niget je suis tombé sur cela :

![booléen 1](https://cdn.discordapp.com/attachments/878167565573193738/984215353229971596/unknown.png)

Pour s'amuser il a donc créé un programme mystère comme il suit :

![booléen 2](https://cdn.discordapp.com/attachments/878167565573193738/984217080255614976/unknown.png)

Après une rapide recherche Google j'ai trouvé et testé la solution donnée dans ce stackoverflow :

[Create bool value which is neither true nor false](https://stackoverflow.com/a/48344196)

Mon programme pour tester cette solution :

```c
#include <stdio.h>
#include <stdbool.h>

bool mystere()
{
    int i = 42;
    return *(bool *)(&i);
}

int main()
{
    bool x = mystere();
    switch (x)
    {
    case true:
        puts("x est true");
        break;
    case false:
        puts("x est false");
        break;
    default:
        puts("???");
    }
    return 0;
}
```

Et en effet quand on compile le programme on obtient :

```sh
$ gcc -w -o code code.c && ./code
???
```
