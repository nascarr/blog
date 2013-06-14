module ApplicationHelper

  def time

  end

end
module ApplicationHelper

 def time_created_at( message )
 	 t = message.created_at
 	 if t > DateTime.now.beginning_of_day
 	 	t.strftime("%H:%M")
 	 else
 	 	if t > DateTime.now.beginning_of_year
 	 	t.strftime("%d %b")
 	    else 
 	    t.strftime("%d %b %Y")
 	    end
 	 end
 end

end
