class PlantsController < ApplicationController
     # Get all plants and display them to the frontend
     def index 
       plants = Plant.all 
       render json: plants
     end
     
     # Get a specific plant by ID
     def single_plant
       plant = Plant.find_by(id: params[:id])
       render json: plant
     end
     
     # Create a new plant
     def new_plant
       plant = Plant.create(name: params[:name], image: params[:image], price: params[:price])
       render json: plant 
     end
   end
   