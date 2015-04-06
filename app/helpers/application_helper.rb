module ApplicationHelper
    def displayTitle(string = "")
       base_title = "Movie Share" 
       if string.blank?
           base_title
       else
           "#{string} | #{base_title}"
       end
    end
end
