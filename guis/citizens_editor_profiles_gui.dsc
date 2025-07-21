


# | ----------------------------------------------  CITIZENS EDITOR | PROFILE EDITOR INVENTORY  ---------------------------------------------- | #



citizens_editor_gui_profile_editor:
    ##################################################
    # | ---  |       inventory script       |  --- | #
    ##################################################
    type: inventory
    debug: false
    inventory: CHEST
    title: <server.flag[citizens_editor.settings.interface.settings.gui-titles.profile-editor].parse_color>
    gui: true
    data:
        # |------- must be a valid gui-id and can be a single value, a value of none, or left out completely -------| #
        root: main
    definitions:
        placeholder: <item[structure_void].with[display=<&d><&l>Placeholder]>
        corner-fill: <item[<server.flag[citizens_editor.settings.interface.settings.gui-materials].get[corner-fill]||white_stained_glass_pane>].with[display=<&d> <empty>]>
        edge-fill: <item[<server.flag[citizens_editor.settings.interface.settings.gui-materials].get[edge-fill]||purple_stained_glass_pane>].with[display=<&d> <empty>]>
        center-fill: <item[<server.flag[citizens_editor.settings.interface.settings.gui-materials].get[center-fill]||gray_stained_glass_pane>].with[display=<&d> <empty>]>
        page-fill: <item[<server.flag[citizens_editor.settings.interface.settings.gui-materials].get[page-fill]||gray_stained_glass_pane>].with[display=<&d> <empty>]>
        create-profile: <item[player_head].with_flag[gui-button:create-profile].with[display=<&d><&l>Create <&f><&l>Profile;skull_skin=<server.flag[citizens_editor.settings.interface.settings.gui-skulls.create-button]||<item[<server.flag[citizens_editor.settings.interface.settings.gui-materials.invalid.material]>].with[display=<server.flag[citizens_editor.settings.interface.settings.gui-materials.invalid.title]>]>>]>
        copy-profile: <item[player_head].with_flag[gui-button:copy-profile].with[display=<&d><&l>Copy <&f><&l>Profile;skull_skin=<server.flag[citizens_editor.settings.interface.settings.gui-skulls.copy-button]||<item[<server.flag[citizens_editor.settings.interface.settings.gui-materials.invalid.material]>].with[display=<server.flag[citizens_editor.settings.interface.settings.gui-materials.invalid.title]>]>>]>
        next-page: <item[player_head].with_flag[gui-button:next-page].with[display=<&d><&l>Next;skull_skin=<server.flag[citizens_editor.settings.interface.settings.gui-skulls.next-page]||<item[<server.flag[citizens_editor.settings.interface.settings.gui-materials.invalid.material]>].with[display=<server.flag[citizens_editor.settings.interface.settings.gui-materials.invalid.title]>]>>]>
        previous-page: <item[player_head].with_flag[gui-button:previous-page].with[display=<&d><&l>Previous;skull_skin=<server.flag[citizens_editor.settings.interface.settings.gui-skulls.previous-page]||<item[<server.flag[citizens_editor.settings.interface.settings.gui-materials.invalid.material]>].with[display=<server.flag[citizens_editor.settings.interface.settings.gui-materials.invalid.title]>]>>]>
        next-cached: <item[player_head].with_flag[gui-button:next-cached].with[display=<&d><&l>Next;skull_skin=<server.flag[citizens_editor.settings.interface.settings.gui-skulls.next-page]||<item[<server.flag[citizens_editor.settings.interface.settings.gui-materials.invalid.material]>].with[display=<server.flag[citizens_editor.settings.interface.settings.gui-materials.invalid.title]>]>>]>
        previous-cached: <item[player_head].with_flag[gui-button:previous-cached].with[display=<&d><&l>Previous;skull_skin=<server.flag[citizens_editor.settings.interface.settings.gui-skulls.previous-page]||<item[<server.flag[citizens_editor.settings.interface.settings.gui-materials.invalid.material]>].with[display=<server.flag[citizens_editor.settings.interface.settings.gui-materials.invalid.title]>]>>]>
    slots:
        - [corner-fill] [edge-fill] [edge-fill] [edge-fill] [copy-profile] [edge-fill] [edge-fill] [edge-fill] [corner-fill]
        - [edge-fill] [] [] [] [] [] [] [] [edge-fill]
        - [page-fill] [] [] [] [] [] [] [] [page-fill]
        - [edge-fill] [] [] [] [] [] [] [] [edge-fill]
        - [edge-fill] [] [] [] [] [] [] [] [edge-fill]
        - [corner-fill] [edge-fill] [edge-fill] [previous-page] [create-profile] [center-fill] [edge-fill] [edge-fill] [corner-fill]



