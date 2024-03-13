module UsersHelper
   
        def check_prefix current_user
           prefix=""
           if current_user.male?
               prefix="Mr."
           else
               prefix="Miss."
           end 
           prefix
       end
               

end
