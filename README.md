# LaTeX Vorlagen für die Promotion an der Medizinischen Fakultät der Universität Leipzig

## Offizielle Dokumente der Medizinischen Fakultät der Universität Leipzig

 - [Promotionsordnung](http://www.uniklinikum-leipzig.de/f-Download-d-file.html?id=62)
 - [Anlangen der Promotionsordnung](http://www.uniklinikum-leipzig.de/f-Download-d-file.html?id=63)
 - [Merkblatt](http://www.uniklinikum-leipzig.de/f-Download-d-file.html?id=533)
 - [Eigenständigkeitserklärung](http://www.uniklinikum-leipzig.de/f-Download-d-file.html?id=68)
 - [Einreichungserklärung](http://www.uniklinikum-leipzig.de/f-Download-d-file.html?id=460)
 - [Gestaltungsvorschrift Titelblatt](http://www.uniklinikum-leipzig.de/f-Download-d-file.html?id=71)


## Mithelfen

Clone das Repository mittels `git`:

```bash
git clone https://github.com/tex-med-uni-le/thesis-tex-templates.git
```

## Arbeiten mit den Vorlagen

### Eigenes Repository aufsetzen

Erzeuge dein eigenes Repository für deine Dissertation:

```bash
mkdir thesis
cd thesis
git init
# do somethings
touch README.md
git commit -am "initial commit"
```

### Einrichtung der Vorlagen

Einrichten des Vorlagen-Repository:

```bash
git remote add upstream https://github.com/tex-med-uni-le/thesis-tex-templates.git
```

Kontrolle:

```bash
git remote -v
upstream        https://github.com/tex-med-uni-le/thesis-tex-templates.git (fetch)
upstream        https://github.com/tex-med-uni-le/thesis-tex-templates.git (push)
```

### Synchronisation (Aktualisierungen aus dem Vorlagen-Repository holen)

Aktualisierungen holen:

```bash
git fetch upstream
```

Aktualisierungen integrieren:
```bash
git merge upstream/master
```
