class Importance < ActiveHash::Base
  self.data = [
    {id: 1, name: '最重要'}, {id: 2, name: '重要'}, {id: 3, name: '普通'},
    {id: 4, name: 'あまり重要でない'}, {id: 5, name: '重要でない'}
  ]
end