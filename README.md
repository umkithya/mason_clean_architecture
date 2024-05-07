## Mason Template with Clean Architecture

`Noted:` Make sure you have Dart & Mason installed in your machine

```terminal
    dart pub global activate mason_cli
```

1: Install brick globally on machine :

```terminal
    mason add -g feature --git-url https://github.com/umkithya/mason_with_responsive --git-path bricks/feature
```
2: How to use :

```terminal
    mason make feature
```
Note*: How to reinstall :

```terminal
   mason remove -g feature
   mason add -g feature --git-url https://github.com/umkithya/mason_with_responsive --git-path bricks/feature   
```

Enter your feature name

```terminal
    ? What is your module name? (Main) examplefeatures
```
