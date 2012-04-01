module ApplicationHelper
  def title 
    base_title = "Local Falcon"
    if @title.nil?
        base_title
    else 
        "#{base_title} | #{@title}"
    end
  end
end
