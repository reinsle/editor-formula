{% from "editor/map.jinja" import editor with context %}

include:
  - editor.nano

# set vim editor as default editor
update-alternatives --set editor {{ editor.default_nano_path }}:
  cmd.run:
    - unless: update-alternatives --get-selections | grep editor | grep "{{ editor.default_nano_path }}"
