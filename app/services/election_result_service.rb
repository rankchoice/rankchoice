class ElectionResultService
  CANDIDATES = 8

  attr_reader :winner
  attr_reader :candidate_data
  attr_reader :tally

  def initialize(election, votes)
    @election = election
    @votes = votes
    @total_number_of_votes = @votes.size
    @winner = nil
    @lowest_vote_getter = nil
    @max_number_of_votes = 0
    @tally = nil

    @candidate_data = {}
    (0..CANDIDATES).each do |i|
      @candidate_data[i] = {
        defeated: false,
        votes: []
      }
    end
    @candidate_data[:moot] = {
      votes: []
    }

    initial_sort
  end

  def run_election
    (0..CANDIDATES).each do |round|
      return if winner_present?
      redistribute_votes
    end
  end

  def tally_results
    @tally = @candidate_data.map do |k,v|
      [k, v[:votes].size]
    end.sort do |a, b|
      a[1] <=> b[1]
    end.reverse
  end

  def print_results
    puts "Here are the results ==>"

    @tally.each do |candidate|
      puts "candidate #{candidate[0]}: #{candidate[1]}"
    end
  end

  private

  def redistribute_votes
    # Take the votes from the lower
    @candidate_data[@lowest_vote_getter][:defeated] = true

    votes = @candidate_data[@lowest_vote_getter][:votes].dup
    @candidate_data[@lowest_vote_getter][:votes] = []

    excluded_candidates = defeated_candidates

    votes.each do |vote|
      place_vote(vote, excluded_candidates)
    end
  end

  def defeated_candidates
    res = []

    (0..CANDIDATES).each do |i|
      res << i if @candidate_data[i][:defeated]
    end

    res
  end

  def winner_present?
    lowest_vote_count = @total_number_of_votes

    (0..CANDIDATES).each do |i|
      current_num_votes = @candidate_data[i][:votes].size

      if current_num_votes > (@total_number_of_votes / 2.0)
        @winner = i
        return true
      end

      # Need to check that there aren't two candidates with the same values
      if current_num_votes > 0
        if current_num_votes > @max_number_of_votes
          @max_number_of_votes = current_num_votes
        end

        if current_num_votes < lowest_vote_count && current_num_votes != @max_number_of_votes
          lowest_vote_count = current_num_votes
          @lowest_vote_getter = i
        end
      end
    end

    return false
  end

  def initial_sort
    @votes.each do |vote|
      place_vote(vote, [])
    end
  end

  def place_vote(vote, defeated_candidates)
    choice = vote.choice(defeated_candidates)

    if choice.nil?
      @candidate_data[:moot][:votes] += [vote]
    else
      @candidate_data[choice][:votes] += [vote]
    end
  end
end