# | ------------------------------------------------------------------------------------------------------------------------------ | #



citizens_editor_gui_profile:
    ##################################################
    # | ---  |       inventory script       |  --- | #
    ##################################################
    type: inventory
    debug: false
    inventory: CHEST
    title: Profile Title Placeholder
    gui: true
    data:
        # |------- must be a valid gui-id and can be a single value, a value of none, or left out completely -------| #
        root: profile_editor
    definitions:
        placeholder: <item[structure_void].with[display=<&d><&l>Placeholder]>
        corner-fill: <item[<server.flag[citizens_editor.settings.interface.settings.gui-materials].get[corner-fill]||white_stained_glass_pane>].with[display=<&d> <empty>]>
        edge-fill: <item[<server.flag[citizens_editor.settings.interface.settings.gui-materials].get[edge-fill]||purple_stained_glass_pane>].with[display=<&d> <empty>]>
        center-fill: <item[<server.flag[citizens_editor.settings.interface.settings.gui-materials].get[center-fill]||gray_stained_glass_pane>].with[display=<&d> <empty>]>
        create-profile: <item[player_head].with_flag[gui-button:create-profile].with[display=<&d><&l>Create <&f><&l>Profile;skull_skin=<server.flag[citizens_editor.settings.interface.settings.gui-skulls.create-button]||<item[<server.flag[citizens_editor.settings.interface.settings.gui-materials.invalid.material]>].with[display=<server.flag[citizens_editor.settings.interface.settings.gui-materials.invalid.title]>]>>]>
        delete-profile: <item[player_head].with_flag[gui-button:delete-profile].with[display=<&d><&l>Delete <&f><&l>Profile;skull_skin=<server.flag[citizens_editor.settings.interface.settings.gui-skulls.delete-button]||<item[<server.flag[citizens_editor.settings.interface.settings.gui-materials.invalid.material]>].with[display=<server.flag[citizens_editor.settings.interface.settings.gui-materials.invalid.title]>]>>]>
        rename-profile: <item[player_head].with_flag[gui-button:rename-profile].with[display=<&d><&l>Rename <&f><&l>Profile;skull_skin=<server.flag[citizens_editor.settings.interface.settings.gui-skulls.rename-button]||<item[<server.flag[citizens_editor.settings.interface.settings.gui-materials.invalid.material]>].with[display=<server.flag[citizens_editor.settings.interface.settings.gui-materials.invalid.title]>]>>]>
        next-page: <item[player_head].with_flag[gui-button:next-page].with[display=<&d><&l>Next;skull_skin=<server.flag[citizens_editor.settings.interface.settings.gui-skulls.next-page]||<item[<server.flag[citizens_editor.settings.interface.settings.gui-materials.invalid.material]>].with[display=<server.flag[citizens_editor.settings.interface.settings.gui-materials.invalid.title]>]>>]>
        previous-page: <item[player_head].with_flag[gui-button:previous-page].with[display=<&d><&l>Previous;skull_skin=<server.flag[citizens_editor.settings.interface.settings.gui-skulls.previous-page]||<item[<server.flag[citizens_editor.settings.interface.settings.gui-materials.invalid.material]>].with[display=<server.flag[citizens_editor.settings.interface.settings.gui-materials.invalid.title]>]>>]>
    slots:
        - [corner-fill] [edge-fill] [edge-fill] [edge-fill] [delete-profile] [edge-fill] [edge-fill] [edge-fill] [corner-fill]
        - [edge-fill] [center-fill] [placeholder] [center-fill] [placeholder] [center-fill] [placeholder] [center-fill] [edge-fill]
        - [edge-fill] [center-fill] [center-fill] [center-fill] [center-fill] [center-fill] [center-fill] [center-fill] [edge-fill]
        - [edge-fill] [center-fill] [placeholder] [center-fill] [placeholder] [center-fill] [placeholder] [center-fill] [edge-fill]
        - [edge-fill] [center-fill] [center-fill] [center-fill] [center-fill] [center-fill] [center-fill] [center-fill] [edge-fill]
        - [corner-fill] [edge-fill] [edge-fill] [previous-page] [rename-profile] [center-fill] [edge-fill] [edge-fill] [corner-fill]



