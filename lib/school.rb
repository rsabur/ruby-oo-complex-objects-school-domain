require 'pry'

class School

    attr_accessor :roster

    def initialize(roster)
        @roster = {}
    end

    def add_student(name, grade)
         # binding.pry
        @roster[grade] ||= []
        @roster[grade] << name
    end

    def grade(grade)
        @roster[grade]
    end

    def sort 
        @roster.each do |grade, students|
            students.sort! 
        end
    end
end