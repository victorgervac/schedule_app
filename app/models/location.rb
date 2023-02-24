# == Schema Information
#
# Table name: locations
#
#  id               :bigint           not null, primary key
#  address_line_one :string
#  address_line_two :string
#  city             :string
#  cleaner_title    :string
#  client_title     :string
#  details          :text
#  state            :string
#  zip              :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  user_id          :bigint           not null
#
# Indexes
#
#  index_locations_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
class Location < ApplicationRecord
  belongs_to :client, class_name: "User"

  # scope :utah, -> { where(state: "UT") }
  # before_save :upcasing_state

  # private

  # def upcasing_state
  #   self.state = state.upcase
  # end
end
