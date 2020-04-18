class Urgency < ActiveHash::Base
  self.data = [
    {id: 1, name: '01_超緊急'}, {id: 2, name: '02_緊急'}, {id: 3, name: '03_普通'},
    {id: 4, name: '04_あまり緊急ではない'}, {id: 5, name: '05_緊急でない'}
  ]
end