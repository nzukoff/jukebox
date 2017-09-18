# == Schema Information
#
# Table name: songs
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  album_id   :integer
#

class Song < ApplicationRecord
    belongs_to :album
end
