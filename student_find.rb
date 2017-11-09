# Finding needed student
class StudentFind
  def initialize(n_action, software, program, mechanick, economy)
    @action = n_action
    @software = software
    @program = program
    @mechanick = mechanick
    @economy = economy
  end

  def next_student
    case @action.downcase
    when 'software'
      puts(@software[rand(@software.size)])
    when 'robot'
      puts(@program[rand(@program.size)])
    when 'draft'
      puts(@mechanick[rand(@mechanick.size)])
    when 'caclulate_budget'
      puts(@economy[rand(@economy.size)])
    else
      puts('Please enter one of these values')
    end
  end
end
