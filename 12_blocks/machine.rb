# machine.rb


class Machine
  def do_something(*args)    
    c = 0
    args.count == 0? loop = 0 : loop = 1
      if loop == 1
        args[0].times do |x|
          c = yield         
        end
      else
        c= yield
      end
    return c
  end
end

