json.orders @orders do |order|
  json.quantity order.quantity
  json.product order.product.name
  json.price order.product.price
end
json.total_sum @total_sum

