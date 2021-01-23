//
//  LabelViewController.swift
//  FoodID3.0
//
//  Created by Henry Anderson on 9/28/20.
//

import UIKit


class SuggestedViewController: UIViewController {
    
    //labels
    //title label
    @IBOutlet weak var titleLabel: UILabel!
    //labels for each food
    @IBOutlet weak var food1: UILabel!
    @IBOutlet weak var food2: UILabel!
    @IBOutlet weak var food3: UILabel!
    @IBOutlet weak var food4: UILabel!
    @IBOutlet weak var food5: UILabel!

    
    //labels for each image
    @IBOutlet weak var image1: UIImageView!
    @IBOutlet weak var image2: UIImageView!
    @IBOutlet weak var image3: UIImageView!
    @IBOutlet weak var image4: UIImageView!
    @IBOutlet weak var image5: UIImageView!
    
    
    //declaring variables initially, they need to be refreshed inside viewWillAppear function
    //food names
    var food1string = ImageRecognition.UniversalInfo.foodnameArray[0]
    var food2string = ImageRecognition.UniversalInfo.foodnameArray[1]
    var food3string = ImageRecognition.UniversalInfo.foodnameArray[2]
    var food4string = ImageRecognition.UniversalInfo.foodnameArray[3]
    var food5string = ImageRecognition.UniversalInfo.foodnameArray[4]

    
    var  ahi_tuna = Food(name: "ahi_tuna", real_name: "Ahi Tuna", carb_min:    0, carb_max:     4, unit:     "4 Ounces")
    var  apple = Food(name:"apple", real_name:"Apple",carb_min: 20, carb_max: 25, unit: "Apple")
    var  apple_pie = Food(name: "apple_pie", real_name: "Apple Pie", carb_min: 35, carb_max: 55, unit: "Slice")
    var  apple_cake = Food(name:"apple_cake", real_name:"Apple Cake",carb_min: 25, carb_max: 55, unit: "Slice")
    var  apple_turnover = Food(name:"apple_turnover", real_name:"Apple Turnover",carb_min:30 , carb_max:50 , unit: "Piece")
    var  applesauce = Food(name:"applesauce", real_name:"Applesauce",carb_min: 20, carb_max: 30, unit: "Cup")
    var  baby_back_ribs = Food(name:"baby_back_ribs", real_name:"Baby Back Ribs",carb_min: 2, carb_max: 5, unit: "Rib" )
    var  bacon_and_eggs = Food(name:"bacon_and_eggs", real_name:"Bacon and Eggs",carb_min: 0, carb_max: 5, unit: "2 Eggs")
    var  bagel = Food(name:"bagel", real_name:"Bagel",carb_min: 35, carb_max: 50, unit: "Bagel")
    var  baked_alaska = Food(name: "baked_alaska", real_name:"Baked Alaska",carb_min: 45, carb_max: 60, unit: "Slice")
    var  baked_ziti = Food(name:"baked_ziti", real_name:"Baked Ziti",carb_min: 55, carb_max: 70, unit: "Cup")
    var  baklava = Food(name:"baklava", real_name:"Baklava",carb_min: 10, carb_max: 20, unit: "Ounce")
    var  beef_bourguignon = Food(name:"beef_bourguignon", real_name:"Beef Bourguignon",carb_min: 0, carb_max: 5, unit: "4 Ounces")
    var  beef_carpaccio = Food(name:"beef_carpaccio", real_name:"Beef Carpaccio",carb_min: 0, carb_max: 5, unit: "4 Ounces")
    var  beef_jerky = Food(name:"beef_jerky", real_name:"Beef Jerky",carb_min: 5, carb_max: 10, unit: "Ounce")
    var  beef_stew = Food(name:"beef_stew", real_name:"Beef Stew",carb_min: 12, carb_max: 16, unit: "Cup")
    var  beef_stroganoff = Food(name:"beef_stroganoff", real_name:"Beef Stroganoff",carb_min: 1, carb_max: 4, unit: "Ounce")
    var  beef_tartar = Food(name:"beef_tartar", real_name:"Beef Tartar",carb_min: 5, carb_max: 15, unit: "4 Ounces")
    var  beef_wellington = Food(name:"beef_wellington", real_name:"Beef Wellington",carb_min: 30, carb_max: 40, unit: "Pie")
    var  beet_salad = Food(name:"beet_salad", real_name:"Beet Salad",carb_min: 10, carb_max: 15, unit: "Cup")
    var  beignet = Food(name:"beignet", real_name:"Beignet",carb_min: 48, carb_max: 64, unit: "Cup")
    var  bibambap = Food(name:"bibambap", real_name:"Bibimbap",carb_min: 45, carb_max: 65, unit: "Cup")
    var  birthday_cake = Food(name: "birthday_cake", real_name:"Birthday Cake",carb_min: 25, carb_max: 40, unit: "Slice")
    var  biryani = Food(name:"biryani", real_name:"Biryani",carb_min: 40, carb_max: 60, unit: "Cup")
    var  blanc_mange = Food(name:"blanc_mange", real_name:"Blanc Mange",carb_min: 40, carb_max: 70, unit: "Cup")
    var  blt = Food(name:"blt", real_name:"BLT",carb_min: 40, carb_max: 50, unit: "Sandwich")
    var  boston_cream_pie = Food(name:"boston_cream_pie", real_name:"Boston Cream Pie",carb_min: 40, carb_max: 60, unit: "Slice")
    var  bread_pudding  = Food(name:"bread_pudding", real_name:"Bread Pudding",carb_min: 60, carb_max: 90, unit: "Cup")
    var  brisket = Food(name:"brisket", real_name:"Brisket",carb_min: 0, carb_max: 5, unit: "4 Ounces")
    var  bruschetta = Food(name:"bruschetta", real_name:"Bruschetta",carb_min: 10, carb_max: 25, unit: "Slice")
    var  burrito = Food(name:"burrito", real_name:"Burrito",carb_min: 25, carb_max: 55, unit: "Burrito")
    var  butterfly_pasta = Food(name: "butterfly_pasta", real_name:"Butterfly Pasta",carb_min: 36, carb_max: 42, unit: "Cup")
    var  cabbage_rolls = Food(name:"cabbage_rolls", real_name:"Cabbage Rolls",carb_min: 15, carb_max: 20, unit: "Roll")
    var  caesar_salad  = Food(name:"caesar_salad", real_name:"Caesar Salad",carb_min: 10, carb_max: 15, unit: "Bowl")
    var  cannoli  = Food(name: "cannoli", real_name:"Cannoli",carb_min: 30, carb_max: 60, unit: "Piece")
    var  caprese = Food(name:"caprese", real_name:"Caprese",carb_min: 10, carb_max: 20, unit: "Bowl")
    var  carbonara = Food(name:"carbonara", real_name:"Carbonara",carb_min: 35, carb_max: 42, unit: "Cup")
    var  carrot_cake  = Food(name:"carrot_cake", real_name:"Carrot Cake",carb_min: 30, carb_max: 45, unit: "Piece")
    var  casserole = Food(name:"casserole", real_name:"Casserole",carb_min: 28, carb_max: 35, unit: "Cup")
    var  ceviche  = Food(name:"ceviche", real_name:"Ceviche",carb_min: 8, carb_max: 12, unit: "Cup")
    var  cheesecake  = Food(name:"cheesecake", real_name:"Cheesecake",carb_min: 40, carb_max: 70, unit: "Slice")
    var  chicken_adobo = Food(name:"chicken_adobo", real_name:"Chicken Adobo",carb_min: 10, carb_max: 20, unit: "Breast")
    var  chicken_curry = Food(name:"chicken_curry", real_name:"Chicken Curry",carb_min: 15, carb_max: 45, unit: "Cup")
    var  chicken_cutlet = Food(name:"chicken_cutlet", real_name:"Chicken Cutlet",carb_min: 5, carb_max: 10, unit: "Piece")
    var  chicken_kiev = Food(name:"chicken_kiev", real_name:"Chicken Kiev",carb_min: 15, carb_max: 25, unit: "4 Ounces")
    var  chicken_marengo  = Food(name:"chicken_marengo", real_name:"Chicken Marengo",carb_min: 6, carb_max: 10, unit: "4 Ounces")
    var  chicken_nuggets = Food(name:"chicken_nuggets", real_name:"Chicken Nuggets",carb_min: 4, carb_max: 5, unit: "Nugget")
    var  chicken_pot_pie  = Food(name:"chicken_pot_pie", real_name:"Chicken Pot Pie",carb_min: 20, carb_max: 25, unit: "Cup")
    var  chicken_provencal = Food(name:"chicken_provencal", real_name:"Chicken Provencal",carb_min: 6, carb_max: 12, unit: "Piece")
    var  chicken_wing = Food(name:"chicken_wing", real_name:"Chicken Wing",carb_min: 1, carb_max: 3, unit: "Wing")
    var  chili = Food(name:"chili", real_name:"Chili",carb_min: 25, carb_max: 32, unit: "Cup")
    var  chop_suey = Food(name:"chop_suey", real_name:"Chop Suey",carb_min: 13, carb_max: 25, unit: "Cup")
    var  chow_mein = Food(name:"chow_mein", real_name:"Chow Mein",carb_min: 40, carb_max: 60, unit: "Cup")
    var  churro = Food(name:"churro", real_name:"Churro",carb_min: 15, carb_max: 25, unit: "Churro")
    var  clam_chowder = Food(name:"clam_chowder", real_name:"Clam Chowder",carb_min: 16, carb_max: 24, unit: "Cup")
    var  clams = Food(name:"clams", real_name:"Clams",carb_min: 0, carb_max: 4, unit: "Clam")
    var  club_sandwich = Food(name:"club_sandwich", real_name:"Club Sandwich",carb_min: 55, carb_max: 70, unit: "Sandwich")
    var  coconut_cake = Food(name:"coconut_cake", real_name:"Coconut Cake",carb_min: 25, carb_max: 45, unit: "Piece")
    var  coffee_cake = Food(name:"coffee_cake", real_name:"Coffee Cake",carb_min: 25, carb_max: 35, unit: "Slice")
    var  compote = Food(name:"compote", real_name:"Compote",carb_min: 10, carb_max: 20, unit: "Bowl")
    var  coq_au_vin = Food(name:"coq_au_vin", real_name:"Coq Au Vin",carb_min: 6, carb_max: 12, unit: "Breast")
    var  cordon_blue = Food(name:"cordon_blue", real_name:"Cordon Blue",carb_min: 10, carb_max: 14, unit: "4 Ounces")
    var  corn = Food(name:"corn", real_name:"Corn",carb_min: 25, carb_max: 30, unit: "Cup")
    var  couscous = Food(name:"couscous", real_name:"Couscous",carb_min: 32, carb_max: 36, unit: "Cup")
    var  crab = Food(name:"crab", real_name:"Crab",carb_min: 5, carb_max: 10, unit: "Cup")
    var  crabcake = Food(name:"crabcake", real_name:"Crab Cake",carb_min: 6, carb_max: 10, unit: "Cake")
    var  crayfish = Food(name:"crayfish", real_name:"Crayfish",carb_min: 1, carb_max: 5, unit: "Piece")
    var  cream_puff  = Food(name:"cream_puff", real_name:"Cream Puff",carb_min: 16, carb_max: 22, unit: "Piece")
    var  creme_brulee = Food(name:"creme_brulee", real_name:"Creme Brulee",carb_min: 28, carb_max: 36, unit: "4 Ounces")
    var  croque = Food(name:"croque", real_name:"Croque",carb_min: 20, carb_max: 40, unit: "Piece")
    var  croquette = Food(name:"croquette", real_name:"Croquette",carb_min: 0, carb_max: 3, unit: "Piece")
    var  crumpet = Food(name:"crumpet", real_name:"Crumpet",carb_min: 20, carb_max: 22, unit: "Piece")
    var cupcake = Food(name:"cupcake", real_name:"Cupcake",carb_min: 35, carb_max: 50, unit: "Cake")
    var custard = Food(name:"custard", real_name:"Custard",carb_min:48 , carb_max: 60, unit: "Cup")
    var deviled_eggs = Food(name:"deviled_eggs", real_name:"Deviled Eggs",carb_min: 0, carb_max: 5, unit: "Egg")
    var donut = Food(name:"donut", real_name:"Donut",carb_min: 30, carb_max: 45, unit: "Donut")
    var duck_leg = Food(name:"duck_leg", real_name:"Duck Leg",carb_min: 0, carb_max: 5, unit: "Leg")
    var dumpling = Food(name:"dumpling", real_name:"Dumpling",carb_min: 6, carb_max: 10, unit: "Dumpling")
    var eccles_cakes = Food(name:"eccles_cakes", real_name:"Eccles Cakes",carb_min: 25, carb_max: 50, unit: "Cake")
    var eclair = Food(name:"eclair", real_name:"Eclair",carb_min: 25, carb_max: 32, unit: "Piece")
    var edaname = Food(name:"edaname", real_name:"Edaname",carb_min: 10, carb_max: 18, unit: "Cup")
    var egg_roll = Food(name:"egg_roll", real_name:"Egg Roll",carb_min: 20, carb_max: 25, unit: "Piece")
    var eggs_benedict = Food(name:"eggs_benedict", real_name:"Eggs Benedict",carb_min: 15, carb_max: 18, unit: "Egg")
    var eggs_florentine = Food(name:"eggs_florentine", real_name:"Eggs Florentine",carb_min: 10, carb_max: 15, unit: "Egg")
    var enchilada = Food(name:"enchilada", real_name:"Enchilada",carb_min: 25, carb_max: 45, unit: "Enchilada")
    var escargot = Food(name:"escargot", real_name:"Escargot",carb_min: 0, carb_max: 4, unit: "Piece")
    var falafel = Food(name:"falafel", real_name:"Falafel",carb_min: 5, carb_max: 10, unit: "Ball")
    var fettucine = Food(name:"fettucine", real_name:"Fettucine",carb_min: 40, carb_max: 45, unit: "Cup")
    var fish_and_chips = Food(name:"fish_and_chips", real_name:"Fish and Chips",carb_min: 15, carb_max: 25, unit: "Piece")
    var fishsticks = Food(name:"fishsticks", real_name:"Fishsticks",carb_min: 3, carb_max: 5, unit: "Piece")
    var flan = Food(name:"flan", real_name:"Flan",carb_min: 40, carb_max: 65, unit: "Cup")
    var fois_gras = Food(name:"fois_gras", real_name:"Fois Gras",carb_min: 0, carb_max: 5, unit: "4 Ounces")
    var fondue = Food(name:"fondue", real_name:"Fondue",carb_min: 0, carb_max: 5, unit: "Cup")
    var french_fries = Food(name:"french_fries", real_name:"French Fries",carb_min: 40, carb_max: 60, unit: "Cup")
    var french_onion = Food(name:"french_onion", real_name:"French Onion",carb_min: 12, carb_max: 20, unit: "Cup")
    var french_toast = Food(name:"french_toast", real_name:"French Toast",carb_min: 16, carb_max: 20, unit: "Slice")
    var fried_calamari = Food(name:"fried_calamari", real_name:"Fried Calamari",carb_min: 15, carb_max: 40, unit: "Cup")
    var fried_chicken = Food(name:"fried_chicken", real_name:"Fried Chicken",carb_min: 12, carb_max: 25, unit: "Piece")
    var fried_egg = Food(name:"fried_egg", real_name:"Fried Egg",carb_min: 0, carb_max: 5, unit: "Egg")
    var fried_fish = Food(name:"fried_fish", real_name:"Fried Fish",carb_min: 15, carb_max: 20, unit: "Piece")
    var fried_rice = Food(name:"fried_rice", real_name:"Fried Rice",carb_min: 40, carb_max: 45, unit: "Cup")
    var fritatta = Food(name:"fritatta", real_name:"Fritatta",carb_min: 5, carb_max: 10, unit: "Slice")
    var fritters = Food(name:"fritters", real_name:"Fritters",carb_min: 10, carb_max: 16, unit: "Piece")
    var frozen_yogurt = Food(name:"frozen_yogurt", real_name:"Frozen Yogurt",carb_min: 40, carb_max: 45, unit: "Cup")
    var fruit_cake = Food(name:"fruit_cake", real_name:"Fruit Cake",carb_min: 40, carb_max: 55, unit: "Slice")
    var galantine = Food(name:"galantine", real_name:"Galantine",carb_min: 0, carb_max: 5, unit: "4 Ounces")
    var garlic_bread = Food(name:"garlic_bread", real_name:"Garlic Bread",carb_min: 20, carb_max: 35, unit: "Slice")
    var gingerbread = Food(name:"gingerbread", real_name:"Gingerbread",carb_min: 60, carb_max: 70, unit: "Half Cup")
    var gnocchi = Food(name:"gnocchi", real_name:"Gnocchi",carb_min: 30, carb_max: 40, unit: "Cup")
    var grape_leaves = Food(name:"grape_leaves", real_name:"Grape Leaves",carb_min: 0, carb_max: 4, unit: "Leaf")
    var greek_salad = Food(name:"greek_salad", real_name:"Greek Salad",carb_min: 5, carb_max: 10, unit: "Cup")
    var grilled_cheese = Food(name:"grilled_cheese", real_name:"Grilled Cheese",carb_min: 40, carb_max: 60, unit: "Sandwich")
    var guacamole = Food(name:"guacamole", real_name:"Guacamole",carb_min: 20, carb_max: 28, unit: "Cup")
    var gumbo = Food(name:"gumbo", real_name:"Gumbo",carb_min: 7, carb_max: 20, unit: "Cup")
    var gyro = Food(name:"gyro", real_name:"Gyro",carb_min: 60, carb_max: 80, unit: "Sandwich")
    var haggis = Food(name:"haggis", real_name:"Haggis",carb_min: 20, carb_max: 30, unit: "4 Ounces")
    var ham_and_eggs = Food(name:"ham_and_eggs", real_name:"Ham and Eggs",carb_min: 0, carb_max: 5, unit: "2 Eggs")
    var ham_sandwich = Food(name:"ham_sandwich", real_name:"Ham Sandwich",carb_min: 35, carb_max: 45, unit: "Sandwich")
    var hamburger = Food(name:"hamburger", real_name:"Hamburger",carb_min: 20, carb_max: 28, unit: "Sandwich")
    var hardboiled_egg = Food(name:"hardboiled_egg", real_name:"Hardboiled Egg",carb_min: 0, carb_max: 4, unit: "Egg")
    var hot_and_sour_soup = Food(name:"hot_and_sour_soup", real_name:"Hot and Sour Soup",carb_min: 5, carb_max: 8, unit: "Cup")
    var hot_dog = Food(name:"hot_dog", real_name:"Hot Dog",carb_min: 20, carb_max: 25, unit: "Sandwich")
    var huevos_rancheros = Food(name:"huevos_rancheros", real_name:"Huevos Rancheros",carb_min: 25, carb_max: 55, unit: "Cup")
    var hummus = Food(name:"hummus", real_name: "Hummus",carb_min: 0, carb_max: 5, unit: "2 Tablespoons")
    var ice_cream = Food(name:"ice_cream", real_name:"Ice Cream",carb_min: 30, carb_max: 60, unit: "Cup")
    var jambalaya = Food(name:"jambalaya", real_name:"Jambalaya",carb_min: 22, carb_max: 45, unit: "Cup")
    var kabobs = Food(name:"kabobs", real_name:"Kabobs",carb_min: 0, carb_max: 8, unit: "Kabob")
    var kedgeree = Food(name:"kedgeree", real_name:"Kedgeree",carb_min: 35, carb_max: 50, unit: "Cup")
    var knish = Food(name:"knish", real_name:"Knish",carb_min: 15, carb_max: 55, unit: "Piece")
    var kung_pao_chicken = Food(name:"kung_pao_chicken", real_name:"Kung Pao Chicken",carb_min: 15, carb_max: 30, unit: "Cup")
    var lamb_kebab = Food(name:"lamb_kebab", real_name:"Lamb Kebab",carb_min: 0, carb_max: 8, unit: "Kabob")
    var lasagna = Food(name:"lasagna", real_name:"Lasagna",carb_min: 30, carb_max: 45, unit: "Cup")
    var limpet = Food(name:"limpet", real_name:"Limpet",carb_min: 0, carb_max: 5, unit: "Piece")
    var linguini = Food(name:"linguini", real_name:"Linguini",carb_min: 40, carb_max: 45, unit: "Cup")
    var lobster = Food(name:"lobster", real_name:"Lobster",carb_min: 0, carb_max: 10, unit: "4 Ounces")
    var lobster_bisque = Food(name:"lobster_bisque", real_name:"Lobster Bisque",carb_min: 10, carb_max: 20, unit: "Cup")
    var lobster_roll = Food(name:"lobster_roll", real_name:"Lobster Roll",carb_min: 35, carb_max: 40, unit: "Roll")
    var lutefisk = Food(name:"lutefisk", real_name:"Lutefisk",carb_min: 0, carb_max: 5, unit: "4 Ounces")
    var mac_and_cheese = Food(name:"mac_and_cheese", real_name:"Mac and Cheese",carb_min: 35, carb_max: 50, unit: "Cup")
    var macaron = Food(name:"macaron", real_name:"Macaron",carb_min: 5, carb_max: 10, unit: "Piece")
    var macaroni_salad = Food(name:"macaroni_salad", real_name:"Macaroni Salad",carb_min: 20, carb_max: 50, unit: "Cup")
    var manciotti = Food(name:"manciotti", real_name:"Manicotti",carb_min: 12, carb_max: 18, unit: "Piece")
    var marble_cake = Food(name:"marble_cake", real_name:"Marble Cake",carb_min: 20, carb_max: 45, unit: "Slice")
    var matzo_ball_soup = Food(name:"matzo_ball_soup", real_name:"Matzo Ball Soup",carb_min: 10, carb_max: 18, unit: "Cup")
    var meat_loaf = Food(name:"meat_loaf", real_name:"Meat Loaf",carb_min: 20, carb_max: 30, unit: "Cup")
    var meatball = Food(name:"meatball", real_name:"Meatball",carb_min: 2, carb_max: 5, unit: "Meatball")
    var meatloaf = Food(name:"meatloaf", real_name:"Meat Loaf",carb_min: 20, carb_max: 30, unit: "Cup")
    var meringue = Food(name:"meringue", real_name:"Meringue",carb_min: 20, carb_max: 25, unit: "Piece")
    var miso_soup = Food(name:"miso_soup", real_name:"Miso Soup",carb_min: 5, carb_max: 12, unit: "Cup")
    var moo_goo_gai_pan = Food(name:"moo_goo_gai_pan", real_name:"Moo Goo Gai Pan",carb_min: 10, carb_max: 20, unit: "Cup")
    var moussaka = Food(name:"moussaka", real_name:"Moussaka",carb_min: 20, carb_max: 30, unit: "Cup")
    var mousse = Food(name:"mousse", real_name:"Mousse",carb_min: 30, carb_max: 45, unit: "Slice")
    var muffin = Food(name:"muffin", real_name:"Muffin",carb_min: 30, carb_max: 60, unit: "Mussel")
    var mussels = Food(name:"mussels", real_name:"Mussels",carb_min: 0, carb_max: 5, unit: "Mussel")
    var nachos = Food(name:"nachos", real_name:"Nachos",carb_min: 15, carb_max: 25, unit: "10 Chips")
    var oatmeal = Food(name:"oatmeal", real_name:"Oatmeal",carb_min: 20, carb_max: 45, unit: "Cup")
    var omelette = Food(name:"omelette", real_name:"Omelette",carb_min: 0, carb_max: 15, unit: "4 Ounces")
    var onion_rings = Food(name:"onion_rings", real_name:"Onion Rings",carb_min: 50, carb_max: 70, unit: "4 Ounces")
    var orzo = Food(name:"orzo", real_name:"Orzo",carb_min: 40, carb_max: 45, unit: "Cup")
    var oyster = Food(name:"oyster", real_name:"Oyster",carb_min: 0, carb_max: 5, unit: "Oyster")
    var pad_thai = Food(name:"pad_thai", real_name:"Pad Thai",carb_min: 35, carb_max: 55, unit: "Cup")
    var pancake = Food(name:"pancake", real_name:"Pancake",carb_min: 18, carb_max: 25, unit: "Pancake")
    var panna_cotta = Food(name:"panna_cotta", real_name:"Panna Cotta",carb_min: 30, carb_max: 50, unit: "Cup")
    var parfait = Food(name:"parfait", real_name:"Parfait",carb_min: 45, carb_max: 60, unit: "Cup")
    var pate = Food(name:"pate", real_name:"Pate",carb_min: 0, carb_max: 10, unit: "4 Ounces")
    var peach_pie_cobbler = Food(name:"peach_pie_cobbler", real_name:"Peach Pie Cobbler",carb_min: 30, carb_max: 50, unit: "Slice")
    var peking_duck = Food(name:"peking_duck", real_name:"Peking Duck",carb_min: 10, carb_max: 15, unit: "4 Ounces")
    var penne = Food(name:"penne", real_name:"Penne",carb_min: 42, carb_max: 48, unit: "Cup")
    var pepper_steak_fajitas = Food(name:"pepper_steak_fajitas", real_name:"Steak Fajitas",carb_min: 30, carb_max: 40, unit: "Fajita")
    var pho = Food(name:"pho", real_name:"Pho",carb_min: 40, carb_max: 60, unit: "Cup")
    var pierogi = Food(name:"pierogi", real_name:"Pierogi",carb_min: 10, carb_max: 15, unit: "Piece")
    var pizza = Food(name:"pizza", real_name:"Pizza",carb_min: 20, carb_max: 35, unit: "Slice")
    var poached_eggs = Food(name:"poached_eggs", real_name:"Poached Eggs",carb_min: 0, carb_max: 5, unit: "Egg")
    var popcorn = Food(name:"popcorn", real_name:"Popcorn",carb_min: 4, carb_max: 8, unit: "Cup")
    var pork_belly = Food(name:"pork_belly", real_name:"Pork Belly",carb_min: 0, carb_max: 10, unit: "4 Ounces")
    var pork_chop = Food(name:"pork_chop", real_name:"Pork Chop",carb_min: 0, carb_max: 5, unit: "4 Ounces")
    var pork_tenderloin = Food(name:"pork_tenderloin", real_name:"Pork Tenderloin",carb_min: 0, carb_max: 5, unit: "4 Ounces")
    var potato_salad = Food(name:"potato_salad", real_name:"Potato Salad",carb_min: 25, carb_max: 40, unit: "Cup")
    var pound_cake = Food(name:"pound_cake", real_name:"Pound Cake",carb_min: 25, carb_max: 40, unit: "Slice")
    var poutine = Food(name:"poutine", real_name:"Poutine",carb_min: 20, carb_max: 35, unit: "Cup")
    var prime_rib = Food(name:"prime_rib", real_name:"Prime Rib",carb_min: 0, carb_max: 5, unit: "4 Ounces")
    var pulled_pork_sandwich = Food(name:"pulled_pork_sandwich", real_name:"Pulled Pork Sandwich",carb_min: 45, carb_max: 60, unit: "Sandwich")
    var quesadilla = Food(name:"quesadilla", real_name:"Quesadilla",carb_min: 30, carb_max: 50, unit: "Quesadilla")
    var quiche = Food(name:"quiche", real_name:"Quiche",carb_min: 15, carb_max: 30, unit: "Piece")
    var ramen = Food(name:"ramen", real_name:"Ramen",carb_min: 45, carb_max: 55, unit: "Cup")
    var ravioli = Food(name:"ravioli", real_name:"Ravioli",carb_min: 25, carb_max: 60, unit: "Cup")
    var red_velvet = Food(name:"red_velvet", real_name:"Red Velvet",carb_min: 40, carb_max: 60, unit: "Slice")
    var rice_noodle = Food(name:"rice_noodle", real_name:"Rice Noodle",carb_min: 40, carb_max: 48, unit: "Cup")
    var rice_pilaf = Food(name:"rice_pilaf", real_name:"Rice Pilaf",carb_min: 40, carb_max: 55, unit: "Cup")
    var rigatoni = Food(name:"rigatoni", real_name:"Rigatoni",carb_min: 40, carb_max: 45, unit: "Cup")
    var risotto = Food(name:"risotto", real_name:"Risotto",carb_min: 36, carb_max: 54, unit: "Cup")
    var roast_chicken = Food(name:"roast_chicken", real_name:"Roast Chicken",carb_min: 0, carb_max: 5, unit: "4 Ounces")
    var roast_duck = Food(name:"roast_duck", real_name:"Roast Duck",carb_min: 0, carb_max: 5, unit: "4 Ounces")
    var roulade = Food(name:"roulade", real_name:"Roulade",carb_min: 10, carb_max: 65, unit: "4 Ounces")
    var rueben = Food(name:"rueben", real_name:"Rueben",carb_min: 40, carb_max: 65, unit: "Sandwich")
    var salisbury_steak = Food(name:"salisbury_steak", real_name:"Salisbury Steak",carb_min: 4, carb_max: 12, unit: "4 Ounces")
    var salmon = Food(name:"salmon", real_name:"Salmon",carb_min: 0, carb_max: 5, unit: "4 Ounces")
    var samosa = Food(name:"samosa", real_name:"Samosa",carb_min: 15, carb_max: 35, unit: "Piece")
    var sandwich = Food(name:"sandwich", real_name:"Sandwich",carb_min: 30, carb_max: 55, unit: "Sandwich")
    var sashimi = Food(name:"sashimi", real_name:"Sashimi",carb_min: 0, carb_max: 5, unit: "Piece")
    var sasuage = Food(name:"sasuage", real_name:"Sausage",carb_min: 0, carb_max: 5, unit: "4 Ounces")
    var sasuage_roll = Food(name:"sasuage_roll", real_name:"Sausage Roll",carb_min: 15, carb_max: 35, unit: "Roll")
    var sauerkraut = Food(name:"sauerkraut", real_name:"Sauerkraut",carb_min: 5, carb_max: 10, unit: "Cup")
    var savarin = Food(name:"savarin", real_name:"Savarin",carb_min: 0, carb_max: 5, unit: "4 Ounces")
    var scallops = Food(name:"scallops", real_name:"Scallops",carb_min: 0, carb_max: 5, unit: "4 Ounces")
    var scone = Food(name:"scone", real_name:"Scone",carb_min: 18, carb_max: 42, unit: "Scone" )
    var scottish_baked_eggs = Food(name:"scottish_baked_eggs", real_name:"Scottish Baked Eggs",carb_min: 0, carb_max: 5, unit: "Egg")
    var scrambled_egg = Food(name:"scrambled_egg", real_name:"Scrambled Egg",carb_min: 0, carb_max: 5, unit: "Egg")
    var scrambled_eggs = Food(name:"scrambled_eggs", real_name:"Scrambled Eggs",carb_min: 0, carb_max: 5, unit: "Egg")
    var scrapple = Food(name:"scrapple", real_name:"Scrapple",carb_min: 0, carb_max: 5, unit: "4 Ounces")
    var seaweed_salad = Food(name:"seaweed_salad", real_name:"Seaweed Salad",carb_min: 0, carb_max: 5, unit: "4 Ounces")
    var sheperds_pie = Food(name:"sheperds_pie", real_name:"Sheperds Pie",carb_min: 25, carb_max: 32, unit: "Cup")
    var short_rib = Food(name:"short_rib", real_name:"Short Rib",carb_min: 0, carb_max: 5, unit: "4 Ounces")
    var shrimp = Food(name:"shrimp", real_name:"Shrimp",carb_min: 0, carb_max: 5, unit: "4 Ounces")
    var shrimp_and_grits = Food(name:"shrimp_and_grits", real_name:"Shrimp and Grits",carb_min: 10, carb_max: 40, unit: "Cup")
    var sloppyjoe = Food(name:"sloppyjoe", real_name:"Sloppy Joe",carb_min: 28, carb_max: 50, unit: "Sandwich")
    var souffle = Food(name:"souffle", real_name:"Souffle",carb_min: 10, carb_max: 30, unit: "Piece")
    var sphaghetti = Food(name:"sphaghetti", real_name:"Spaghetti",carb_min: 40, carb_max: 45, unit: "Cup")
    var sphaghetti_bolognese = Food(name:"sphaghetti_bolognese", real_name:"Spaghetti Bolognese",carb_min: 35, carb_max: 45, unit: "Cup")
    var sponge_cake = Food(name:"sponge_cake", real_name:"Sponge Cake",carb_min: 35, carb_max: 70, unit: "Cake")
    var spring_roll = Food(name:"spring_roll", real_name:"Spring Roll",carb_min: 5, carb_max: 15, unit: "Roll")
    var steak = Food(name:"steak", real_name:"Steak",carb_min: 0, carb_max: 5, unit: "4 Ounces")
    var steak_tartar = Food(name:"steak_tartar", real_name:"Steak Tartar",carb_min: 5, carb_max: 15, unit: "4 Ounces")
    var stew = Food(name:"stew", real_name:"Stew",carb_min: 15, carb_max: 30, unit: "Cup")
    var strawberry_shortcake = Food(name:"strawberry_shortcake", real_name:"Strawberry Shortcake",carb_min: 45, carb_max: 60, unit: "Cup")
    var strudel = Food(name:"strudel", real_name:"Strudel",carb_min: 25, carb_max: 35, unit: "Pastry")
    var stuffed_pepper = Food(name:"stuffed_pepper", real_name:"Stuffed Pepper",carb_min: 20, carb_max: 30, unit: "Pepper")
    var stuffed_tomatoes = Food(name:"stuffed_tomatoes", real_name:"Stuffed Tomatoes",carb_min: 5, carb_max: 15, unit: "Tomato")
    var succotash = Food(name:"succotash", real_name:"Succotash",carb_min: 5, carb_max: 10, unit: "Cup")
    var sukiyaki = Food(name:"sukiyaki", real_name:"Sukiyaki",carb_min: 10, carb_max: 30, unit: "Cup")
    var sunny_side_up = Food(name:"sunny_side_up", real_name:"Sunny Side Up Egg",carb_min: 0, carb_max: 5, unit: "Egg")
    var sushi = Food(name:"sushi", real_name:"Sushi",carb_min: 0, carb_max: 15, unit: "Piece")
    var syllabub = Food(name:"syllabub", real_name:"Syllabub",carb_min: 40, carb_max: 60, unit: "Cup")
    var tacos = Food(name:"tacos", real_name:"Tacos",carb_min: 10, carb_max: 25, unit: "Taco")
    var takoyaki = Food(name:"takoyaki", real_name:"Takoyaki",carb_min:4 , carb_max: 6, unit: "Piece")
    var tamale = Food(name:"tamale", real_name:"Tamale",carb_min: 18, carb_max: 36, unit: "Tamale")
    var tamale_pie = Food(name:"tamale_pie", real_name:"Tamale Pie",carb_min: 18, carb_max: 36, unit: "Slice")
    var tapenade = Food(name:"tapenade", real_name:"Tapenade",carb_min: 0, carb_max: 5, unit: "4 Ounces")
    var tempura = Food(name:"tempura", real_name:"Tempura",carb_min: 4, carb_max: 8, unit: "Piece")
    var terrine = Food(name:"terrine", real_name:"Terrine",carb_min: 0, carb_max: 10, unit: "4 Ounces")
    var tetrazinni = Food(name:"tetrazinni", real_name:"Tetrazzini",carb_min: 25, carb_max: 35, unit: "Cup")
    var tiramisu = Food(name:"tiramisu", real_name:"Tiramisu",carb_min: 20, carb_max: 40, unit: "Cup")
    var toad_in_a_hole = Food(name:"toad_in_a_hole", real_name:"Toad in a Hole",carb_min: 12, carb_max: 30, unit: "Piece")
    var toast = Food(name:"toast", real_name:"Toast",carb_min: 18, carb_max: 25, unit: "Slice")
    var tortellini = Food(name:"tortellini", real_name:"Tortellini",carb_min: 40, carb_max: 60, unit: "Cup")
    var tortilla = Food(name:"tortilla", real_name:"Tortilla",carb_min: 10, carb_max: 20, unit: "Piece")
    var tostada = Food(name:"tostada", real_name:"Tostada",carb_min: 5, carb_max: 10, unit: "Piece")
    var upside_down_cake = Food(name:"upside_down_cake", real_name:"Upside Down Cake",carb_min: 25, carb_max: 55, unit: "Slice")
    var veal_shank = Food(name:"veal_shank", real_name:"Veal Shank",carb_min: 0, carb_max: 5, unit: "4 Ounces")
    var vol_au_vents = Food(name:"vol_au_vents", real_name:"Vol Au Vents",carb_min: 5, carb_max: 15, unit: "Piece")
    var waffle = Food(name:"waffle", real_name:"Waffle",carb_min: 18, carb_max: 25, unit: "Waffle")
    var welsh_rarebit = Food(name:"welsh_rarebit", real_name:"Welsh Rarebit",carb_min: 10, carb_max: 30, unit: "Cup")
    var wonton = Food(name:"wonton", real_name:"Wonton",carb_min: 5, carb_max: 10, unit: "Piece")
    
    
    lazy var foods = Array<Food>([ahi_tuna, apple, apple_cake, apple_pie, apple_turnover, applesauce, baby_back_ribs, bacon_and_eggs, bagel, baked_alaska, baked_ziti, baklava, beef_bourguignon, beef_carpaccio, beef_jerky, beef_stew, beef_stroganoff, beef_tartar,beef_wellington,beet_salad, beignet, bibambap, birthday_cake, biryani, blanc_mange, blt, boston_cream_pie, bread_pudding, brisket, bruschetta, burrito, butterfly_pasta, cabbage_rolls, caesar_salad, cannoli, caprese, carbonara, carrot_cake, casserole, ceviche, cheesecake, chicken_adobo, chicken_curry, chicken_cutlet, chicken_kiev, chicken_marengo, chicken_nuggets, chicken_pot_pie, chicken_provencal, chicken_wing, chili, chop_suey, chow_mein, churro, clam_chowder, clams, club_sandwich, coconut_cake, coffee_cake, compote, coq_au_vin, cordon_blue, corn, couscous, crab, crabcake, crayfish, cream_puff, creme_brulee,croque, croquette, crumpet, cupcake, custard, deviled_eggs, donut, duck_leg, dumpling, eccles_cakes, eclair, edaname, egg_roll, eggs_benedict, eggs_florentine, enchilada, escargot, falafel, fettucine, fish_and_chips, fishsticks, flan, fois_gras, fondue, french_fries, french_onion, french_toast, fried_calamari, fried_chicken, fried_egg, fried_fish, fried_rice, fritatta, fritters, frozen_yogurt, fruit_cake, galantine, garlic_bread, gingerbread, gnocchi, grape_leaves, greek_salad, grilled_cheese, guacamole, gumbo, gyro, haggis, ham_and_eggs, ham_sandwich, hamburger, hardboiled_egg, hot_and_sour_soup, hot_dog, huevos_rancheros, hummus, ice_cream, jambalaya,kabobs, kedgeree, knish, kung_pao_chicken, lamb_kebab, lasagna, limpet, linguini, lobster, lobster_bisque, lobster_roll, lutefisk, mac_and_cheese, macaron, macaroni_salad, manciotti, marble_cake, matzo_ball_soup, meat_loaf, meatball, meatloaf, meringue, miso_soup, moo_goo_gai_pan, moussaka, mousse, muffin, mussels, nachos, oatmeal, omelette, onion_rings, orzo, oyster, pad_thai, pancake, panna_cotta, parfait, pate, peach_pie_cobbler, peking_duck, penne, pepper_steak_fajitas, pho, pierogi, pizza, poached_eggs, popcorn, pork_belly, pork_chop, pork_tenderloin, potato_salad, pound_cake, poutine, prime_rib, pulled_pork_sandwich, quesadilla, quiche, ramen, ravioli, red_velvet, rice_noodle, rice_pilaf, rigatoni, risotto, roast_chicken, roast_duck, roulade, rueben, salisbury_steak, salmon, samosa, sandwich, sashimi, sasuage, sasuage_roll, sauerkraut, savarin, scallops, scone, scottish_baked_eggs,scrambled_egg, scrambled_eggs, scrapple, seaweed_salad, sheperds_pie, short_rib, shrimp, shrimp_and_grits, sloppyjoe, souffle, sphaghetti, sphaghetti_bolognese, sponge_cake, spring_roll, steak, steak_tartar, stew, strawberry_shortcake, strudel, stuffed_pepper, stuffed_tomatoes, succotash, sukiyaki, sunny_side_up, sushi, syllabub, tacos, takoyaki, tamale, tamale_pie, tapenade, tempura, terrine, tetrazinni, tiramisu, toad_in_a_hole, toast, tortellini, tortilla, tostada, upside_down_cake, veal_shank, vol_au_vents, waffle, welsh_rarebit,wonton])
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        self.titleLabel.text = "Predicted Foods"
        print("worked")
        print(foods)
        //assigning strings/doubles to labels
        //strings for food names
        //taking struct variables and assinging them to srings for easier programming
        food1string = ImageRecognition.UniversalInfo.foodnameArray[0]
        food2string = ImageRecognition.UniversalInfo.foodnameArray[1]
        food3string = ImageRecognition.UniversalInfo.foodnameArray[2]
        food4string = ImageRecognition.UniversalInfo.foodnameArray[3]
        food5string = ImageRecognition.UniversalInfo.foodnameArray[4]
        
