class EntryRepository < Hanami::Repository
  def most_recent
    entries.order { created_at.desc }.call
  end
  
  def least_recent
    entries.order { created_at.asc }.call
  end
end
