class Page < ActiveRecord::Base
  attr_accessible :content, :name, :title

  before_save :downcase_and_combine_name
  before_save :titleize_title

  def downcase_and_combine_name
  	self.name = self.name.downcase.gsub(" ", "_")
  end

  def titleize_title
  	self.title = self.title.titleize
  end
end
