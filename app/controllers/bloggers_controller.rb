class BloggersController < ApplicationController

    def show
        @blogger = Blogger.find(params[:id])
        @likes = @blogger.posts.sum{|p| p.likes}
        @featured = @blogger.posts.max{|p| p.likes}
    end
end
