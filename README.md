yaml_dump
=========

YAML database dumper to create fixtures for spec testing.

Installation
------------
    gem 'yaml_dump', github: 'vanboom/yaml_dump'
  

Usage
-----
    rake yaml_dump:dump 
  
  
All yml files will be written to the tmp/fixtures directory.  Existing files will be overwritten.

