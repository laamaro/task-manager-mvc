class View
  def ask_user_for_description
    puts "Qual a descrição da sua tarefa?"
    gets.chomp
  end

  def display_list(tasks)
    tasks.each_with_index do |task, index|
      x_mark = task.done? ? 'X' : ' '

      puts "#{index + 1} [#{x_mark}] - #{task.description}"
    end
  end

  def ask_user_for_index
    puts "Qual o número da tarefa que você quer?"
    gets.chomp.to_i - 1
  end
end
