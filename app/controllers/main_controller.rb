class MainController < ApplicationController
    def index
        flash.now[:notice] = "This is a notice"
        flash.now[:emptymessage] = "Ya Numpty"
        flash.now[:emptycomment] = "Empty comment"
        flash.now[:loggedout] = "Please log in"
        flash.now[:invalid] = "Invalid email or password"
    end
end