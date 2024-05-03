class Router
  def initialize(controller)
    @controller = controller
  end

  def run
    puts "Bem-Vindo!"

    loop do
      puts "O que você quer fazer agora?"
      puts "1 - Listar suas tarefas"
      puts "2 - Adicionar uma nova tarefa"
      puts "3 - Marcar tarefa como feita"
      puts "4 - Deletar tarefa"
      puts "5 - Sair do programa :("

      action = gets.chomp.to_i

      case action
      when 1
        puts "Listando tarefas:"
        @controller.list
      when 2
        puts "Adicione uma nova tarefa"
        @controller.create_task
      when 3
        puts "Marque alguma tarefa como feita"
        @controller.mark_completed
      when 4
        puts "Delete alguma tarefa"
        @controller.remove_task
      when 5
        puts "Tchaaaaau :((("
        break
      else
        puts "Ação inválida! Tente de novo..."
      end
    end
  end
end
