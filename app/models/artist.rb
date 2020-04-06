class Artist < ActiveRecord::Base
    has_many :songs

    def song_count
        Song.artist.where(artist == self).length
    end
end
