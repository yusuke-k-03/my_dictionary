class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'Java' },
    { id: 3, name: 'PHP' },
    { id: 4, name: 'Javascript' },
    { id: 5, name: 'Python' },
    { id: 6, name: 'Ruby' },
    { id: 7, name: 'C++' },
    { id: 8, name: 'unity' },
    { id: 9, name: 'COBOL' },
    { id: 10, name: 'C#' },
    { id: 11, name: 'Swift' },
    { id: 12, name: 'SQL' },
    { id: 13, name: 'HTML/CSS' },
    { id: 14, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :dictionaries
  has_many :questions
end
