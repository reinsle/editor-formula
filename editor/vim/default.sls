{% from "editor/map.jinja" import editor with context %}

include:
  - editor.vim

# set vim editor as default editor
update-alternatives --set editor {{ editor.default_vim_path }}:
  cmd.run:
    - unless: update-alternatives --get-selections | grep editor | grep "{{ editor.default_vim_path }}"
