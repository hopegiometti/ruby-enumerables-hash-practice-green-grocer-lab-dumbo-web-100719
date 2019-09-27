def consolidate_cart(cart)
  new_cart = {}
  cart.each do |items|
    item_name = items.keys[0]
    item_info = items.values[0]

    if new_cart[item_name]
      item_info[:count] += 1
    else
      new_cart[item_name] = item_info
      item_info[:count] = 1
    end
  end
  new_cart
end

def apply_coupons(cart, coupons)
  name = coupon[:item]

  if cart[name] && cart[name][:count] >= coupon[:num]
    if cart["#{name} W/COUPON"][:count] += 1
    else
      cart["#{name} W/COUPON"] = {
        :price => coupon[:cost],
        :clearance => cart[name][:clearance],
        :count = 1
        }

end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
