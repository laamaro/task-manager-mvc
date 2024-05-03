require_relative 'view'
require_relative 'task'

class Controller
  def initialize(repository)
    @view = View.new
    @repo = repository
  end

  def create_task
    # 1 - perguntar pro usuário qual a descrição da task (view)
    description = @view.ask_user_for_description
    # 2 - criar uma instancia de task
    task = Task.new(description)
    # 3 - mandar o repositório salvar
    @repo.add_task(task)
  end

  def list
    # 1 - pedir pro repositório a array de tarefas
    tasks = @repo.all # array das tarefas
    # 2 - mandar a view mostrar a lista pro usuário
    @view.display_list(tasks)
  end

  def mark_completed
    # 0 - mostrar lista pro usuário
    list
    # 1 - perguntar pro usuário qual tarefa ele quer marcar como feita (view)
    index = @view.ask_user_for_index
    # 2 - mandar o repositorio achar a tarefa dentro da array
    task = @repo.find(index)
    # 3 - mudar o status do done
    task.mark_as_done!
    # 4 - mostrar lista atualizada
    list
  end

  def remove_task
    # 1 - perguntar pro usuário qual tarefa ele quer remover (view)
    index = @view.ask_user_for_index
    # 2 - pedir pro repositório remover ela da array de acordo com o index
    @repo.remove(index)
    # 3 - listar
    list
  end
end
