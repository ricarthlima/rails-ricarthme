class PessoalController < ApplicationController
    def wishlist
        @gifts = Gift.where("active = true").order("wishlevel DESC, name ASC")
        @primeiro = false
    end
end
