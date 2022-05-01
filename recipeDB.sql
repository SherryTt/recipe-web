-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: May 01, 2022 at 01:41 PM
-- Server version: 8.0.28
-- PHP Version: 8.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `recipeDB`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_ID` int NOT NULL,
  `category_name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_ID`, `category_name`) VALUES
(1, 'popular_menu'),
(2, 'top_rated'),
(3, 'vegetable'),
(4, 'protein'),
(5, 'seafood'),
(6, 'others');

-- --------------------------------------------------------

--
-- Table structure for table `favourite`
--

CREATE TABLE `favourite` (
  `fav_id` int NOT NULL,
  `recipe_id` int NOT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `favourite`
--

INSERT INTO `favourite` (`fav_id`, `recipe_id`, `user_id`) VALUES
(2, 11, 2),
(3, 10, 2),
(4, 9, 2),
(5, 13, 2),
(6, 15, 2),
(7, 2, 3),
(8, 2, 4),
(9, 3, 4),
(10, 12, 4),
(11, 5, 2),
(12, 5, 42),
(13, 18, 42);

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `image_ID` int NOT NULL,
  `filename` varchar(255) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`image_ID`, `filename`, `created`, `modified`) VALUES
(1, 'recipe_1.jpeg', '2022-04-04 00:06:14', '2022-04-04 00:06:59'),
(2, 'recipe_2.jpeg', '2022-04-04 00:06:14', '2022-04-04 00:06:59'),
(3, 'recipe_3.jpeg', '2022-04-04 00:06:14', '2022-04-04 00:06:59'),
(4, 'recipe_4.jpeg', '2022-04-04 00:06:14', '2022-04-04 00:06:59'),
(5, 'recipe_5.jpeg', '2022-04-04 00:06:14', '2022-04-04 00:06:59'),
(6, 'recipe_6.jpeg', '2022-04-04 00:06:14', '2022-04-04 00:06:59'),
(7, 'recipe_7.jpeg', '2022-04-04 00:06:14', '2022-04-04 00:06:59'),
(8, 'recipe_8.jpeg', '2022-04-04 00:06:14', '2022-04-04 00:06:59'),
(9, 'recipe_9.jpeg', '2022-04-04 00:06:14', '2022-04-04 00:06:59'),
(10, 'recipe_10.jpeg', '2022-04-04 00:06:14', '2022-04-04 00:06:59'),
(11, 'recipe_11.jpeg', '2022-04-04 00:06:14', '2022-04-04 00:06:59'),
(12, 'recipe_12.jpeg', '2022-04-04 00:06:14', '2022-04-04 00:06:59'),
(13, 'recipe_13.jpeg', '2022-04-04 00:06:14', '2022-04-04 00:06:59'),
(14, 'recipe_14.jpeg', '2022-04-04 00:06:14', '2022-04-04 00:06:59'),
(15, 'recipe_15.jpeg', '2022-04-04 00:06:14', '2022-04-04 00:06:59'),
(16, 'recipe_16.jpeg', '2022-04-04 00:06:14', '2022-04-04 00:06:59'),
(17, 'recipe_17.jpeg', '2022-04-04 00:06:14', '2022-04-04 00:06:59'),
(18, 'recipe_18.jpeg', '2022-04-04 00:06:14', '2022-04-04 00:06:59'),
(19, 'recipe_19.jpeg', '2022-04-04 00:06:14', '2022-04-04 00:06:59'),
(20, 'recipe_20.jpeg', '2022-04-04 00:06:14', '2022-04-04 00:06:59'),
(21, 'recipe_21.jpeg', '2022-04-04 00:06:14', '2022-04-04 00:06:59');

-- --------------------------------------------------------

--
-- Table structure for table `recipe`
--

CREATE TABLE `recipe` (
  `recipe_ID` int NOT NULL,
  `recipe_Name` varchar(255) DEFAULT NULL,
  `recipe_prep` varchar(255) NOT NULL,
  `recipe_cook` varchar(255) NOT NULL,
  `recipe_total` varchar(255) NOT NULL,
  `recipe_calories` varchar(255) NOT NULL,
  `recipe_servings` int NOT NULL,
  `recipe_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `recipe_ingredient` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `recipe_direction` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `star_rated` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `recipe`
--

