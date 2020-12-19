class DestinationsController < ApplicationController

    def show
        @destination = Destination.find(params[:id])
        @last_five_posts = @destination.posts.last(5)
        @featured = @destination.posts.max{|p| p.likes}
        @avg_age = @destination.bloggers.sum{|b| b.age} / @destination.bloggers.length
    end
end
