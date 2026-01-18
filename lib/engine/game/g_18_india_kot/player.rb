# frozen_string_literal: true

require_relative '../../player'

module Engine
  module Game
    module G18India_KOT
      class Player < Engine::Player
        attr_accessor :hand, :draft_history

        def initialize(id, name)
          @hand = []
          @draft_history = []
          @president_ipo_action = 0
          super
        end
      end
    end
  end
end
