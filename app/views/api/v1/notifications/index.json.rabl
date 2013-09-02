
 node(:total) { |u|  @total rescue ""}
child @notifications do

	attributes   :id, :title, :description, :notificationType, :created_at 
end