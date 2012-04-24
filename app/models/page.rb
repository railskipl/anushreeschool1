class Page < ActiveRecord::Base
  has_attached_file :photo,:styles =>{:small => "150x150>" }
  
  :storage => :s3, :s3_credentials => "#{RAILS_ROOT}/config/s3.yml",
                   :path => "public/system/pages/photos/:id/:style/:basename.:extension"
end
