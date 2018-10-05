def clock_angle(time)
    array = time.split(':')
    array[0] = array[0].to_f
    array[1] = array[1].to_f
    small_hand_angle = ((array[0] * 30) + (array[1] / 2))
    large_hand_angle = (array[1] * 6)
    if array[0] > 6 && array[1] < 30
        (small_hand_angle - large_hand_angle-360).abs
    else
        (small_hand_angle - large_hand_angle).abs
    end
end
