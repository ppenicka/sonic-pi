use_bpm 128

with_fx :echo, decay: 6 do
  live_loop :chord do
    use_synth :tech_saws
    play :g4, release: 0.2
    play :as4, release: 0.2
    play :d4, release: 0.2
    play :g5, release: 0.2
    sleep 5.5
    play :g4, release: 0.2
    play :as4, release: 0.2
    play :d4, release: 0.2
    play :g5, release: 0.2
    sleep 10.5
  end
end

live_loop :sample do
  sample :ambi_lunar_land
  play 0
  sleep 16
end

live_loop :snare do
  sleep 1
  sample :sn_dub, amp: 0.7, lpf: rrand(110, 120), hpf: rrand(60, 70)
  play 0
  sleep 1
end

with_fx :reverb do
  live_loop :glass_perc do
    use_synth :dull_bell
    play :g7, release: rrand(0.1, 0.15), amp:0.5, pitch: rrand(1, 2)
    sleep 0.25
  end
end

live_loop :offhat do
  sleep 0.5
  sample :drum_cymbal_open, rate: 7, amp: 3
  play 0
  sleep 0.5
end

live_loop :kick do
  sample :bd_fat, rate: 1, amp: 2
  play 0, release: 0.5
  sleep 1
end

live_loop :bass do
  sleep 0.5
  use_synth :tb303
  play :g1, release: 0.25
  sleep 0.5
end