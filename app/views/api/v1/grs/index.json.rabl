collection @grs
attributes :id, :name, :details, :unique_code, :document_content_type, :document_file_size
node(:link) { |gr| "http://#{self.request.host}:#{self.request.port}#{gr.document}" unless gr.document_file_name.blank? }
node(:gr_date) {|gr| gr.gr_date.strftime("%d/%m/%Y") rescue ""}
node(:department_name) {|gr| Department.find(gr.department_id).name.titlecase rescue ""}