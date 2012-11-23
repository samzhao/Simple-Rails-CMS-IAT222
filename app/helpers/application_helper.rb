module ApplicationHelper
	def all_pages
		Page.all
	end

	def permalink name
		"/#{name}"
	end
end
