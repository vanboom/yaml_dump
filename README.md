yaml_dump
=========

YAML database dumper to create fixtures for spec testing.

Installation
------------
    gem 'yaml_dump', github: 'vanboom/yaml_dump'
  

Usage
-----
    rake yaml_dump:dump 
  
By default, the following fields will not be exported:  [:id, :created_at, :updated_at]

However, you may override the excluded fields by passing them as an argument.
    rake yaml_dump:dump['id created_at updated_at myfield']

All yml files will be written to the tmp/fixtures directory.  Existing files will be overwritten.

