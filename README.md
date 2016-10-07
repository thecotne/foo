# foo
foo bar baz

## Installing linux software on linux (without root)

```bash
# micro
curl -sL https://github.com/thecotne/foo/raw/master/scripts/micro.sh | bash -
```

## Installing windows software on linux

install dependencies

```bash
# for Fedora
dnf install wine icoutils imagemagick

# for Ubuntu
apt install wine icoutils imagemagick
```

install prefered software from list below

```bash
# HeidiSQL
curl -sL https://github.com/thecotne/foo/raw/master/scripts/HeidiSQL.sh | sudo -E bash -

# WinSCP
curl -sL https://github.com/thecotne/foo/raw/master/scripts/WinSCP.sh | sudo -E bash -
```

