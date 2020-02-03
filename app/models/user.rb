class User < ApplicationRecord
  def self.ransackable_attributes(auth_object = nil)
    %w[name age department]
end

# def self.ransackable_associations(auth_object = nil)
#     []
# end
def self.search(params)
  results = all.order(created_at: :asc)
  results = results.where('name LIKE ?', "%#{params[:search]}%") if params[:search].present?
  results = results.where('department LIKE ?', "%#{params[:department]}%") if params[:department].present?
  results = results.where('attendance LIKE ?', "%#{params[:attendance]}%") if params[:attendance].present?
  results
end
end