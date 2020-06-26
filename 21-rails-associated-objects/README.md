# Objectives

- Create and retrieve associated data
- Use the collection checkbox helper
- Use the collection select helper
- Build nested routes

# Questions

- select_tag:  Why are the docs so bad?
- strong_params permit/require, and with the private method


<%= f.collection_check_boxes(:ingredient_ids, Ingredient.all, :id, :name) %>
(or f.collection_select)

first argument is the object we are building _unless_ in a form_for, when we omit it

second: "ingredient_ids" - field on taco we are filling out

third:  Ingredient.all - collection of things to choose from

fourth: :id - method on an ingredient that will be the "value" of the HTML tag / params

fifth: :name -  method on an ingredient to display to the user