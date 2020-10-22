const BASE_URL = 'http://localhost:3000'
const CATEGORIES_URL = `${BASE_URL}/categories`
const COCKTAILS_URL = `${BASE_URL}/cocktails`
const COCKTAIL_RECIPES_URL = `${BASE_URL}/cocktail_recipes`

let main = document.querySelector('main')

function fetchCategories(){
    fetch(CATEGORIES_URL)
    .then(res => res.json())
    .then(categories => categories.forEach(category => buildCategories(category)))
}
fetchCategories()

function buildCategories(category){

    let categoryCard = document.createElement('div')
    let recipeButton = document.createElement('button')
    

    categoryCard.textContent = category.name
    recipeButton.dataset.categoryId = category.id
    recipeButton.textContent = `Add a ${category.name} Recipe!`

    
    category.cocktail_recipes.map(cocktail_recipe => {
       let cocktailLi = document.createElement('li')
       let deleteRecipeButton = document.createElement('button')

       cocktailLi.dataset.id = cocktail_recipe.id
       cocktailLi.textContent = cocktail_recipe.name
       deleteRecipeButton.textContent = 'X'

       categoryCard.appendChild(cocktailLi)
       cocktailLi.appendChild(deleteRecipeButton)

       cocktailLi.addEventListener('click', () => buildCocktailRecipes(cocktail_recipe))

       deleteRecipeButton.addEventListener('click', () => {
            fetch(`http://localhost:3000//cocktail_recipes/${cocktail_recipe.id}`, {
            method: 'DELETE'
        })
            .then(response => response.json())
            .then(cocktail_recipe => {
            cocktailLi.remove()
            main.innerHTML = ''
            fetchCategories()

            
         })
            .catch((error) => {
             console.error('Error:', error);
         });

       })
   })

    let main = document.querySelector('main')

    categoryCard.className = 'card'
    categoryCard.dataset.id = category.id
   
    main.appendChild(categoryCard)
    categoryCard.appendChild(recipeButton)

    

    recipeButton.addEventListener('click', () =>  buildRecipeForm(category.id))

    function buildRecipeForm(value){
        console.log(value)
        main.innerHTML = ''
        let formItems = ['name', 'image_url', 'ingredients', 'preperation', 'cocktail_name']
    
        let form = document.createElement('form')
        let h2 = document.createElement('h2')
        let submit = document.createElement('input')
    
        h2.textContent = 'Add a Cocktail Recipe'
        submit.type = 'submit'
    
        formItems.forEach(item => {
            let label = document.createElement('label')
            let input = document.createElement('input')
            label.for = item
            label.textContent = item.toUpperCase()
            input.type = 'text'
            input.name = item
    
            form.append(label, input)
    
        })

        form.appendChild(submit)
        main.append(h2, form)

        form.addEventListener('submit', (e) => {
            e.preventDefault()
            handleSubmit(e, value)
        })

        function handleSubmit(e, value){
            let cocktail_recipe = {
            name: e.target.name.value,
            image_url: e.target.image_url.value,
            ingredients: e.target.ingredients.value,
            preperation: e.target.preperation.value,
            cocktail_name: e.target.cocktail_name.value,
            category_id: value,
            likes: 0
            
            
        
            }
            main.innerHTML = ''
            postCocktailRecipe(cocktail_recipe)
    
        }

        function postCocktailRecipe(cocktail_recipe){
            console.log(cocktail_recipe)
          
            fetch(COCKTAIL_RECIPES_URL, {
                method: 'POST',
                headers: {
                  'Content-Type': 'application/json',
                },
                body: JSON.stringify(cocktail_recipe),
              })
              .then(res => res.json())
              .then(cocktail_recipe => {
                buildCocktailRecipes(cocktail_recipe)
                
              })
              .catch((error) => {
                console.error('Error:', error);
              });
        }
       
    }
   
    
    }

    
    function buildCocktailRecipes(cocktail_recipe){
    
        main.innerHTML = 
    
    `
    <div id="selected_cocktail_recipe_info">
    <h2 id="cocktail_name">${cocktail_recipe.name}</h2>
    <div id= "inner_cocktail_info">
        <img src="${cocktail_recipe.image_url}">
        <h3>Ingredients:</h3>
        <p>${cocktail_recipe.ingredients}</p>
        <h3>Preparation:</h3>
        <p>${cocktail_recipe.preperation}</p>
        <h3>Likes:</h3>
        <p id= "likes">${cocktail_recipe.likes}</p>
        <button class="like-button">♥</button>
    </div>
    </div>
    `
     likeButton = document.querySelector('.like-button')
     likeButton.setAttribute('id', cocktail_recipe.id)
     likeButton.addEventListener('click', (e) => {
         console.log(e)
          addLikes(e, cocktail_recipe)
     })

     function addLikes(e, cocktail_recipe) {
        e.preventDefault()
        console.log(cocktail_recipe.likes)
        let more = cocktail_recipe.likes++
        console.log(more)
        // cocktail_recipe ++
      
        fetch(`http://localhost:3000//cocktail_recipes/${cocktail_recipe.id}`, {
            method: "PATCH",
            headers: {
              "Content-Type": "application/json",
              "Accept": "application/json"
            },
            body: JSON.stringify({
              "likes": more
            })
          })
          .then(res => res.json())
          .then((like_obj => {
            e.target.previousElementSibling.innerText = `${more}`;
          }))
      }

    }

    // function deleteCocktailRecipe(cocktail_recipe) {
        
        // fetch(`COCKTAIL_RECIPES_URL/${cocktail_recipe.id}`,{
        //     method: 'DELETE'
        // })
        // .then(response => response.json())
        // .then(cocktail_recipe => {
        //   container.remove()
        // })
        // .catch((error) => {
        //   console.error('Error:', error);
        // });
       

    
  

  
        
       
    








    //     form.addEventListener('submit', (e) => {
    //         fetch(COCKTAIL_RECIPES_URL, {
    //             method: 'POST', 
    //             headers: {
    //                 'Content-Type' : 'application/json',
    //                 Accept: 'application/json'
    //             },
    //             body: JSON.stringify({
    //                 'name': `${e.target.name.value}`,
    //                 'image_url' : `${e.target.image_url.value}` ,
    //                 'ingredients' : `${e.target.ingredients.value}`,
    //                 'preperation' : `${e.target.preperation.value}`,
    //             })

    //         })
    //         .then(res => res.json)
    //         .then(console.log(e))

    //     })


    // buildCocktailRecipes()

    // function fetchCocktailRecipes(){
    //     fetch(COCKTAIL_RECIPES_URL)
    //     .then(res => res.json()) 
    //     .then(cocktail_recipes => cocktail_recipes.forEach(cocktail_recipe => {
    //         console.log(cocktail_recipe.name)
    //         console.log(cocktail_recipe.ingredients)
    //         console.log(cocktail_recipe.preperation) 
    //      }) )
    // }
    // fetchCocktailRecipes()




 
     

    


   

  



