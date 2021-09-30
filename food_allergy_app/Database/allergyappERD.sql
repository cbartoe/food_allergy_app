﻿-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/JOek60
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).

CREATE TABLE "Restaurants" (
    "RestaurantID" int   NOT NULL,
    "RestaurantName" string   NOT NULL,
    "Address" string   NOT NULL,
    "City" string   NOT NULL,
    "State" string   NOT NULL,
    "Country" string   NOT NULL,
    "Phone" string   NOT NULL,
    "Website" string   NOT NULL,
    "AllergenFriendly" boolean   NOT NULL,
    "SeparateKitchen" boolean   NOT NULL,
    "AllergensConsidered" string   NOT NULL,
    "Ethnicity" string   NOT NULL,
    "Alcohol" boolean   NOT NULL,
    "GMapsLink" string   NOT NULL,
    "Latitude" float   NOT NULL,
    "Longitude" float   NOT NULL,
    "MultiLocs" boolean   NOT NULL,
    CONSTRAINT "pk_Restaurants" PRIMARY KEY (
        "RestaurantID","RestaurantName"
     )
);

CREATE TABLE "Dishes" (
    "DishID" int   NOT NULL,
    "DishName" string   NOT NULL,
    "RestaurantID" int   NOT NULL,
    "RestaurantName" string   NOT NULL,
    "DishType" string   NOT NULL,
    "Ingredients" string   NOT NULL,
    "Vegan" boolean   NOT NULL,
    "Vegetarian" boolean   NOT NULL,
    "Modifiable" boolean   NOT NULL,
    "CrossContamination" boolean   NOT NULL,
    "Gluten" boolean   NOT NULL,
    "Dairy" boolean   NOT NULL,
    "Treenuts" boolean   NOT NULL,
    "Seeds" boolean   NOT NULL,
    "Nightshades" boolean   NOT NULL,
    "Egg" boolean   NOT NULL,
    "Fish" boolean   NOT NULL,
    "Peanut" boolean   NOT NULL,
    "Shellfish" boolean   NOT NULL,
    "Molllusks" boolean   NOT NULL,
    "Legumes" boolean   NOT NULL,
    "Garlic" boolean   NOT NULL,
    "Soy" boolean   NOT NULL,
    "Corn" boolean   NOT NULL,
    "Wheat" boolean   NOT NULL,
    "Barley" boolean   NOT NULL,
    "Rye" boolean   NOT NULL,
    "Sesame" boolean   NOT NULL,
    "Coffee" boolean   NOT NULL,
    "Buckwheat" boolean   NOT NULL,
    "Lupin" boolean   NOT NULL,
    "Mustard" boolean   NOT NULL,
    "Celery" boolean   NOT NULL,
    "Oat" boolean   NOT NULL,
    "Rice" boolean   NOT NULL,
    "Acerloa" boolean   NOT NULL,
    "Apple" boolean   NOT NULL,
    "Apricot" boolean   NOT NULL,
    "Banana" boolean   NOT NULL,
    "Cherry" boolean   NOT NULL,
    "Date" boolean   NOT NULL,
    "Fig" boolean   NOT NULL,
    "Grape" boolean   NOT NULL,
    "Kiwi" boolean   NOT NULL,
    "Lychee" boolean   NOT NULL,
    "Mango" boolean   NOT NULL,
    "Melon" boolean   NOT NULL,
    "Orange" boolean   NOT NULL,
    "Peach" boolean   NOT NULL,
    "Pear" boolean   NOT NULL,
    "Persimmon" boolean   NOT NULL,
    "Pineapple" boolean   NOT NULL,
    "Pomegranate" boolean   NOT NULL,
    "Prune" boolean   NOT NULL,
    "Strawberry" boolean   NOT NULL,
    "Tomato" boolean   NOT NULL,
    "Chickpea" boolean   NOT NULL,
    "Lentil" boolean   NOT NULL,
    "Pea" boolean   NOT NULL,
    "Asparagus" boolean   NOT NULL,
    "Avocado" boolean   NOT NULL,
    "BellPepper" boolean   NOT NULL,
    "Cabbage" boolean   NOT NULL,
    "Carrot" boolean   NOT NULL,
    "Lettuce" boolean   NOT NULL,
    "Potato" boolean   NOT NULL,
    "Pumpkin" boolean   NOT NULL,
    "Turnip" boolean   NOT NULL,
    "Zucchini" boolean   NOT NULL,
    "Almond" boolean   NOT NULL,
    "BrazilNut" boolean   NOT NULL,
    "Cashew" boolean   NOT NULL,
    "Chestnut" boolean   NOT NULL,
    "Hazelnut" boolean   NOT NULL,
    "Macadamia" boolean   NOT NULL,
    "Pecan" boolean   NOT NULL,
    "PineNut" boolean   NOT NULL,
    "Pistachio" boolean   NOT NULL,
    "Walnut" boolean   NOT NULL,
    "MustardSeed" boolean   NOT NULL,
    "PoppySeed" boolean   NOT NULL,
    "PumpkinSeed" boolean   NOT NULL,
    "SunflowerSeed" boolean   NOT NULL,
    "CowMilk" boolean   NOT NULL,
    "GoatMilk" boolean   NOT NULL,
    "SheepMilk" boolean   NOT NULL,
    "AlaskaPollack" boolean   NOT NULL,
    "Carp" boolean   NOT NULL,
    "Cod" boolean   NOT NULL,
    "Dogfish" boolean   NOT NULL,
    "Mackerel" boolean   NOT NULL,
    "Salmon" boolean   NOT NULL,
    "Sole" boolean   NOT NULL,
    "Tuna" boolean   NOT NULL,
    "Crustacean" boolean   NOT NULL,
    "Crab" boolean   NOT NULL,
    "Lobster" boolean   NOT NULL,
    "Shrimp" boolean   NOT NULL,
    "Abalone" boolean   NOT NULL,
    "HornedTurban" boolean   NOT NULL,
    "Limpet" boolean   NOT NULL,
    "MarineSnail" boolean   NOT NULL,
    "Mussel" boolean   NOT NULL,
    "Octopus" boolean   NOT NULL,
    "Oyster" boolean   NOT NULL,
    "Scallop" boolean   NOT NULL,
    "Squid" boolean   NOT NULL,
    "Whelk" boolean   NOT NULL,
    "Beef" boolean   NOT NULL,
    "Chicken" boolean   NOT NULL,
    "Frog" boolean   NOT NULL,
    "Honey" boolean   NOT NULL,
    "Mushroom" boolean   NOT NULL,
    "Mycoprotein" boolean   NOT NULL,
    CONSTRAINT "pk_Dishes" PRIMARY KEY (
        "DishID"
     )
);

