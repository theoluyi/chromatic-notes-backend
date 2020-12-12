class NotebooksController < ApplicationController
    def index
        notebooks = Notebook.all
        render json: notebooks
    end
end
