# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
    Category.delete_all
    Cocktail.delete_all
    CocktailRecipe.delete_all
 

    cat1 = Category.create(name: 'Gin')
    cat2 = Category.create(name: 'Tequila')
    cat3 = Category.create(name: 'Mezcal')
    cat4 = Category.create(name: 'Rum')
    cat5 = Category.create(name: 'Whisky')
    cat6 = Category.create(name: 'Amaro')

    c1 = Cocktail.create(name: 'Negroni')
    c2 = Cocktail.create(name: 'Margarita')
    c3 = Cocktail.create(name: 'Martini')
    c4 = Cocktail.create(name: 'Spritz')
    c5 = Cocktail.create(name: 'Manhattan')
    c6 = Cocktail.create(name: 'Mai Tai')
    c7 = Cocktail.create(name: 'Paloma')


    cr1 = CocktailRecipe.create(category_id: cat1.id, cocktail_id: c1.id, name: 'Classic Negroni', image_url: 'https://assets.bonappetit.com/photos/57acdb9753e63daf11a4dac4/1:1/w_1600%2Cc_limit/negroni.jpg', ingredients: '1½ ounces gin, 1 ounce Carpano Antica Formula vermouth, ¾ ounce Campari, 1 orange', preperation: 'Stir gin, vermouth, and Campari in an ice-filled mixing glass until very cold, about 30 seconds. Strain cocktail through a Hawthorne strainer or a slotted spoon into an ice-filled rocks glass.', likes: 1)
    cr2 = CocktailRecipe.create(category_id: cat1.id, cocktail_id: c1.id, name: 'Clemintine Negroni', image_url: 'https://www.whitleyneill.com/wp-content/uploads/2018/04/whitley-neill-handcrafted-dry-gin-clementine-negroni.jpg', ingredients: '3 clementines, 3 dashes of orange bitters, 1/4 cup Hendricks Gin, 3 tablespoons sweet vermouth', preperation: 'Place 3 whole peeled clementines and orange bitters in cocktail shaker and muddle until clementines are broken down. Add gin, Campari, and vermouth. Fill shaker 3/4 full with ice. Shake vigorously 30 seconds. Strain into 2 Martini glasses, dividing equally. Garnish each with clementine slice', likes: 4)
    cr3 = CocktailRecipe.create(category_id: cat2.id, cocktail_id: c2.id, name: 'Cilantro Margarita', image_url: 'https://assets.bonappetit.com/photos/57ace840f1c801a1038bc8d3/1:1/w_1600%2Cc_limit/MARGARITA-1-of-1.jpg', ingredients: '2 ounces fresh lime juice, 2 ounces tequila blanco, 1 ounce simple syrup, ¼ cup fresh cilantro leaves with tender stems, Lime wedge (for serving)', preperation: 'Combine lime juice, tequila, simple syrup, and cilantro in a cocktail shaker. Fill shaker with ice and shake until outside of shaker is frosty, about 30 seconds. Strain into an ice-filled rocks glass. Garnish with lime wedge.', likes: 3)
    cr4 = CocktailRecipe.create(category_id: cat2.id, cocktail_id: c2.id, name: 'Agave Margarita', image_url: 'https://assets.bonappetit.com/photos/57af6b181b33404414975d71/1:1/w_1600%2Cc_limit/agave-margarita-6461.jpg', ingredients: 'Kosher salt2 lime slices or wedges, ¼ cup tequila blanco, 1 tablespoon agave syrup (nectar), ¼ cup fresh lime juice', preperation: 'Combine tequila, agave syrup, and juice in a cocktail shaker; fill with ice and shake well. Strain into prepared glass. Garnish with second lime slice.', likes: 5)
    cr5 = CocktailRecipe.create(category_id: cat1.id, cocktail_id: c3.id, name: 'Vesper Martini', image_url: 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/vesper-martini-ccebedf.jpg', ingredients: '3 ounces Plymouth Gin, 1 ounce premium vodka (such as Aylesbury Duck), ½ ounce Lillet Blanc, 1 lemon', preperation: 'Add gin, vodka, and Lillet Blanc and, using a bar spoon, rapidly stir 50 times in a circular motion in a strainer full of ice. Strain martini through a Hawthorne strainer (or a large slotted spoon) into a chilled coupe glass. Twist lemon peel over drink to express oils, then rub around rim of glass', likes: 1)
    cr6 = CocktailRecipe.create(category_id: cat6.id, cocktail_id: c4.id, name: 'Aperol Spritz', image_url: 'https://assets.bonappetit.com/photos/5aa9640bcb9d0f23ce858096/16:9/w_775%2Cc_limit/aperol-spritz.jpg', ingredients: '3 pitted green olives, 2 oz. Aperol, 3 oz. Prosecco, Splash of club soda', preperation: 'Thread olives onto a swizzle stick. Pour Aperol and Prosecco into a rocks glass filled with ice. Top off with soda and gently stir with swizzle stick with olives.', likes: 5)
    cr7 = CocktailRecipe.create(category_id: cat6.id, cocktail_id: c4.id, name: 'Campari Spritz', image_url: 'https://assets.bonappetit.com/photos/5aa9613a1902ad19a7cfd758/16:9/w_775%2Cc_limit/campari-spritz.jpg', ingredients: '2 oz. Campari, 3 oz. dry sparkling rosé, Splash of lemon soda, 1 lemon wheel', preperation: 'Pour Campari and rosé into a rocks glass filled with ice. Top off with soda, stir gently to combine, and add lemon wheel.', likes: 7)
    cr8 = CocktailRecipe.create(category_id: cat5.id, cocktail_id: c5.id, name: 'Deathbed Manhattan', image_url: 'https://static01.nyt.com/images/2015/12/02/dining/02RYE2/02RYE2-articleLarge.jpg', ingredients: '2 ounces rye whiskey, preferably Ragtime, ½ ounce Punt e Mes vermouth, ½ ounce Martini & Rossi sweet vermouth, 2 dashes Angostura bitters', preperation: 'Combine all the liquid ingredients in a mixing glass three-quarters filled with ice, and stir until chilled, about 30 seconds. Strain into a chilled coupe glass. Garnish with cherry,1 maraschino cherry, for garnish', likes: 3)
    cr9 = CocktailRecipe.create(category_id: cat5.id, cocktail_id: c5.id, name: 'Fanciulli Manhattan', image_url: 'https://static01.nyt.com/images/2019/01/09/dining/09greenerex1/merlin_148844385_f7606274-8dbb-438c-8766-5ff0748f5028-articleLarge.jpg', ingredients: '2 ounces bourbon, 1 ounce sweet vermouth, ¼ ounce Fernet Branca, Lemon twist, for garnish', preperation: 'In a mixing glass half-filled with ice, combine the bourbon, vermouth and Fernet Branca. Stir until chilled, about 30 seconds. Garnish with the lemon twist.', likes: 3)
    cr10 = CocktailRecipe.create(category_id: cat4.id, cocktail_id: c6.id, name: "Trader Vic's Mai Tai", image_url: 'https://thelosttikilounge.com/wp-content/uploads/2019/10/Original-Trader-Vic-Mai-Tai-Rum-Drink.jpg', ingredients:'1 ounce light rum, 1 ounce gold rum, ½ ounce orgeat syrup or amaretto, ½ ounce orange Curaçao or Cointreau, Juice of 1 lime.', preperation: 'Combine ingredients in a shaker with crushed or cracked ice and shake vigorously. Pour, with shaken ice, into a double old-fashioned glass and garnish with the spent lime shell and a sprig of fresh mint. Some, who live large and dangerously, like to float an extra 1/2 ounce of dark rum atop it.', likes: 10 )
    cr11 = CocktailRecipe.create(category_id: cat3.id, cocktail_id: c7.id, name: 'Mezcal Paloma', image_url:'https://assets.bonappetit.com/photos/57ae3888f1c801a1038bd14b/16:9/w_2560,c_limit/paloma.jpg', ingredients: 'Kosher salt, 1 grapefruit wedge, ¼ cup fresh grapefruit juice, 1 tablespoon fresh lime juice, 1 teaspoon sugar, ¼ cup mescal or tequila, ¼ cup club soda', preperation: 'Pour some kosher salt on a plate. Rub half of rim of a highball glass with grapefruit wedge; dip rim of glass in salt. Combine grapefruit juice, lime juice, and sugar in glass; stir until sugar is dissolved. Stir in mescal, add ice, and top off with club soda. Garnish with grapefruit wedge.', likes: 7 )
    cr12 = CocktailRecipe.create(category_id: cat2.id, cocktail_id: c2.id, name: 'Salted Watermelon Margarita', image_url: 'https://assets.bonappetit.com/photos/5b1596b74495717c782297db/16:9/w_2056,c_limit/salted-watermelon-margarita.jpg', ingredients: 'Kosher salt, 1 lime wheel, 3 oz. Salted Watermelon Juice or fresh watermelon juice, 1½ oz. tequila blanco, ¾ oz. fresh lime juice', preperation: 'Place some salt on a small plate. Rub rim of an old-fashioned or rocks glass with lime wheel (reserve for serving); dip in salt. Combine watermelon juice, tequila, and lime juice in a cocktail shaker. Fill shaker with ice, cover, and shake vigorously until outside of shaker is very cold, about 20 seconds. Strain cocktail through a Hawthorne strainer or a slotted spoon into prepared glass. Garnish with reserved lime wheel.', likes: 8)
    cr13 = CocktailRecipe.create(category_id: cat3.id, cocktail_id: c7.id, name: 'Mezcal Paloma Sour', image_url: 'https://images.themodernproper.com/billowy-turkey/production/posts/2017/Charred-Grapefruit-Mezcal-Paloma-Sour-14.jpg?w=1000&auto=compress%2Cformat&fit=crop&fp-x=0.5&fp-y=0.5&crop=focalpoint&s=1c66a5432a58c29f03d0f90961b4a5cc', ingredients: '1 medium grapefruit, 1.5 oz Mezcal creyente joven, 1/2 oz Simple syrup, 1 oz Club soda, 1 Egg white, 3 Dashes angostura bitters', preperation:'In a cocktail shaker filled with ⅓ cup ice, combine Mezcal, 2 ounces charred grapefruit juice, simple syrup, club soda, egg white and bitters. Cover with a tight fitting lid, shake vigorously for 15 seconds, and strain into a cocktail glass.', likes: 7)


    

   



