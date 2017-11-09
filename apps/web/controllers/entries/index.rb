module Web::Controllers::Entries
  class Index
    include Web::Action

    expose :entries
    expose :sort
    
    def call(params)
      
      #@entries = EntryRepository.new.all
      @entries = EntryRepository.new.least_recent
      @sort =params[:sort]
      
    end
  end
end
