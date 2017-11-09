module Web::Controllers::Entries
  class Index
    include Web::Action

    expose :entries

    def call(params)
      # @entries = EntryRepository.new.all
      @entries = EntryRepository.new.least_recent
    end
  end
end
