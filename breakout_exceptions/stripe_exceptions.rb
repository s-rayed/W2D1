begin
  # Use Stripe's library to make requests...
rescue Stripe::CardError => e
  # Since it's a decline, Stripe::CardError will be caught
  body = e.json_body
  err  = body[:error]

  puts "Status is: #{e.http_status}"
  puts "Type is: #{err[:type]}"
  puts "Code is: #{err[:code]}"
  # param is '' in this case
  puts "Param is: #{err[:param]}"
  puts "Message is: #{err[:message]}"
rescue Stripe::RateLimitError => e
  # Too many requests made to the API too quickly
rescue Stripe::InvalidRequestError => e
  # Invalid parameters were supplied to Stripe's API
rescue Stripe::AuthenticationError => e
  # Authentication with Stripe's API failed
  # (maybe you changed API keys recently)
rescue Stripe::APIConnectionError => e
  # Network communication with Stripe failed
rescue Stripe::StripeError => e
  # Display a very generic error to the user, and maybe send
  # yourself an email
rescue => e
  # Something else happened, completely unrelated to Stripe
end
