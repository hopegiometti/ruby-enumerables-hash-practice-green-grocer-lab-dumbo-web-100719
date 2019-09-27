def consolidate_cart(cart)
  new_cart = {}
  cart.each do |items|
    item_name = items.keys[0]
    item_info = items.values[0]

    if new_cart[item_name]
      item_name[:count] += 1
    else 
      new_cart[item_name] = item_info
      item_info[:count] = 1
    end
  end
  new_cart
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
