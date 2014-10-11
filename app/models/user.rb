class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # include Workflow
  # workflow do
  #   state :offline do
  #     event :enable, transitions_to: :online
  #   end
  #   state :online do
  #     event :disable, transitions_to: :offline
  #     event :dnd, transitions_to: :busy
  #   end
  #   state :busy do
  #     event :enable, transitions_to: :online
  #     event :disable, transitions_to: :offline
  #     end
  #   end
  end
