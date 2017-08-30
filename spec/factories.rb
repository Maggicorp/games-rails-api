FactoryGirl.define do
  factory :past_game do
    score 1
    other_team "MyString"
    other_team_score 1
    team nil
  end
  factory :player do
    team nil
    first_name "MyString"
    last_name "MyString"
    jersey_number 1
  end
  factory :competiting_team do
    game nil
    team nil
    score ""
  end
  factory :team do
    name "MyString"
  end
  factory :game do
    
  end
end
