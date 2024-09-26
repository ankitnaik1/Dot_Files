mp.observe_property("video-params/aspect", "native", function(name, aspect)
    if aspect == nil then
        return
    end
    -- Tolerance for aspect ratio checking, to account for minor floating-point differences
    local tolerance = 0.01
    local target_aspect = 4 / 3
    if math.abs(aspect - target_aspect) > tolerance then
        mp.set_property("video-aspect-override", "4:3")
    else
        print("Original aspect ratio is 4:3, keeping it")
    end
end)