        //food labels
        self.food1.text = String (food1string)
        self.food2.text = String (food2string)
        self.food3.text = String (food3string)
        self.food4.text = String (food4string)
        self.food5.text = String (food5string)
        
        for item in foods {
            if(food1string == item.name){
                //print("yay")
                self.food1.text = item.real_name + ": " + String(item.carb_min) + "-" + String(item.carb_max) + "g per " + item.unit
            }
            if(food2string == item.name){
                //print("yay")
                self.food2.text = item.real_name + ": " + String(item.carb_min) + "-" + String(item.carb_max) + "g per " + item.unit
            }
            if(food3string == item.name){
                //print("yay")
                self.food3.text = item.real_name + ": " + String(item.carb_min) + "-" + String(item.carb_max) + "g per " + item.unit
            }
            if(food4string == item.name){
                //print("yay")
                self.food4.text = item.real_name + ": " + String(item.carb_min) + "-" + String(item.carb_max) + "g per " + item.unit
            }
            if(food5string == item.name){
                //print("yay")
                self.food5.text = item.real_name + ": " + String(item.carb_min) + "-" + String(item.carb_max) + "g per " + item.unit
            }
        }

        
       
        
        //images
        let appleString = "https://upload.wikimedia.org/wikipedia/commons/f/f4/Honeycrisp.jpg"
        image1.load(urlString: appleString)
        //self.image1.image = UIImage(named: food1string)
        self.image2.image = UIImage(named: food2string)
        self.image3.image = UIImage(named: food3string)
        self.image4.image = UIImage(named: food4string)
        self.image5.image = UIImage(named: food5string)
        
                
        
        
        
