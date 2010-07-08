class Recruit < ActiveRecord::Base
  
  STATUS = [
      "Active",
      "Offer Not Tendered",
      "Offer Tendered",
      "Offer Tendered, Did Not Accept"
    ].freeze
  
end
