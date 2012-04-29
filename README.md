Redmine Google Docs Plugin
==========================

This is a plugin for Redmine that allows you to embed Google Spreadsheets and Docs into redmine pages. This is useful for keeping Google Docs-based documentation up-to-date with the issue queue. 

For more information, see our blog post on this module: http://evolvingweb.ca/story/introducing-redmine-google-docs-plugin

Installation
------------

1. Extract/clone to the vendor/plugins folder of your Redmine installation.
2. Rename `redmine_google_docs` to `google_docs`
3. Enjoy

The development of this module was sponsored by Evolving Web.

Usage
-----

## Documents

* `{{googledoc( document_key )}`
* `{{googledoc( document_key, view)}}`
* `{{googledoc( document_key, edit)}}`
