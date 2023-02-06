# + ------------------------------------------------------------------------------------------------------------------ +
# |
# |
# |  Citizens Editor - Denizen Application
# |
# |
# + ------------------------------------------------------------------------------------------------------------------ +
#
#
# @Htools               LLC
# @author               HollowTheSilver
# @date                 07/13/2022
# @script-version       DEV-2.0.9
# @denizen-build-1.2.4  REL-1771
#
#
# ------------------------------------------------------------------------------------------------------------------ +
#
#
# Description:
# 	- A complete gui based citizens npc editor.
#
#
# ------------------------------------------------------------------------------------------------------------------ +
#
#
# Installation:
# 	- Upload the 'Citizens Editor' folder into your 'scripts' directory and reload denizen with /ex reload.
#
# Help:
# 	- Type command "/npcedit help" to get usage info in-game.
#
# Permissions:
# 	- Use command: htools.npc_editor.use
#
#
# ------------------------------------------------------------------------------------------------------------------ +
#
#
# Usage:
#
# () = optional
# {} = required
#
# Context 1:
# 	- /npcedit
#
# Context 2:
# 	- /npcedit debug (toggle)
#
# Context 3:
# 	- /npcedit wand
#
#
# | ----------------------------------------------  CITIZENS EDITOR | CONFIG  --------------------------------------------- | #



citizens_editor_config:
	######################################################################################
	# |---------------------------- citizens editor config ----------------------------| #
	######################################################################################
	# | ---                                                                        --- | #
	# | ---   This file only represents the default configuration generated by a   --- | #
	# | ---   first time execution of the command. Use the in-game gui editor to   --- | #
	# | ---   update or adjust settings.                                           --- | #
	# | ---                                                                        --- | #
	######################################################################################
	type: data
	prefixes:
		main: "&7[&d&lNPCEditor&7]"
		debug: "&7[&bDebug&7]"
		npc: "&7[&b&lNPC.<npc.id>&7]"
	permissions:
		use-command: htools.npc_editor.use
	log:
		dir: plugins/Denizen/data/logs/citizens_editor/<util.time_now.format[MM-dd-yyyy]>.txt
	editor:
		# |------------------------------------------------------------------------------------------| #
		# | ---   This section of the configuration details the main operations of the editor.   --- | #
		# | ---   The values adjusted will directly effect the execution of the editor script.   --- | #
		# |------------------------------------------------------------------------------------------| #
		interrupt-event:
			# |-------------------------------------------------------------------------------------| #
			# | ---   This value represents the delay in-between interrupt proximity updates.   --- | #
			# | ---   Adjust this setting if your server in behind on ticks (laggy) and is      --- | #
			# | ---   having trouble syncing interrupt data with proximity events.              --- | #
			# | ---   t = ticks | s = seconds | none = seconds                                  --- | #
			# |-------------------------------------------------------------------------------------| #
			interrupt-delay: 8t
			# |-------------------------------------------------------------------------------------| #
			# | ---   This value represents the amount of 'seconds' it takes to finalize the    --- | #
			# | ---   fishing location selection process. This is determined only in seconds    --- | #
			# | ---   and doesn't accept a suffix of 's' or 't'. This value must be an integer. --- | #
			# |-------------------------------------------------------------------------------------| #
			select-location-timeout: 10
	interface:
		settings:
			sounds:
				left-click-button: ui_button_click
				confirm-dialog: entity_experience_orb_pickup
			gui-titles:
				main-menu: "&8&lCitizens Editor"
				skin-editor: "&8&lSkin Editor"
				profile-editor: "&8&lProfile Editor"
				dialog-editor: "&8&lDialog Editor"
				settings: "&8&lEditor -> &8&lSettings"
				permissions-page: "&8&lSettings -> &8&lPermissions"
				prefixes-page: "&8&lSettings -> &8&lPrefixes"
				profiles-page: "&8&lSettings -> &8&lProfile Editor"
				interrupt-page: "&8&lSettings -> &8&lInterrupt"
				gui-page: "&8&lSettings -> &8&lInterface"
			gui-materials:
				corner-fill: white_stained_glass_pane
				edge-fill: purple_stained_glass_pane
				center-fill: gray_stained_glass_pane
				page-fill: red_stained_glass_pane
				invalid:
					material: "barrier"
					title: "&c&lInvalid skull uuid or texture"
					lore:
						- "placeholder"
			gui-skulls:
				# | ---  valid skull texture format: 'uuid|texture'  --- | #
				next-page: 04049c90-d3e9-4621-9caf-00000aaa9433|eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDFmZjlmMmU2NTIzZGI3NWI5MWI4NjFjYTRlMTkwZjUzYWFkNzQ5NmU0MjRjYWM4YWQ5MzY1MzZiMDU0YTdkMyJ9fX0=
				previous-page: 04049c90-d3e9-4621-9caf-00000aaa9435|eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYWVjNDlmNGQ1OTUxZTQzMjZiZjM4MTIyOTZlZWE4ZjIwZmIyNzU0YjBhMGZiYWMxN2FiNWI1YTY0NjZiYSJ9fX0=
				confirm-button: 04049c90-d3e9-4621-9caf-0000aaa21774|eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDMxMmNhNDYzMmRlZjVmZmFmMmViMGQ5ZDdjYzdiNTVhNTBjNGUzOTIwZDkwMzcyYWFiMTQwNzgxZjVkZmJjNCJ9fX0=
				deny-button: 04049c90-d3e9-4621-9caf-00000aaa9348|eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTdmOWM2ZmVmMmFkOTZiM2E1NDY1NjQyYmE5NTQ2NzFiZTFjNDU0M2UyZTI1ZTU2YWVmMGE0N2Q1ZjFmIn19fQ==
				create-button: 04049c90-d3e9-4621-9caf-0000aaa10209|eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNWZmMzE0MzFkNjQ1ODdmZjZlZjk4YzA2NzU4MTA2ODFmOGMxM2JmOTZmNTFkOWNiMDdlZDc4NTJiMmZmZDEifX19
				copy-button: 04049c90-d3e9-4621-9caf-0000aaa10199|eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZmY3NDE2Y2U5ZTgyNmU0ODk5YjI4NGJiMGFiOTQ4NDNhOGY3NTg2ZTUyYjcxZmMzMTI1ZTAyODZmOTI2YSJ9fX0=
				delete-button: 04049c90-d3e9-4621-9caf-00000aaa9382|eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYmViNTg4YjIxYTZmOThhZDFmZjRlMDg1YzU1MmRjYjA1MGVmYzljYWI0MjdmNDYwNDhmMThmYzgwMzQ3NWY3In19fQ==
				rename-button: 04049c90-d3e9-4621-9caf-0000aaa52583|eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZmFkMGQxYTc2M2E3ZTk0NmY4NjZkMTAxZDRlMjk2NjFjYjQ4ZDBjNWQ0YjYxMTdhMWYyZTQxMDY0NzVkYzE3ZCJ9fX0=
				dialog-editor: 04049c90-d3e9-4621-9caf-0000aaa26112|eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjQ4Y2UxY2YxOGFmMDVhNTc2ZDYwODEyMzAwMWI3OTFmZWRiNjIyOTExZWY4ZDM4YTMyMGRhM2JjYmY2ZmQyMCJ9fX0=
				discord-link: 04049c90-d3e9-4621-9caf-00000aaa5648|eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMzYyYTFiNDczYmEzYzI1ZTZlYjE0NThkZmM5NTM5MjFmNWQ5MTQ3OGFmOWQ2ZGRhMDdjMDMyZjkyOGMifX19
		main-menu:
			settings-button:
				title: "placeholder"
				lore:
					- "placeholder"
			profiles-button:
				title: "placeholder"
				lore:
					- "placeholder"
		settings-page:
			prefixes-button:
				title: "placeholder"
				lore:
					- "placeholder"
			interrupt-button:
				title: "placeholder"
				lore:
					- "placeholder"
			gui-button:
				title: "placeholder"
				lore:
					- "placeholder"



