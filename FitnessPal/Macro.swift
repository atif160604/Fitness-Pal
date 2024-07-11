//
//  Macro.swift
//  FitnessPal
//
//  Created by Atif Agboatwala on 7/8/24.
//

import Foundation
import SwiftUI

@Observable
class Macro {
    var name: String
    var amount: Int
    var consumed: Int
    var color: Color
    
    var overAte: Bool {
        return consumed > amount
    }
    
    var percent: Double {
        return Double(consumed) / Double(amount)
    }
    
    var remaining: Int {
        abs(amount - consumed)
    }
    
    init(name: String, amount: Int, consumed: Int, color: Color) {
        self.name = name
        self.amount = amount
        self.consumed = consumed
        self.color = color
    }
    
    static let proteinMacro = Macro(name: "Protein", amount: 150, consumed: 20, color: Color.orange)
    static let carbohydrateMacro = Macro(name: "Carbohydrate", amount: 100, consumed: 50, color: Color.blue)
    static let fatMacro = Macro(name: "Fat", amount: 50, consumed: 10, color: Color.purple)
}

/*
 
 {
   "from": 1,
   "to": 20,
   "count": 56,
   "_links": {
     "next": {
       "href": "https://api.edamam.com/api/recipes/v2?q=chicken&ingr=1-10&app_key=4374083a2d7301ccb249a367c9008ec6&_cont=CHcVQBtNNQphDmgVQ3tAEX4BYkt1AwcPRWFDAGsbY1xzBQEBUXlSBGBBYFF2DVcHFWBDBmMVMABxBwcORDdHCzERZl1xDQcVLnlSVSBMPkd5BgNK&health=alcohol-free&diet=high-protein&cuisineType=Indian&time=1-120&imageSize=SMALL&type=public&app_id=1ea03135",
       "title": "Next page"
     }
   },
   "hits": [
     {
       "recipe": {
         "uri": "http://www.edamam.com/ontologies/edamam.owl#recipe_f5661db828460a90e0e42806aa932dea",
         "label": "Yogurt Chicken Curry",
         "image": "https://edamam-product-images.s3.amazonaws.com/web-img/558/558a8e2e0ad05136c67153da25f83067.jpg?X-Amz-Security-Token=IQoJb3JpZ2luX2VjEJz%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaCXVzLWVhc3QtMSJIMEYCIQDgziNidPMoePc1k7boumOLjVkKNhj3YWTfsULN7QdzJQIhAN7utv75YXSCKS87YUBbpJcxMk2%2F6vA%2FtJDFbb%2FP%2FaT2KrgFCGQQABoMMTg3MDE3MTUwOTg2IgxwTZ0YWSXQqeIc5fYqlQVlGCd923yr4rWkE2DY0B1JLEohLc%2F4AEG7BYE6dViftDsYaTyp5cN7Ywyf%2FmlAH%2BmEic10JlPpAE7PUq4cz1CJ9IyFkrJwlpO2ws2KiJUS9r2XDtD%2BT75x5IrJPFAfULns%2F8%2F%2B0ZSoIYwwXbPr4Tg2oL6%2F6rMqJ1qmEw7PZzojGpAfnJ2qwn2zEvznVW9tFYTbTWmsOVYj8VcJXUpfpQQM%2FiCJwOE1dt3xRQlx7GnkFp50QMefQedG%2FJNTZm1HmRlmHcbMXYZ1iNUUxZyNqVznLKXab2vRjUCKUXXxbELMQA3CP%2FbYzonm%2BqjZlnpcuDHBM%2BIZh7vVOc2ErXAhr5TcQt67dXDpwfPpB28mCoe64TCu%2BipY%2FRDAZF0kgcMr3ZOsdfZU%2FIE3DZIKvg%2FgaPbfBkMOtARw%2BF19VTpYyJ62KEG1aSh8KvAkZs8cJ9wL7D%2B%2FzDEQrHiluiWqEZS8yY1zXTxLPurtVKXVuvz8KzfhXIJDsVdbYOCYEl%2BHIUXnYLlf%2B8z4I%2Bo9%2F%2FuLDnild1zgYEcD69A%2BTRbKWxwgN6XuZv2UmHknplNYt3xRP8DUrngytVJzR1n55qlJ106aOK9oQ%2F1bIPOL%2FLF1jSAF90%2F3U3%2BLl%2B3pqT8h0n%2FqiuCa6wtq6sBixmq6iIXLRXYj7DvyELo%2Fq7JQNJOgOPuvQkDMWkp0Y%2FQ4FGxB%2FjImWBD2yoZ8MjYGjSzZcX3YaOBRd4lvcRIt054bwiEtGiDI%2FbPyXOwEDXEVYpdm7u%2B9F%2FSL0AelwTn55b88lRNsE5BmU877pp%2F5y9ApJGvPJqmcLh1Bs%2BkpfBQXDubkZ2pxz3O60SKUqM24hEKBjqRNZQXfvJV63P8BvH2W6S1hL3J2DVkHUts90VSCMMHZwLQGOrAB%2Bo7TpFGl7oVduv9yqroSaXBpwHZM9LqzhVXmkPpXsbzll0tQiDcOc7jzsrvmmcLH1uEWK6gNzcfgZrUJlPEXy%2Bj%2FdnHUklEdgIVFFq2z0XijA77CWtV3XxE%2BNqIyCaZyIq8SU2FGQuV2CCWJdq2NiUptgIBF8KBgb0x27XDW4TDNsQUkpkXoC4n%2F03povMGuZNtgLzwrB%2FRo3LcxrSOHMmBqiNADkCZ4o9Beapb%2FHOs%3D&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Date=20240711T201319Z&X-Amz-SignedHeaders=host&X-Amz-Expires=3600&X-Amz-Credential=ASIASXCYXIIFFBHH2PIF%2F20240711%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Signature=8ab5e363484d56df91c079a9813bb2560bcd7d811b98951adc4e6da1707cd297",
         "images": {
           "THUMBNAIL": {
             "url": "https://edamam-product-images.s3.amazonaws.com/web-img/558/558a8e2e0ad05136c67153da25f83067-s.jpg?X-Amz-Security-Token=IQoJb3JpZ2luX2VjEJz%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaCXVzLWVhc3QtMSJIMEYCIQDgziNidPMoePc1k7boumOLjVkKNhj3YWTfsULN7QdzJQIhAN7utv75YXSCKS87YUBbpJcxMk2%2F6vA%2FtJDFbb%2FP%2FaT2KrgFCGQQABoMMTg3MDE3MTUwOTg2IgxwTZ0YWSXQqeIc5fYqlQVlGCd923yr4rWkE2DY0B1JLEohLc%2F4AEG7BYE6dViftDsYaTyp5cN7Ywyf%2FmlAH%2BmEic10JlPpAE7PUq4cz1CJ9IyFkrJwlpO2ws2KiJUS9r2XDtD%2BT75x5IrJPFAfULns%2F8%2F%2B0ZSoIYwwXbPr4Tg2oL6%2F6rMqJ1qmEw7PZzojGpAfnJ2qwn2zEvznVW9tFYTbTWmsOVYj8VcJXUpfpQQM%2FiCJwOE1dt3xRQlx7GnkFp50QMefQedG%2FJNTZm1HmRlmHcbMXYZ1iNUUxZyNqVznLKXab2vRjUCKUXXxbELMQA3CP%2FbYzonm%2BqjZlnpcuDHBM%2BIZh7vVOc2ErXAhr5TcQt67dXDpwfPpB28mCoe64TCu%2BipY%2FRDAZF0kgcMr3ZOsdfZU%2FIE3DZIKvg%2FgaPbfBkMOtARw%2BF19VTpYyJ62KEG1aSh8KvAkZs8cJ9wL7D%2B%2FzDEQrHiluiWqEZS8yY1zXTxLPurtVKXVuvz8KzfhXIJDsVdbYOCYEl%2BHIUXnYLlf%2B8z4I%2Bo9%2F%2FuLDnild1zgYEcD69A%2BTRbKWxwgN6XuZv2UmHknplNYt3xRP8DUrngytVJzR1n55qlJ106aOK9oQ%2F1bIPOL%2FLF1jSAF90%2F3U3%2BLl%2B3pqT8h0n%2FqiuCa6wtq6sBixmq6iIXLRXYj7DvyELo%2Fq7JQNJOgOPuvQkDMWkp0Y%2FQ4FGxB%2FjImWBD2yoZ8MjYGjSzZcX3YaOBRd4lvcRIt054bwiEtGiDI%2FbPyXOwEDXEVYpdm7u%2B9F%2FSL0AelwTn55b88lRNsE5BmU877pp%2F5y9ApJGvPJqmcLh1Bs%2BkpfBQXDubkZ2pxz3O60SKUqM24hEKBjqRNZQXfvJV63P8BvH2W6S1hL3J2DVkHUts90VSCMMHZwLQGOrAB%2Bo7TpFGl7oVduv9yqroSaXBpwHZM9LqzhVXmkPpXsbzll0tQiDcOc7jzsrvmmcLH1uEWK6gNzcfgZrUJlPEXy%2Bj%2FdnHUklEdgIVFFq2z0XijA77CWtV3XxE%2BNqIyCaZyIq8SU2FGQuV2CCWJdq2NiUptgIBF8KBgb0x27XDW4TDNsQUkpkXoC4n%2F03povMGuZNtgLzwrB%2FRo3LcxrSOHMmBqiNADkCZ4o9Beapb%2FHOs%3D&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Date=20240711T201319Z&X-Amz-SignedHeaders=host&X-Amz-Expires=3600&X-Amz-Credential=ASIASXCYXIIFFBHH2PIF%2F20240711%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Signature=dce22f01b58947254258bb6ae7041aa15b83d17bf9659b52d29a94942d0f6a1c",
             "width": 100,
             "height": 100
           },
           "SMALL": {
             "url": "https://edamam-product-images.s3.amazonaws.com/web-img/558/558a8e2e0ad05136c67153da25f83067-m.jpg?X-Amz-Security-Token=IQoJb3JpZ2luX2VjEJz%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaCXVzLWVhc3QtMSJIMEYCIQDgziNidPMoePc1k7boumOLjVkKNhj3YWTfsULN7QdzJQIhAN7utv75YXSCKS87YUBbpJcxMk2%2F6vA%2FtJDFbb%2FP%2FaT2KrgFCGQQABoMMTg3MDE3MTUwOTg2IgxwTZ0YWSXQqeIc5fYqlQVlGCd923yr4rWkE2DY0B1JLEohLc%2F4AEG7BYE6dViftDsYaTyp5cN7Ywyf%2FmlAH%2BmEic10JlPpAE7PUq4cz1CJ9IyFkrJwlpO2ws2KiJUS9r2XDtD%2BT75x5IrJPFAfULns%2F8%2F%2B0ZSoIYwwXbPr4Tg2oL6%2F6rMqJ1qmEw7PZzojGpAfnJ2qwn2zEvznVW9tFYTbTWmsOVYj8VcJXUpfpQQM%2FiCJwOE1dt3xRQlx7GnkFp50QMefQedG%2FJNTZm1HmRlmHcbMXYZ1iNUUxZyNqVznLKXab2vRjUCKUXXxbELMQA3CP%2FbYzonm%2BqjZlnpcuDHBM%2BIZh7vVOc2ErXAhr5TcQt67dXDpwfPpB28mCoe64TCu%2BipY%2FRDAZF0kgcMr3ZOsdfZU%2FIE3DZIKvg%2FgaPbfBkMOtARw%2BF19VTpYyJ62KEG1aSh8KvAkZs8cJ9wL7D%2B%2FzDEQrHiluiWqEZS8yY1zXTxLPurtVKXVuvz8KzfhXIJDsVdbYOCYEl%2BHIUXnYLlf%2B8z4I%2Bo9%2F%2FuLDnild1zgYEcD69A%2BTRbKWxwgN6XuZv2UmHknplNYt3xRP8DUrngytVJzR1n55qlJ106aOK9oQ%2F1bIPOL%2FLF1jSAF90%2F3U3%2BLl%2B3pqT8h0n%2FqiuCa6wtq6sBixmq6iIXLRXYj7DvyELo%2Fq7JQNJOgOPuvQkDMWkp0Y%2FQ4FGxB%2FjImWBD2yoZ8MjYGjSzZcX3YaOBRd4lvcRIt054bwiEtGiDI%2FbPyXOwEDXEVYpdm7u%2B9F%2FSL0AelwTn55b88lRNsE5BmU877pp%2F5y9ApJGvPJqmcLh1Bs%2BkpfBQXDubkZ2pxz3O60SKUqM24hEKBjqRNZQXfvJV63P8BvH2W6S1hL3J2DVkHUts90VSCMMHZwLQGOrAB%2Bo7TpFGl7oVduv9yqroSaXBpwHZM9LqzhVXmkPpXsbzll0tQiDcOc7jzsrvmmcLH1uEWK6gNzcfgZrUJlPEXy%2Bj%2FdnHUklEdgIVFFq2z0XijA77CWtV3XxE%2BNqIyCaZyIq8SU2FGQuV2CCWJdq2NiUptgIBF8KBgb0x27XDW4TDNsQUkpkXoC4n%2F03povMGuZNtgLzwrB%2FRo3LcxrSOHMmBqiNADkCZ4o9Beapb%2FHOs%3D&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Date=20240711T201319Z&X-Amz-SignedHeaders=host&X-Amz-Expires=3600&X-Amz-Credential=ASIASXCYXIIFFBHH2PIF%2F20240711%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Signature=db773a7630547677de783fc518e3ea6c1d772c4525a3da04e94c6360b4cb760e",
             "width": 200,
             "height": 200
           },
           "REGULAR": {
             "url": "https://edamam-product-images.s3.amazonaws.com/web-img/558/558a8e2e0ad05136c67153da25f83067.jpg?X-Amz-Security-Token=IQoJb3JpZ2luX2VjEJz%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaCXVzLWVhc3QtMSJIMEYCIQDgziNidPMoePc1k7boumOLjVkKNhj3YWTfsULN7QdzJQIhAN7utv75YXSCKS87YUBbpJcxMk2%2F6vA%2FtJDFbb%2FP%2FaT2KrgFCGQQABoMMTg3MDE3MTUwOTg2IgxwTZ0YWSXQqeIc5fYqlQVlGCd923yr4rWkE2DY0B1JLEohLc%2F4AEG7BYE6dViftDsYaTyp5cN7Ywyf%2FmlAH%2BmEic10JlPpAE7PUq4cz1CJ9IyFkrJwlpO2ws2KiJUS9r2XDtD%2BT75x5IrJPFAfULns%2F8%2F%2B0ZSoIYwwXbPr4Tg2oL6%2F6rMqJ1qmEw7PZzojGpAfnJ2qwn2zEvznVW9tFYTbTWmsOVYj8VcJXUpfpQQM%2FiCJwOE1dt3xRQlx7GnkFp50QMefQedG%2FJNTZm1HmRlmHcbMXYZ1iNUUxZyNqVznLKXab2vRjUCKUXXxbELMQA3CP%2FbYzonm%2BqjZlnpcuDHBM%2BIZh7vVOc2ErXAhr5TcQt67dXDpwfPpB28mCoe64TCu%2BipY%2FRDAZF0kgcMr3ZOsdfZU%2FIE3DZIKvg%2FgaPbfBkMOtARw%2BF19VTpYyJ62KEG1aSh8KvAkZs8cJ9wL7D%2B%2FzDEQrHiluiWqEZS8yY1zXTxLPurtVKXVuvz8KzfhXIJDsVdbYOCYEl%2BHIUXnYLlf%2B8z4I%2Bo9%2F%2FuLDnild1zgYEcD69A%2BTRbKWxwgN6XuZv2UmHknplNYt3xRP8DUrngytVJzR1n55qlJ106aOK9oQ%2F1bIPOL%2FLF1jSAF90%2F3U3%2BLl%2B3pqT8h0n%2FqiuCa6wtq6sBixmq6iIXLRXYj7DvyELo%2Fq7JQNJOgOPuvQkDMWkp0Y%2FQ4FGxB%2FjImWBD2yoZ8MjYGjSzZcX3YaOBRd4lvcRIt054bwiEtGiDI%2FbPyXOwEDXEVYpdm7u%2B9F%2FSL0AelwTn55b88lRNsE5BmU877pp%2F5y9ApJGvPJqmcLh1Bs%2BkpfBQXDubkZ2pxz3O60SKUqM24hEKBjqRNZQXfvJV63P8BvH2W6S1hL3J2DVkHUts90VSCMMHZwLQGOrAB%2Bo7TpFGl7oVduv9yqroSaXBpwHZM9LqzhVXmkPpXsbzll0tQiDcOc7jzsrvmmcLH1uEWK6gNzcfgZrUJlPEXy%2Bj%2FdnHUklEdgIVFFq2z0XijA77CWtV3XxE%2BNqIyCaZyIq8SU2FGQuV2CCWJdq2NiUptgIBF8KBgb0x27XDW4TDNsQUkpkXoC4n%2F03povMGuZNtgLzwrB%2FRo3LcxrSOHMmBqiNADkCZ4o9Beapb%2FHOs%3D&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Date=20240711T201319Z&X-Amz-SignedHeaders=host&X-Amz-Expires=3600&X-Amz-Credential=ASIASXCYXIIFFBHH2PIF%2F20240711%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Signature=8ab5e363484d56df91c079a9813bb2560bcd7d811b98951adc4e6da1707cd297",
             "width": 300,
             "height": 300
           }
         },
         "source": "Allrecipes",
         "url": "https://www.allrecipes.com/recipe/17268/yogurt-chicken-curry/",
         "shareAs": "http://www.edamam.com/recipe/yogurt-chicken-curry-f5661db828460a90e0e42806aa932dea/chicken/1-10-ing/alcohol-free/high-protein",
         "yield": 4,
         "dietLabels": [
           "High-Protein",
           "Low-Carb"
         ],
         "healthLabels": [
           "Sugar-Conscious",
           "Keto-Friendly",
           "Mediterranean",
           "Gluten-Free",
           "Wheat-Free",
           "Egg-Free",
           "Peanut-Free",
           "Tree-Nut-Free",
           "Soy-Free",
           "Fish-Free",
           "Shellfish-Free",
           "Pork-Free",
           "Red-Meat-Free",
           "Crustacean-Free",
           "Celery-Free",
           "Mustard-Free",
           "Sesame-Free",
           "Lupine-Free",
           "Mollusk-Free",
           "Alcohol-Free",
           "No oil added",
           "Sulfite-Free"
         ],
         "cautions": [],
         "ingredientLines": [
           "4 skinless, boneless chicken breast halves - cut into bite size pieces",
           "1 cup water",
           "salt and pepper to taste",
           "1 cup yogurt",
           "1 teaspoon mild curry powder"
         ],
         "ingredients": [
           {
             "text": "4 skinless, boneless chicken breast halves - cut into bite size pieces",
             "quantity": 4,
             "measure": "<unit>",
             "food": "skinless, boneless chicken breast halves",
             "weight": 1088,
             "foodCategory": "Poultry",
             "foodId": "food_bdrxu94aj3x2djbpur8dhagfhkcn",
             "image": "https://www.edamam.com/food-img/da5/da510379d3650787338ca16fb69f4c94.jpg"
           },
           {
             "text": "1 cup water",
             "quantity": 1,
             "measure": "cup",
             "food": "water",
             "weight": 236.5882365,
             "foodCategory": "water",
             "foodId": "food_a99vzubbk1ayrsad318rvbzr3dh0",
             "image": "https://www.edamam.com/food-img/5dd/5dd9d1361847b2ca53c4b19a8f92627e.jpg"
           },
           {
             "text": "salt and pepper to taste",
             "quantity": 0,
             "measure": null,
             "food": "salt",
             "weight": 9.429529419,
             "foodCategory": "Condiments and sauces",
             "foodId": "food_btxz81db72hwbra2pncvebzzzum9",
             "image": "https://www.edamam.com/food-img/694/6943ea510918c6025795e8dc6e6eaaeb.jpg"
           },
           {
             "text": "salt and pepper to taste",
             "quantity": 0,
             "measure": null,
             "food": "pepper",
             "weight": 4.7147647095,
             "foodCategory": "Condiments and sauces",
             "foodId": "food_b6ywzluaaxv02wad7s1r9ag4py89",
             "image": "https://www.edamam.com/food-img/c6e/c6e5c3bd8d3bc15175d9766971a4d1b2.jpg"
           },
           {
             "text": "1 cup yogurt",
             "quantity": 1,
             "measure": "cup",
             "food": "yogurt",
             "weight": 245,
             "foodCategory": "yogurt",
             "foodId": "food_a79ojfkbgdeekgblqmky9bunr8f6",
             "image": "https://www.edamam.com/food-img/933/933eb3791b3a2175e007f1607d56b7e2.jpg"
           },
           {
             "text": "1 teaspoon mild curry powder",
             "quantity": 1,
             "measure": "teaspoon",
             "food": "curry powder",
             "weight": 2,
             "foodCategory": "Condiments and sauces",
             "foodId": "food_ao4koeoajh7yjxaq2knzrbv55y8o",
             "image": "https://www.edamam.com/food-img/9ce/9ce02a2887385fd2adaec8dd8adcf9c5.jpg"
           }
         ],
         "calories": 1473.3840594208452,
         "totalCO2Emissions": 16605.65198482179,
         "co2EmissionsClass": "G",
         "totalWeight": 1584.1687605415896,
         "totalTime": 25,
         "cuisineType": [
           "indian"
         ],
         "mealType": [
           "lunch/dinner"
         ],
         "dishType": [
           "main course"
         ],
         "totalNutrients": {
           "ENERC_KCAL": {
             "label": "Energy",
             "quantity": 1473.3840594208452,
             "unit": "kcal"
           },
           "FAT": {
             "label": "Fat",
             "quantity": 36.901801329529704,
             "unit": "g"
           },
           "FASAT": {
             "label": "Saturated",
             "quantity": 11.36897522946205,
             "unit": "g"
           },
           "FATRN": {
             "label": "Trans",
             "quantity": 0.07616,
             "unit": "g"
           },
           "FAMS": {
             "label": "Monounsaturated",
             "quantity": 9.894612111203205,
             "unit": "g"
           },
           "FAPU": {
             "label": "Polyunsaturated",
             "quantity": 4.94677335180081,
             "unit": "g"
           },
           "CHOCDF": {
             "label": "Carbs",
             "quantity": 15.550449414080001,
             "unit": "g"
           },
           "CHOCDF.net": {
             "label": "Carbohydrates (net)",
             "quantity": 13.293613942576501,
             "unit": "g"
           },
           "FIBTG": {
             "label": "Fiber",
             "quantity": 2.2568354715035,
             "unit": "g"
           },
           "SUGAR": {
             "label": "Sugars",
             "quantity": 11.5023744941408,
             "unit": "g"
           },
           "PROCNT": {
             "label": "Protein",
             "quantity": 254.07783552978802,
             "unit": "g"
           },
           "CHOLE": {
             "label": "Cholesterol",
             "quantity": 826.09,
             "unit": "mg"
           },
           "NA": {
             "label": "Sodium",
             "quantity": 3665.661103252668,
             "unit": "mg"
           },
           "CA": {
             "label": "Calcium",
             "quantity": 391.22183699778657,
             "unit": "mg"
           },
           "MG": {
             "label": "Magnesium",
             "quantity": 349.6467876115659,
             "unit": "mg"
           },
           "K": {
             "label": "Potassium",
             "quantity": 4100.405631382917,
             "unit": "mg"
           },
           "FE": {
             "label": "Iron",
             "quantity": 5.013860659088344,
             "unit": "mg"
           },
           "ZN": {
             "label": "Zinc",
             "quantity": 9.02553028302514,
             "unit": "mg"
           },
           "P": {
             "label": "Phosphorus",
             "quantity": 2564.97932824101,
             "unit": "mg"
           },
           "VITA_RAE": {
             "label": "Vitamin A",
             "quantity": 165.36298647156502,
             "unit": "µg"
           },
           "VITC": {
             "label": "Vitamin C",
             "quantity": 1.239,
             "unit": "mg"
           },
           "THIA": {
             "label": "Thiamin (B1)",
             "quantity": 1.10238194588626,
             "unit": "mg"
           },
           "RIBF": {
             "label": "Riboflavin (B2)",
             "quantity": 2.2861465764771003,
             "unit": "mg"
           },
           "NIA": {
             "label": "Niacin (B3)",
             "quantity": 104.75069831768832,
             "unit": "mg"
           },
           "VITB6A": {
             "label": "Vitamin B6",
             "quantity": 8.917899965304647,
             "unit": "mg"
           },
           "FOLDFE": {
             "label": "Folate equivalent (total)",
             "quantity": 116.99151000061501,
             "unit": "µg"
           },
           "FOLFD": {
             "label": "Folate (food)",
             "quantity": 116.99151000061501,
             "unit": "µg"
           },
           "FOLAC": {
             "label": "Folic acid",
             "quantity": 0,
             "unit": "µg"
           },
           "VITB12": {
             "label": "Vitamin B12",
             "quantity": 3.1913,
             "unit": "µg"
           },
           "VITD": {
             "label": "Vitamin D",
             "quantity": 0.24500000000000002,
             "unit": "µg"
           },
           "TOCPHA": {
             "label": "Vitamin E",
             "quantity": 6.792833552978802,
             "unit": "mg"
           },
           "VITK1": {
             "label": "Vitamin K",
             "quantity": 10.218214123580001,
             "unit": "µg"
           },
           "WATER": {
             "label": "Water",
             "quantity": 1256.5197253708518,
             "unit": "g"
           }
         },
         "totalDaily": {
           "ENERC_KCAL": {
             "label": "Energy",
             "quantity": 73.66920297104227,
             "unit": "%"
           },
           "FAT": {
             "label": "Fat",
             "quantity": 56.77200204543031,
             "unit": "%"
           },
           "FASAT": {
             "label": "Saturated",
             "quantity": 56.84487614731025,
             "unit": "%"
           },
           "CHOCDF": {
             "label": "Carbs",
             "quantity": 5.183483138026667,
             "unit": "%"
           },
           "FIBTG": {
             "label": "Fiber",
             "quantity": 9.027341886014,
             "unit": "%"
           },
           "PROCNT": {
             "label": "Protein",
             "quantity": 508.15567105957604,
             "unit": "%"
           },
           "CHOLE": {
             "label": "Cholesterol",
             "quantity": 275.36333333333334,
             "unit": "%"
           },
           "NA": {
             "label": "Sodium",
             "quantity": 152.7358793021945,
             "unit": "%"
           },
           "CA": {
             "label": "Calcium",
             "quantity": 39.12218369977866,
             "unit": "%"
           },
           "MG": {
             "label": "Magnesium",
             "quantity": 83.24923514561092,
             "unit": "%"
           },
           "K": {
             "label": "Potassium",
             "quantity": 87.24267300814716,
             "unit": "%"
           },
           "FE": {
             "label": "Iron",
             "quantity": 27.854781439379693,
             "unit": "%"
           },
           "ZN": {
             "label": "Zinc",
             "quantity": 82.05027530022853,
             "unit": "%"
           },
           "P": {
             "label": "Phosphorus",
             "quantity": 366.4256183201443,
             "unit": "%"
           },
           "VITA_RAE": {
             "label": "Vitamin A",
             "quantity": 18.373665163507223,
             "unit": "%"
           },
           "VITC": {
             "label": "Vitamin C",
             "quantity": 1.3766666666666667,
             "unit": "%"
           },
           "THIA": {
             "label": "Thiamin (B1)",
             "quantity": 91.86516215718834,
             "unit": "%"
           },
           "RIBF": {
             "label": "Riboflavin (B2)",
             "quantity": 175.85742895977694,
             "unit": "%"
           },
           "NIA": {
             "label": "Niacin (B3)",
             "quantity": 654.691864485552,
             "unit": "%"
           },
           "VITB6A": {
             "label": "Vitamin B6",
             "quantity": 685.9923050234344,
             "unit": "%"
           },
           "FOLDFE": {
             "label": "Folate equivalent (total)",
             "quantity": 29.247877500153756,
             "unit": "%"
           },
           "VITB12": {
             "label": "Vitamin B12",
             "quantity": 132.97083333333333,
             "unit": "%"
           },
           "VITD": {
             "label": "Vitamin D",
             "quantity": 1.6333333333333335,
             "unit": "%"
           },
           "TOCPHA": {
             "label": "Vitamin E",
             "quantity": 45.28555701985868,
             "unit": "%"
           },
           "VITK1": {
             "label": "Vitamin K",
             "quantity": 8.515178436316667,
             "unit": "%"
           }
         },
         "digest": [
           {
             "label": "Fat",
             "tag": "FAT",
             "schemaOrgTag": "fatContent",
             "total": 36.901801329529704,
             "hasRDI": true,
             "daily": 56.77200204543031,
             "unit": "g",
             "sub": [
               {
                 "label": "Saturated",
                 "tag": "FASAT",
                 "schemaOrgTag": "saturatedFatContent",
                 "total": 11.36897522946205,
                 "hasRDI": true,
                 "daily": 56.84487614731025,
                 "unit": "g"
               },
               {
                 "label": "Trans",
                 "tag": "FATRN",
                 "schemaOrgTag": "transFatContent",
                 "total": 0.07616,
                 "hasRDI": false,
                 "daily": 0,
                 "unit": "g"
               },
               {
                 "label": "Monounsaturated",
                 "tag": "FAMS",
                 "schemaOrgTag": null,
                 "total": 9.894612111203205,
                 "hasRDI": false,
                 "daily": 0,
                 "unit": "g"
               },
               {
                 "label": "Polyunsaturated",
                 "tag": "FAPU",
                 "schemaOrgTag": null,
                 "total": 4.94677335180081,
                 "hasRDI": false,
                 "daily": 0,
                 "unit": "g"
               }
             ]
           },
           {
             "label": "Carbs",
             "tag": "CHOCDF",
             "schemaOrgTag": "carbohydrateContent",
             "total": 15.550449414080001,
             "hasRDI": true,
             "daily": 5.183483138026667,
             "unit": "g",
             "sub": [
               {
                 "label": "Carbs (net)",
                 "tag": "CHOCDF.net",
                 "schemaOrgTag": null,
                 "total": 13.293613942576501,
                 "hasRDI": false,
                 "daily": 0,
                 "unit": "g"
               },
               {
                 "label": "Fiber",
                 "tag": "FIBTG",
                 "schemaOrgTag": "fiberContent",
                 "total": 2.2568354715035,
                 "hasRDI": true,
                 "daily": 9.027341886014,
                 "unit": "g"
               },
               {
                 "label": "Sugars",
                 "tag": "SUGAR",
                 "schemaOrgTag": "sugarContent",
                 "total": 11.5023744941408,
                 "hasRDI": false,
                 "daily": 0,
                 "unit": "g"
               },
               {
                 "label": "Sugars, added",
                 "tag": "SUGAR.added",
                 "schemaOrgTag": null,
                 "total": 0,
                 "hasRDI": false,
                 "daily": 0,
                 "unit": "g"
               }
             ]
           },
           {
             "label": "Protein",
             "tag": "PROCNT",
             "schemaOrgTag": "proteinContent",
             "total": 254.07783552978802,
             "hasRDI": true,
             "daily": 508.15567105957604,
             "unit": "g"
           },
           {
             "label": "Cholesterol",
             "tag": "CHOLE",
             "schemaOrgTag": "cholesterolContent",
             "total": 826.09,
             "hasRDI": true,
             "daily": 275.36333333333334,
             "unit": "mg"
           },
           {
             "label": "Sodium",
             "tag": "NA",
             "schemaOrgTag": "sodiumContent",
             "total": 3665.661103252668,
             "hasRDI": true,
             "daily": 152.7358793021945,
             "unit": "mg"
           },
           {
             "label": "Calcium",
             "tag": "CA",
             "schemaOrgTag": null,
             "total": 391.22183699778657,
             "hasRDI": true,
             "daily": 39.12218369977866,
             "unit": "mg"
           },
           {
             "label": "Magnesium",
             "tag": "MG",
             "schemaOrgTag": null,
             "total": 349.6467876115659,
             "hasRDI": true,
             "daily": 83.24923514561092,
             "unit": "mg"
           },
           {
             "label": "Potassium",
             "tag": "K",
             "schemaOrgTag": null,
             "total": 4100.405631382917,
             "hasRDI": true,
             "daily": 87.24267300814716,
             "unit": "mg"
           },
           {
             "label": "Iron",
             "tag": "FE",
             "schemaOrgTag": null,
             "total": 5.013860659088344,
             "hasRDI": true,
             "daily": 27.854781439379693,
             "unit": "mg"
           },
           {
             "label": "Zinc",
             "tag": "ZN",
             "schemaOrgTag": null,
             "total": 9.02553028302514,
             "hasRDI": true,
             "daily": 82.05027530022853,
             "unit": "mg"
           },
           {
             "label": "Phosphorus",
             "tag": "P",
             "schemaOrgTag": null,
             "total": 2564.97932824101,
             "hasRDI": true,
             "daily": 366.4256183201443,
             "unit": "mg"
           },
           {
             "label": "Vitamin A",
             "tag": "VITA_RAE",
             "schemaOrgTag": null,
             "total": 165.36298647156502,
             "hasRDI": true,
             "daily": 18.373665163507223,
             "unit": "µg"
           },
           {
             "label": "Vitamin C",
             "tag": "VITC",
             "schemaOrgTag": null,
             "total": 1.239,
             "hasRDI": true,
             "daily": 1.3766666666666667,
             "unit": "mg"
           },
           {
             "label": "Thiamin (B1)",
             "tag": "THIA",
             "schemaOrgTag": null,
             "total": 1.10238194588626,
             "hasRDI": true,
             "daily": 91.86516215718834,
             "unit": "mg"
           },
           {
             "label": "Riboflavin (B2)",
             "tag": "RIBF",
             "schemaOrgTag": null,
             "total": 2.2861465764771003,
             "hasRDI": true,
             "daily": 175.85742895977694,
             "unit": "mg"
           },
           {
             "label": "Niacin (B3)",
             "tag": "NIA",
             "schemaOrgTag": null,
             "total": 104.75069831768832,
             "hasRDI": true,
             "daily": 654.691864485552,
             "unit": "mg"
           },
           {
             "label": "Vitamin B6",
             "tag": "VITB6A",
             "schemaOrgTag": null,
             "total": 8.917899965304647,
             "hasRDI": true,
             "daily": 685.9923050234344,
             "unit": "mg"
           },
           {
             "label": "Folate equivalent (total)",
             "tag": "FOLDFE",
             "schemaOrgTag": null,
             "total": 116.99151000061501,
             "hasRDI": true,
             "daily": 29.247877500153756,
             "unit": "µg"
           },
           {
             "label": "Folate (food)",
             "tag": "FOLFD",
             "schemaOrgTag": null,
             "total": 116.99151000061501,
             "hasRDI": false,
             "daily": 0,
             "unit": "µg"
           },
           {
             "label": "Folic acid",
             "tag": "FOLAC",
             "schemaOrgTag": null,
             "total": 0,
             "hasRDI": false,
             "daily": 0,
             "unit": "µg"
           },
           {
             "label": "Vitamin B12",
             "tag": "VITB12",
             "schemaOrgTag": null,
             "total": 3.1913,
             "hasRDI": true,
             "daily": 132.97083333333333,
             "unit": "µg"
           },
           {
             "label": "Vitamin D",
             "tag": "VITD",
             "schemaOrgTag": null,
             "total": 0.24500000000000002,
             "hasRDI": true,
             "daily": 1.6333333333333335,
             "unit": "µg"
           },
           {
             "label": "Vitamin E",
             "tag": "TOCPHA",
             "schemaOrgTag": null,
             "total": 6.792833552978802,
             "hasRDI": true,
             "daily": 45.28555701985868,
             "unit": "mg"
           },
           {
             "label": "Vitamin K",
             "tag": "VITK1",
             "schemaOrgTag": null,
             "total": 10.218214123580001,
             "hasRDI": true,
             "daily": 8.515178436316667,
             "unit": "µg"
           },
           {
             "label": "Sugar alcohols",
             "tag": "Sugar.alcohol",
             "schemaOrgTag": null,
             "total": 0,
             "hasRDI": false,
             "daily": 0,
             "unit": "g"
           },
           {
             "label": "Water",
             "tag": "WATER",
             "schemaOrgTag": null,
             "total": 1256.5197253708518,
             "hasRDI": false,
             "daily": 0,
             "unit": "g"
           }
         ],
         "tags": [
           "Quick and Easy",
           "Low Fat",
           "Low-Fat",
           "Quick & Easy",
           "Low Calorie",
           "Poultry",
           "Seasonal",
           "Low-Carb",
           "Low Carb Recipes",
           "Chicken Recipes",
           "Summer",
           "Low-Calorie",
           "Everyday Cooking",
           "Low-Calorie Main Dishes",
           "200 Calorie Main Dishes",
           "300 Calorie Main Dishes",
           "Budget Cooking",
           "Summer Main Dishes",
           "300 Calorie Chicken Main Dishes",
           "Quick and Easy Chicken Dinners",
           "Low-Sodium",
           "Heart-Healthy Recipes",
           "Weight-Loss Recipes",
           "Low-Carb Chicken Main Dishes",
           "Low-Sodium Chicken Main Dishes",
           "200 Calorie Chicken Main Dishes",
           "Low-Fat Chicken Main Dishes"
         ]
       }
 */
