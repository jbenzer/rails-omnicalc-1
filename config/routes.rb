Rails.application.routes.draw do
  get("/square/new", {controller: "calc", action: "square"})

  get("/square/results", {controller: "calc", action: "square_result"})

  get("/square_root/new", {controller: "calc", action: "sqrt"})

  get("/square_root/results", {controller: "calc", action: "sqrt_result"})

  get("/payment/new", {controller: "calc", action: "payment"})

  get("/payment/results", {controller: "calc", action: "payment_result"})
  
end
