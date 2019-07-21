class PessoalController < ApplicationController
    def wishlist
        @gifts = Gift.where("active = true").order("wishlevel DESC, name ASC")
        @primeiro = false
        @i = 0
        @l = min(5, @gifts.length)
    end
    
    private 
    def min(i,j)
        if i < j then
            return i
        else
            return j
        end
    end
end
