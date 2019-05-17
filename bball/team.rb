class Team
  attr_reader :name
  attr_accessor :players

  def initialize(name, players)
    @name = name
    @players = []
    players.each do |player|
      @players << player
    end
  end

  def run_play

    player = self.players[0]

    if(player.action("block"))
      player.blocks += 1 # other team
      player.shots_taken += 1
      return false
      # is true
      # missed shot - stat
      # block for other team - stat
      # end possession
      # change team
    else
      if(player.action("shoot"))
        player.shots_taken += 1
        player.shots_made += 1
        # is true
        # made shot - stat
        if(player.action("assist"))
          player.assists += 1
          return true
          # is true
          # assist - stat
          # end possession
          # change team
        else
          return true
          # is false
          # end possession
          # change team
        end
      else
        player.shots_taken += 1
        # is false
        # missed shot - stat
        if(player.action("offensive_rebound"))
          player.offensive_rebounds += 1
          player.rebounds += 1
          run_play
          # is true
          # offensive rebound - stat
          # end possession
          # do not change teams
        else
          player.rebounds += 1 # other team
          return false
          # defensive rebound - stat
          # end possession
          # change teams
        end
      end
    end
  end
end