INSERT INTO `recipe` (`recipe_ID`, `recipe_Name`, `recipe_prep`, `recipe_cook`, `recipe_total`, `recipe_calories`, `recipe_servings`, `recipe_description`, `recipe_ingredient`, `recipe_direction`, `star_rated`) VALUES
(1, 'Sesame Beef & Wombok Stir-Fry', '20 mins', '20 mins', '40 mins ', '888 cal', 2, 'This easy sesame beef stir fry is incredibly flavorful and easy! serve with authentic ramen noodles, over rice, or in a lettuce cup for a lower carb version!', '<p>3 clove garlic</P>\n<p>200g packet jasmine rice</P>\n<p>1 brown onion</P>\n<p>100g bag shredded wombok </P>\n<p>1 carrot</P>\n<p>1 sachet of sesame seeds </P>\n<p>500g packet beef strips </P>\n<p>10g packet oyster sauce</P>\n<p>5g packet sesame oil blend</P>\n<p>1 packet crispy shallots</P>\n<p>1 Oliver oil</P>\n<p>1.25 cup water</P>\n<p>20g butter, 1 tsp brown sugar </P>\n<p>1 tsp rice wine vinegar</P>\n<p>1 tbs soy sauce</P>', '<P>1. Finely chop the garlic. - In a medium-sized saucepan, heat the butter in a little olive oil over medium heat. Cook 1/2 of the garlic until fragrant, 1-2 minutes. Add the water and a pinch of salt and bring to a boil. Add the jasmine rice. Stir, cover, and reduce the heat to low. Cook for 12 minutes, then remove from heat. Cover and cook until the rice is tender and the water is absorbed for 10-15 minutes. - Meanwhile, thinly slice the red onion. Cut the carrots into half-moons.</P>\r\n\r\n<P>2. Heat a large skillet over medium-high heat. Toast sesame seeds, tossing, until golden brown, 3-4 minutes. Transfer to a small bowl. - Heat the skillet to high heat with a little olive oil. When the oil is hot, cook the beef strips in batches, tossing, until browned and cooked through 1-2 minutes. Reduce the heat and add the remaining garlic and a pinch of pepper. Cook until fragrant, 1 minute. Transfer to a plate.</P>\r\n\r\n<P>3. In a small bowl, mix oyster sauce, sesame oil, brown sugar, rice wine vinegar, and soy sauce. - Heat a skillet with a little olive oil until hot. Sauté onions and carrots until tender, 3-4 minutes. Add the chopped wombok and cook until wilted, 1-2 minutes. - Reduce heat to medium and return the beef to the pan. Stir in sauce mixture and 1/2 of the sesame seeds until heated through, 1 minute.</P>\r\n\r\n<P>4. Divide the garlic rice into a bowl. Top with sesame beef and broccoli stir-fry. - Sprinkle with scallions and remaining sesame seeds to serve.</P>', 4.7),
(2, 'Red Curry Pork Rissoles & Coconut Rice', '45 mins', '20 min', '65 mins', '629 cal ', 2, 'Cook an amazing dinner as usual, then put a new spin on the recipe to create something different for tomorrow\'s lunch. For dinner, serve the rich pork rissoles with fragrant coconut rice and plenty of green veggies. Then, serve the remaining rissoles over sweet potato and cashew-adorned salad for lunch the next day. Too easy!', '<P>2 sweet potatoes</P>\r\n<P>300g basmati rice</P>\r\n<P>1 head of broccoli</P>\r\n<P>1 long red chili</P>\r\n<P>20g sweet chili sauce</P>\r\n<P>1 bag of baby spinach leaves</P>\r\n<P>1 bag of green beans</P>\r\n<P>¾ tinThai red curry paste</P>\r\n<P>1 tin coconut milk</P>\r\n<P>1 bunch spring onion</P>\r\n<P>2 packets fine breadcrumbs</P>\r\n<P>2 lime, 1 bag of snow peas </P>\r\n<P>30g  roasted cashews</P>\r\n<P>1 packet pork mince</P>\r\n<P>5g olive oil</P>\r\n<P>1 egg</P>\r\n<P>1 cup water</P>', '<P>1. In a medium-sized saucepan, add coconut milk, water, and a large pinch of salt. Bring to a boil. Add the paneer. Stir, cover, and reduce the heat to low. Cook for 15 minutes, then remove the pan from the heat. Cover and cook until rice is tender and water is absorbed for 10 minutes.</P>\r\n\r\n<P>2. While the rice is cooking, preheat the oven to 240°C/220°C using a fan. Cut the sweet potatoes into bite-size pieces. Place on a lined baking sheet. Drizzle with olive oil and season with salt and pepper. Throw on the jacket and spread it out in a single layer. Bake until tender, 20-25 minutes. Let it cool, then refrigerate until you\'re ready to pack a lunch.</P>\r\n\r\n<P>3. Spicy! You may find the curry paste very hot. If you are sensitive to heat, add less.\r\nWhile the sweet potatoes are roasting, thinly slice the green onions. Trim the green beans and cut them in half. Cut the broccoli into small florets, then coarsely chop the stems. In a large bowl, mix ground pork, fine bread crumbs, eggs, Thai red curry paste (see Ingredients), and green onions. Using wet hands, shape heaped tablespoons of the mixture into rissoles (6-8 per person) and place them on a plate.</P>\r\n\r\n<P>4. In a large skillet, heat a little olive oil over medium-high heat. Cook broccoli until almost tender, 4-5 minutes. Add the green beans and cook until wilted, 1-2 minutes. Season with salt and pepper, transfer to a plate and cover to keep warm. Return the skillet to medium-high heat with a generous amount of olive oil. When oil is hot, cook rissoles in batches, turning occasionally, until browned and cooked through all over, 5-6 minutes. Transfer to a plate.</P>\r\n\r\n<P>5. Thinly slice the long red pepper (if using). Save one lime for lunch, then cut the rest into wedges. Divide the coconut rice between the plates. Top with some vegetables and some red curry pork risotto (save two for lunch!). Sprinkle with chili (if using). Drizzle with 1/2 of the sweet chili sauce (save the rest for lunch!). Serve with a lime wedge.</P>\r\n\r\n<P>6. When you are ready to pack your lunch, trim the hollandaise beans and slice them thinly lengthwise. Juice the reserved lime and mix it with the reserved sweet chili sauce. Divide the sweet chili-lime mixture between two containers. Divide the baby spinach leaves, sweet potatoes, and peas between the containers. Top with reserved Thai pork rissoles. At lunchtime, transfer rissoles to a microwave-safe dish and microwave until piping hot, 2-3 minutes. Toss salad. Top with rissoles and roasted cashews.</P>', 4.6),
(3, 'QuickSweet Chilli-Lime Chicken', '20 mins', '15 mins', '35 mins ', '496 cal', 2, 'In this perfectly sweet and zingy chicken dish, we\'ve swapped out pasta for magical konjac noodles; they taste surprisingly similar to rice noodles, but come without the carb overload. Plus, they soak up the creamy sesame dressing like a treat.', '<p>1 carrot</p>\r\n<p>½ lime</p>\r\n<p>1 packet garlic paste </p>\r\n<p>30g sweet chili sauce </p>\r\n<p>300g chicken tenderloins </p>\r\n<p>10g ginger paste </p>\r\n<p>10g sesame dressing </p>\r\n<p>10g crispy shallots </p>\r\n<p>1 bag Asian greens </p>\r\n<p>1 konjac noodles</p>\r\n<p>10g olive oil </p>\r\n<p>1 tbs soy sauce</p>\r\n\r\n\r\n', '<P>1. Cut the carrots into half-moons. Roughly chop Asian vegetables. Cut lime into wedges. - In a small bowl, combine soy sauce, lime juice, and 1/2 of the sweet chili sauce. Set aside. - In a large skillet, heat a little olive oil over medium-high heat. Cook carrots, tossing, until tender, 4 to 5 minutes. Add Asian vegetables and garlic paste and cook until wilted and fragrant, 1-2 minutes. Transfer to a bowl and cover to keep warm.</p>\r\n\r\n<P>2. Cut the chicken tenderloin into 2 cm pieces. - Return the skillet to medium-high heat with a little olive oil. Cook the chicken, tossing, until browned and cooked through, 5-6 minutes. Add the ginger paste and cook until fragrant, 30 seconds. - Reduce the heat to medium and add the bean and green mixture. Cook, tossing until chicken is coated and the sauce has thickened slightly 1 minute. Transfer to a plate and cover to keep warm.</p>\r\n\r\n<P>3. While the chicken is cooking, drain and rinse the konnyaku noodles. - Wipe skillet clean and return to medium heat. Cook the sesame sauce and remaining sweet chili sauce until slightly thickened, 1 minute. - Return the cooked vegetables and noodles to the pan. Cook, tossing, until coated and heated through 1 minute. - Salt and pepper to taste.</p>\r\n\r\n<P>4. Divide the sesame konnyaku noodles and vegetables between bowls. - Top with sweet chili lime chicken and spoon over any remaining glaze in the pan. - Sprinkle with scallions to serve.</p>', 4.8),
(4, 'Mexican Beef Enchiladas With Corn Salsa', '35 mins ', '30 mins ', '65 mins ', '497 cal', 2, 'With a flavourful beef filling, soft flour tortillas, melted Cheddar cheese, corn salsa, and sour cream, it\'s no wonder this colorful Mexican dish continues to be so popular.', '<p>1 red onion </p>\r\n<p>1 clove of garlic </p>\r\n<p>1 bag coriander</p>\r\n<p>1 carrot</p>\r\n<p>1 tin sweetcorn</p>\r\n<p>200g  beef mince</p>\r\n<p>1 box diced tomatoes with garlic & onion</p>\r\n<p>6 mini flour tortillas</p>\r\n<p>1 packet light sour cream</p>\r\n<p>1 packet shredded Cheddar cheese</p>\r\n<p>1 sachet Mexican Fiesta spice blend</p>\r\n<p>10g olive oil</p>\r\n<p>10g butter</p>\r\n<p>½ tsp sugar</p>\r\n<p>½ tsp salt</p>\r\n<p>½ tsp vinegar</p>', '<p>1. Preheat the oven to 220°C/200°C fan-forced. Finely chop the red onion. Finely chop the garlic. Grate the carrot. Drain the sweetcorn.</p>\r\n\r\n<p>2. Heat a large frying pan over high heat. When the pan is hot, cook the sweetcorn, tossing, until lightly charred, 5 minutes. Transfer to a small bowl. Return the pan to medium-high heat with a drizzle of olive oil. Add the onion (reserve a spoonful for the salsa!) and cook until softened, 2-3 minutes. Add the garlic and cook until fragrant, 1 minute. Add the beef mince and carrot and cook, breaking up with a spoon, until browned, 4-5 minutes.</p>\r\n\r\n<p>3. SPICY! You may find the spice blend hot! Add less if you\'re sensitive to heat. Add the butter and Mexican Fiesta spice blend and cook until fragrant, 1 minute. Add the diced tomatoes with garlic & onion, sugar, and salt, and bring to a boil. Reduce the heat to medium and simmer until thickened, 5 minutes. Season with salt.</p>\r\n\r\n<p>4. Place the mini flour tortillas on a flat surface and fill them evenly with the enchilada filling. Roll up the tortillas to close and place, seam-side down, in a baking dish. Sprinkle with the shredded Cheddar cheese. Bake until the cheese is melted and golden, 15 minutes.</p>\r\n\r\n<p>5. While the enchiladas are baking, roughly chop the coriander. Add the coriander and reserved onion to the corn. Drizzle with olive oil and add vinegar. Season with salt and pepper. Toss to coat.</p>\r\n\r\n<p>6. Divide the Mexican beef enchiladas between plates. Top with the corn salsa. Serve with light sour cream.</p>', 4.8),
(5, 'Southeast Asian Tofu & Udon Stir-Fry', '25 mins ', '20 mins ', '55 mins ', '638 cal', 2, 'This golden tofu dish comes together in four surprisingly simple steps, partly thanks to some shortcut ingredients. Wait till you try the coconut sauce; it\'s creamy and umami with a touch of sweetness and zing, and the chewy udon soak it up beautifully.\r\n\r\n', '<p>1 packet of udon noodles </p>\r\n<p>1 carrot </p>\r\n<p>1 zucchini</p>\r\n<p>2 leaves makrut lime leaves </p>\r\n<p>200g  cornflour</p>\r\n<p>10g  ginger paste</p>\r\n<p>1 tin coconut milk</p>\r\n<p>1 sachet of vegetable stock powder</p>\r\n<p>1 bag coriander</p>\r\n<p>½ tin bamboo shoots</p>\r\n<p>1 sachet Southeast Asian Spice Blend</p>\r\n<p>5g umami paste </p>\r\n<p>5g olive oil</p>\r\n<p>½ tsp salt</p>\r\n<p>½ tbs brown sugar</p>', '<P>1. Boil the kettle. Half-fill medium saucepan with the boiling water. • Cook udon noodles over medium-high heat until tender, 3-4 minutes. In the last minute, gently stir with a fork to separate. Drain, rinse and set aside. • While noodles are cooking, cut firm tofu (see ingredients) into 1cm pieces. Thinly slice carrot and zucchini into half-moons. Remove centre veins from makrut lime leaves, then very finely chop. Drain bamboo shoots (see ingredients).</P>\r\n\r\n<P>2. In a medium bowl, combine cornflour (1/2 packet for 2 people / 1 packet for 4 people), the salt, Southeast Asian spice blend and tofu. • In a large frying pan, heat a generous drizzle of olive oil over a medium-high heat. • When oil is hot, shake excess flour off tofu. Cook tofu, turning occasionally, until golden, 5-7 minutes. Transfer to a plate lined with paper towel.</P>\r\n\r\n<P>3. Wipe out frying pan and return to a high heat with a drizzle of olive oil. Cook carrot, zucchini and bamboo shoots, tossing, until softened, 4-5 minutes. • Add ginger paste and cook until fragrant, 1 minute. • Add coconut milk, umami paste, vegetable stock powder and brown sugar and cook until slightly thickened, 1-2 minutes. • Add makrut lime leaves and cooked noodles, tossing, until heated through and combined, 1 minute.</P>\r\n<P>4. Divide udon stir-fry between bowls. • Top with Southeast Asian tofu, spooning over any remaining coconut sauce from pan. • Tear over coriander to serve.</P>', 4.5),
(6, 'Beef & Veggie Cottage Pie', '35 mins ', '20 mins ', '55 mins ', '760 cal ', 2, 'This cozy dinner is made to please, with a veggie-loaded beef base and creamy Cheddar mash topping. Add the finishing touch by placing it under the grill until toasty brown and perfectly delicious!\r\n', '<p>2 potatoes</p>\r\n<p>1 brown onion</p>\r\n<p>2 clove garlic</p>\r\n<p>1 stalk of celery</p>\r\n<p>1 carrot</p>\r\n<p>200g beef mince</p>\r\n<p>20g tomato paste</p>\r\n<p>1 packet beef stockpot</p>\r\n<p>1 bag of green beans</p>\r\n<p>100g shredded Cheddar cheese</p>\r\n<p>5g olive oil</p>\r\n<p>40 g butter</p>\r\n<p>2 tbs milk</p>\r\n<p>¼ tsp salt</p>\r\n<p>¼ cup water</p>', '<p>1. Bring a medium saucepan of lightly salted water to a boil. Peel the potato and cut it into large chunks. Finely chop the brown onion and garlic. Grate the celery and carrot. Trim the green beans then slice in half.</p>\r\n\r\n<p>2. Cook the potato in the boiling water until easily pierced with a knife, 12-15 minutes. Drain and return to the pan. Add the butter, milk, and salt. Mash until smooth. Stir through the shredded Cheddar cheese until well combined. Cover to keep warm.</p>\r\n\r\n<p>3. While the potato is cooking, heat a drizzle of olive oil in a large frying pan over high heat. Cook the onion, celery, carrot, green beans, and a generous pinch of salt, stirring, until softened, 4-5 minutes. Transfer the veggies to a bowl. Return the pan to high heat with another drizzle of olive oil. When the oil is hot, cook the beef mince and garlic, breaking up the mince with a spoon, until just browned, 2-3 minutes.</p>\r\n<p>4. Add the tomato paste, the water, and the beef stockpot. Stir to combine, then return the veggies to the pan.</p>\r\n\r\n<p>5. Preheat the grill to medium-high. Transfer the filling to a baking dish. Spread the Cheddar mash on top. Grill until lightly golden, 5-7 minutes.</p>\r\n\r\n<p>6. Slice the beef & veggie cottage pie. Divide between plates to serve.</p>\r\n', 4.5),
(7, 'Mega Mozzarella-\r\nStuffed Burgers', '30 mins ', '1 hr and 40 mins ', '2 hrs and 10 mins ', '762 cal', 2, 'Channel your cowboy vibe with these flame-grilled buffalo burgers topped with incredible onion chutney and creamy basil mayo. So good! ', '<p>1 red onion</p>\r\n<p>400g buffalo or beef mince</p>\r\n<p>80g buffalo mozzarella</p>\r\n<p>2 tablespoons balsamic vinegar</p>\r\n<p>2 slices of mortadella</p>\r\n<p>2 brioche buns</p>\r\n<p>1 large ripe tomato</p>\r\n<p>2 handfuls of rocket</p>\r\n<p>1 large free-range egg</p>\r\n<p>125 ml olive oil </p>\r\n<p>125 ml vegetable oil</p>\r\n<p>1 lemon</p>\r\n<p>1 bunch of fresh basil(30g)</p>', '<p>1. Preheat the oven to 180°C/350°F/gas 4 or get your barbecue nice and hot!</p>\r\n\r\n<p>2. Wrap the red onion in kitchen foil and cook in the oven, or directly in the coals, for 2 hours until soft.</p>\r\n\r\n<p>3. When your onions have 30 minutes of cooking time left, make your mayo: separate and whisk the egg yolk until fluffy, then gradually whisk in both the oils – a tiny bit at a time – until thick and emulsified (loosen with a little squeeze of lemon if it gets too thick).</p>\r\n\r\n<p>4. Season to perfection with a pinch of sea salt and a little more lemon juice. Pick the basil leaves into a pestle and mortar, bash until they make a paste, and stir through the mayo.</p>\r\n\r\n<p>5. Season the mince to perfection and mix together well. Divide into 4 even-sized pieces and shape into flat patties. Cut the mozzarella in half and place it on top of 2 of the patties. Place the remaining 2 patties on top and seal the edges firmly with your fingertips, so the mozzarella is encased inside, then gently shape into a neat burger.</p>\r\n\r\n<p>6. When the onions are cool enough to handle, peel off the skin and mash with a fork, discarding the root. Drizzle over the balsamic vinegar, season to perfection, and mix well.</p>\r\n\r\n<p>7. Get your BBQ or grill nice and hot. Add the burgers and cook for 8 to 10 minutes, turning regularly.</p>\r\n\r\n<p>8. Crisp up the mortadella on the grill bars, and shape it into a circle with your tongs. Slice the buns and toast on the BBQ. Thickly slice the tomato.</p>\r\n\r\n<p>9. Spoon 1 tablespoon of the basil mayo over the bottom of the bun, add a slice of tomato, then a slice of mortadella, and then some rocket. Top with the burger and a dollop of sticky balsamic onions. Pop the lid on and tuck in!</p>', 4.8),
(8, 'Crispy Garlicky \r\nChicken ', '10 mins ', '10 mins ', '10 mins ', '366 cal ', 2, 'Super-simple to put together, this is a great, fast method for really good, crispy crumbed chicken, and I’ve added garlic for extra flavor. Pounding the chicken, both before adding the crumbs and to help them to stick, tenderizes the meat and makes it even quicker to cook. ', '<p>2 x 120g free-range skinless chicken breasts</p>\r\n<p>2 thick slices of seeded wholemeal bread(75g each)</p>\r\n<p>1 clove of garlic </p>\r\n<p>1 lemon</p>\r\n<p>50g rocket</p>', '<P>1. Place the chicken breasts between two large sheets of greaseproof paper, and whack with the base of a large non-stick frying pan to flatten them to about 1cm thick.</P>\r\n\r\n<P>2. Tear the bread into a food processor, then peel, chop and add the garlic, and blitz into fairly fine crumbs.</P>\r\n<P>3. Pour the crumbs over the chicken, roughly pat onto each side, then re-cover with the paper and whack again, to hammer the crumbs into the chicken and flatten them further.</P>\r\n\r\n<P>4. Put the pan on medium heat. Fry the crumbed chicken in 1 tablespoon of olive oil for 3 minutes on each side, or until crisp, golden, and cooked through.</P>\r\n\r\n<P>5. Slice, plate up, season to perfection with sea salt and black pepper, sprinkle with lemon-dressed rocket, and serve with lemon wedges, for squeezing over.</P>', 4.8),
(9, 'Quick Steak Stir-Fry ', '10 mins ', '16 mins ', '26 mins ', '325 cal ', 2, 'Quick and easy beef stir-fry. I make this on my busiest weeknights.', '<p>4 cloves of garlic</p>\r\n<p>4 cm piece of ginger</p>\r\n<P>350g asparagus</P>\r\n<P>2 x 125g fillet steaks</P>\r\n<P>2 tablespoons black bean sauce</P>', '<P>1. Peel and very finely slice the garlic and ginger. Put into a large cold non-stick frying pan with 1 tablespoon of olive oil, and place on medium heat, stirring regularly.</p>\r\n\r\n<p>2. Once crisp and lightly golden, scoop out of the pan and put aside, leaving the garlicky oil behind.</p>\r\n\r\n<p>3. Line up the asparagus spears and trim off the woody ends, then add the spears to the hot pan.</p>\r\n\r\n<p>4. Season the steaks with sea salt and black pepper, add alongside the asparagus and turn the heat up to high. Cook for just 3 minutes, turning everything in regularly.</p>\r\n\r\n<p>5. Toss in the black bean sauce and 1 tablespoon of red wine vinegar for 1 minute – this will give you medium-rare steaks. Alternatively, cook to your liking.</p>\r\n\r\n<p>6. Slice the steaks, dish up, then scatter over the crispy garlic and ginger.</p>', 4.6),
(10, 'Easy Chicken Okonomiyaki', '25 mins', '30 mins', '55 mins', '314 cal', 4, 'Stuffed with garlicky sesame chicken, these healthy savory pancakes are easy, low-cal, and absolutely delicious.', '<p>4 eggs</p>\r\n<p>1 red capsicum</p>\r\n<p>250g chicken breast </p>\r\n<P>125g green beans</P>\r\n<p>2 garlic cloves</p>\r\n<p>75g  wholemeal plain</p>\r\n<p>100g mixed salad leaves</p>\r\n<p>200g  coleslaw</p>\r\n<p>1 tsp sesame oil</p>\r\n<p>2 tbsp chilled water</p>\r\n', '<p>1. Cut 1 chili in half. Finely slice the remaining half of the chili.</p>\r\n\r\n<p>2. Heat oil over high heat in a large pot. Add chicken, beans, garlic, and peppers and cook and stir, for 3 minutes or until softened.</p>\r\n\r\n<p>3. Combine the flour, egg, and water in a large bowl. Mix until smooth and well combined. Season.</p>\r\n\r\n<p>4. Add coleslaw and chicken mixture to flour mixture. Stir to combine. Wipe the pan clean. Spray with oil. Heat over medium-high heat. Add 1⁄2 cup of the mixture to the pan in batches. Use the back of a spoon to form a 1 cm thick disk. Cook 3 minutes per side or until golden brown. Repeat to make 8 pancakes.</p>\r\n\r\n<p>5. Drizzle the oyster sauce over the pancakes. Serve with sliced capsicum and salad leaves on the side.</p>', 4.9),
(11, 'Bacon Rarebit Burger', '10 mins ', '12 mins ', '22 mins ', '517 cal ', 2, 'It’s topped with seriously cheesy Welsh rarebit, a spicy mustard sauce and rashers of streaky bacon.', '<p>3 chestnut mushrooms</p>\r\n<p>125g higher-welfare beef mince</p>\r\n<P>2 rashers of higher-welfare smoked streaky bacon</P>\r\n<P>1 soft bun</P>\r\n<p>2 heaped teaspoons of soured cream</p>\r\n<p>1 gherkin</p>\r\n<p>25g Cheddar cheese</p>\r\n<P>1 tablespoon Worcestershire sauce</P>', '<P>1. Trim the stalk and base off each mushroom, giving you a beautiful cross-section (saving the offcuts for another day). Place the mushrooms cut side down on one side of a large dry non-stick frying pan on high heat. Cook for 5 minutes while you scrunch and work the mince with your hands. Divide into two equal balls, flatten each to just under ½cm thick, then pat and push a rasher of bacon onto each one.</p>\r\n\r\n<P>2. Turn the mushrooms, put the burgers into the pan, bacon side down, sprinkle with a pinch of sea salt and black pepper, and fry hard and fast for 2 minutes, pressing down with a fish slice to crisp up the bacon, then flip to fry for just 1 minute on the other side. Move the mushrooms on top of the burgers, then halve the bun and quickly toast alongside. Remove the bun to a serving board, spread with the soured cream, stack in your burgers and mushrooms, then slice and add the gherkin.</p>\r\n\r\n<P>3. Off the heat, coarsely grate the cheese in a pile at the cleanest side of the pan, pour the Worcestershire sauce on top, then tilt the pan and stir vigorously for 30 seconds until it combines into an oozy consistency. Pour the rarebit mixture over the burger stack and put the bun lid on. Devour.</p>', 4.4),
(12, 'Bubble & Squeak \r\nHamburgs', '10 mins ', '30 mins ', '40 mins ', '376 cal ', 2, 'I’ve always liked making this since I was a kid. We’d have the pan going for well over an hour, slowly turning those precious leftovers into an incredible pile of gnarly, starchy, veggie gorgeousness. Good bubble & squeak is hard to beat. ', '<p>olive oil</p>\r\n<p>25g unsalted butter </p>\r\n<p>4 sprigs of fresh woody herbs(rosemary, sage, thyme)</p>\r\n<p>600g leftover roast potatoes</p>\r\n<p>600g leftover cooked veg(carrots, swede, turnips, parsnips, Brussels sprouts, kale, leftover vac-packed chestnuts)</p>\r\n', '<p>1. Put a 28cm non-stick frying pan on medium heat with 1 tablespoon of oil and the butter (or, even better, any leftover dripping you have in the fridge).</p>\r\n\r\n<p>2. Pick in the fresh herb leaves and let them crisp up for a minute, then add the potatoes, veg, and any leftover chestnuts you’ve got. There’s no need to chop anything first, as now we’re going to mash it all up with a potato masher into a nice, flat, even layer.</p>\r\n\r\n<p>3. Season well with sea salt and black pepper, and cook for 3 to 4 minutes, or until a lovely golden crust starts forming on the bottom.</p>\r\n\r\n<p>4. Now we get into the rhythm of the secret to good bubble & squeak. Use a fish slice to fold those lovely crispy bits back into the mash, then pat and flatten everything down again. Let it crisp up again, then repeat the process, and – importantly – keep repeating it over a period of about 20 minutes, until it’s golden, super-crispy, and delicious. About halfway through, nick a bit, taste it and correct the seasoning if you need to. When it’s looking good, you can serve it right away, or you can leave it on the lowest heat for a while – the flavor will only improve.</p>\r\n\r\n<p>5. You can serve this any which way you like – let’s be honest, it’s going to be amazing whatever you have it with. I like mine with fried eggs, a little lemon-dressed watercress, and a few bombs of Piccalilli. Slices of leftover cooked ham are always going to go down as a treat, too.</p>', 4.5),
(13, 'Brilliant Veggie Burger', '20 mins ', '1 hr and 20 mins ', '1 hr and 40 mins ', '797 cal ', 2, 'I love this recipe – whether you’re a hardcore vegan or just enjoying a meat-free meal, I know this will hit the spot. The patties are super-simple to make, and I’ve teamed them with spiced mayo and onion rings for an absolute treat of a burger. Of course, feel free to vary the toppings based on your own favorites. Enjoy! ”\r\n', '\r\n<p>200g frozen sweetcorn</p>\r\n<p>400g mixed frozen peas and broad beans</p>\r\n<p>½ a bunch of fresh coriander(15)</p>\r\n<p>75g plain flour, plus extra for dusting</p>\r\n<p>1 pinch of ground cumin</p>\r\n<p>1 teaspoon cayenne pepper </p>\r\n<p>1 tablespoon sesame seeds </p>\r\n<p>1 tablespoon sunflower seeds</p>\r\n<p>olive oil</p>\r\n<p>½ iceberg lettuce</p>\r\n<p>2 ripe tomatoes</p>\r\n<p>2 sprigs of fresh basil </p>\r\n<p>2 gherkins</p>\r\n<p>1 ripe avocado</p>\r\n<p>1 lime</p>\r\n<p>4 large-quality burger buns</p>\r\n<p>1 punnet of cress</p>\r\n<p>tomato ketchup</p>\r\n\r\n\r\n<p>2 spring onions</p>\r\n<p>½ a fresh red chili </p>\r\n<p>½ a clove of garlic</p>\r\n<p>2 heaped tablespoons jarred chickpeas</p>\r\n<p>1 teaspoon English mustard</p>\r\n<p>1½ tablespoons sun-dried tomato paste</p>\r\n<p>1 splash of brandy </p>\r\n<p>1 lemon</p>\r\n<p>extra virgin olive oil</p>\r\n\r\n<p>1 large onion</p>\r\n<p>2 tablespoons red wine vinegar</p>\r\n<p>120 g self-raising flour</p>\r\n <p>½ teaspoon baking powder</p>\r\n <p>200ml golden ale or IPA(cold)</p>\r\n <p>600ml sunflower oil or sunseed oil, for frying</p>', '<p>1. Place the frozen veg in a food processor and let them defrost for around 15 minutes.</P>\r\n\r\n<p>2. Add the coriander (stalks and all), flour, cumin, and cayenne, season well with sea salt and black pepper, then blitz to a rough paste. Pulse in the sesame and sunflower seeds until combined.</P>\r\n\r\n<p>3. Divide the mixture and shape it into 4 equal-sized patties, roughly 2cm thick. Place on a lightly flour-dusted tray, turning them in the flour to coat. Firm up in the freezer for 10 minutes, then transfer to the fridge.</P>\r\n\r\n<p>4. Preheat the oven to 160ºC/325ºF/gas 3, while you make the vegan mayo and onion rings.</P>\r\n\r\n<p>5. For the mayo, trim and roughly chop the spring onions and chilli (deseeded if you like) and place in a blender. Peel and add the garlic, along with the chickpeas, mustard, tomato paste, brandy, lemon juice and a good pinch of salt and pepper. Blitz well to combine, then, with the blender still running, slowly pour in 4 to 5 tablespoons of extra virgin olive oil until smooth and the same consistency as mayonnaise.</P>\r\n\r\n<p>6. For the onion rings, peel the onion and slice horizontally into 2cm-wide rounds. Separate into rings, then place in a bowl with the vinegar and a pinch of salt. Leave for 5 minutes.</P>\r\n<p>7. Meanwhile, combine the flour and baking powder in a bowl, then gently whisk in the ale until smooth, thick, and coating the back of a spoon nicely.</P>\r\n\r\n<p>8. Place a medium, deep pan over high heat, pour in the sunflower or sunseed oil, and allow to heat up. To test if the oil is hot enough, drop a piece of bread into the pan – if it floats to the surface, sizzles, and turns golden, it’s about right.</P>\r\n\r\n<P>9. Drain the onions, dust a handful of them with flour until lightly coated, then dip them into the batter. Remove with a slotted spoon and allow any excess batter to drip off, then carefully lower into the hot oil.</P>\r\n\r\n<p>10. Cook for around 1 minute, or until golden and crisp, turning halfway with the slotted spoon. Transfer to a double layer of kitchen paper to drain, then repeat with the remaining onion.</P>\r\n\r\n<p>11. When you’re ready, cook the burgers in 1 tablespoon of oil in a large frying pan on medium heat for 10 to 12 minutes, or until golden and cooked through, turning halfway and pressing down with a fish slice to get them nice and crispy.</P>\r\n\r\n<p>12. Transfer to a baking tray, then pop into the oven while you prepare the remaining ingredients.</P>\r\n\r\n<p>13. Finely shred the lettuce and mix with half the vegan mayo (keep the rest in the fridge for up to 2 days). Slice the tomatoes and place them on a plate lined with kitchen paper.</P>\r\n\r\n<p>14. Sprinkle over a little salt and pick over the basil leaves. Top with another piece of kitchen paper and pat lightly to remove any excess water.</P>\r\n\r\n<p>15. Slice the gherkins lengthways, then halve and destone the avocado. Scoop out the flesh, cut into slices, then squeeze over the lime juice.</P>\r\n\r\n<p>16. Halve the burger buns and toast on a hot griddle pan or under the grill.</P>\r\n\r\n<p>17. Once ready, pile the dressed lettuce and sliced tomatoes, and basil onto the burger bun bases. Pop the burgers on top, snip over the cress, then layer over the avocado, gherkins, and crispy onion rings.</P>\r\n<P>18. Add a good squeeze of ketchup to the burger bun lids, place them on top, squeezing down gently, then tuck in.</P>', 4.8),
(14, 'Haloumi & Tomato \r\nRelish Burger', '35 mins ', '30 mins ', '65 mins ', '803 cal ', 2, 'Prepare to fall in love with halloumi all over again when you taste this irresistible burger. With rich tomato relish and sweet caramelized onion also in the mix, plus oven-baked sweet potato wedges, this dinner is all-around delish!', '<p>2 sweet potatoes </P>\r\n<p>1 tomato</P>\r\n<p>1 packet haloumi </P>\r\n<p>1 brown onion</P>\r\n<p>2 bake-at-home burger buns</P>\r\n<p>1 packet tomato relish</P>\r\n<P>1 bag mixed salad leaves </P>\r\n<P>1 olive oil</P>\r\n<P>1 tbs water</P>\r\n<P>1 tbs balsamic vinegar</P>\r\n<p>½ tbs brown sugar</P>', '<P>1. Preheat the oven to 240°C/220°C fan-forced. Cut the sweet potato into wedges. Place on a lined oven tray. Drizzle with olive oil, season with salt, and toss to coat. Roast until tender, 25-30 minutes.</P>\r\n\r\n<P>2. While the wedges are baking, slice the haloumi horizontally to get one piece per person. Thinly slice the tomato. Thinly slice the brown onion.</P>\r\n\r\n<p>3. In a large frying pan, heat a drizzle of olive oil over medium-high heat. Cook the onion, stirring, until softened, 5-6 minutes. Add the balsamic vinegar, the water, and brown sugar and mix well. Cook until dark and sticky, 3-5 minutes. Transfer to a bowl.</P>\r\n\r\n<P>4. While the onion is caramelizing, place the bake-at-home burger buns on a wire rack in the oven. Bake until heated through, 3 minutes.</P>\r\n\r\n<P>5. Wipe out the frying pan, then return to medium-high heat with a drizzle of olive oil. Cook the haloumi until golden brown, 1-2 minutes on each side.</P>\r\n\r\n<P>6. Slice the burger buns in half. Spread the tomato relish over the bases. Top with a handful of mixed salad leaves, the tomato slices, haloumi, caramelized onion, and any remaining salad leaves. Serve with sweet potato wedges.</P>', 4.7),
(15, 'Ultimate British burger', '1 hr ', '4 hrs 30 mins ', '5 hrs 30mins ', '686 cal', 4, 'What can I say? This burger is unique, outrageously delicious, and an indulgence every human deserves to have once in their lifetime – the perfect cheese-topped burger, tender Worcestershire oxtail, and a dipping bowl of the most incredible gravy. Cook two burgers at a time so you can really take care of the timings, and make this one of the best gastronomic experiences ever. ”', '<p>600 g minced chuck steak(16% fat)</p>\r\n<p>English mustard</p>\r\n<p>4 brioche burger buns</p>\r\n<p>40g Red Leicester cheese</p>\r\n<p>1kg oxtail</p>\r\n<p>trimmed, cut into rounds (ask your butcher)</p>\r\n<p>2 red onions, olive oil </p>\r\n<p>40g plain flour </p>\r\n<p>Worcestershire sauce</p>\r\n<p>1.5 liters of quality organic chicken stock</p>\r\n<p>½ a bunch of fresh flat-leaf parsley(15g) </p>\r\n\r\n\r\n<p>2 gherkins</p>\r\n<p>1 ripe tomato</p>\r\n<p>1 little gem lettuce</p>\r\n<p>100g natural yogurt</p>', '<p>1. Preheat the oven to 180°C/350°F/gas 4.</P>\r\n\r\n<p>2. Season the oxtail with sea salt and a generous pinch of black pepper, then brown all over in a casserole pan on medium heat for 10 minutes, turning occasionally while you peel and slice the onions.</P>\r\n<p>3. Remove the oxtail to a plate, add 1 tablespoon of oil and the onions to the pan, and cook for 5 minutes, stirring regularly.</P>\r\n\r\n<p>4. Return the oxtail to the pan, stir in the flour to coat, then add 4 tablespoons of Worcestershire sauce and the stock. Bring to the boil, then cover and place in the oven for 3 hours to 3 hours 30 minutes, or until the meat is super tender.</P>\r\n\r\n<p>5. Strain the gravy into a separate pan and put it aside, then tip the meat and onions back into the pan.</P>\r\n\r\n<p>6. Once cool enough to handle, carefully pick through the meat, discarding the bones and any wobbly bits, then gently mix back with the onions and a splash each of gravy and Worcestershire sauce, being careful not to break up the meat too much. Pick, roughly chop and stir through the parsley leaves (reserving the stalks).</P>\r\n\r\n<p>7. For the burger sauce, finely chop the gherkins, tomato, little gem, and reserved parsley stalks, then transfer to a bowl, stir in the yogurt, and season to perfection.</P>\r\n\r\n<p>8. Shape the minced meat into four equal-sized patties, being quite rough so they’re not too compact, then season the outsides with salt and pepper.</P>\r\n\r\n<p>9. I like to cook two burgers at a time to achieve perfection, so get two pans on the go – a large non-stick pan on high heat for the burgers and another on medium heat for the buns.</P>\r\n\r\n<p>10. Place two patties in the large pan, pressing them down slightly with a fish slice, then cook for 8 minutes in total, turning every minute and brushing with a little English mustard after the first turn. Put the gravy and oxtail pans on low heat to warm through.</P>\r\n\r\n<p>11. When the burgers are almost cooked, halve and toast two burger buns in the second frying pan. Finely slice the cheese and place it on top of each burger, add a splash of water to the pan, then cover with a lid or a metal bowl and cook for a further 30 seconds, or until the cheese has melted.</P>\r\n\r\n<p>12. To assemble the burgers, spoon a quarter of the burger sauce onto each toasted bun base, sit a burger on top, spoon over 1 tablespoon of the pulled oxtail (save the rest for another day) and place the bun lid on top. Serve the gravy in a bowl on the side for dunking. Repeat with the remaining two burgers.</P>', 4.7),
(16, 'Satay Burgers', '', '', '', '678 cal', 2, 'I would recommend starting a day in advance before you want actually cook the burgers so that you can marinate the chicken or soak the lentils, as well as make the cucumber pickles and the simple chili sauce. The pickles need to be prepared at least one day ahead for the onions to turn pink and will last for a week in the fridge once drained. You can choose to make either the chicken or lentil satay patties.', '<p>2 cucumbers</p>\r\n<p>400g (14oz) red onions</p>\r\n\r\n\r\n<p>350 ml (1½ cups) of water</p>\r\n<p>1-star anise</p>\r\n<p>2.5 cm (1in) ginger</p>\r\n<p>sliced lengthways into 3 or 4 pieces</p>\r\n<p>125 g (4½oz) white sugar</p>\r\n<p>75 ml (⅓ cup) white rice vinegar</p>\r\n<p>1½ teaspoon salt</p>\r\n\r\n<p>60 g (2¼oz) dried chili (red pepper) flakes</p>\r\n<p>2 tablespoons dark brown sugar</p>\r\n<p>½ a teaspoon of salt</p>\r\n<p>420ml (1¾ cups) water</p>\r\n\r\n\r\n<p>1 lemongrass stalk </p>\r\n<p>roughly chopped</p>\r\n<p>600g (1lb 5oz) onion (roughly chopped)</p>\r\n\r\n<p>5 garlic cloves</p>\r\n<p>1 teaspoon ground coriander </p>\r\n<p>1 teaspoon chili powder</p>\r\n<p>1 teaspoon ground turmeric</p>\r\n<p>½ a teaspoon of fennel seeds</p>\r\n<p>½ a teaspoon of ground cumin</p>\r\n<p>1 tablespoon salt, 100 g (3½oz) dark brown sugar</p>\r\n\r\n\r\n\r\n<p>180g (6¼oz) lightly salted peanuts</p>\r\n<p>dry-toasted</p>\r\n<p>75g (2½oz) Satay Spice Paste</p>\r\n<p>200 ml (scant 1 cup) coconut milk</p>\r\n<p>60g (2¼oz) dark brown sugar</p>\r\n<p>2½ tablespoons tamarind paste </p>\r\n<p>¼ teaspoon chili powder</p>\r\n<p>150ml (scant ⅔ cup) water </p>\r\n<p>½ a teaspoon salt, (or less), to taste</p>\r\n\r\n\r\n\r\n<p>500g (1lb 2oz) boneless skinless chicken thigh</p>\r\n\r\n<p>75g (2½oz) Satay Spice Paste(see method)</p>\r\n<p>1 free-range egg(beaten)</p>\r\n\r\n<p>250g (9oz) moong daal lentils </p>\r\n<p>soaked overnight and drained</p>\r\n<p>⅛ teaspoon salt</p>\r\n<p>⅛ teaspoon cornflour (cornstarch)</p>\r\n<p>75g (2½oz) Satay Spice Paste(see method)</p>\r\n<p>oil, for frying</p>\r\n<p>4 good-quality burger buns</p>\r\n<p>Peanut Sauce(see method)</p>\r\n', '<p>CUCUMBER PICKLES</p>\r\n\r\n<p>Bring the pickling liquid ingredients to a boil, then turn off the heat. Remove the ginger and star anise from the liquid.</p>\r\n\r\n<p>Cut the cucumbers in half straight through the middle, and then halve again lengthways. Use a spoon to deseed them and finely slice so that you end up with crescent moon shapes, ideally no thicker than 5mm (¼in).</p>\r\n\r\n<p>Cut the red onion into eighths, then slice them so that you also end up with crescent moon shapes, ideally no thicker than 5mm (¼in) in width.</p>\r\n\r\n<p>Mix the cucumber and red onion thoroughly in a large bowl before decanting them into a storage container.</p>\r\n\r\n<p>Pour pickling liquid over the prepared vegetables and leave at least overnight before draining thoroughly.</p>\r\n\r\n<p>SIMPLE CHILLI SAUCE</p>\r\n\r\n<p>Add all the ingredients to a medium saucepan and bring to a boil. Switch off the heat and leave for 1 hour.</p>\r\n\r\n<p>Bring to the boil again and simmer over medium heat for 15 minutes. Turn off the heat and use a hand blender to blend into a sauce.</p>\r\n\r\n<p>SATAY SPICE PASTE</p>\r\n\r\n<p>Blend all the ingredients into a fine purée consistency. If using a smaller food processor or handheld stick blender, you will have to work in batches, combining the batches once they’re ready. Always mix lemongrass with some onion to provide easier fodder for the blender’s blades (blitzing lemongrass by itself can be very hard work and you will be left with undesirable hard, fibrous strands).</p>\r\n\r\n<p>PEANUT SAUCE</p>\r\n\r\n<p>Grind the peanuts using the pulse function of a food processor until you get a rough, sandy texture. Add the ground peanuts, along with the rest of the sauce ingredients, to a medium-sized saucepan. Set over medium heat and bring to a boil, stirring frequently to prevent the sauce at the bottom of the pan from burning. Reduce the heat to low and simmer for 5 minutes until the sauce thickens.</p>\r\n\r\n<p>CHICKEN SATAY PATTIES</p>\r\n\r\n<p>Using a gloved hand, mix the chicken mince thoroughly with the satay spice paste and egg in a large container. Leave to marinate in the fridge for at least 4 hours or overnight.</p>\r\n\r\n<p>Place a large frying pan over medium-high heat, adding just enough oil to coat the bottom of the pan. Using a large ice-cream scoop, scoop out two balls of the chicken mix into the pan and flatten them into patties using a flat spatula. Pan-fry the patties on both sides for around 8 minutes in total, flipping every couple of minutes.</p>\r\n\r\n<p>LENTIL SATAY PATTIES</p>\r\n\r\n<p>These became my vegan version of my chicken satay patties at the stall. They are best eaten within 10 minutes of being cooked as they harden as cool.</p>\r\n\r\n<p>Blitz the drained lentils, salt, cornflour, and satay spice paste in a food processor until it’s a fine paste. (This mixture will store well refrigerated in an airtight container for up to a week.</p>\r\n<p>Place a large frying pan over medium heat, with enough oil to coat the bottom of the pan. Using a large ice-cream scoop, scoop out two balls of the lentil mix into the pan and flatten them into patties using a flat spatula. You may be able to fit more into your pan depending on how large it is. Pan-fry the patties on both sides for around 5 minutes in total, flipping every minute.</p>\r\n\r\n<p>ASSEMBLING THE BURGER</p>\r\n\r\n<p>Cut the buns in half and toast cut-side down. Then add the toppings to the bun base in this order: Peanut sauce (enough to cover the base of the bun), cooked chicken or lentil satay patty, 2 tablespoons cucumber pickles, 1 tablespoon simple chili sauce (or more, to taste), top of the bun.</p>\r\n', 4.5),
(17, 'Crazy Good Pork \r\nBurger', '15 mins ', '16 mins ', '31 mins ', '669 cal ', 1, 'Quick & Easy Food, makes a delicious pear and blue cheese-topped patty in 16 minutes.', '<p>1 ripe sweet pear</p>\r\n<p>50g mixed spinach</p>\r\n<p>rocket & watercress</p>\r\n<p>150g higher-welfare minced pork</p>\r\n<p>1 soft burger bun</p>\r\n<p>30g blue cheese</p>', '<p>1. Slice the pear lengthways as finely as you can. Toss gently with the salad leaves, a little drizzle each of extra virgin olive oil and red wine vinegar, and a pinch of black pepper.</p>\r\n\r\n<p>2. Scrunch the minced pork in your clean hands with a pinch of seasoning, then shape into a 1cm-thick patty. Rub with 1 teaspoon of olive oil, then place in a large non-stick frying pan on high heat for 2 minutes, while you halve and toast the bun alongside, removing it when golden.</p>\r\n\r\n<p>3. Flip the burger, then, after 2 minutes, crumble the blue cheese next to it to melt. Move the burger on top of the oozy cheese, jiggle around to coat, then put it on your bun base.</p>\r\n\r\n<p>4. Stack in as much pear and salad as the bun will hold, pop the lid on, squash and devour, with any extra salad on the side.</p>', 4.5),
(18, 'Wild Boar Burgers', '20 mins ', '1 hr ', '1 hr 20 mins ', '412 cal ', 4, 'These might be the best boar burgers ever! Ask your butcher to mince a nice piece of wild boar shoulder or belly for you – make sure it has a good marbling of fat for the best-tasting burgers. ', '<p>500g minced wild boar shoulder or belly</P>\r\n<p>1 tablespoon brown sauce</P>\r\n<p>Worcestershire sauce</P>\r\n<p>1 tablespoon tomato sauce</P>\r\n<p>2 shallots</P>\r\n<p>4 burger buns</P>\r\n<p>olive oil</P>\r\n<p>2 Braeburn or Cox\'s apples</P>\r\n<p>50g blue cheese(Colston Bassett Stilton) </P>\r\n<p>30g watercress</P>', '<p>1. Work the mince in a bowl with your hands to break down the fat – this will act as a natural binder and help the mince stick together.</P>\r\n\r\n<p>2. Divide the meat into 4, roll each piece into a ball, then flatten to roughly 1cm thick, so they’re slightly larger than the buns (they’ll get thicker as they cook). Pop in the fridge to chill for 30 minutes.</P>\r\n\r\n<p>3. When you’re ready to cook, preheat the oven to 120°C/250°F/gas ½.</P>\r\n\r\n<p>4. In a small bowl, mix the brown, Worcestershire, and tomato sauces together – adding as much or as little of each as you like. Peel, finely chop, and stir in the shallots, then set aside.</P>\r\n\r\n<p>5. Halve the buns, then pop them on a baking tray and warm in the oven for 8 to 10 minutes.</P>\r\n\r\n<p>6. Meanwhile, heat a drizzle of oil in a large non-stick pan over medium-high heat and fry the burgers for about 4 minutes on each side, or until cooked through, seasoning well as you go.</P>\r\n\r\n<p>7. To build your burgers, spread the shallot sauce on the warm bun bases. Slice and add the crisp apple, followed by the burger and a nice piece of blue cheese. Finish with a pinch of watercress, then pop on the lids and serve immediately.</P>', 4.8),
(19, 'Smoky Chorizo Salmon', '5 mins ', '11 mins ', '16 mins ', '363 cal ', 2, 'Ready in just 16 minutes,  Quick & Easy Food, combines winning flavours.', '<p>2 x 150 g salmon fillets(skin on, scaled, pin-boned)</P>\r\n<p>300g ripe mixed-color cherry tomatoes</P>\r\n<p>4 sprigs of fresh basil</P>\r\n<p>8 black olives, (stone in)</P>\r\n<p>30g higher-welfare chorizo</P>', '<p>1. Put the salmon flesh side down in a large cold non-stick frying pan and place on medium-high heat.</P>\r\n\r\n<p>2. As the pan comes up to temperature and the salmon begins to sizzle (about 3 minutes), flip it over and cook on the skin side for 5 minutes, or until very crisp and just cooked (depending on its thickness).</P>\r\n\r\n<p>3. Meanwhile, halve the cherry tomatoes, tear up most of the basil leaves, then toss it all with 1 tablespoon of red wine vinegar and a pinch of sea salt and black pepper.</P>\r\n\r\n<p>4. Squash the olives and discard the stones, then finely chop the flesh. Mix with 1 teaspoon of extra virgin olive oil and a splash of water.</P>\r\n\r\n<p>5. Finely slice the chorizo, add to the pan for the last 2 minutes, then toss in the dressed tomatoes for 30 seconds.</P>\r\n\r\n<p>6. Divide between your plates, with the salmon on top. Spoon over the dressed olives and pick over the remaining basil.</P>', 4.8),
(20, 'Pork & Mustard-Thyme Sauce', '30 mins ', '50 mins ', '1 hr 20 mins ', '630 cal ', 2, 'Jazz up juicy pork steaks by teaming them with this simple sauce. It boasts the perfect amount of sweetness and acidity, and goes perfectly with the sharp Parmesan in the mash.', '<p>2 potatoes</p>\r\n<p>1 leek</p>\r\n<p>½ packet wholegrain mustard</p>\r\n<p>1 packet grated Parmesan cheese</p>\r\n<p>1 carrot</p>\r\n<p>1 bag thyme</p>\r\n<p>300g pork loin steaks</p>\r\n<p>1 olive oil </p>\r\n<p>¼ cup water</p>\r\n<p>2 tsp honey</p>\r\n<p>30g butter</p>\r\n<p>2 tbs milk</p>\r\n', '<p>1. Bring a medium saucepan of salted water to a boil. Peel the potato and cut it into large chunks. Cook in the boiling water until easily pierced with a fork, 12-15 minutes. Drain the potato, then return it to the pan. Cover to keep warm.</P>\r\n\r\n<p>2. While the potato is cooking, pick and roughly chop the thyme leaves. Slice the carrot into thin sticks. Thinly slice the leek. In a small bowl, combine the wholegrain mustard (see ingredients), the water, honey, and chopped thyme, then set aside. In a large frying pan, heat a drizzle of olive oil over medium-high heat. Cook the carrot and leek, stirring, until softened, 4-5 minutes. Season, then transfer to a bowl.</P>\r\n\r\n<p>3. Return the frying pan to medium-high heat with a drizzle of olive oil. Season the pork loin steaks on both sides. When the oil is hot, cook the pork until cooked through, 3-4 minutes on each side (depending on thickness). Transfer to a plate and cover with foil to rest for 5 minutes.</P>\r\n\r\n<p>4. Add the milk and some of the butter (20g for 2 people / 40g for 4 people) to the potato. Mash until smooth. Stir through the grated Parmesan cheese. Cover with a lid to keep warm.</P>\r\n\r\n<p>5. Return the frying pan to medium-high heat. Melt the remaining butter (10g for 2 people / 20g for 4 people), scraping any pork bits from the bottom of the pan. Add the mustard mixture and any pork resting juices, then stir to combine. Simmer until fragrant, 1 minute. Season to taste.</P>\r\n\r\n<p>6. Slice the pork. Divide the pork, Parmesan mash, and veggies between plates. Spoon the mustard-thyme sauce over the pork to serve.</P>\r\n', 4.8),
(21, 'Bacon,Zucchini & \r\nCheddar Fritters', '30 mins ', '40 mins ', '1 hr 10 mins ', '620 cal ', 2, 'Thanks to seared bacon bits, our All-American spice blend, and some sharp Cheddar (which gets all lovely and gooey in the pan), these fritters are blissful with every bite.', '<p>1 packet diced bacon</P> \r\n<p>1 zucchini</P> \r\n<p>1 carrot</P> \r\n<p>1 bunch spring onion</P> \r\n<p>1 sachet chicken-style stock powder </P> \r\n<p>1 cucumber</P> \r\n<p>1 bag shredded cabbage mix</P> \r\n<p>1 packet mayonnaise</P> \r\n<p>1 packet shredded Cheddar cheese</P> \r\n<p>1 sachet All-American spice blend</P> \r\n<p>1 packet garlic dip, olive oil</P> \r\n<p>1 egg</P> \r\n<p>1 tbs milk</P> \r\n<p>¼ cup plain flour (or gluten-free plain flour)</P> \r\n', '<p>1. In a large frying pan, heat a drizzle of olive oil over medium-high heat. Cook the diced bacon, breaking up with a spoon, until golden, 4-5 minutes.</p>\r\n\r\n<p>2. While the bacon is cooking, grate the zucchini and carrot, squeezing out any excess moisture with a paper towel.</p>\r\n\r\n<p>3. In a medium bowl, combine the bacon, zucchini, carrot, shredded Cheddar cheese, chicken-style stock powder, all-American spice blend, egg, plain flour, milk, and a pinch of pepper.</p>\r\n\r\n<p>4. Return the frying pan to medium-high heat with enough olive oil to coat the base. When the oil is hot, cook heaped tablespoons of the fritter mixture, in batches, until golden and cooked through, 3-4 minutes on each side (don\'t flip too early!). Transfer to a plate lined with a paper towel. You should get 3-4 fritters per person.</p>\r\n\r\n<p>5. While the fritters are cooking, thinly slice the cucumber into half-moons. Thinly slice the spring onion. In a medium bowl, combine the cucumber, shredded cabbage mix, and mayonnaise. Toss to coat, season to taste, and set aside. In a small bowl, combine the garlic dip and 1/2 the spring onion.</p>\r\n\r\n<p>6. Divide the bacon, zucchini and cheddar fritters, cucumber slaw, and garlic dip between plates. Sprinkle with the remaining spring onion to serve.</p>', 4.9);

