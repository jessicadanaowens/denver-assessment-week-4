class DogHTMLPage < ERBGenerator

  def initialize(dogarray)
    @dogarray = dogarray
  end

  def title
    template = <<-TEMPLATE
<%if @dogarray != nil%>
  <h1>There are <%=@dogarray.length%> dogs></h1>
<%else%>
  <h1>There are no dogs</h1>
<%end%>
    TEMPLATE

    options_hash = {:locals => {:dogarray => text}}
    erb(template, options_hash)
  end

  def list
    template = <<-TEMPLATE
<%if @dogarray != nil%>
  <%names = @dogarray.select {|value| value[:name]} %>
  <ul>
    <%=names.each {|name| <li>name</li>}%>
  </ul>
<%else%>
  <ul>''</ul>
<%end%>
    TEMPLATE
    options_hash = {:locals => {:dogarray => text}}
    erb(template, options_hash)


  end


end