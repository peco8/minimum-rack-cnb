class Application
  def call(env)
    [200, {}, ['Welcome']]
  end
end

run Application.new
