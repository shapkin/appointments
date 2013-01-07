xml.instruct! :xml, :version=>"1.0" 

xml.tag!("rows") do
  @appointmants.each do |appointmant|
    xml.tag!("row",{ "id" => appointmant.id }) do
      xml.tag!("cell", appointmant.title)
      xml.tag!("cell", appointmant.location)
      xml.tag!("cell", appointmant.notes)
    end
  end
end