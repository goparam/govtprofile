child @notifications do

		attributes   :id,  :title, :description, :type, :document_content_type, :document_file_size, :document_updated_at
		node(:document_updated_at) {|notifications| notifications.document_updated_at.strftime("%d/%m/%Y") rescue ""}
		node(:link) { |notifications| "#{notifications.document.url(:download => true)}" unless notifications.document_file_name.blank? }

			
end
node(:total_notification) {@notifications.count}
node(:total_pages) {@notifications.total_pages}
