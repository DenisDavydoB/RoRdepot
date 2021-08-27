class ApplicationController < ActionController::Base
    def index
        @time = Time.now
    end
end
