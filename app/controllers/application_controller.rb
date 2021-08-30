class ApplicationController < ActionController::Base
 #   before_filter :set_layout_variables
    attr_accessor :time

    def set_layout_variables
        @time = Time.now
    end

end
