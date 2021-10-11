DROP TABLE dishes cascade;
DROP TABLE restaurants cascade;
DROP TABLE users cascade;
DROP TABLE reviews cascade;


CREATE TABLE restaurants (
	restaurant_id INT NOT NULL,
	restaurant_name VARCHAR NOT NULL,
 	restaurant_rating FLOAT,
	address VARCHAR,
	city VARCHAR, 
	state VARCHAR,
	country VARCHAR,
	phone VARCHAR(11),
	website VARCHAR,
	allergen_menu BOOL, 
	allergen_friendly BOOL,
	separate_kitchen BOOL,
	ethnicity VARCHAR,
	price_range INT,
	google_rating FLOAT,
	alcohol BOOL,
	gmaps_link VARCHAR,
	locations INT,
	PRIMARY KEY (restaurant_id),
	UNIQUE (restaurant_id)
);

CREATE TABLE users (
	user_id INT NOT NULL,
	username VARCHAR NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	city VARCHAR,
	state VARCHAR,
    email VARCHAR NOT NULL,
	reviews_count INT,
	help_rating FLOAT,
	vegan BOOL,
	vegetarian BOOL,
	gluten BOOL, 
	dairy BOOL,
	tree_nuts BOOL,
	seeds BOOL,
	nightshades BOOL,
	egg BOOL,
	fish BOOL,
	peanut BOOL,
	shellfish BOOL,
	molllusks BOOL,
	legumes BOOL,
	garlic BOOL,
	soy BOOL,
	corn BOOL,
	wheat BOOL,
	barley BOOL,
	rye  BOOL,
	sesame BOOL,
	coffee BOOL,
	buckwheat BOOL,
	lupin BOOL,
	mustard BOOL,
	celery BOOL,
	oat BOOL,
	rice BOOL,
	acerloa BOOL,
	apple BOOL,
	apricot BOOL,
	banana BOOL,
	cherry BOOL,
	dates BOOL,
	fig BOOL,
	grape BOOL,
	kiwi BOOL,
	lychee BOOL,
	mango BOOL,
	melon BOOL,
	orange BOOL,
	peach BOOL,
	pear BOOL,
	persimmon BOOL,
	pineapple BOOL,
	pomegranate BOOL,
	prune BOOL,
	strawberry BOOL,
	tomato BOOL,
	chickpea BOOL,
	lentil BOOL,
	pea  BOOL,
	asparagus BOOL,
	avocado BOOL,
	bell_pepper BOOL,
	cabbage BOOL,
	carrot BOOL,
	lettuce BOOL,
	potato BOOL,
	pumpkin BOOL,
	turnip BOOL,
	zucchini BOOL,
	almond BOOL,
	brazil_nut BOOL,
	cashew BOOL,
	chestnut BOOL,
	hazelnut BOOL,
	macadamia BOOL,
	pecan BOOL,
	pine_nut BOOL,
	pistachio BOOL,
	walnut BOOL,
	mustard_seed BOOL,
	poppy_seed BOOL,
	pumpkin_seed BOOL,
	sunflower_seed BOOL,
	cow_milk BOOL,
	goat_milk BOOL,
	sheep_milk BOOL,
	alaska_pollack BOOL,
	carp BOOL,
	cod BOOL,
	dogfish BOOL,
	mackerel BOOL,
	salmon BOOL,
	sole BOOL,
	tuna BOOL,
	crustacean BOOL,
	crab BOOL,
	lobster BOOL,
	shrimp BOOL,
	abalone BOOL,
	horned_turban BOOL,
	limpet BOOL,
	marine_snail BOOL,
	mussel BOOL,
	octopus BOOL,
	oyster BOOL,
	scallop BOOL,
	squid BOOL,
	whelk BOOL,
	beef BOOL,
	chicken BOOL,
	frog BOOL,
	honey BOOL,
	mushroom BOOL,
	mycoprotein BOOL,
	PRIMARY KEY (user_id),
	UNIQUE (user_id)	
);

CREATE TABLE reviews (
	review_id INT NOT NULL,
	restaurant_id INT NOT NULL,
	dish_name VARCHAR,
	user_id INT NOT NULL,
	rating FLOAT NOT NULL,
	review_text VARCHAR,
	PRIMARY KEY (review_id),
	UNIQUE (review_id),
FOREIGN KEY (restaurant_id) REFERENCES restaurants (restaurant_id),
FOREIGN KEY (user_id) REFERENCES users (user_id)
);

CREATE TABLE dishes (
	dish_id INT,
	dish_name VARCHAR,
	restaurant_id INT,
	restaurant_name VARCHAR,
	dish_type VARCHAR,
	ingredients VARCHAR,
	modifiable BOOL,
	cross_contam BOOL,
	vegan BOOL,
	vegetarian BOOL,
	gluten BOOL, 
	dairy BOOL,
	tree_nuts BOOL,
	seeds BOOL,
	nightshades BOOL,
	egg BOOL,
	fish BOOL,
	peanut BOOL,
	shellfish BOOL,
	molllusks BOOL,
	legumes BOOL,
	garlic BOOL,
	soy BOOL,
	corn BOOL,
	wheat BOOL,
	barley BOOL,
	rye  BOOL,
	sesame BOOL,
	coffee BOOL,
	buckwheat BOOL,
	lupin BOOL,
	mustard BOOL,
	celery BOOL,
	oat BOOL,
	rice BOOL,
	acerloa BOOL,
	apple BOOL,
	apricot BOOL,
	banana BOOL,
	cherry BOOL,
	dates BOOL,
	fig BOOL,
	grape BOOL,
	kiwi BOOL,
	lychee BOOL,
	mango BOOL,
	melon BOOL,
	orange BOOL,
	peach BOOL,
	pear BOOL,
	persimmon BOOL,
	pineapple BOOL,
	pomegranate BOOL,
	prune BOOL,
	strawberry BOOL,
	tomato BOOL,
	chickpea BOOL,
	lentil BOOL,
	pea BOOL,
	asparagus BOOL,
	avocado BOOL,
	bell_pepper BOOL,
	cabbage BOOL,
	carrot BOOL,
	lettuce BOOL,
	potato BOOL,
	pumpkin BOOL,
	turnip BOOL,
	zucchini BOOL,
	almond BOOL,
	brazil_nut BOOL,
	cashew BOOL,
	chestnut BOOL,
	hazelnut BOOL,
	macadamia BOOL,
	pecan BOOL,
	pine_nut BOOL,
	pistachio BOOL,
	walnut BOOL,
	mustard_seed BOOL,
	poppy_seed BOOL,
	pumpkin_seed BOOL,
	sunflower_seed BOOL,
	cow_milk BOOL,
	goat_milk BOOL,
	sheep_milk BOOL,
	alaska_pollack BOOL,
	carp BOOL,
	cod BOOL,
	dogfish BOOL,
	mackerel BOOL,
	salmon BOOL,
	sole BOOL,
	tuna BOOL,
	crustacean BOOL,
	crab BOOL,
	lobster BOOL,
	shrimp BOOL,
	abalone BOOL,
	horned_turban BOOL,
	limpet BOOL,
	marine_snail BOOL,
	mussel BOOL,
	octopus BOOL,
	oyster BOOL,
	scallop BOOL,
	squid BOOL,
	whelk BOOL,
	beef BOOL,
	chicken BOOL,
	frog BOOL,
	honey BOOL,
	mushroom BOOL,
	mycoprotein BOOL,
FOREIGN KEY (restaurant_id) REFERENCES restaurants (restaurant_id)
);
	