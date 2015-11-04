FactoryGirl.define do
    factory :user do
		sequence :email do |n|
			"etc#{n}@gmail.com"
		end
		password "Nine9999"
		password_confirmation "Nine9999"
	end


	factory :comment do
		message "I love to code"
		rating "5_stars"
		association :user
		association :place
	end

	factory :place do
	    name "Mcdonalds"
	    description "All Day Breakfast"
	    address "2077 N Decatur Rd"
	    latitude(90.8611549)
	    longitude(-71.056098)
	    association :user
  end
end