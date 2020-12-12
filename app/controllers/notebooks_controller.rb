class NotebooksController < ApplicationController
    # we're adding an index action bc we want to be able to see all of 
    # a user's notebooks in order to make the landing page clickable and responsive
    def index
        notebooks = Notebook.all
        render json: notebooks
    end

end
