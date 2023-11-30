module MyConcern extend ActiveSupport::Concern
    
     included do
        before_action :log_msg
        # byebug
        after_action :save_msg
     end

   

     def log_msg
       puts "Hello=--------------------"
     end

     def save_msg
        puts "---------Data is saved-----------"
     end


end