# | ----------------------------------------------  CITIZENS EDITOR | COMMAND  ---------------------------------------------- | #



citizens_editor_command:
	##################################################
	# | ---  |        command script        |  --- | #
	##################################################
	type: command
	debug: false
	name: citizenseditor
	description: Open main gui menu for citizens editor.
	usage: /citizenseditor
	aliases:
		- ce
		- cedit
		- ceditor
		- npce
		- npcedit
		- npceditor
	tab complete:
		# |------- procedural tab completion -------| #
		- define result <list>
		- if ( <context.raw_args.trim> == <empty> ) || ( <context.args.size> == 1 && !<context.raw_args.ends_with[<&sp>]> ):
			- if ( <plugin[sentinel].exists> ) && ( <element[sentinel].starts_with[<context.args.first||>]> ):
				- define result:->:sentinel
			- define result:|:select|deselect|tool|show|save|load|quiet|loud|debug
		- else:
			- choose <context.args.first>:
				- case select sel deselect desel unselect unsel:
					- define result <server.npcs.parse[id].include[all]>
				- case save load:
					- define result <server.flag[multinpcs_selections_saved].keys.parse[unescaped]||<list>>
				- case sentinel:
					- if <plugin[Sentinel].exists>:
						- define initial <player.tab_completions[<context.raw_args>]>
				- case trait:
					- define initial <player.tab_completions[<context.raw_args>]>
		- if not ( <[initial].exists> ):
			- define initial "<player.tab_completions[npc <context.raw_args>]>"
		- determine <[result].filter[starts_with[<context.args.last||>]].include[<[initial]>]>
	script:
		# |------- command data -------| #
		- define app-id <script.relative_filename.after_last[/].before_last[.]>
		- define prefix <server.flag[citizens_editor.settings.prefixes.main].parse_color.if_null[<script[citizens_editor_config].data_key[prefixes].get[main].parse_color>]>
		- define permission <server.flag[citizens_editor.settings.permissions.use-command].if_null[<script[citizens_editor_config].data_key[permissions].get[use-command]>]>
		# |------- source check -------| #
		- if ( <context.source_type> == player ) && ( <player.gamemode> != spectator ):
			# |------- permissions check -------| #
			- if ( <player.has_permission[<[permission]>].global> ) || ( <[permission]> == <empty> ) || ( <[permission]> == none ) || ( <[permission]> == null ):
				- if ( not <player.has_flag[gui_manager.awaiting_input]> ) && ( not <player.has_flag[gui_manager.awaiting_dialog]> ) && ( not <player.has_flag[gui_manager.awaiting_select]> ):
					# |------- flag check -------| #
					- if ( not <player.has_flag[citizens_editor.debug_mode]> ):
						- flag <player> citizens_editor.debug_mode:false
					- if ( <player.has_flag[citizens_editor.selection_mode]> ):
						- flag <player> citizens_editor.selection_mode:!
					- if ( <player.has_flag[citizens_editor.profile]> ):
						- flag <player> citizens_editor.profile:!
					# |------- set settings -------| #
					- if ( not <server.has_flag[citizens_editor.settings]> ):
						- definemap default_settings:
							id: <[app-id]>
							prefixes: <script[citizens_editor_config].data_key[prefixes]>
							permissions: <script[citizens_editor_config].data_key[permissions]>
							log: <script[citizens_editor_config].data_key[log]>
							editor: <script[citizens_editor_config].data_key[editor]>
							interface: <script[citizens_editor_config].data_key[interface]>
						# |------- store settings flag -------| #
						- flag server citizens_editor.settings:<[default_settings]>
					# |------- prefix data -------| #
					- define prefix <server.flag[citizens_editor.settings.prefixes.main].parse_color>
					- define debug_prefix <server.flag[citizens_editor.settings.prefixes.debug].parse_color>
					# |------- execute command -------| #
					- choose <context.args.get[1]||null>:
						- default:
							# |------- start application -------| #
							- ~run gui_manager path:app.init def.app-id:<[app-id]> save:initialized
							- if ( <entry[initialized].created_queue.determination.get[1]> ):
								# |------- open default -------| #
								- ~run gui_manager path:open
							- else:
								# |------- app.start failed -------| #
								- narrate "<[prefix]> <&c>Task <&c>'<&f><[app-id]>.start(app)<&c>' failed."
								- stop
						- case debug -debug --debug d -d --d:
							# |------- debug toggle -------| #
							- choose <context.args.get[2]||null>:
								- default:
									# |------- invalid command -------| #
									- narrate '<[prefix]> <[debug_prefix]> <&c>Invalid <&f>toggle <&c>state for <&f>debug <&c>command.'
								- case null:
									# |------- invert toggle state -------| #
									- if ( <player.flag[citizens_editor.debug_mode].if_null[true]> ):
										- flag <player> citizens_editor.debug_mode:false
										- flag <player> gui_manager.debug:false
										- narrate '<[prefix]> <[debug_prefix]> <&c>disabled<&f>.'
									- else:
										- flag <player> citizens_editor.debug_mode:true
										- flag <player> gui_manager.debug:true
										- narrate '<[prefix]> <[debug_prefix]> <&a>enabled<&f>.'
								- case 1 enable enabled true:
									# |------- toggle state true -------| #
									- if ( not <player.flag[citizens_editor.debug_mode].if_null[false]> ):
										- flag <player> citizens_editor.debug_mode:true
										- flag <player> gui_manager.debug:true
										- narrate '<[prefix]> <[debug_prefix]> <&a>Enabled<&f><&f>.'
									- else:
										- narrate '<[prefix]> <[debug_prefix]> <&f>already <&a>enabled<&f>.'
								- case 0 disable disabled false:
									# |------- toggle state false -------| #
									- if ( <player.flag[citizens_editor.debug_mode].if_null[true]> ):
										- flag <player> citizens_editor.debug_mode:false
										- flag <player> gui_manager.debug:false
										- narrate '<[prefix]> <[debug_prefix]> <&c>Disabled<&f>.'
									- else:
										- narrate '<[prefix]> <[debug_prefix]> <&f>already <&c>disabled<&f>.'
							- stop
			- else:
				# |------- unauthorized -------| #
				- narrate "<[prefix]> <&c>You do not have permission to use the <&f>/<context.alias> <&c>command."
				- stop



# | ------------------------------------------------------------------------------------------------------------------------------ | #


