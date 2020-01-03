class StatsController < ApplicationController

    def show
        stat = Stat.find(params[:id])

        original_array = stat.image_details

        unique_tags = []

       original_array.map{ |element| 
          if !unique_tags.include?(element.tag) 
              unique_tags << element.tag
          end
        }
        
        result = unique_tags.map{ |tag|
            counter =0
            object = {}
            original_array.map{|element|
              if tag==element.tag
                counter+=1
              end
            }
            object[tag]=counter
            
            object
        }
        
        sorted = result.sort! { |a, b|  b.values[0] <=> a.values[0] }

        extended_array = original_array.map { |element| element.tag}

        if params[:extend]
          render json: extended_array.join(" ")
        else
        render json: sorted
        end
    end
end