CREATE TABLE "Users" (
    "UserID" int   NOT NULL,
    "UserName" string   NOT NULL,
    "City" string   NOT NULL,
    "State" string   NOT NULL,
    "ReviewsCount" int   NOT NULL,
    "HelpRating" float   NOT NULL,
    "Vegan" boolean   NOT NULL,
    "Vegetarian" boolean   NOT NULL,
    "Gluten" boolean   NOT NULL,
    "Dairy" boolean   NOT NULL,
    "Treenuts" boolean   NOT NULL,
    "Seeds" boolean   NOT NULL,
    "Nightshades" boolean   NOT NULL,
    "Egg" boolean   NOT NULL,
    "Fish" boolean   NOT NULL,
    "Peanut" boolean   NOT NULL,
    "Shellfish" boolean   NOT NULL,
    "Molllusks" boolean   NOT NULL,
    "Legumes" boolean   NOT NULL,
    "Garlic" boolean   NOT NULL,
    "Soy" boolean   NOT NULL,
    "Corn" boolean   NOT NULL,
    "Wheat" boolean   NOT NULL,
    "Barley" boolean   NOT NULL,
    "Rye" boolean   NOT NULL,
    "Sesame" boolean   NOT NULL,
    "Coffee" boolean   NOT NULL,
    "Buckwheat" boolean   NOT NULL,
    "Lupin" boolean   NOT NULL,
    "Mustard" boolean   NOT NULL,
    "Celery" boolean   NOT NULL,
    "Oat" boolean   NOT NULL,
    "Rice" boolean   NOT NULL,
    "Acerloa" boolean   NOT NULL,
    "Apple" boolean   NOT NULL,
    "Apricot" boolean   NOT NULL,
    "Banana" boolean   NOT NULL,
    "Cherry" boolean   NOT NULL,
    "Date" boolean   NOT NULL,
    "Fig" boolean   NOT NULL,
    "Grape" boolean   NOT NULL,
    "Kiwi" boolean   NOT NULL,
    "Lychee" boolean   NOT NULL,
    "Mango" boolean   NOT NULL,
    "Melon" boolean   NOT NULL,
    "Orange" boolean   NOT NULL,
    "Peach" boolean   NOT NULL,
    "Pear" boolean   NOT NULL,
    "Persimmon" boolean   NOT NULL,
    "Pineapple" boolean   NOT NULL,
    "Pomegranate" boolean   NOT NULL,
    "Prune" boolean   NOT NULL,
    "Strawberry" boolean   NOT NULL,
    "Tomato" boolean   NOT NULL,
    "Chickpea" boolean   NOT NULL,
    "Lentil" boolean   NOT NULL,
    "Pea" boolean   NOT NULL,
    "Asparagus" boolean   NOT NULL,
    "Avocado" boolean   NOT NULL,
    "BellPepper" boolean   NOT NULL,
    "Cabbage" boolean   NOT NULL,
    "Carrot" boolean   NOT NULL,
    "Lettuce" boolean   NOT NULL,
    "Potato" boolean   NOT NULL,
    "Pumpkin" boolean   NOT NULL,
    "Turnip" boolean   NOT NULL,
    "Zucchini" boolean   NOT NULL,
    "Almond" boolean   NOT NULL,
    "BrazilNut" boolean   NOT NULL,
    "Cashew" boolean   NOT NULL,
    "Chestnut" boolean   NOT NULL,
    "Hazelnut" boolean   NOT NULL,
    "Macadamia" boolean   NOT NULL,
    "Pecan" boolean   NOT NULL,
    "PineNut" boolean   NOT NULL,
    "Pistachio" boolean   NOT NULL,
    "Walnut" boolean   NOT NULL,
    "MustardSeed" boolean   NOT NULL,
    "PoppySeed" boolean   NOT NULL,
    "PumpkinSeed" boolean   NOT NULL,
    "SunflowerSeed" boolean   NOT NULL,
    "CowMilk" boolean   NOT NULL,
    "GoatMilk" boolean   NOT NULL,
    "SheepMilk" boolean   NOT NULL,
    "AlaskaPollack" boolean   NOT NULL,
    "Carp" boolean   NOT NULL,
    "Cod" boolean   NOT NULL,
    "Dogfish" boolean   NOT NULL,
    "Mackerel" boolean   NOT NULL,
    "Salmon" boolean   NOT NULL,
    "Sole" boolean   NOT NULL,
    "Tuna" boolean   NOT NULL,
    "Crustacean" boolean   NOT NULL,
    "Crab" boolean   NOT NULL,
    "Lobster" boolean   NOT NULL,
    "Shrimp" boolean   NOT NULL,
    "Abalone" boolean   NOT NULL,
    "HornedTurban" boolean   NOT NULL,
    "Limpet" boolean   NOT NULL,
    "MarineSnail" boolean   NOT NULL,
    "Mussel" boolean   NOT NULL,
    "Octopus" boolean   NOT NULL,
    "Oyster" boolean   NOT NULL,
    "Scallop" boolean   NOT NULL,
    "Squid" boolean   NOT NULL,
    "Whelk" boolean   NOT NULL,
    "Beef" boolean   NOT NULL,
    "Chicken" boolean   NOT NULL,
    "Frog" boolean   NOT NULL,
    "Honey" boolean   NOT NULL,
    "Mushroom" boolean   NOT NULL,
    "Mycoprotein" boolean   NOT NULL,
    CONSTRAINT "pk_Users" PRIMARY KEY (
        "UserID"
     )
);

CREATE TABLE "Reviews" (
    "ReviewID" int   NOT NULL,
    "RestaurantID" int   NOT NULL,
    "DishName" string   NOT NULL,
    "UserID" int   NOT NULL,
    "Rating" int   NOT NULL,
    "ReviewTxt" string   NOT NULL,
    CONSTRAINT "pk_Reviews" PRIMARY KEY (
        "ReviewID"
     )
);

ALTER TABLE "Dishes" ADD CONSTRAINT "fk_Dishes_RestaurantID_RestaurantName" FOREIGN KEY("RestaurantID", "RestaurantName")
REFERENCES "Restaurants" ("RestaurantID", "RestaurantName");

ALTER TABLE "Reviews" ADD CONSTRAINT "fk_Reviews_RestaurantID" FOREIGN KEY("RestaurantID")
REFERENCES "Restaurants" ("RestaurantID");

ALTER TABLE "Reviews" ADD CONSTRAINT "fk_Reviews_UserID" FOREIGN KEY("UserID")
REFERENCES "Users" ("UserID");

