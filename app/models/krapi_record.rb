class KrapiRecord < ApplicationRecord
    self.abstract_class = true
  
    connects_to database: { writing: :krapi, reading: :krapi }
end
  