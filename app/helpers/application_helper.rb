module ApplicationHelper
	def all_pages
		Page.all
	end

	def permalink name
		"/#{name}"
	end

	def markdown(text)
		options = [:autolink => true,
				:space_after_headers => true,
				:filter_html => true,
				:no_intra_emphasis => true,
				safe_links_only: true]
		md = Redcarpet::Markdown.new(Redcarpet::Render::HTML, *options)

		md.render(text).html_safe
	end
end
