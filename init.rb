require 'redmine'
require 'document_macro'
require 'spreadsheet_macro'

Redmine::Plugin.register :google_docs do
  name "Google Docs Plugin"
  author 'Tavish Armstrong, Jakub Jirutka'
  description 'Embed Google Docs in your Redmine pages.'
  version '0.0.3'
  url 'https://github.com/jirutka/redmine_google_docs'
end

Redmine::WikiFormatting::Macros.register do
  desc = "Redmine Google Spreadsheet Macro (googlespread)"
  macro :googlespread do |obj, args|
    GoogleDocsMacros::SpreadsheetMacro.get_spreadsheet(obj, args)
  end

  desc = "Redmine Google Spreadsheet Macro (googleissue)"
  macro :googleissue do |obj, args|
    GoogleDocsMacros::SpreadsheetMacro.get_issue(obj, args)
  end

  desc = "Redmine Google Document Macro (googledoc)"
  macro :googledoc do |obj, args|
    GoogleDocsMacros::DocumentMacro.get_document(obj, args)
  end
end
