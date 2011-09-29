Factory.define :vehicles do |vehicle|
  vehicle.plate   "B1GD0G"
  vehicle.vin     "1234567890numbers"
  vehicle.make    "Mclaren"
  vehicle.model   "F1 R"
  vehicle.title   "TETCO"
  vehicle.book    "Stores"
  vehicle.year    "1999"
  vehicle.status  "Active"
end

Factory.define :maintenance do |maint|
  maint.invoice       "123456"
  maint.date          "09-11-2001"
  maint.cost          "64.99"
  maint.serviced_by   "Alamo Truck"
  maint.description   "Oil Change"
  maint.category      "Regular Maintenance"
  maint.milage        "69008"
end