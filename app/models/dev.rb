class Dev < ActiveRecord::Base
    has_many :freebies
    has_many :companies, through: :freebies

def received_one?(item_name)
  freebies.where(item_name: item_name).exists?
end

def give_away(dev, freebie)
  if freebies.include?(freebie)
     freebie.update(dev: dev)
  end
end

end
