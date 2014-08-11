# Installs vim package
vim:
  pkg.installed

/etc/vim/vimrc:
  file.managed:
    - source: salt://editor/files/vimrc
    - user: root
    - group: root
    - mode: 0644
