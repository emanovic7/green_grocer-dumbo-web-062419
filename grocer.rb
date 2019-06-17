require 'pry'

def consolidate_cart(cart)
  #create return hash with #each_with_object
  cart.each_with_object({}) do |item, items_cart| #(return hash)
    item.each do |key, value|
      #binding.pry
      if items_cart[key] #if the key exists in the return hash
        value[:count] += 1 #increase the attribute
      else
        value[:count] = 1 #else, initialize the attribute at 1
        items_cart[key] = value #set cart values
      end
      #binding.pry
    end

  end

end




def apply_coupons(cart, coupons)
  # code here
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end



# def sample
#   [:foo, :bar, :jazz].each_with_object({}) do |item, hash|
#     hash[item] = item.to_s.upcase
#   end
#   binding.pry
# end
#
# sample
