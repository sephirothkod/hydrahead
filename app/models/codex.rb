class Codex < ActiveFedora::Base
	contains 'descMetadata', class_name: 'CodexMetadata'

	property :title, delegate_to: 'descMetadata', multiple: false do |index|
		index.as :stored_searchable
	end
	property :author, delegate_to: 'descMetadata', multiple: false do |index|
		index.as :stored_searchable
	end

end
