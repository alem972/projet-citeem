class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  belongs_to :eye
  belongs_to :hair_color
  belongs_to :hair_style
  belongs_to :gender
  belongs_to :silhouette
  belongs_to :ethnic_origins
  has_many :messages

  scope :online, -> { where('last_ping_at > ?', 30.minutes.ago) }

  def get_age
  	(DateTime.now.to_i - self.birthday.to_datetime.to_i) / (60*60*24*365)
  end

end
