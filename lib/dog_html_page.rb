class DogHTMLPage

  def initialize(dogarray)
    @dogarray = dogarray
  end

  def title
    if @dogarray.length != 0
      "<h1>There are #{@dogarray.length} dogs</h1>"
    else
      "<h1>There are no dogs</h1>"
    end
  end

  def list
    if @dogarray.length != 0
      dogs = (@dogarray.collect {|value| "<li>#{value[:name]}</li>"}).join('')
      "<ul>#{dogs}</ul>"
    else
      ""
    end
  end
end