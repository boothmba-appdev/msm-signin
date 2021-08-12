# == Schema Information
#
# Table name: characters
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  actor_id   :integer
#  movie_id   :integer
#
class Character < ApplicationRecord
  validates(:movie_id, { :presence => true })
  validates(:name, { :presence => true })
  validates(:actor_id, { :presence => true })

  belongs_to(:movie, { :required => true, :class_name => "Movie", :foreign_key => "movie_id", :counter_cache => true })
  belongs_to(:actor, { :required => true, :class_name => "Actor", :foreign_key => "actor_id", :counter_cache => true })
end
