-- Autosaving when leaving a buffer or losing focus
return {
  {
    "okuuva/auto-save.nvim",
    enabled = false,
    event = { "BufLeave", "FocusLost" }, -- optional for lazy loading on trigger events
    opts = {
      execution_message = {
        enabled = true,
        message = function()
          return ("AutoSave: saved at " .. vim.fn.strftime("%H:%M:%S"))
        end,
        dim = 0.18,
        cleaning_interval = 1250, -- (milliseconds) automatically clean MsgArea after displaying `message`. See :h MsgArea
      },
      trigger_events = {
        immediate_save = { "BufLeave", "FocusLost" },
      },
    },
  },
}
