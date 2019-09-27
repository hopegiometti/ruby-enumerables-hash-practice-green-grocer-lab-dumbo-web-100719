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
  coupons.each do |coupon|
    name = coupon[:item]
    num_of_c = coupon[:num]
  if cart[name] && cart[name][:count] >= num_of_c
    if cart["#{name} W/COUPON"]
      cart["#{name} W/COUPON"][:count] += 1
    else
      cart["#{name} W/COUPON"] = {
        :price => coupon[:cost],
        :clearance => cart[name][:clearance],
        :count => 1
        }
      end
      cart[name][:count] -= coupon[:num]
    end
  end
    cart
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