# | ----------------------------------------------  CITIZENS EDITOR | GUI EVENT HANDLER  ---------------------------------------------- | #



citizens_editor_profile_editor_handler:
    type: world
    debug: false
    events:
        ##################################################
        # | ---  |       inventory events       |  --- | #
        ##################################################
        on player opens citizens_editor_gui_profile_editor:
            # |------- procedural items -------| #
            - define app-id <server.flag[citizens_editor.settings.id]||null>
            - define inventory <context.inventory>
            - define contents <[inventory].list_contents>
            - define gui-id <[inventory].script.name.after[<[app-id]>_gui_]>
            - define properties <player.flag[gui_manager.apps.<[app-id]>.inventories.<[gui-id]>]||<list[<empty>]>>
            # |------- update gui button -------| #
            - define fill-item <script[<[inventory].script.name>].data_key[definitions].get[center-fill].parsed>
            - define next-page-item <script[<[inventory].script.name>].data_key[definitions].get[next-page].parsed>
            - define next <player.flag[gui_manager.next]||<list[<empty>]>>
            - define last <[next].last||<[gui-id]>>
            - if ( <[next].is_empty> || <[last]> == <[gui-id]> ) && ( <[contents].contains[<[next-page-item]>]> ):
                - inventory set destination:<[inventory]> origin:<[fill-item]> slot:<[inventory].find_item[raw_exact:<[next-page-item]>]>
            - else if ( not <[next].is_empty> ) && ( <[last]> != <[gui-id]> ) && ( <[contents].contains[<[fill-item]>]> ) && ( not <[contents].contains[<[next-page-item]>]> ):
                - inventory set destination:<[inventory]> origin:<[next-page-item]> slot:<[inventory].find_all_items[raw_exact:<[fill-item]>].last>
            # |------- update page button -------| #
            - define index <[properties].get[index]||null>
            - define pages <[properties].get[pages]||null>
            - if ( <[index]> != null ) && ( <[pages]> != null ):
                - define page-fill-item <script[<[inventory].script.name>].data_key[definitions].get[page-fill].parsed>
                - define next-list-item <script[<[inventory].script.name>].data_key[definitions].get[next-cached].parsed>
                - define prev-list-item <script[<[inventory].script.name>].data_key[definitions].get[previous-cached].parsed>
                - if ( <[contents].contains[<[page-fill-item]>]> ) && ( not <[contents].contains[<[prev-list-item]>]> ) && ( not <[contents].contains[<[next-list-item]>]> ):
                    - if ( <[index]> == 1 ):
                        - if ( <[pages]> > <[index]> ):
                            - inventory set destination:<[inventory]> origin:<[next-list-item]> slot:<[inventory].find_all_items[raw_exact:<[page-fill-item]>].last>
                    - else:
                        - if ( <[pages]> > <[index]> ):
                            - inventory set destination:<[inventory]> origin:<[next-list-item]> slot:<[inventory].find_all_items[raw_exact:<[page-fill-item]>].last>
                        - inventory set destination:<[inventory]> origin:<[prev-list-item]> slot:<[inventory].find_all_items[raw_exact:<[page-fill-item]>].first>
                - else if ( not <[contents].contains[<[page-fill-item]>]> ) && ( <[contents].contains[<[next-list-item]>]> ) && ( <[contents].contains[<[prev-list-item]>]> ):
                    - if ( <[index]> == 1 ):
                        - if ( <[pages]> <= <[index]> ):
                            - inventory set destination:<[inventory]> origin:<[page-fill-item]> slot:<[inventory].find_item[raw_exact:<[next-list-item]>]>
                        - inventory set destination:<[inventory]> origin:<[page-fill-item]> slot:<[inventory].find_item[raw_exact:<[prev-list-item]>]>
                    - else:
                        - if ( <[pages]> <= <[index]> ):
                            - inventory set destination:<[inventory]> origin:<[page-fill-item]> slot:<[inventory].find_item[raw_exact:<[next-list-item]>]>
                - else if ( <[contents].contains[<[page-fill-item]>]> ) && ( <[contents].contains[<[prev-list-item]>]> ) && ( not <[contents].contains[<[next-list-item]>]> ):
                    - if ( <[index]> == 1 ):
                        - if ( <[pages]> > <[index]> ):
                            - inventory set destination:<[inventory]> origin:<[next-list-item]> slot:<[inventory].find_item[raw_exact:<[page-fill-item]>]>
                        - inventory set destination:<[inventory]> origin:<[page-fill-item]> slot:<[inventory].find_item[raw_exact:<[prev-list-item]>]>
                    - else:
                        - if ( <[pages]> > <[index]> ):
                            - inventory set destination:<[inventory]> origin:<[next-list-item]> slot:<[inventory].find_item[raw_exact:<[page-fill-item]>]>
                - else if ( <[contents].contains[<[page-fill-item]>]> ) && ( <[contents].contains[<[next-list-item]>]> ) && ( not <[contents].contains[<[prev-list-item]>]> ):
                    - if ( <[index]> == 1 ):
                        - if ( <[pages]> <= <[index]> ):
                            - inventory set destination:<[inventory]> origin:<[page-fill-item]> slot:<[inventory].find_item[raw_exact:<[next-list-item]>]>
                    - else:
                        - if ( <[pages]> <= <[index]> ):
                            - inventory set destination:<[inventory]> origin:<[prev-list-item]> slot:<[inventory].find_item[raw_exact:<[page-fill-item]>]>
                        - inventory set destination:<[inventory]> origin:<[page-fill-item]> slot:<[inventory].find_item[raw_exact:<[next-list-item]>]>

        after player left clicks item_flagged:profile in citizens_editor_gui_profile_editor:
            # |------- event data -------| #
            - define app-id <server.flag[citizens_editor.settings.id]||null>
            - define prefix <server.flag[citizens_editor.settings.prefixes.main].parse_color>
            - define button-id <context.item.flag[profile]||null>
            - define gui-id <context.item.list_flags.get[1]||null>
            - if ( <server.flag[citizens_editor.profiles].contains[<[button-id]>]||false> ):
                # |------- open profile inventory -------| #
                - define profile-id <server.flag[citizens_editor.profiles].get[<[button-id]>]>
                - define parsed <[profile-id].get[name].parse_color>
                - define stripped <[parsed].strip_color>
                - define gui_title "<&8><&l>Edit -<&gt> <[stripped]>"
                # |------- open profile gui -------| #
                - run gui_manager path:open def.gui-id:<[gui-id]> def.title:<[gui_title]> save:open
                - if ( <entry[open].created_queue.determination.get[1]||false> ):
                    # |------- set flag -------| #
                    - flag <player> citizens_editor.profile:<[profile-id].get[name]>

        after player left clicks item_flagged:gui-button in citizens_editor_gui_profile_editor:
            # |------- event data -------| #
            - define app-id <server.flag[citizens_editor.settings.id]||null>
            - define prefix <server.flag[citizens_editor.settings.prefixes.main].parse_color>
            - define button-id <context.item.flag[gui-button]||null>
            - define fill-item <script[<context.inventory.script.name>].data_key[definitions].get[center-fill].parsed>
            # |------- context check -------| #
            - choose <[button-id]>:
                - default:
                    - ~run gui_manager path:open def.app-id:<[app-id]> def.gui-id:<[button-id]>
                - case next-cached previous-cached:
                    - ~run gui_manager path:open def.app-id:<[app-id]> def.gui-id:<player.flag[gui_manager.current]> def.list:<[button-id].before_last[-]>

                - case create-profile:
                    # |------- open input -------| #
                    - define input_title "<&b><&l>Enter a Name"
                    - define input_subtitle "<&d><&l>for the new profile"
                    - define input_bossbar "<&b><&l>Awaiting Input"
                    - inject gui_manager path:input
                    # |------- check input -------| #
                    - if ( <player.has_flag[gui_manager.input]> ):
                        # |------- open dialog -------| #
                        - define dialog_title "<&8><&l>Create New Profile?"
                        - inject gui_manager path:dialog
                        # |------- check dialog -------| #
                        - if ( <player.flag[gui_manager.dialog]||false> ):
                            # |------- parse input -------| #
                            - define input <player.flag[gui_manager.input]>
                            - define parsed <[input].parse_color>
                            - define stripped <[parsed].strip_color>
                            - define container citizens_editor.profiles
                            - if not ( <server.flag[<[container]>].contains[<[stripped]>]||false> ):
                                # |------- create profile -------| #
                                - definemap default:
                                    name: <[input]>
                                - flag server <[container]>.<[stripped]>:<[default]>
                                - narrate "<[prefix]> <&f>Profile '<&b><[stripped]><&f>' created."
                                # |------- get profiles -------| #
                                - ~run <[app-id]>_gui_handler path:get.profiles save:profiles
                                - define profiles <entry[profiles].created_queue.determination.get[1]||null>
                                - if ( <[profiles]> != null ):
                                    # |------- open and refresh previous -------| #
                                    - ~run gui_manager path:open def.gui-id:previous-page def.list:<[profiles]> def.fill:<[fill-item]> def.reset:true
                            - else:
                                # |------- open previous -------| #
                                - narrate "<[prefix]> <&c>Profile '<&f><[stripped]><&c>' already exists."
                                - ~run gui_manager path:open def.gui-id:previous-page
                        - else:
                            # |------- timed out -------| #
                            - ~run gui_manager path:open def.gui-id:previous-page
                    - else:
                        # |------- cancelled -------| #
                        - ~run gui_manager path:open



