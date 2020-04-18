class Importance < ActiveHash::Base
  self.data = [
    {id: 1, name: '01_最重要'}, {id: 2, name: '02_重要'}, {id: 3, name: '03_普通'},
    {id: 4, name: '04_あまり重要でない'}, {id: 5, name: '05_重要でない'}
  ]
end