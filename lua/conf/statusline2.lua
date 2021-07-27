vim.cmd [[packadd nvim-web-devicons]]
local gl = require 'galaxyline'
local condition = require 'galaxyline.condition'
local diagnostic = require 'galaxyline.provider_diagnostic'
local fileinfo = require('galaxyline.provider_fileinfo')


local gls = gl.section
gl.short_line_list = { 'packer', 'NvimTree', 'Outline', 'LspTrouble' }

local colors = {
    bg = '#282c34',
    fg = '#abb2bf',
    section_bg = '#38393f',
    blue = '#61afef',
    green = '#98c379',
    purple = '#c678dd',
    orange = '#e5c07b',
    red = '#e06c75',
    yellow = '#e5c07b',
    darkgrey = '#2c323d',
    middlegrey = '#8791A5',
}

local mode_color = function()
    local mode_colors = {
        [110] = colors.green,
        [105] = colors.blue,
        [99] = colors.green,
        [116] = colors.blue,
        [118] = colors.purple,
        [22] = colors.purple,
        [86] = colors.purple,
        [82] = colors.red,
        [115] = colors.red,
        [83] = colors.red,
    }

    local color = mode_colors[vim.fn.mode():byte()]
    if color ~= nil then
        return color
    else
        return colors.purple
    end
end

local function file_readonly()
    if vim.bo.filetype == 'help' then
        return ''
    end
    if vim.bo.readonly == true then
        return '  '
    end
    return ''
end

local function get_current_file_name()
    local file = vim.fn.expand '%:t'
    if vim.fn.empty(file) == 1 then
        return ''
    end
    if string.len(file_readonly()) ~= 0 then
        return file .. file_readonly()
    end
    if vim.bo.modifiable then
        if vim.bo.modified then
            return file .. '  '
        end
    end
    return file .. ' '
end

-- Left side
gls.left[1] = {
    ViMode = {
        provider = function()
            local aliases = {
                [110] = 'NORMAL',
                [105] = 'INSERT',
                [99] = 'COMMAND',
                [116] = 'TERMINAL',
                [118] = 'VISUAL',
                [22] = 'V-BLOCK',
                [86] = 'V-LINE',
                [82] = 'REPLACE',
                [115] = 'SELECT',
                [83] = 'S-LINE',
            }
            vim.api.nvim_command('hi GalaxyViMode guibg=' .. mode_color())
            local alias = aliases[vim.fn.mode():byte()]
            local mode
            if alias ~= nil then
                if not condition.hide_in_width() then
                    mode = alias
                else
                    mode = alias:sub(1, 1)
                end
            else
            mode = vim.fn.mode():byte()
            end
            return '   ' .. mode .. ' '
        end,
        highlight = { colors.bg, colors.bg, 'bold' },
    },
}

gls.left[2] = {
    FileIcon = {
        provider = { function()
            return '  '
        end, 'FileIcon' },
        condition = buffer_not_empty,
        highlight = {
            fileinfo.get_file_icon_color,
            colors.section_bg,
        },
    },
}

gls.left[3] = {
    FileName = {
        provider = get_current_file_name,
        condition = buffer_not_empty,
        highlight = { colors.fg, colors.section_bg },
        separator = '',
        separator_highlight = { colors.section_bg, colors.bg },
    },
}

-- Right side
gls.right[1] = {
    DiffAdd = {
        provider = 'DiffAdd',
        -- condition = checkwidth,
        icon = '+',
        highlight = { colors.green, colors.bg },
        separator = ' ',
        separator_highlight = { colors.section_bg, colors.bg },
    },
}

gls.right[2] = {
    DiffModified = {
        provider = 'DiffModified',
        -- condition = checkwidth,
        icon = '~',
        highlight = { colors.orange, colors.bg },
    },
}

gls.right[3] = {
    DiffRemove = {
        provider = 'DiffRemove',
        -- condition = checkwidth,
        icon = '-',
        highlight = { colors.red, colors.bg },
    },
}

gls.right[4] = {
    Space = {
        provider = function()
            return ' '
        end,
        highlight = { colors.section_bg, colors.bg },
    },
}

gls.right[5] = {
    GitBranch = {
        provider = {
            function()
                return '  '
            end,
            'GitBranch',
        },
        condition = condition.check_git_workspace,
        highlight = { colors.middlegrey, colors.bg },
    },
}

gls.right[6] = {
    PerCent = {
        provider = 'LinePercent',
        separator = ' ',
        separator_highlight = { colors.blue, colors.bg },
        highlight = { colors.darkgrey, colors.blue },
    },
}

-- Short status line
gls.short_line_left[1] = {
    FileIcon = {
        provider = { function()
            return '  '
        end, 'FileIcon' },
        condition = function()
            return buffer_not_empty and has_value(
                gl.short_line_list,
                vim.bo.filetype
            )
        end,
        highlight = {
            require('galaxyline.provider_fileinfo').get_file_icon,
            colors.section_bg,
        },
    },
}

gls.short_line_left[2] = {
    FileName = {
        provider = get_current_file_name,
        condition = buffer_not_empty,
        highlight = { colors.fg, colors.section_bg },
        separator = '',
        separator_highlight = { colors.section_bg, colors.bg },
    },
}

gls.short_line_right[1] = {
    BufferIcon = {
        provider = 'BufferIcon',
        highlight = { colors.yellow, colors.section_bg },
        separator = '',
        separator_highlight = { colors.section_bg, colors.bg },
    },
}
gl.load_galaxyline()
