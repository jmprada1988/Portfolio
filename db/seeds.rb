User.create!(
	email:"lein.davir@gmail.com",
	password: "lein1234",
	name: "Lein Davir",
	roles: "site_admin"

)
puts "1 Admin user created"

User.create!(
	email:"lein.test@test.com",
	password: "123456",
	name: "Guest User",
	roles: "Regular User"

)
puts "1 Regular user created"

3.times do |topic|
	Topic.create!(
		title: "Topic #{topic}"
		)
end
puts "3 topics created"

10.times do |blog|
	Blog.create!(
		title: "My blog post #{blog}",
		body: "Lorem Simpson perfectly cromulent homerhol foundling-a-ding commie-nazis smashy smashy clouseauesque lamarella lupper dumbening unnecessary surgery land chocotastic the old wiggum charm the nauseator d'oh! please let me explain baby guts that's why your robot never worked pinnitchy-o brassafrax texas left add more balls lamarella jumping box the old fork in the eye no-breath tromboner scientician searing gas pain land unblowuppable totally outrageous paradigm i need the biggest seed bell you have suck shack velocitator woozle wuzzle a law requiring ducks to wear long pants continuing our 'sign of evil' countdown fudrucker pointy kitty esquilax eat my shorts you are hearing me talk meh cheese-eating surrender monkeys okely dokely crisitunity bumbled-bee foodrinkery reverse vampires blubber-in-law diddily unfaceuptoable commie-nazis banana kaboom no-breath eedily successmanship lord protect this rocket house avoision pasghetti squozen i had to sell the trigger and most of the handle to feed my family my son is also named bort tromboner reverse vampires",
		topic_id: Topic.last.id
		)
end

puts "10 blog post created"

8.times do |portfolio_item|
	Portfolio.create!(
		title: "Portfolio title #{portfolio_item}",
		subtitle: "Ruby on Rails",
		body: "fireworks factory ha ha! and all who dwell within this rocket house fireworks factory liberty log perspicacity avoision knowitallism banana kaboom such a violent motif homersexual poochie hate mail killbot factory undefinedposturologists bathiola smendler here's vanessa williams nucleon nincompoop zuh eat my shirt scratchtasia shark boy dorkus molorkus kapowza menu boy 0 days without a suicide she. u.i. perspicacity the e-z road to success the nauseator jiminy jillikers ketchup eat our shirts your older, balder, fatter son meh quetzalzacatenango menu boy learnatorium the cause of and solution to all of life's problems. posturologists scientician eedily one way passage to the boneyard suspicious aloysius microcalifragilistics ketchup unpossible gangsta city flanswered four minutes. dickety milhousing suck like a fox unnecessary surgery land nincompoop suck like a fox municipal house of pancakes 0 days without a suicide sunblocker onetuplet the nauseator skanks for nothing science pole ",
		main_image: "https://via.placeholder.com/500?text=Placeholder.com+rocks!",
		thumb_image: "https://via.placeholder.com/350?text=Placeholder.com+rocks!"
		)
	end

	1.times do |portfolio_item|
	Portfolio.create!(
		title: "Portfolio title #{portfolio_item}",
		subtitle: "React",
		body: "fireworks factory ha ha! and all who dwell within this rocket house fireworks factory liberty log perspicacity avoision knowitallism banana kaboom such a violent motif homersexual poochie hate mail killbot factory undefinedposturologists bathiola smendler here's vanessa williams nucleon nincompoop zuh eat my shirt scratchtasia shark boy dorkus molorkus kapowza menu boy 0 days without a suicide she. u.i. perspicacity the e-z road to success the nauseator jiminy jillikers ketchup eat our shirts your older, balder, fatter son meh quetzalzacatenango menu boy learnatorium the cause of and solution to all of life's problems. posturologists scientician eedily one way passage to the boneyard suspicious aloysius microcalifragilistics ketchup unpossible gangsta city flanswered four minutes. dickety milhousing suck like a fox unnecessary surgery land nincompoop suck like a fox municipal house of pancakes 0 days without a suicide sunblocker onetuplet the nauseator skanks for nothing science pole ",
		main_image: "https://via.placeholder.com/500?text=Placeholder.com+rocks!",
		thumb_image: "https://via.placeholder.com/300?text=Placeholder.com+rocks!"
		)
	end

puts "9 portfolios created"

3.times do |technology|
		Portfolio.last.technologies.create!(
			name: "Technology #{technology}"
		)
end
puts "3 technologies created"

5.times do |skill|
	Skill.create!(
		title: "Rails #{skill}",
		percent_utilized: 15
		)
	end 

	puts "5 skills created"