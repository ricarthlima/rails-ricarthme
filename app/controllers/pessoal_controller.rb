class PessoalController < ApplicationController
    def wishlist
        @gifts = Gift.where("active = true")
        @primeiro = false
    end
end