-- --------------------------------------------------------

--
-- Table structure for table `recipe_category`
--

CREATE TABLE `recipe_category` (
  `recipe_ID` int NOT NULL,
  `category_ID` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `recipe_category`
--

INSERT INTO `recipe_category` (`recipe_ID`, `category_ID`) VALUES
(1, 1),
(3, 1),
(5, 1),
(9, 1),
(16, 1),
(20, 1),
(2, 2),
(8, 2),
(10, 2),
(15, 2),
(18, 2),
(21, 2),
(13, 3),
(4, 4),
(6, 4),
(19, 5),
(7, 6),
(11, 6),
(12, 6),
(14, 6),
(17, 6);

-- --------------------------------------------------------

--
-- Table structure for table `recipe_image`
--

CREATE TABLE `recipe_image` (
  `recipe_ID` int NOT NULL,
  `image_ID` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `recipe_image`
--

INSERT INTO `recipe_image` (`recipe_ID`, `image_ID`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15),
(16, 16),
(17, 17),
(18, 18),
(19, 19),
(20, 20),
(21, 21);

-- --------------------------------------------------------

--
-- Table structure for table `recipe_review`
--

CREATE TABLE `recipe_review` (
  `recipe_ID` int NOT NULL,
  `review_ID` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `recipe_review`
--

INSERT INTO `recipe_review` (`recipe_ID`, `review_ID`) VALUES
(2, 7),
(2, 8),
(3, 9),
(4, 10),
(5, 11),
(5, 12),
(6, 13),
(9, 14),
(13, 19),
(17, 20),
(19, 15),
(19, 16),
(20, 17),
(20, 18),
(21, 4),
(21, 5),
(21, 6),
(10, 1),
(10, 2),
(10, 3),
(10, 30),
(13, 31),
(16, 32),
(15, 33),
(5, 22),
(11, 23);

-- --------------------------------------------------------

--
-- Table structure for table `recipe_user`
--

CREATE TABLE `recipe_user` (
  `recipe_ID` int NOT NULL,
  `user_ID` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `recipe_user`
--

INSERT INTO `recipe_user` (`recipe_ID`, `user_ID`) VALUES
(1, 20),
(2, 15),
(3, 22),
(4, 12),
(5, 23),
(6, 24),
(7, 24),
(8, 9),
(9, 4),
(10, 10),
(11, 20),
(12, 4),
(13, 24),
(14, 15),
(15, 5),
(16, 22),
(17, 15),
(18, 8),
(19, 6),
(20, 3),
(21, 10);

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `review_ID` int NOT NULL,
  `review_description` text NOT NULL,
  `review_rated` float NOT NULL,
  `review_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`review_ID`, `review_description`, `review_rated`, `review_date`) VALUES
(1, 'Easy and delicious.', 4.7, '2022-04-06 00:11:33'),
(2, 'Delicious dinner. Instead of the oyster sauce, I topped it with barbecue sauce, Japanese \r\nmayo, and pickled ginger .. yum!', 4.8, '2022-04-06 00:11:33'),
(3, 'Needed the oyster sauce for taste otherwise very bland', 4.3, '2022-04-06 00:16:35'),
(4, 'My fussy daughter Loves these!', 3.8, '2022-04-06 04:56:17'),
(5, 'Made this without the onion and garlic. I just added a little sweet paprika and garlic powder along with the salt and pepper. The flavor was still really good and I served it as suggested along with eggs and bacon as our easy weekly Thursday bacon eggy dinner.', 4.4, '2022-04-06 04:58:51'),
(6, 'These taste great! I added corn and used feta because I had no tasty cheese. Used red onions instead of green and served it with tomato relish.', 4.9, '2022-04-06 04:59:36'),
(7, 'I made it with ground turkey and it was sooo good!', 4.5, '2022-04-06 05:02:21'),
(8, 'This looks fantastic!! What brand of red curry paste did you use? There can be a real difference from one brand to the next. Thanks', 4.6, '2022-04-06 05:02:21'),
(9, 'There is such a great combination of ingredients everything went so well together, no complaints at all. however instead of using vegetable oil, I used peanut oil... it worked incredibly well, both my family and I agreed that using peanut oil was the right decision. the cashews and lime zest on top of the rice gave it a great end flavor and without it, the dish wouldn\'t work as well.', 4.6, '2022-04-06 05:03:59'),
(10, 'Very yummy and a hit with the whole family.\r\nCooked red onion and garlic first and then the mince.', 4.2, '2022-04-06 05:03:59'),
(11, 'Made half the quantity (but doubled the sauce-thanks for the suggestion) - it was delicious & fed the whole family. I will definitely be making this again - so easy!', 4.6, '2022-04-06 05:09:14'),
(12, 'A good mid-week meal!', 4.5, '2022-04-06 05:09:14'),
(13, 'Really fast to make and tasty. A little pricey buying the ready made mash.', 4.5, '2022-04-06 05:11:59'),
(14, 'Nice. I added some chilli flakes for added kick. Yum!!', 4.1, '2022-04-06 05:11:59'),
(15, 'This is delicious, never fails and is so tasty. Just followed the recipe as is and it has been a winner with anyone its served too.', 4.2, '2022-04-06 05:14:17'),
(16, 'I put the salmon on top of the chorizo and capsicum in the oven making it a one dish dinner. Blanched beans and dropped them on top too for the last minute just to warm through. Tasted great. Really simple.', 4.3, '2022-04-06 05:14:17'),
(17, 'Very tasty and not to difficult', 4.5, '2022-04-06 05:16:58'),
(18, 'Absolutely divine. My whole family loved it, and I found it to be weeknight easy, indeed.', 4.2, '2022-04-06 05:16:58'),
(19, 'This was absolutely delicious and not as heavy as a burger with a bun. A yummy alternative to the everyday.', 4.7, '2022-04-06 05:18:35'),
(20, 'Not bad. Fairly easy but I didn\'t have enough time to reduce the sauce so the pork was wet. Will try again as the flavour was pretty good anyway.', 4.3, '2022-04-06 05:18:35');

-- --------------------------------------------------------

--
-- Table structure for table `review_user`
--

CREATE TABLE `review_user` (
  `review_ID` int NOT NULL,
  `user_ID` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `review_user`
--

INSERT INTO `review_user` (`review_ID`, `user_ID`) VALUES
(1, 22),
(2, 2),
(3, 20),
(4, 11),
(5, 21),
(6, 6),
(7, 17),
(8, 10),
(9, 6),
(10, 22),
(11, 16),
(12, 18),
(13, 19),
(14, 11),
(15, 10),
(16, 5),
(17, 4),
(18, 4),
(19, 4),
(20, 24),
(30, 22),
(22, 42),
(23, 42);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_ID` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `user_follower` int DEFAULT NULL,
  `user_detail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `password` varchar(255) NOT NULL,
  `user_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_ID`, `name`, `email`, `user_follower`, `user_detail`, `password`, `user_image`, `created`, `updated`) VALUES
(1, 'Martin', 'martin@gmail.com', 1682, 'I help create: gluten-free, vegetarian, pescatarian, and breastfeeding meal plans, with thousands of recipes, ranging from breakfast smoothies, light lunches, and hearty dinners, right through to healthy snacks and delectable desserts. There really is something for everyone.', '$2y$10$c3Lrv.pI6Dm3jG7WahMjo.QXcVPIwWnZNudj9JlNaVNRHrPm5NVTK', 'userImage_1.jpeg', '2022-04-04 01:34:47', '2022-04-04 01:34:47'),
(2, 'Lili', 'lili@gmail.com', 250, 'My cooking style is really fairly simple, but tasty food.', '$2y$10$Tf9Cl5jYtEZrcEg5P.Hf7.Sw2hY0KLGc6mgrOf6.qS3Ma49tagQEy', 'userImage_2.jpeg', '2022-04-04 01:34:47', '2022-04-04 01:34:47'),
(3, 'Galla', 'lili@hotmail.com', 5, '', '$2y$10$udM1tysTkGZiqQsZDvAc2.RFnvbP6i1cwdIOMWjXyAKt0/tWAX8nW', 'userImage_3.jpeg', '2022-04-04 01:34:47', '2022-04-04 01:34:47'),
(4, 'David', 'david@gmail.com', 34297, 'I like to break down the barriers to cooking healthy food with simple, affordable, nourishing recipes. ', '$2y$10$a8LNgaySu7J2VSXyMK8LVupqksWL0FuEzNM.y5Fl9s66YdBWyIut6', 'userImage_4.jpeg', '2022-04-04 01:34:47', '2022-04-04 01:34:47'),
(5, 'Fran', 'fran@gmail.com', 86759, 'My philosophy revolves around balanced nutrition and establishing equilibrium for mind, body, and soul. I advocate a minimally processed whole foods diet that contains the essential macronutrients our bodies need to thrive. ', '$2y$10$I25OScOMNNCe3bSV5pPxHuoVZdPiM.faUkRTUshizPMd/gXQcOGke', 'userImage_5.jpeg', '2022-04-04 01:34:47', '2022-04-04 01:34:47'),
(6, 'Jim', 'jim@hotmail.com', 247, 'I’m a big proponent of a higher fat/low carbohydrate protocol and hope to contribute to changing the current food landscape, in the name of optimal health for my followers and sons.', '$2y$10$xA5jRE2MBzi1Ez6DuybMSeavS7yJA84m0Df24JvB2FpK6twNc5.Ca', 'userImage_6.jpeg', '2022-04-04 01:34:47', '2022-04-04 01:34:47'),
(7, 'Jack', 'Jack@gmail.com', 3400, 'I’m not a chef, but I love to cook, \r\ntry new recipes, and share my favorites. \r\nEveryday cooking, for everyday people', '$2y$10$H5HKBd.9UrzAwg1LIlSGfOz8yBaJabe6k7CbzHRs..mc/mF5iSrSK', 'userImage_7.jpeg', '2022-04-04 01:34:47', '2022-04-04 01:34:47'),
(8, 'John', 'John@gmail.com', 5788, 'As a dad, husband, and business owner, I know that no one has hours to spend in the kitchen. Food should be quick, simple, and delicious, so that’s how we cook at home and the way the recipes are created for my program. Of course, there are some more complex recipes on the program for those that consider themselves master chefs, but for me, it’s all about keeping it fresh, simple, and tasty.', '$2y$10$d3k.0hU50xXWOcrs4BdjWuTFlih9/JidtSX1DAEJgsDsng7tWvgt6', 'userImage_8.jpeg', '2022-04-04 01:34:47', '2022-04-04 01:34:47'),
(9, 'Deb410', 'Deb410@gmail.com', 8900, 'I’m passionate about helping people overcome fad dieting and disordered eating, having gone through my own struggles with food.', '$2y$10$WFxWnjvWI8NW51Wt228YC.WPwmC6qr9nEz6hgrnwwvQeQCIi6tukC', 'userImage_9.jpeg', '2022-04-04 01:34:47', '2022-04-04 01:34:47'),
(10, 'Elise', 'Elise@gmail.com', 120, ' I love to cook for friends, family, and my partner, and I love trying lots of different cuisines. The recipes I upload are mostly simple to make, but with good flavors. I find this the best way to cook for our family and friends. ', '$2y$10$hr23ujirSSzVmb3p/sYdpuHsNAzvv.HL/xNzJQQLPQ5LcfWrm27Je', 'userImage_10.jpeg', '2022-04-04 01:34:47', '2022-04-04 01:34:47'),
(11, 'Kelly', 'Kelly@outlook.com', 4100, 'family guy - lots of kids - wife only reheats \r\nboxed food - so I am the house \r\ncheif', '$2y$10$l6PE.R6Egz2sxmQhqYDiTeIpw78WqKjMXATZ6lOFV.3SMpD6FcyIG', 'userImage_11.jpeg', '2022-04-04 01:34:47', '2022-04-04 01:34:47'),
(12, 'Haley', 'Haley@gmail.com', 980, 'I enjoy creating recipes, and love a pantry challenge! My style of cooking is very honest, and I value simplicity and ease over complexity. I’m most passionate about food that brings people together and holds no punches in terms of flavor. Entertaining, generosity, and community are often drivers of my thinking around food.', '$2y$10$1Rh/DWa7M6bX6rnC4nuaNuVWrpM5JYu6lXjHNIwJ4YKN8PBnIVidO', 'userImage_12.jpeg', '2022-04-04 01:34:47', '2022-04-04 01:34:47'),
(13, 'Msudjmk', 'Msudjmk@gmail.com', 54635, 'I help create recipes that are quick, easy, and delicious for breakfast, lunch, dinner, snacks, and dessert, so whether you’re an omnivore, pescatarian, vegetarian, or vegan, there’s something for you!', '$2y$10$ZI5WjGDGD1BSCMLHLKFeDODg2NmIWe/ZlfAkvlOdjQaKRxPqBAdOW', 'userImage_13.jpeg', '2022-04-04 01:34:47', '2022-04-04 01:34:47'),
(14, 'Swfimik', 'Swfimik@gmail.com', 435, 'I have always loved cooking and I turned vegan 8 years ago for ethical reasons. I had to change a lot in my kitchen, and because I didn’t want to miss out on dishes I love, I started veganism everything. I created my own vegan steaks, sausages, roasts, cheese, and much more. ', '$2y$10$PiFaqjHJ52mKhCP1zrfepeERWQs6KyZNYlQ0.kcxKkyqpP99kNf9.', 'userImage_14.jpeg', '2022-04-04 01:34:47', '2022-04-04 01:34:47'),
(15, 'Helen', 'Helen@hotmail.com', 5670, 'I’m not so much a person who loves \r\nto Cook, as a person who loves to EAT!!!', '$2y$10$.bin6l.YbhwtH8JajM20Ten2k1j3UI1OXDLDDbGuZ6nMz5saaMn9e', 'userImage_15.jpeg', '2022-04-04 01:34:47', '2022-04-04 01:34:47'),
(16, 'Rocky', 'Rocky@gmail.com', 0, '', '$2y$10$tUsxmiIORGxh94nDMznSM.PpC3HG1IpZAaeZZlSzsXi6WomJUwi7O', 'userImage_16.jpeg', '2022-04-04 01:34:47', '2022-04-04 01:34:47'),
(17, 'Mia1203', 'Mia1203@gmail.com', 7, 'I love to cook for family and friends. And I also enjoy fundraiser cooking and bake sales.', '$2y$10$U/RsvecMtNdO2sF0R6WC6OutfROVOr/wG0HTSGT3LsSlGF.opqXse', 'userImage_17.jpeg', '2022-04-04 01:34:47', '2022-04-04 01:34:47'),
(18, 'Nagi', 'Nagi@gmail.com', 46536, 'I know what it takes to lead a healthy, balanced life. My day on a plate is packed with family-friendly, filling wholefood meals, fish, meat, and lots of energy-packed carbs. ', '$2y$10$9HzQcC9OTfAbn1Q5STA4JODLONlpuHFeu0lpV/ni8xa1k1rMZeAa6', 'userImage_18.jpeg', '2022-04-04 01:34:47', '2022-04-04 01:34:47'),
(19, 'Nicloe', 'Nicloe@hotmail.com', 5332, 'My cooking is mainly European influenced, and Greek cuisine is one of my personal favorites followed by Italian and Croatian. Turkish cuisine is also very close to my heart as Berlin offers Turkish food on every corner. And not to forget Austrian cuisine thanks to my dad and granny.', '$2y$10$4Rs4J6BAX1W1xfble9inH.N4p6csXF7aqax2C/B3CHw2U1SZAawsS', 'userImage_19.jpeg', '2022-04-04 01:34:47', '2022-04-04 01:34:47'),
(20, 'Kim', 'Kim@hotmail.com', 9, '', '$2y$10$H/GsYUN/xX2PtuwgYSKVQujFlUHi9ypLGrIn2xonwufcDF4R2O4yW', 'userImage_20.jpeg', '2022-04-04 01:34:47', '2022-04-04 01:34:47'),
(21, 'Yonantan', 'Yonantan@hotmail.com', 3567, 'I work as a civil engineer and my \r\npassions are cooking and nutrition.', '$2y$10$XoH5ZihyVgIF5BwgfJY.C.Pl4lVlxarsDlwh8jUxqLaUSymIVFZiu', 'userImage_21.jpeg', '2022-04-04 01:34:47', '2022-04-04 01:34:47'),
(22, 'Jamine', 'Jamine@gmail.com', 32, '', '$2y$10$bQp4w8YS550zUXHQQ50U5.WzhUosflRNAwrJ6WTsm1AdoLoH0DdHm', 'userImage_22.jpeg', '2022-04-04 01:34:47', '2022-04-04 01:34:47'),
(23, 'Eleven', 'Eleven@gmail.com', 890, 'I have been cooking all my life, and taking photos of food for the past decade, both professionally and for fun. ', '$2y$10$liMlHLE8hDPDlyyauLZM0uQkZsw2ZzDPme/rZB4bm0nxxp0BPWLeO', 'userImage_23.jpeg', '2022-04-04 01:34:47', '2022-04-04 01:34:47'),
(24, 'AndyWang', 'AndyWang@gmail.com', 653, 'I am a passionate foodie and love finding new cafes and experimenting with new recipes in my home kitchen. I enjoy cooking fresh, healthy meals using produce that is in season. My cooking style is quite relaxed to suit the tropical lifestyle.', '$2y$10$HqvTCwbhXkuduIRAVkdUwu12fx2Q7qlk9Imn5yhOMVDOzYWrQ4wC.', 'userImage_24.jpeg', '2022-04-04 01:34:47', '2022-04-04 01:34:47'),
(25, 'YuYiYe', 'YuYiYe@hotmail.com', 345, 'I enjoy sharing my recipes with others to show just how easy it can be to prepare delicious home-cooked meals.', '$2y$10$eJHQ/e5E63hJU349uJKRhurwnuMFplDhaO/iAF9Z1oq6PwQbmXtwG', 'userImage_25.jpeg', '2022-04-04 01:34:47', '2022-04-04 01:34:47'),
(35, 'shiori', 'shiori0921syd@gmail.com', NULL, NULL, '$2y$10$AozR/lUSPjSSilCmHSSy8O7wUT.HrmzHXBUmwZx1WfGKMlcFz80IW', NULL, '2022-04-14 16:01:59', '2022-04-14 16:01:59'),
(36, 'test', 'test@gmail.com', NULL, NULL, '$2y$10$YONpHZNfeOKh3AL12PQumeLleD7dpB4iVgq2Qr9xFaJzorFJADCjW', NULL, '2022-04-14 17:38:33', '2022-04-14 17:38:33'),
(42, 'YAYA', 'yaya@email.com', NULL, NULL, '$2y$10$LL1Ue.15k0Xfj7cxdkAErOALEklxM3GxYUu1t8a4KBaQDWYiXP7ue', NULL, '2022-05-01 04:59:00', '2022-05-01 04:59:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_ID`);

--
-- Indexes for table `favourite`
--
ALTER TABLE `favourite`
  ADD PRIMARY KEY (`fav_id`);

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`image_ID`);

--
-- Indexes for table `recipe`
--
ALTER TABLE `recipe`
  ADD PRIMARY KEY (`recipe_ID`);

--
-- Indexes for table `recipe_category`
--
ALTER TABLE `recipe_category`
  ADD UNIQUE KEY `recipe_ID` (`recipe_ID`),
  ADD KEY `category_ID` (`category_ID`);

--
-- Indexes for table `recipe_image`
--
ALTER TABLE `recipe_image`
  ADD KEY `recipe_ID` (`recipe_ID`),
  ADD KEY `image_ID` (`image_ID`);

--
-- Indexes for table `recipe_user`
--
ALTER TABLE `recipe_user`
  ADD KEY `recipe_ID` (`recipe_ID`),
  ADD KEY `user_ID` (`user_ID`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`review_ID`);

--
-- Indexes for table `review_user`
--
ALTER TABLE `review_user`
  ADD KEY `review_ID` (`review_ID`),
  ADD KEY `user_ID` (`user_ID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `favourite`
--
ALTER TABLE `favourite`
  MODIFY `fav_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `review_ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `recipe_image`
--
ALTER TABLE `recipe_image`
  ADD CONSTRAINT `recipe_image_ibfk_1` FOREIGN KEY (`recipe_ID`) REFERENCES `recipe` (`recipe_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `recipe_image_ibfk_2` FOREIGN KEY (`image_ID`) REFERENCES `image` (`image_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `recipe_user`
--
ALTER TABLE `recipe_user`
  ADD CONSTRAINT `recipe_user_ibfk_1` FOREIGN KEY (`recipe_ID`) REFERENCES `recipe` (`recipe_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `recipe_user_ibfk_2` FOREIGN KEY (`user_ID`) REFERENCES `user` (`user_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
