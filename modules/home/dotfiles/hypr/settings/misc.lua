-- Environment variables
hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_SIZE", "23")
hl.env("ENABLE_HDR_WSI", "1")
hl.env("DXVK_HDR", "1")

-- Render / color management
hl.config({
    render = {
        direct_scanout = false,
        cm_auto_hdr = 0,
    },
})
