class ProfissionalController < ApplicationController
    def index
        @empresa = params[:empresa]
        puts(@empresa)
    end
end
