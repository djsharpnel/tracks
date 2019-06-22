# Welcome to Sonic Pi v3.1
use_bpm 32

# bell
live_loop :synth do
  sync :cue1
  4.times do
    
    with_fx :echo,room:0.8,max_phase:10 do
      use_synth :pretty_bell
      play :e4, amp: 0.3
      sleep 1
    end
  end
end


# click
live_loop :tik do
  sync :cue1
  4.times do
    with_fx :reverb,room:0.6 do
      sleep 0.125
      sample :elec_tick
      sleep 0.0625
      sample :elec_tick
      sleep 0.0625
      sample :elec_tick
      sleep 0.0625
    end
  end
end

# electric loop
live_loop :loop do
  sync :cue1
  4.times do
    with_fx :reverb,room:0.6 do
      sample :loop_compus, beat_stretch:4, amp:2
      sleep 4
    end
  end
end

live_loop :piano do
  sync :cue1
  4.times do
    
    with_fx :echo, mix:0.5 do
      sample :drum_cymbal_open, amp:1, rate:1.3
    end
    sleep 4
  end
end

#TB303 from help

use_synth :tb303
use_random_seed 3000
live_loop :squelch do
  sync :cue1
  4.times do
    a = 30
    16.times do
      with_fx :reverb,room:0.8,mix:0.5 do
        a =  a + 10
        if a>100
          a = 100
        end if
        n = (ring :e1, :e1, :e3, :e1, :e1, :e2, :e1, :e1).tick
        play n, decay:0.02, release: 0.01, cutoff: a , res: 0.20, wave: 0, amp:0.56
        sleep 0.0625
      end
    end
  end
end



use_synth :dull_bell
live_loop :syuy do
  sync :cue1
  2.times do
    with_fx :reverb, room:0.4,mix:0.2 do
      play :e4,decay:0.1,release:0.1, amp:0.7
      sleep 0.1875
      play :e4,decay:0.1,release:0.1, amp:0.7
      sleep 0.1875
      play :e4,decay:0.1,release:0.1, amp:0.7
      sleep 0.1875
      play :e4,decay:0.1,release:0.1, amp:0.7
      sleep 0.1875
      play :e4,decay:0.1,release:0.1, amp:0.7
      sleep 0.25
    end
  end
end


live_loop :drum do
  cue :cue1
  3.times do
    sample :bd_tek, amp: 5
    sleep 0.25
    sample :bd_tek, amp: 5
    sleep 0.25
    sample :bd_tek, amp: 5
    sleep 0.25
    sample :bd_tek, amp: 5
    sleep 0.25
  end
  sample :bd_tek, amp: 5
  sleep 0.25
  sample :bd_tek, amp: 5
  sleep 0.25
  sample :bd_tek, amp: 5
  sleep 0.25
  sample :bd_tek, amp: 5
  sleep 0.125
  sample :bd_tek, amp: 5
  sleep 0.125
end

live_loop :hat do
  sync :cue1
  4.times do
    sleep 0.125
    sample :drum_cymbal_closed, amp:2
    sleep 0.25
    sample :drum_cymbal_closed, amp:2
    sleep 0.25
    sample :drum_cymbal_closed, amp:2
    sleep 0.25
    sample :drum_cymbal_closed, amp:2
    sleep 0.125
  end
end


live_loop :sn do
  sync :cue1
  8.times do
    sleep 0.25
    sample :sn_zome, decay:0.01, release:0,amp:3
    sleep 0.25
    sleep 0.25
    sample :sn_zome, decay:0.01, release:0,amp:3
    sleep 0.25
  end
end

