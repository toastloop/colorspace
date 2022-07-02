require 'cairo'

polardarkest = 0x2e3440
polardark = 0x3b4252
polar = 0x434c5e
polarlight = 0x4c566a
snowdark = 0xd8dee9
snow =  0xe5e9f0
snowlight = 0xeceff4
frostgreen = 0x8fbcbb
frostcyan = 0x88c0d0
frostblue = 0x81a1c1
frostlight = 0x5e81ac
aurorared = 0xbf616a
auroraorange = 0xd08770
aurorayellow = 0xebcb8b
auroragreen = 0xa3be8c
aurorapurple = 0xb48ead
black = 0x000000
white = 0xffffff

background = polar
foreground = snowdark
font_size = 30
font_name = "NotoSans Nerd Font"
alpha = 1

-- https://github.com/brndnmtthws/conky/wiki
-- http://conky.sourceforge.net/variables.html

function start()
    cs = cairo_xlib_surface_create (conky_window.display, conky_window.drawable, conky_window.visual, conky_window.width, conky_window.height)
    cr = cairo_create (cs)
end

function finish()
    cairo_destroy (cr)
    cairo_surface_destroy (cs)
    cr = nil
end

function font(ft)
    ft.name = ft.name or font_name
    ft.size = ft.size or font_size
    ft.slant = ft.slant or CAIRO_FONT_SLANT_NORMAL
    ft.weight = ft.weight or CAIRO_FONT_WEIGHT_NORMAL
    cairo_select_font_face (cr, ft.name, CAIRO_FONT_SLANT_NORMAL,
			CAIRO_FONT_WEIGHT_NORMAL);
    cairo_set_font_size (cr, ft.size)
end

function color(ca)
    ca.hex = ca.hex or foreground
    ca.alpha = ca.alpha or alpha
    cairo_set_source_rgba(cr, ((ca.hex / 0x10000) % 0x100) / 255,((ca.hex / 0x100) % 0x100) / 255, (ca.hex % 0x100) / 255, ca.alpha)
end

function position(pos)
    if pos == nil then pos = {} end
    pos.x = pos.x or 0
    pos.y = pos.y or 0
    cairo_move_to (cr, pos.x, pos.y)
end

function line(width)
    width = width or 20
    cairo_set_line_width (cr, width)
end

function stroke()
    cairo_stroke (cr)
end

function fill()
    cairo_fill (cr)
end

function arc (ri, angle)
    ri.position.x = ri.position.x
    ri.position.y = ri.position.y
    ri.radius = ri.radius or 30
    angle.start = angle.start or 0
    angle.finish = angle.finish or (2 * math.pi)
    cairo_arc (cr, ri.position.x, ri.position.y, ri.radius, angle.start, angle.finish)
end


function text (tx)--
    if tx.color == nil then tx.color = {} end
	tx.color.hex = tx.color.hex
	tx.color.alpha = tx.color.alpha
    if tx.font == nil then tx.font = {} end
	tx.font.name = tx.font.name
	tx.font.size = tx.font.size
    if tx.position == nil then tx.position = {} end
	tx.position.x = tx.position.x
	tx.position.y = tx.position.y
	tx.txt = tx.txt or "set txt"

    font(tx.font)
    color(tx.color)
	position(tx.position)
	cairo_show_text (cr, tx.txt)
	stroke()
end

function ring(ri)
    if ri.position == nil then ri.position = {} end
    ri.radius = ri.radius
    ri.width = ri.width
    if ri.value == nil then ri.value = {} end
    ri.value.current = ri.value.current or 50
    ri.value.max = ri.value.max or 100
    if ri.color == nil then ri.color = {} end
    if ri.color.inside == nil then ri.color.inside = {} end
    if ri.color.outside == nil then ri.color.outside = {} end
    ri.color.inside.hex = ri.color.inside.hex or background
    ri.color.inside.alpha = ri.color.inside.alpha
    ri.color.outside.hex = ri.color.outside.hex or foreground
    ri.color.outside.alpha = ri.color.outside.alpha
    line(ri.width)
    color({hex=ri.color.outside.hex,alpha=ri.color.outside.alpha})
    arc(ri, {})
    stroke()
    color({hex=ri.color.inside.hex,alpha=ri.color.inside.alpha})
    angle = {}
    angle.start = (-90) * (math.pi / 180)
    angle.finish = (ri.value.current * (360 / ri.value.max) - 90) * (math.pi / 180)
    arc(ri, angle)
    stroke()
