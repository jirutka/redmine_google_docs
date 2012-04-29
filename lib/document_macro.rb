require 'redmine'

module GoogleDocsMacros
  unloadable

class DocumentMacro
  def self.get_document(obj, args)
	doc_key = args[0]
	action = false
	domain = false
	if args.length == 2
	  case args[1].strip
		when "edit"
		  action = "edit"
		when "view"
		  action = "view"
		else /^[\w]+(\.+[\w-])+/
		  domain = args[1].strip
	  end
	end
	if args.length == 3
	  domain = args[1].strip if /^[\w]+(\.+[\w-])+/.match(args[1].strip)
	  action = "edit" if args[2].strip == "edit"
	  action = "view" if args[2].strip == "view"
	end
	if /^[\w-]+$/.match(doc_key)
	  if domain
		url = "https://docs.google.com/a/#{domain}/document/"
	  else
		url = "https://docs.google.com/document/"
	  end
	  if action
		url += "d/#{doc_key}/#{action}"
	  else
		url += "pub?id=#{doc_key}"
	  end
	  "<div class='googledoc'><iframe src='#{url}' width='100%' height='600px'></iframe></div>"
	else
	  raise "The Google document key must be alphanumeric."
	end
  end
end

end
