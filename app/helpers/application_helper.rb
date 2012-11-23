module ApplicationHelper
	def pages
		pages = Page.all
	end

	def permalink name
		"/#{name}"
	end
end
