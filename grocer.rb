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
    cart[name][:count] -= num_of_c
    if cart["#{name} W/COUPON"]
      cart["#{name} W/COUPON"][:count] += coupon[:num]
    else
      cart["#{name} W/COUPON"] = {
        :price => coupon[:cost] / coupon[:num],
        :clearance => cart[name][:clearance],
        :count => coupon[:num]
        }

      end
    end
  end
    cart
end

def apply_clearance(cart)
  # code here
  # need to check if item is on clearance
  #if item is on clearance take off 20% form price
  #if item is not on clearance then no discount

  cart.each do |item|
    if cart[item][:clearance] == true
      cart[item][:price] = cart[item][:price] * 0.8
    else
      cart[item][:price] = cart[item][:price]
    end
  end
  cart
end

def checkout(cart, coupons)
  # code here
end
