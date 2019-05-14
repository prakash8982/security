class HomeController < ApplicationController
	def index

    if current_user.admin == true


    elsif current_user.phase1 == true
       redirect_to phase1_phase1_path

    elsif current_user.phase2 == true

    elsif current_user.phase3 == true
      
    else
      @pstaff = current_user.pstaffs
      if @pstaff.ids.count == 0  

      else
        redirect_to pstaffs_path
      end
    end
	end

	def about
    end


   def contect
   end

   def home1
   	
   end
end
