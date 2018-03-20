class StaticPagesController < ApplicationController
  def home
  end

  def new
    search_hash = { 2 => "ABC", 3 => "DEF", 4 => "GHI", 5 => "JKL", 6 => "MNO", 7 => "PQRS", 8 => "TUV", 9 => "WXYZ" }
    input_number_mapped_to_alphabates = []

    input_array_of_number = params[:search].split("")
    input_array_of_number.each do |c|
      input_number_mapped_to_alphabates << search_hash[c.to_i]
    end
    input_number_mapped_to_alphabates.compact!
    
    print "Array of all possible combinations"
    print input_number_mapped_to_alphabates
    d = []
    k = []
    input_number_mapped_to_alphabates.each_with_index do |e,i|
      if i == 0
        d = e.split("")
        k = d
      else
        d = k
        k = []
        d.each do |f|
          e.split("").each do |g|
            k << f + g
          end
        end
      end
    end
    print k
    @search_results = []
    query_string = ""
    k.length.times {
      query_string += "name LIKE ? OR "
    }
    query_string += "number LIKE ?"
    arguments = []
    arguments << k.map{ |k| "#{k}%"}
    arguments << "%#{params[:search]}%"
    arguments.flatten!

    @search_results << Contact.send(:where, query_string, *arguments)

    respond_to do |format|
      format.js
    end
  end
end
