in for this chat
  if matches[1] == '+' and matches[3] == 'gp' then
      local receiver = get_receiver(msg)
      sudo
          local plugin_name = matches[2]
              print("enable: "..matches[2])
                  return enable_plugin(plugin_name)
                    end
                    
                      -- Disable a plugin on a chat
                        if matches[1] == '-' and matches[3] == 'gp' then
                            local plugin = matches[2]
                                local receiver = get_receiver(msg)
                                    print("disable "..plugin..' on this chat')
                                        return disable_plugin_on_chat(receiver, plugin)
                                          end
                                          
                                            -- Disable a plugin
                                              if matches[1] == '-' and is_sudo(msg) then --after changed to moderator mode, set only sudo
                                                  if matches[2] == 'plug' then
                                                       return 'This plugin can\'t be disabled'
                                                           end
                                                               print("disable: "..matches[2])
                                                                   return disable_plugin(matches[2])
                                                                     end
                                                                     
                                                                       -- Reload all the plugins!
                                                                         if matches[1] == '*' and is_sudo(msg) then --after changed to moderator mode, set only sudo
                                                                             return reload_plugins(true)
                                                                               end
                                                                               end
                                                                               
                                                                               return {
                                                                                 description = "Plugin to manage other plugins. Enable, disable or reload.", 
                                                                                   usage = {
                                                                                         moderator = {
                                                                                                   "plug - [plugin] chat : disable plugin only this chat.",
                                                                                                             "plug + [plugin] chat : enable plugin only this chat.",
                                                                                                                       },
                                                                                                                             sudo = {
                                                                                                                                       "plug : list all plugins.",
                                                                                                                                                 "plug + [plugin] : enable plugin.",
                                                                                                                                                           "plug - [plugin] : disable plugin.",
                                                                                                                                                                     "plug * : reloads all plugins." },
                                                                                                                                                                               },
                                                                                                                                                                                 patterns = {
                                                                                                                                                                                     "^/plugins$",
                                                                                                                                                                                         "^plug? (+) ([%w_%.%-]+)$",
                                                                                                                                                                                             "^plug? (-) ([%w_%.%-]+)$",
                                                                                                                                                                                                 "^plug? (+) ([%w_%.%-]+) (gp)",
                                                                                                                                                                                                     "^plug? (-) ([%w_%.%-]+) (gp)",
                                                                                                                                                                                                         "^?plug? (*)$" },
                                                                                                                                                                                                           run = run,
                                                                                                                                                                                                             moderated = true, -- set to moderator mode
                                                                                                                                                                                                               --privileged = true
                                                                                                                                                                                                               }
                                                                                                                                                                                                               
                                                                                                                                                                                                               end
