use_bpm 90

live_loop :kick do
  sample :drum_heavy_kick
  sleep 1
end


live_loop :bass, sync: "/live_loop/kick" do
  use_synth  :chipbass
  use_synth_defaults amp: 1.3
  8.times do
    play :cs2
    sleep 0.5
  end
  
  8.times do
    play :e2
    sleep 0.5
  end
  
  8.times do
    play :b1
    sleep 0.5
  end
  
  8.times do
    play :fs1
    sleep 0.5
  end
end

live_loop :snare, sync: "/live_loop/kick" do
  with_fx :reverb, mix: 1 do
    sample  :elec_mid_snare
    sleep 2
  end
end

live_loop :snare_two, sync:  "/live_loop/kick" do
  use_sample_defaults amp: 0.2
  with_fx :distortion do
    with_fx :reverb, mix: 1, room: 0.9 do
      sample :drum_snare_hard
      sleep 2
    end
  end
end

live_loop :light, sync: "/live_loop/kick" do
  use_sample_defaults amp: 0.3
  sample  :drum_cymbal_closed
  sleep 0.25
end

live_loop :melody, sync: "/live_loop/bass" do
  use_synth :blade
  with_fx :reverb, mix: 1 do
  with_fx :distortion do
  use_synth_defaults amp: 0.2
  play_pattern_timed [:gs4, :e4, :ds4, :cs4], [0.5]
  sleep 1
  play_pattern_timed [:ds4, :e4, :gs4, :ds4], [0.5]
  sleep 1
  play :ds4
  sleep 1
  play_pattern_timed [:ds4, :e4, :gs4, :ds4], [0.5]
  sleep 1
  play :ds4
  sleep 1
  play_pattern_timed [:e4, :ds4, :as3, :b3, :cs4, :fs4], [0.5]
  sleep 1
  play :e4
  sleep 1
  
  end
  end
end


live_loop :solo, sync: "/live_loop/bass" do
  use_synth  :piano
  use_synth_defaults amp: 0.5
  with_fx :reverb, mix: 1, room: 0.9 do
    play_pattern_timed [:gs5, :cs6, :ds6, :e6, :gs6, :e6, :ds6, :cs6], [0.5]
  end
end


