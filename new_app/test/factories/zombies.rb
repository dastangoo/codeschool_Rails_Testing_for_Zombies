FactoryGirl.define do
  factory :zombie do
    name 'Ash'
    graveyard 'Oak Park'
    
    factory :zombie_bill do
      name 'Bill'
    end
    
    factory :zombie_mike do
      name 'Mike'
      graveyard 'Sunnyvale '
    end
  end
end