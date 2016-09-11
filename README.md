% Environnement JavaFX pour OpenJDK 8
% Didier Richard
% rév. 0.0.1 du 10/09/2016

---

# Building #

```bash
$ docker build -t dgricci/javafx:0.0.1 -t dgricci/javafx:latest .
```

## Behind a proxy (e.g. 10.0.4.2:3128) ##

```bash
$ docker build \
    --build-arg http_proxy=http://10.0.4.2:3128/ \
    --build-arg https_proxy=http://10.0.4.2:3128/ \
    -t dgricci/javafx:0.0.1 -t dgricci/javafx:latest .
```

# Use #

See `dgricci/jessie` README for handling permissions with dockers volumes.

```bash
$ docker run -it --rm -e USER_ID=$UID -e USER_NAME=$USER dgricci/javafx javafxpackager -version
javafxpackager has been renamed javapackager
The original file may be removed in a future release in lieu of javapackager.
Please update your scripts.

Java Packager version 8.0
```

__Et voilà !__


_fin du document[^pandoc_gen]_

[^pandoc_gen]: document généré via $ `pandoc -V fontsize=10pt -V geometry:"top=2cm, bottom=2cm, left=1cm, right=1cm" -s -N --toc -o javafx.pdf README.md`{.bash}
