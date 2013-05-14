collection @grs
attributes :id, :name, :details, :unique_code, :document_content_type, :document_file_size
node(:link) { |gr| "#{gr.document.url(:download => true)}" unless gr.document_file_name.blank? }
node(:gr_date) {|gr| gr.gr_date.strftime("%d/%m/%Y") rescue ""}
node(:department) {|gr| {:name => (Department.find(gr.department_id).name.titlecase rescue "")}}
node(:total_pages) {@grs.total_pages}