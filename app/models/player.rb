class Player < ActiveRecord::Base
	has_many :player_updates

	belongs_to :user

	default_scope{ order(:number) }

	validates :user,	presence: true

	validates :number,	numericality: {greather_than_or_equal_to: 0, less_than: 2 ** 32, only_integer: true}
	validates :name,	presence: true, length: {maximum: 255}

	def attributes; @last_update ||= self.player_updates.last; end
	def updates; @updates ||= self.player_updates.map(&:name); end
end
