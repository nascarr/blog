# if message was created today, time = hh:mm (fot example 19:23 or 00:15)
# else time = dd month yyyy (for example 21 Jun 2013 or 02 Aug 1990)
# module uses Moscow time zone (utc +4)


module ApplicationHelper

 def time_created_at( message )
 	 t = message.created_at.in_time_zone("Moscow")

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
