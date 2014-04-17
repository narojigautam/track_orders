require 'state_machine/core'
require 'state_machine/core_ext'
require 'uuid'

module OrderTracker
  class Order < ActiveRecord::Base
    attr_accessible :number, :service_type_id, :total, :state
    belongs_to :service_type

    before_save :set_number

    validates_uniqueness_of :number
    validates_presence_of :service_type_id

    state_machine :initial => :new do
      event :confirm do
        transition :new => :confirmed
      end

      event :initiate_transfer do
        transition :confirmed => :in_transit
      end

      event :finish_transit do
        transition :in_transit => :received_at_facility
      end

      event :deliver do
        transition :received_at_facility => :delivered
      end
    end

    private

    def set_number
      self.number = UUID.new.generate unless number.present?
    end
  end
end
