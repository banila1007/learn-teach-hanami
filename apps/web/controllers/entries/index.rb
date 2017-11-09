module Web::Controllers::Entries
  class Index
    include Web::Action

    expose :entries
    expose :sort
    
    def call(params)
      
      #@entries = EntryRepository.new.all
     
      @sort = params[:sort]
      
      #most_recent or least_recent
      # CLEAN this up
      if @sort == 'most_recent' 
         @entries = EntryRepository.new.most_recent
      else  
         @entries = EntryRepository.new.least_recent
      end
    end
  end
end