end

function bar(ba)
    if ba.position == nil then ba.position = {} end
    ba.width = ba.width or 100
    ba.height = ba.height or 20
    ba.horizontal = ba.horizontal
    if ba.horizontal == nil then ba.horizontal = true end
    if ba.color == nil then ba.color = {} end
    if ba.color.inside == nil then ba.color.inside = {} end
    if ba.color.outside == nil then ba.color.outside = {} end
    ba.color.inside.hex = ba.color.inside.hex or background
    ba.color.inside.alpha = ba.color.inside.alpha
    ba.color.outside.hex = ba.color.outside.hex or foreground
    ba.color.outside.alpha = ba.color.outside.alpha
    if ba.value == nil then ba.value = {} end
    ba.value.current = ba.value.current or 50
    ba.value.max = ba.value.max or 100
    color({hex=ba.color.outside.hex,alpha=ba.color.outside.alpha})
    cairo_rectangle (cr, ba.position.x, ba.position.y, ba.width,-ba.height)
    fill(cr)
    if ba.horizontal == true then
        ba.width = (ba.width / ba.value.max) * ba.value.current
    else
        ba.height = (ba.height / ba.value.max) * ba.value.current
    end
    color({hex=ba.color.inside.hex,alpha=ba.color.inside.alpha})
    cairo_rectangle (cr, ba.position.x, ba.position.y, ba.width,-ba.height)
    fill(cr)
end

function conky_main ()
    start()
    local updates = tonumber (conky_parse ('${updates}'))

    if updates > 5 then

        cpu = conky_parse("${cpu}")
        memory = conky_parse("${memperc}")
        disk = conky_parse("${fs_used_perc}")
        username = conky_parse("${uid_name 1000}")
        uplinkkb = conky_parse("${upspeedf enp6s0}")
        uplink = conky_parse("${upspeed enp6s0}")
        downlinkkb = conky_parse("${downspeedf enp6s0}")
        downlink = conky_parse("${downspeed enp6s0}")

        ring({
            position = {x = 90,y = 100},
            color = { outside = {hex = auroragreen}},
            value = { current = cpu }
        })
        text({
            position = {x = 74,y = 106},
            txt = "CPU",
            font = {size = 15}
        })
        ring({
            position = {x = 180,y = 100},
            color = { outside = {hex = aurorapurple}},
            value = { current = memory }
        })
        text({
            position = {x = 161,y = 106},
            txt = "MEM",
            font = {size = 15}
        })
        ring({
            position = {x = 270,y = 100},
            color = { outside = {hex = aurorayellow}},
            value = { current = disk }
        })
        text({
            position = {x = 251,y = 106},
            txt = "DISK",
            font = {size = 15}
        })

        bar({
            position = {x = 60,y = 180},
            width = 250,
            height = 20,
            color = { outside = {hex = auroraorange}},
            value = { current = downlinkkb, max = 13000 }
        })
        text({
            position = {x = 65,y = 176},
            txt = "DOWN",
            font = {size = 17}
        })

        text({
            position = {x = 240,y = 176},
            txt = downlink,
            font = {size = 17}
        })

        bar({
            position = {x = 0,y = 180},
            width = 20,
            height = 120,
            horizontal = false,
            color = { outside = {hex = frostcyan}},
            value = { current = uplinkkb, max = 13000 }
        })

        cairo_move_to(cr,0,0);
        cairo_rotate(cr, 90*(math.pi/180));
        text({
            position = {x = 63,y = -5},
            txt = "UP",
            font = {size = 17}
        })
        text({
            position = {x = 109,y = -5},
            txt = uplink,
            font = {size = 17}
        })

    end
    finish()
end