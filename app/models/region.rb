class Region < ActiveHash::Base
  self.data = [
    { id: 1, name: 'Select a region' },
    { id: 2, name: '東予-East region-' },
    { id: 3, name: '中予-Center region-' },
    { id: 4, name: '南予-South region-' },
  ]

  include ActiveHash::Associations
  has_many :recommends
  
end