        //experimental db stuff
        
        //database has been imported and added to target, this gives the path to the db
        //declaring names of collumns
        //let name = Expression<String>("name")
        //let carb_min = Expression<Double>("carb_min")
        //let carb_max = Expression<Double>("carb_max")
        //let carb_unit = Expression<String>("carb_unit")
        
        //do statement with catch for error handling
        //do {
        //print("here")
        //let path = Bundle.main.path(forResource: "carb_database", ofType: "db")!
        //let db = try Connection(path, readonly: true)
        //let foods = Table("table1")
        //for food in try db.prepare(foods) {
        //    do {
        //        print("name: \(try food.get(name))")
        //    }
        //}
            //for food in try db.prepare(foods.select(name, carb_min)){
            //    print("Name: \(food[name]), Carb Minimum: \(food[carb_min])")
            //}
            
        //}
        //catch{
        //    print("Error!")
        //}
    }
}
//extension UIImageView {
//    func load(url: URL){
//        DispatchQueue.global().async {[weak self] in
//            if let data = try? Data(contentsOf: url){
//                if let image = UIImage(data: data) {
//                    DispatchQueue.main.async {
//                        self?.image = image
//                    }
//                }
//            }
//        }
//    }
//}

extension UIImageView {
    func load(urlString : String) {
        guard let url = URL(string: urlString)else {
            return
        }
        DispatchQueue.global().async { [weak self] in
            if let data = try? Data(contentsOf: url) {
                if let image = UIImage(data: data) {
                    DispatchQueue.main.async {
                        self?.image = image
                    }
                }
            }
        }
    }
}
