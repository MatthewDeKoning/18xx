# frozen_string_literal: true

require_relative '../meta'

module Engine
  module Game
    module G18India_KOT
      module Meta
        include Game::Meta

        DEV_STAGE = :alpha

        GAME_TITLE = 'The King of Trains and The Train of Kings'
        GAME_DESIGNER = 'Michael Carter, Anthony Fryer, John Harres, and Nick Neylon'
        GAME_INFO_URL = 'https://github.com/tobymao/18xx/wiki/18India'
        GAME_LOCATION = 'Europe'
        GAME_PUBLISHER = :gmt_games
        GAME_RULES_URL = 'https://gmtwebsiteassets.s3.us-west-2.amazonaws.com/18India/18-India_Rules_Final_lo-res.pdf'
        GAME_ISSUE_LABEL = 'KOT'

        PLAYER_RANGE = [2, 5].freeze
      end
    end
  end
end
