module Admin
  class Author < ApplicationRecord
    has_many :books
  end
end
