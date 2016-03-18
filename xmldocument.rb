class Document < XmlDocument
	def print
		p 'print from XmlDocument'
	end
end

XmlDocument.new.print