# | ------------------------------------------------------------------------------------------------------------------------------ | #



        after player left clicks item_flagged:gui-button in citizens_editor_gui_profile:
            # |------- event data -------| #
            - define app-id <server.flag[citizens_editor.settings.id]||null>
            - define prefix <server.flag[citizens_editor.settings.prefixes.main].parse_color>
            - define button-id <context.item.flag[gui-button]||null>
            - define fill-item <script[<context.inventory.script.name>].data_key[definitions].get[center-fill].parsed>
            - define profile-id <player.flag[citizens_editor.profile]||null>
            # |------- context check -------| #
            - choose <[button-id]>:
                - default:
                    - ~run gui_manager path:open def.app-id:<[app-id]> def.gui-id:<[button-id]>
                - case delete-profile:
                    # |------- dialog data -------| #
                    - define dialog_title "<&8><&l>Delete <[profile-id].parse_color>?"
                    # |------- open input dialog -------| #
                    - inject gui_manager path:dialog
                    - if ( <player.flag[gui_manager.dialog]||false> ):
                        # |------- parsed data -------| #
                        - define parsed <[profile-id].parse_color>
                        - define stripped <[parsed].strip_color>
                        - define container citizens_editor.profiles.<[stripped]>
                        # |------- flag check -------| #
                        - if ( <server.has_flag[<[container]>]> ):
                            # |------- delete profile-id -------| #
                            - flag server <[container]>:!
                            - narrate "<[prefix]> <&c>Profile '<&f><[stripped]><&c>' deleted."
                            # |------- get profiles -------| #
                            - ~run <[app-id]>_gui_handler path:get.profiles save:profiles
                            - define profiles <entry[profiles].created_queue.determination.get[1]||null>
                            - if ( <[profiles]> != null ):
                                # |------- open and reset gui -------| #
                                - ~run gui_manager path:open def.gui-id:profile_editor def.list:<[profiles]> def.fill:<[fill-item]> def.reset:true
                        - else:
                            # |------- invalid id -------| #
                            - narrate "<[prefix]> <&c>Profile '<&f><[stripped]><&c>' doesn't exist."
                            - ~run gui_manager path:open def.gui-id:previous-page
                    - else:
                        # |------- cancelled -------| #
                        - ~run gui_manager path:open def.gui-id:previous-page

                - case rename-profile:
                    # |------- input data -------| #
                    - define input_title "<&b><&l>Enter a new ID"
                    - define input_subtitle "<&d><&l>for <[profile-id].parse_color.strip_color>"
                    - define input_bossbar "<&b><&l>Awaiting Input"
                    # |------- open input dialog -------| #
                    - inject gui_manager path:input
                    - if ( <player.has_flag[gui_manager.input]> ):
                        - define dialog_title "<&8><&l>Rename <[profile-id].parse_color.strip_color>?"
                        - inject gui_manager path:dialog
                        - if ( <player.flag[gui_manager.dialog]||false> ):
                            # |------- parsed data -------| #
                            - define input <player.flag[gui_manager.input]>
                            - define parsed_old <[profile-id].parse_color>
                            - define stripped_old <[parsed_old].strip_color>
                            - define parsed_new <[input].parse_color>
                            - define stripped_new <[parsed_new].strip_color>
                            - define container citizens_editor.profiles
                            # |------- flag check -------| #
                            - if ( <server.flag[<[container]>].contains[<[stripped_old]>]||false> ):
                                - if ( <[parsed_new]> != <[parsed_old]> ):
                                    # |------- update name -------| #
                                    - flag server <[container]>.<[stripped_old]>.name:<[input]>
                                    - define data <server.flag[<[container]>.<[stripped_old]>]>
                                    # |------- update profile-id -------| #
                                    - flag server <[container]>.<[stripped_old]>:!
                                    - flag server <[container]>.<[stripped_new]>:<[data]>
                                    - narrate "<[prefix]> <&f>Profile '<&b><[parsed_old]><&f>' renamed to '<&b><[parsed_new]><&f>'."
                                    # |------- get profiles -------| #
                                    - ~run <[app-id]>_gui_handler path:get.profiles save:profiles
                                    - define profiles <entry[profiles].created_queue.determination.get[1]||null>
                                    - if ( <[profiles]> != null ):
                                        # |------- open and reset gui -------| #
                                        - ~run gui_manager path:open def.gui-id:profile_editor def.list:<[profiles]> def.fill:<[fill-item]> def.reset:true
                                        - stop
                                - else:
                                    # |------- matched id -------| #
                                    - narrate "<[prefix]> <&f>Profile '<&b><[stripped_old]><&f>' unchanged. Already matches given input."
                            - else:
                                # |------- invalid id -------| #
                                - narrate "<[prefix]> <&c>Rename failed. Profile '<&f><[stripped_old]><&c>' could not be edited."
                        # |------- open previous gui -------| #
                        - ~run gui_manager path:open def.gui-id:previous-page
                    - else:
                        # |------- cancelled -------| #
                        - ~run gui_manager path:open



# | ------------------------------------------------------------------------------------------------------------------------------ | #


