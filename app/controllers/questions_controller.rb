class QuestionsController < ApplicationController
    def ask
    end

    def answer
        @questions = ["I am going to work", "?"]
        @answer = ["Great!", "Silly question, get dressed and go to work!", "I don't care, get dressed and go to work!"]
        if params[:question] == @questions[0]
            @answer = @answer[0]
        elsif params[:question].end_with?(@questions[1])
            @answer = @answer[1]
        else
            @answer = @answer[2]
        end 
    end
end
