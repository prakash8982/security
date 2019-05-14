class Phase1Controller < ApplicationController
	def index
    end

    def phase1
    	
    	    @fetch=Pstaff.all
            
    end

    def phase2
            @fetch=Pstaff.all
    end


    def phase3
            @fetch=Pstaff.all
    	
    end

    def admin
         @fetch=Pstaff.all
    	
    end

end
