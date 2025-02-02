pragma Warnings (Off);
pragma Ada_95;
pragma Source_File_Name (ada_main, Spec_File_Name => "b__main.ads");
pragma Source_File_Name (ada_main, Body_File_Name => "b__main.adb");
pragma Suppress (Overflow_Check);
with Ada.Exceptions;

package body ada_main is

   E069 : Short_Integer; pragma Import (Ada, E069, "system__os_lib_E");
   E014 : Short_Integer; pragma Import (Ada, E014, "ada__exceptions_E");
   E010 : Short_Integer; pragma Import (Ada, E010, "system__soft_links_E");
   E008 : Short_Integer; pragma Import (Ada, E008, "system__exception_table_E");
   E033 : Short_Integer; pragma Import (Ada, E033, "ada__containers_E");
   E064 : Short_Integer; pragma Import (Ada, E064, "ada__io_exceptions_E");
   E005 : Short_Integer; pragma Import (Ada, E005, "ada__strings_E");
   E051 : Short_Integer; pragma Import (Ada, E051, "ada__strings__maps_E");
   E055 : Short_Integer; pragma Import (Ada, E055, "ada__strings__maps__constants_E");
   E038 : Short_Integer; pragma Import (Ada, E038, "interfaces__c_E");
   E018 : Short_Integer; pragma Import (Ada, E018, "system__exceptions_E");
   E075 : Short_Integer; pragma Import (Ada, E075, "system__object_reader_E");
   E045 : Short_Integer; pragma Import (Ada, E045, "system__dwarf_lines_E");
   E093 : Short_Integer; pragma Import (Ada, E093, "system__soft_links__initialize_E");
   E032 : Short_Integer; pragma Import (Ada, E032, "system__traceback__symbolic_E");
   E101 : Short_Integer; pragma Import (Ada, E101, "ada__tags_E");
   E118 : Short_Integer; pragma Import (Ada, E118, "ada__streams_E");
   E144 : Short_Integer; pragma Import (Ada, E144, "gnat_E");
   E216 : Short_Integer; pragma Import (Ada, E216, "interfaces__c__strings_E");
   E135 : Short_Integer; pragma Import (Ada, E135, "system__file_control_block_E");
   E120 : Short_Integer; pragma Import (Ada, E120, "system__finalization_root_E");
   E116 : Short_Integer; pragma Import (Ada, E116, "ada__finalization_E");
   E134 : Short_Integer; pragma Import (Ada, E134, "system__file_io_E");
   E487 : Short_Integer; pragma Import (Ada, E487, "ada__streams__stream_io_E");
   E122 : Short_Integer; pragma Import (Ada, E122, "system__storage_pools_E");
   E113 : Short_Integer; pragma Import (Ada, E113, "system__finalization_masters_E");
   E111 : Short_Integer; pragma Import (Ada, E111, "system__storage_pools__subpools_E");
   E097 : Short_Integer; pragma Import (Ada, E097, "ada__strings__unbounded_E");
   E189 : Short_Integer; pragma Import (Ada, E189, "ada__calendar_E");
   E195 : Short_Integer; pragma Import (Ada, E195, "ada__calendar__time_zones_E");
   E130 : Short_Integer; pragma Import (Ada, E130, "ada__text_io_E");
   E451 : Short_Integer; pragma Import (Ada, E451, "system__assertions_E");
   E163 : Short_Integer; pragma Import (Ada, E163, "system__pool_global_E");
   E161 : Short_Integer; pragma Import (Ada, E161, "system__pool_size_E");
   E207 : Short_Integer; pragma Import (Ada, E207, "system__regexp_E");
   E187 : Short_Integer; pragma Import (Ada, E187, "ada__directories_E");
   E211 : Short_Integer; pragma Import (Ada, E211, "glib_E");
   E214 : Short_Integer; pragma Import (Ada, E214, "gtkada__types_E");
   E284 : Short_Integer; pragma Import (Ada, E284, "gdk__frame_timings_E");
   E233 : Short_Integer; pragma Import (Ada, E233, "glib__glist_E");
   E268 : Short_Integer; pragma Import (Ada, E268, "gdk__visual_E");
   E235 : Short_Integer; pragma Import (Ada, E235, "glib__gslist_E");
   E140 : Short_Integer; pragma Import (Ada, E140, "gnatcoll__atomic_E");
   E156 : Short_Integer; pragma Import (Ada, E156, "gnatcoll__storage_pools__headers_E");
   E154 : Short_Integer; pragma Import (Ada, E154, "gnatcoll__refcount_E");
   E152 : Short_Integer; pragma Import (Ada, E152, "gnatcoll__strings_impl_E");
   E150 : Short_Integer; pragma Import (Ada, E150, "gnatcoll__strings_E");
   E149 : Short_Integer; pragma Import (Ada, E149, "gnatcoll__strings_E");
   E138 : Short_Integer; pragma Import (Ada, E138, "gnatcoll__json_E");
   E142 : Short_Integer; pragma Import (Ada, E142, "gnatcoll__json__utility_E");
   E229 : Short_Integer; pragma Import (Ada, E229, "gtkada__c_E");
   E220 : Short_Integer; pragma Import (Ada, E220, "glib__object_E");
   E222 : Short_Integer; pragma Import (Ada, E222, "glib__type_conversion_hooks_E");
   E231 : Short_Integer; pragma Import (Ada, E231, "glib__types_E");
   E218 : Short_Integer; pragma Import (Ada, E218, "glib__values_E");
   E224 : Short_Integer; pragma Import (Ada, E224, "gtkada__bindings_E");
   E209 : Short_Integer; pragma Import (Ada, E209, "cairo_E");
   E251 : Short_Integer; pragma Import (Ada, E251, "cairo__region_E");
   E263 : Short_Integer; pragma Import (Ada, E263, "gdk__rectangle_E");
   E242 : Short_Integer; pragma Import (Ada, E242, "glib__generic_properties_E");
   E240 : Short_Integer; pragma Import (Ada, E240, "gdk__color_E");
   E270 : Short_Integer; pragma Import (Ada, E270, "gdk__rgba_E");
   E393 : Short_Integer; pragma Import (Ada, E393, "glib__key_file_E");
   E261 : Short_Integer; pragma Import (Ada, E261, "glib__properties_E");
   E259 : Short_Integer; pragma Import (Ada, E259, "gdk__device_tool_E");
   E347 : Short_Integer; pragma Import (Ada, E347, "gdk__drawing_context_E");
   E257 : Short_Integer; pragma Import (Ada, E257, "gdk__event_E");
   E292 : Short_Integer; pragma Import (Ada, E292, "glib__string_E");
   E288 : Short_Integer; pragma Import (Ada, E288, "glib__variant_E");
   E355 : Short_Integer; pragma Import (Ada, E355, "glib__g_icon_E");
   E296 : Short_Integer; pragma Import (Ada, E296, "gtk__builder_E");
   E335 : Short_Integer; pragma Import (Ada, E335, "gtk__buildable_E");
   E367 : Short_Integer; pragma Import (Ada, E367, "gtk__cell_area_context_E");
   E383 : Short_Integer; pragma Import (Ada, E383, "gtk__css_section_E");
   E276 : Short_Integer; pragma Import (Ada, E276, "gtk__enums_E");
   E341 : Short_Integer; pragma Import (Ada, E341, "gtk__orientable_E");
   E395 : Short_Integer; pragma Import (Ada, E395, "gtk__paper_size_E");
   E391 : Short_Integer; pragma Import (Ada, E391, "gtk__page_setup_E");
   E401 : Short_Integer; pragma Import (Ada, E401, "gtk__print_settings_E");
   E304 : Short_Integer; pragma Import (Ada, E304, "gtk__target_entry_E");
   E302 : Short_Integer; pragma Import (Ada, E302, "gtk__target_list_E");
   E421 : Short_Integer; pragma Import (Ada, E421, "gtk__text_mark_E");
   E485 : Short_Integer; pragma Import (Ada, E485, "json_handler_E");
   E309 : Short_Integer; pragma Import (Ada, E309, "pango__enums_E");
   E329 : Short_Integer; pragma Import (Ada, E329, "pango__attributes_E");
   E313 : Short_Integer; pragma Import (Ada, E313, "pango__font_metrics_E");
   E315 : Short_Integer; pragma Import (Ada, E315, "pango__language_E");
   E311 : Short_Integer; pragma Import (Ada, E311, "pango__font_E");
   E407 : Short_Integer; pragma Import (Ada, E407, "gtk__text_attributes_E");
   E409 : Short_Integer; pragma Import (Ada, E409, "gtk__text_tag_E");
   E319 : Short_Integer; pragma Import (Ada, E319, "pango__font_face_E");
   E317 : Short_Integer; pragma Import (Ada, E317, "pango__font_family_E");
   E321 : Short_Integer; pragma Import (Ada, E321, "pango__fontset_E");
   E323 : Short_Integer; pragma Import (Ada, E323, "pango__matrix_E");
   E307 : Short_Integer; pragma Import (Ada, E307, "pango__context_E");
   E325 : Short_Integer; pragma Import (Ada, E325, "pango__font_map_E");
   E331 : Short_Integer; pragma Import (Ada, E331, "pango__tabs_E");
   E327 : Short_Integer; pragma Import (Ada, E327, "pango__layout_E");
   E397 : Short_Integer; pragma Import (Ada, E397, "gtk__print_context_E");
   E282 : Short_Integer; pragma Import (Ada, E282, "gdk__frame_clock_E");
   E425 : Short_Integer; pragma Import (Ada, E425, "gdk__monitor_E");
   E246 : Short_Integer; pragma Import (Ada, E246, "gdk__display_E");
   E349 : Short_Integer; pragma Import (Ada, E349, "gdk__glcontext_E");
   E244 : Short_Integer; pragma Import (Ada, E244, "gdk__pixbuf_E");
   E266 : Short_Integer; pragma Import (Ada, E266, "gdk__screen_E");
   E255 : Short_Integer; pragma Import (Ada, E255, "gdk__device_E");
   E253 : Short_Integer; pragma Import (Ada, E253, "gdk__drag_contexts_E");
   E345 : Short_Integer; pragma Import (Ada, E345, "gdk__window_E");
   E286 : Short_Integer; pragma Import (Ada, E286, "glib__action_group_E");
   E294 : Short_Integer; pragma Import (Ada, E294, "gtk__accel_group_E");
   E339 : Short_Integer; pragma Import (Ada, E339, "gtk__adjustment_E");
   E357 : Short_Integer; pragma Import (Ada, E357, "gtk__cell_editable_E");
   E359 : Short_Integer; pragma Import (Ada, E359, "gtk__editable_E");
   E361 : Short_Integer; pragma Import (Ada, E361, "gtk__entry_buffer_E");
   E379 : Short_Integer; pragma Import (Ada, E379, "gtk__icon_source_E");
   E399 : Short_Integer; pragma Import (Ada, E399, "gtk__print_operation_preview_E");
   E298 : Short_Integer; pragma Import (Ada, E298, "gtk__selection_data_E");
   E417 : Short_Integer; pragma Import (Ada, E417, "gtk__clipboard_E");
   E300 : Short_Integer; pragma Import (Ada, E300, "gtk__style_E");
   E413 : Short_Integer; pragma Import (Ada, E413, "gtk__scrollable_E");
   E405 : Short_Integer; pragma Import (Ada, E405, "gtk__text_iter_E");
   E423 : Short_Integer; pragma Import (Ada, E423, "gtk__text_tag_table_E");
   E373 : Short_Integer; pragma Import (Ada, E373, "gtk__tree_model_E");
   E280 : Short_Integer; pragma Import (Ada, E280, "gtk__widget_E");
   E371 : Short_Integer; pragma Import (Ada, E371, "gtk__cell_renderer_E");
   E369 : Short_Integer; pragma Import (Ada, E369, "gtk__cell_layout_E");
   E365 : Short_Integer; pragma Import (Ada, E365, "gtk__cell_area_E");
   E337 : Short_Integer; pragma Import (Ada, E337, "gtk__container_E");
   E351 : Short_Integer; pragma Import (Ada, E351, "gtk__bin_E");
   E333 : Short_Integer; pragma Import (Ada, E333, "gtk__box_E");
   E363 : Short_Integer; pragma Import (Ada, E363, "gtk__entry_completion_E");
   E385 : Short_Integer; pragma Import (Ada, E385, "gtk__misc_E");
   E387 : Short_Integer; pragma Import (Ada, E387, "gtk__notebook_E");
   E403 : Short_Integer; pragma Import (Ada, E403, "gtk__status_bar_E");
   E278 : Short_Integer; pragma Import (Ada, E278, "gtk__style_provider_E");
   E274 : Short_Integer; pragma Import (Ada, E274, "gtk__settings_E");
   E381 : Short_Integer; pragma Import (Ada, E381, "gtk__style_context_E");
   E377 : Short_Integer; pragma Import (Ada, E377, "gtk__icon_set_E");
   E375 : Short_Integer; pragma Import (Ada, E375, "gtk__image_E");
   E353 : Short_Integer; pragma Import (Ada, E353, "gtk__gentry_E");
   E419 : Short_Integer; pragma Import (Ada, E419, "gtk__text_child_anchor_E");
   E415 : Short_Integer; pragma Import (Ada, E415, "gtk__text_buffer_E");
   E411 : Short_Integer; pragma Import (Ada, E411, "gtk__text_view_E");
   E343 : Short_Integer; pragma Import (Ada, E343, "gtk__window_E");
   E272 : Short_Integer; pragma Import (Ada, E272, "gtk__dialog_E");
   E389 : Short_Integer; pragma Import (Ada, E389, "gtk__print_operation_E");
   E249 : Short_Integer; pragma Import (Ada, E249, "gtk__arguments_E");
   E238 : Short_Integer; pragma Import (Ada, E238, "gdk__cairo_E");
   E447 : Short_Integer; pragma Import (Ada, E447, "gtk__drawing_area_E");
   E457 : Short_Integer; pragma Import (Ada, E457, "gtk__main_E");
   E453 : Short_Integer; pragma Import (Ada, E453, "gtk__marshallers_E");
   E459 : Short_Integer; pragma Import (Ada, E459, "gtk__message_dialog_E");
   E471 : Short_Integer; pragma Import (Ada, E471, "gtk__tooltip_E");
   E463 : Short_Integer; pragma Import (Ada, E463, "gtk__tree_drag_dest_E");
   E465 : Short_Integer; pragma Import (Ada, E465, "gtk__tree_drag_source_E");
   E473 : Short_Integer; pragma Import (Ada, E473, "gtk__tree_selection_E");
   E467 : Short_Integer; pragma Import (Ada, E467, "gtk__tree_sortable_E");
   E461 : Short_Integer; pragma Import (Ada, E461, "gtk__tree_store_E");
   E455 : Short_Integer; pragma Import (Ada, E455, "gtk__tree_view_column_E");
   E469 : Short_Integer; pragma Import (Ada, E469, "gtk__tree_view_E");
   E476 : Short_Integer; pragma Import (Ada, E476, "gtkada__handlers_E");
   E475 : Short_Integer; pragma Import (Ada, E475, "gtkada__builder_E");
   E443 : Short_Integer; pragma Import (Ada, E443, "utils_E");
   E427 : Short_Integer; pragma Import (Ada, E427, "generic_tree_E");
   E483 : Short_Integer; pragma Import (Ada, E483, "tree_functions_E");
   E497 : Short_Integer; pragma Import (Ada, E497, "tree_global_E");
   E185 : Short_Integer; pragma Import (Ada, E185, "interface_package_E");

   Sec_Default_Sized_Stacks : array (1 .. 1) of aliased System.Secondary_Stack.SS_Stack (System.Parameters.Runtime_Default_Sec_Stack_Size);

   Local_Priority_Specific_Dispatching : constant String := "";
   Local_Interrupt_States : constant String := "";

   Is_Elaborated : Boolean := False;

   procedure finalize_library is
   begin
      E185 := E185 - 1;
      declare
         procedure F1;
         pragma Import (Ada, F1, "interface_package__finalize_spec");
      begin
         F1;
      end;
      declare
         procedure F2;
         pragma Import (Ada, F2, "gtkada__builder__finalize_body");
      begin
         E475 := E475 - 1;
         F2;
      end;
      declare
         procedure F3;
         pragma Import (Ada, F3, "gtkada__builder__finalize_spec");
      begin
         F3;
      end;
      declare
         procedure F4;
         pragma Import (Ada, F4, "gtkada__handlers__finalize_spec");
      begin
         E476 := E476 - 1;
         F4;
      end;
      E469 := E469 - 1;
      declare
         procedure F5;
         pragma Import (Ada, F5, "gtk__tree_view__finalize_spec");
      begin
         F5;
      end;
      E455 := E455 - 1;
      declare
         procedure F6;
         pragma Import (Ada, F6, "gtk__tree_view_column__finalize_spec");
      begin
         F6;
      end;
      E461 := E461 - 1;
      declare
         procedure F7;
         pragma Import (Ada, F7, "gtk__tree_store__finalize_spec");
      begin
         F7;
      end;
      E473 := E473 - 1;
      declare
         procedure F8;
         pragma Import (Ada, F8, "gtk__tree_selection__finalize_spec");
      begin
         F8;
      end;
      E471 := E471 - 1;
      declare
         procedure F9;
         pragma Import (Ada, F9, "gtk__tooltip__finalize_spec");
      begin
         F9;
      end;
      E459 := E459 - 1;
      declare
         procedure F10;
         pragma Import (Ada, F10, "gtk__message_dialog__finalize_spec");
      begin
         F10;
      end;
      E447 := E447 - 1;
      declare
         procedure F11;
         pragma Import (Ada, F11, "gtk__drawing_area__finalize_spec");
      begin
         F11;
      end;
      E343 := E343 - 1;
      E280 := E280 - 1;
      E373 := E373 - 1;
      E411 := E411 - 1;
      E423 := E423 - 1;
      E415 := E415 - 1;
      E381 := E381 - 1;
      E300 := E300 - 1;
      E403 := E403 - 1;
      E389 := E389 - 1;
      E387 := E387 - 1;
      E353 := E353 - 1;
      E363 := E363 - 1;
      E361 := E361 - 1;
      E272 := E272 - 1;
      E337 := E337 - 1;
      E417 := E417 - 1;
      E371 := E371 - 1;
      E365 := E365 - 1;
      E339 := E339 - 1;
      E294 := E294 - 1;
      E425 := E425 - 1;
      E282 := E282 - 1;
      E253 := E253 - 1;
      E246 := E246 - 1;
      E255 := E255 - 1;
      declare
         procedure F12;
         pragma Import (Ada, F12, "gtk__print_operation__finalize_spec");
      begin
         F12;
      end;
      declare
         procedure F13;
         pragma Import (Ada, F13, "gtk__dialog__finalize_spec");
      begin
         F13;
      end;
      declare
         procedure F14;
         pragma Import (Ada, F14, "gtk__window__finalize_spec");
      begin
         F14;
      end;
      declare
         procedure F15;
         pragma Import (Ada, F15, "gtk__text_view__finalize_spec");
      begin
         F15;
      end;
      declare
         procedure F16;
         pragma Import (Ada, F16, "gtk__text_buffer__finalize_spec");
      begin
         F16;
      end;
      E419 := E419 - 1;
      declare
         procedure F17;
         pragma Import (Ada, F17, "gtk__text_child_anchor__finalize_spec");
      begin
         F17;
      end;
      declare
         procedure F18;
         pragma Import (Ada, F18, "gtk__gentry__finalize_spec");
      begin
         F18;
      end;
      E375 := E375 - 1;
      declare
         procedure F19;
         pragma Import (Ada, F19, "gtk__image__finalize_spec");
      begin
         F19;
      end;
      E377 := E377 - 1;
      declare
         procedure F20;
         pragma Import (Ada, F20, "gtk__icon_set__finalize_spec");
      begin
         F20;
      end;
      declare
         procedure F21;
         pragma Import (Ada, F21, "gtk__style_context__finalize_spec");
      begin
         F21;
      end;
      E274 := E274 - 1;
      declare
         procedure F22;
         pragma Import (Ada, F22, "gtk__settings__finalize_spec");
      begin
         F22;
      end;
      declare
         procedure F23;
         pragma Import (Ada, F23, "gtk__status_bar__finalize_spec");
      begin
         F23;
      end;
      declare
         procedure F24;
         pragma Import (Ada, F24, "gtk__notebook__finalize_spec");
      begin
         F24;
      end;
      E385 := E385 - 1;
      declare
         procedure F25;
         pragma Import (Ada, F25, "gtk__misc__finalize_spec");
      begin
         F25;
      end;
      declare
         procedure F26;
         pragma Import (Ada, F26, "gtk__entry_completion__finalize_spec");
      begin
         F26;
      end;
      E333 := E333 - 1;
      declare
         procedure F27;
         pragma Import (Ada, F27, "gtk__box__finalize_spec");
      begin
         F27;
      end;
      E351 := E351 - 1;
      declare
         procedure F28;
         pragma Import (Ada, F28, "gtk__bin__finalize_spec");
      begin
         F28;
      end;
      declare
         procedure F29;
         pragma Import (Ada, F29, "gtk__container__finalize_spec");
      begin
         F29;
      end;
      declare
         procedure F30;
         pragma Import (Ada, F30, "gtk__cell_area__finalize_spec");
      begin
         F30;
      end;
      declare
         procedure F31;
         pragma Import (Ada, F31, "gtk__cell_renderer__finalize_spec");
      begin
         F31;
      end;
      declare
         procedure F32;
         pragma Import (Ada, F32, "gtk__widget__finalize_spec");
      begin
         F32;
      end;
      declare
         procedure F33;
         pragma Import (Ada, F33, "gtk__tree_model__finalize_spec");
      begin
         F33;
      end;
      declare
         procedure F34;
         pragma Import (Ada, F34, "gtk__text_tag_table__finalize_spec");
      begin
         F34;
      end;
      declare
         procedure F35;
         pragma Import (Ada, F35, "gtk__style__finalize_spec");
      begin
         F35;
      end;
      declare
         procedure F36;
         pragma Import (Ada, F36, "gtk__clipboard__finalize_spec");
      begin
         F36;
      end;
      E298 := E298 - 1;
      declare
         procedure F37;
         pragma Import (Ada, F37, "gtk__selection_data__finalize_spec");
      begin
         F37;
      end;
      E379 := E379 - 1;
      declare
         procedure F38;
         pragma Import (Ada, F38, "gtk__icon_source__finalize_spec");
      begin
         F38;
      end;
      declare
         procedure F39;
         pragma Import (Ada, F39, "gtk__entry_buffer__finalize_spec");
      begin
         F39;
      end;
      declare
         procedure F40;
         pragma Import (Ada, F40, "gtk__adjustment__finalize_spec");
      begin
         F40;
      end;
      declare
         procedure F41;
         pragma Import (Ada, F41, "gtk__accel_group__finalize_spec");
      begin
         F41;
      end;
      declare
         procedure F42;
         pragma Import (Ada, F42, "gdk__drag_contexts__finalize_spec");
      begin
         F42;
      end;
      declare
         procedure F43;
         pragma Import (Ada, F43, "gdk__device__finalize_spec");
      begin
         F43;
      end;
      E266 := E266 - 1;
      declare
         procedure F44;
         pragma Import (Ada, F44, "gdk__screen__finalize_spec");
      begin
         F44;
      end;
      E244 := E244 - 1;
      declare
         procedure F45;
         pragma Import (Ada, F45, "gdk__pixbuf__finalize_spec");
      begin
         F45;
      end;
      E349 := E349 - 1;
      declare
         procedure F46;
         pragma Import (Ada, F46, "gdk__glcontext__finalize_spec");
      begin
         F46;
      end;
      declare
         procedure F47;
         pragma Import (Ada, F47, "gdk__display__finalize_spec");
      begin
         F47;
      end;
      declare
         procedure F48;
         pragma Import (Ada, F48, "gdk__monitor__finalize_spec");
      begin
         F48;
      end;
      declare
         procedure F49;
         pragma Import (Ada, F49, "gdk__frame_clock__finalize_spec");
      begin
         F49;
      end;
      E397 := E397 - 1;
      declare
         procedure F50;
         pragma Import (Ada, F50, "gtk__print_context__finalize_spec");
      begin
         F50;
      end;
      E327 := E327 - 1;
      declare
         procedure F51;
         pragma Import (Ada, F51, "pango__layout__finalize_spec");
      begin
         F51;
      end;
      E331 := E331 - 1;
      declare
         procedure F52;
         pragma Import (Ada, F52, "pango__tabs__finalize_spec");
      begin
         F52;
      end;
      E325 := E325 - 1;
      declare
         procedure F53;
         pragma Import (Ada, F53, "pango__font_map__finalize_spec");
      begin
         F53;
      end;
      E307 := E307 - 1;
      declare
         procedure F54;
         pragma Import (Ada, F54, "pango__context__finalize_spec");
      begin
         F54;
      end;
      E321 := E321 - 1;
      declare
         procedure F55;
         pragma Import (Ada, F55, "pango__fontset__finalize_spec");
      begin
         F55;
      end;
      E317 := E317 - 1;
      declare
         procedure F56;
         pragma Import (Ada, F56, "pango__font_family__finalize_spec");
      begin
         F56;
      end;
      E319 := E319 - 1;
      declare
         procedure F57;
         pragma Import (Ada, F57, "pango__font_face__finalize_spec");
      begin
         F57;
      end;
      E409 := E409 - 1;
      declare
         procedure F58;
         pragma Import (Ada, F58, "gtk__text_tag__finalize_spec");
      begin
         F58;
      end;
      E311 := E311 - 1;
      declare
         procedure F59;
         pragma Import (Ada, F59, "pango__font__finalize_spec");
      begin
         F59;
      end;
      E315 := E315 - 1;
      declare
         procedure F60;
         pragma Import (Ada, F60, "pango__language__finalize_spec");
      begin
         F60;
      end;
      E313 := E313 - 1;
      declare
         procedure F61;
         pragma Import (Ada, F61, "pango__font_metrics__finalize_spec");
      begin
         F61;
      end;
      E329 := E329 - 1;
      declare
         procedure F62;
         pragma Import (Ada, F62, "pango__attributes__finalize_spec");
      begin
         F62;
      end;
      E421 := E421 - 1;
      declare
         procedure F63;
         pragma Import (Ada, F63, "gtk__text_mark__finalize_spec");
      begin
         F63;
      end;
      E302 := E302 - 1;
      declare
         procedure F64;
         pragma Import (Ada, F64, "gtk__target_list__finalize_spec");
      begin
         F64;
      end;
      E401 := E401 - 1;
      declare
         procedure F65;
         pragma Import (Ada, F65, "gtk__print_settings__finalize_spec");
      begin
         F65;
      end;
      E391 := E391 - 1;
      declare
         procedure F66;
         pragma Import (Ada, F66, "gtk__page_setup__finalize_spec");
      begin
         F66;
      end;
      E395 := E395 - 1;
      declare
         procedure F67;
         pragma Import (Ada, F67, "gtk__paper_size__finalize_spec");
      begin
         F67;
      end;
      E383 := E383 - 1;
      declare
         procedure F68;
         pragma Import (Ada, F68, "gtk__css_section__finalize_spec");
      begin
         F68;
      end;
      E367 := E367 - 1;
      declare
         procedure F69;
         pragma Import (Ada, F69, "gtk__cell_area_context__finalize_spec");
      begin
         F69;
      end;
      E296 := E296 - 1;
      declare
         procedure F70;
         pragma Import (Ada, F70, "gtk__builder__finalize_spec");
      begin
         F70;
      end;
      E288 := E288 - 1;
      declare
         procedure F71;
         pragma Import (Ada, F71, "glib__variant__finalize_spec");
      begin
         F71;
      end;
      E347 := E347 - 1;
      declare
         procedure F72;
         pragma Import (Ada, F72, "gdk__drawing_context__finalize_spec");
      begin
         F72;
      end;
      E259 := E259 - 1;
      declare
         procedure F73;
         pragma Import (Ada, F73, "gdk__device_tool__finalize_spec");
      begin
         F73;
      end;
      E220 := E220 - 1;
      declare
         procedure F74;
         pragma Import (Ada, F74, "glib__object__finalize_spec");
      begin
         F74;
      end;
      E138 := E138 - 1;
      declare
         procedure F75;
         pragma Import (Ada, F75, "gnatcoll__json__finalize_spec");
      begin
         F75;
      end;
      E154 := E154 - 1;
      declare
         procedure F76;
         pragma Import (Ada, F76, "gnatcoll__refcount__finalize_spec");
      begin
         F76;
      end;
      E284 := E284 - 1;
      declare
         procedure F77;
         pragma Import (Ada, F77, "gdk__frame_timings__finalize_spec");
      begin
         F77;
      end;
      E211 := E211 - 1;
      declare
         procedure F78;
         pragma Import (Ada, F78, "glib__finalize_spec");
      begin
         F78;
      end;
      E187 := E187 - 1;
      declare
         procedure F79;
         pragma Import (Ada, F79, "ada__directories__finalize_spec");
      begin
         F79;
      end;
      E207 := E207 - 1;
      declare
         procedure F80;
         pragma Import (Ada, F80, "system__regexp__finalize_spec");
      begin
         F80;
      end;
      E161 := E161 - 1;
      declare
         procedure F81;
         pragma Import (Ada, F81, "system__pool_size__finalize_spec");
      begin
         F81;
      end;
      E163 := E163 - 1;
      declare
         procedure F82;
         pragma Import (Ada, F82, "system__pool_global__finalize_spec");
      begin
         F82;
      end;
      E130 := E130 - 1;
      declare
         procedure F83;
         pragma Import (Ada, F83, "ada__text_io__finalize_spec");
      begin
         F83;
      end;
      E097 := E097 - 1;
      declare
         procedure F84;
         pragma Import (Ada, F84, "ada__strings__unbounded__finalize_spec");
      begin
         F84;
      end;
      E111 := E111 - 1;
      declare
         procedure F85;
         pragma Import (Ada, F85, "system__storage_pools__subpools__finalize_spec");
      begin
         F85;
      end;
      E113 := E113 - 1;
      declare
         procedure F86;
         pragma Import (Ada, F86, "system__finalization_masters__finalize_spec");
      begin
         F86;
      end;
      E487 := E487 - 1;
      declare
         procedure F87;
         pragma Import (Ada, F87, "ada__streams__stream_io__finalize_spec");
      begin
         F87;
      end;
      declare
         procedure F88;
         pragma Import (Ada, F88, "system__file_io__finalize_body");
      begin
         E134 := E134 - 1;
         F88;
      end;
      declare
         procedure Reraise_Library_Exception_If_Any;
            pragma Import (Ada, Reraise_Library_Exception_If_Any, "__gnat_reraise_library_exception_if_any");
      begin
         Reraise_Library_Exception_If_Any;
      end;
   end finalize_library;

   procedure adafinal is
      procedure s_stalib_adafinal;
      pragma Import (C, s_stalib_adafinal, "system__standard_library__adafinal");

      procedure Runtime_Finalize;
      pragma Import (C, Runtime_Finalize, "__gnat_runtime_finalize");

   begin
      if not Is_Elaborated then
         return;
      end if;
      Is_Elaborated := False;
      Runtime_Finalize;
      s_stalib_adafinal;
   end adafinal;

   type No_Param_Proc is access procedure;
   pragma Favor_Top_Level (No_Param_Proc);

   procedure adainit is
      Main_Priority : Integer;
      pragma Import (C, Main_Priority, "__gl_main_priority");
      Time_Slice_Value : Integer;
      pragma Import (C, Time_Slice_Value, "__gl_time_slice_val");
      WC_Encoding : Character;
      pragma Import (C, WC_Encoding, "__gl_wc_encoding");
      Locking_Policy : Character;
      pragma Import (C, Locking_Policy, "__gl_locking_policy");
      Queuing_Policy : Character;
      pragma Import (C, Queuing_Policy, "__gl_queuing_policy");
      Task_Dispatching_Policy : Character;
      pragma Import (C, Task_Dispatching_Policy, "__gl_task_dispatching_policy");
      Priority_Specific_Dispatching : System.Address;
      pragma Import (C, Priority_Specific_Dispatching, "__gl_priority_specific_dispatching");
      Num_Specific_Dispatching : Integer;
      pragma Import (C, Num_Specific_Dispatching, "__gl_num_specific_dispatching");
      Main_CPU : Integer;
      pragma Import (C, Main_CPU, "__gl_main_cpu");
      Interrupt_States : System.Address;
      pragma Import (C, Interrupt_States, "__gl_interrupt_states");
      Num_Interrupt_States : Integer;
      pragma Import (C, Num_Interrupt_States, "__gl_num_interrupt_states");
      Unreserve_All_Interrupts : Integer;
      pragma Import (C, Unreserve_All_Interrupts, "__gl_unreserve_all_interrupts");
      Detect_Blocking : Integer;
      pragma Import (C, Detect_Blocking, "__gl_detect_blocking");
      Default_Stack_Size : Integer;
      pragma Import (C, Default_Stack_Size, "__gl_default_stack_size");
      Default_Secondary_Stack_Size : System.Parameters.Size_Type;
      pragma Import (C, Default_Secondary_Stack_Size, "__gnat_default_ss_size");
      Leap_Seconds_Support : Integer;
      pragma Import (C, Leap_Seconds_Support, "__gl_leap_seconds_support");
      Bind_Env_Addr : System.Address;
      pragma Import (C, Bind_Env_Addr, "__gl_bind_env_addr");

      procedure Runtime_Initialize (Install_Handler : Integer);
      pragma Import (C, Runtime_Initialize, "__gnat_runtime_initialize");

      Finalize_Library_Objects : No_Param_Proc;
      pragma Import (C, Finalize_Library_Objects, "__gnat_finalize_library_objects");
      Binder_Sec_Stacks_Count : Natural;
      pragma Import (Ada, Binder_Sec_Stacks_Count, "__gnat_binder_ss_count");
      Default_Sized_SS_Pool : System.Address;
      pragma Import (Ada, Default_Sized_SS_Pool, "__gnat_default_ss_pool");

   begin
      if Is_Elaborated then
         return;
      end if;
      Is_Elaborated := True;
      Main_Priority := -1;
      Time_Slice_Value := -1;
      WC_Encoding := 'b';
      Locking_Policy := ' ';
      Queuing_Policy := ' ';
      Task_Dispatching_Policy := ' ';
      Priority_Specific_Dispatching :=
        Local_Priority_Specific_Dispatching'Address;
      Num_Specific_Dispatching := 0;
      Main_CPU := -1;
      Interrupt_States := Local_Interrupt_States'Address;
      Num_Interrupt_States := 0;
      Unreserve_All_Interrupts := 0;
      Detect_Blocking := 0;
      Default_Stack_Size := -1;
      Leap_Seconds_Support := 0;

      ada_main'Elab_Body;
      Default_Secondary_Stack_Size := System.Parameters.Runtime_Default_Sec_Stack_Size;
      Binder_Sec_Stacks_Count := 1;
      Default_Sized_SS_Pool := Sec_Default_Sized_Stacks'Address;

      Runtime_Initialize (1);

      Finalize_Library_Objects := finalize_library'access;

      Ada.Exceptions'Elab_Spec;
      System.Soft_Links'Elab_Spec;
      System.Exception_Table'Elab_Body;
      E008 := E008 + 1;
      Ada.Containers'Elab_Spec;
      E033 := E033 + 1;
      Ada.Io_Exceptions'Elab_Spec;
      E064 := E064 + 1;
      Ada.Strings'Elab_Spec;
      E005 := E005 + 1;
      Ada.Strings.Maps'Elab_Spec;
      E051 := E051 + 1;
      Ada.Strings.Maps.Constants'Elab_Spec;
      E055 := E055 + 1;
      Interfaces.C'Elab_Spec;
      E038 := E038 + 1;
      System.Exceptions'Elab_Spec;
      E018 := E018 + 1;
      System.Object_Reader'Elab_Spec;
      E075 := E075 + 1;
      System.Dwarf_Lines'Elab_Spec;
      E045 := E045 + 1;
      System.Os_Lib'Elab_Body;
      E069 := E069 + 1;
      System.Soft_Links.Initialize'Elab_Body;
      E093 := E093 + 1;
      E010 := E010 + 1;
      System.Traceback.Symbolic'Elab_Body;
      E032 := E032 + 1;
      E014 := E014 + 1;
      Ada.Tags'Elab_Spec;
      Ada.Tags'Elab_Body;
      E101 := E101 + 1;
      Ada.Streams'Elab_Spec;
      E118 := E118 + 1;
      Gnat'Elab_Spec;
      E144 := E144 + 1;
      Interfaces.C.Strings'Elab_Spec;
      E216 := E216 + 1;
      System.File_Control_Block'Elab_Spec;
      E135 := E135 + 1;
      System.Finalization_Root'Elab_Spec;
      E120 := E120 + 1;
      Ada.Finalization'Elab_Spec;
      E116 := E116 + 1;
      System.File_Io'Elab_Body;
      E134 := E134 + 1;
      Ada.Streams.Stream_Io'Elab_Spec;
      E487 := E487 + 1;
      System.Storage_Pools'Elab_Spec;
      E122 := E122 + 1;
      System.Finalization_Masters'Elab_Spec;
      System.Finalization_Masters'Elab_Body;
      E113 := E113 + 1;
      System.Storage_Pools.Subpools'Elab_Spec;
      E111 := E111 + 1;
      Ada.Strings.Unbounded'Elab_Spec;
      E097 := E097 + 1;
      Ada.Calendar'Elab_Spec;
      Ada.Calendar'Elab_Body;
      E189 := E189 + 1;
      Ada.Calendar.Time_Zones'Elab_Spec;
      E195 := E195 + 1;
      Ada.Text_Io'Elab_Spec;
      Ada.Text_Io'Elab_Body;
      E130 := E130 + 1;
      System.Assertions'Elab_Spec;
      E451 := E451 + 1;
      System.Pool_Global'Elab_Spec;
      E163 := E163 + 1;
      System.Pool_Size'Elab_Spec;
      E161 := E161 + 1;
      System.Regexp'Elab_Spec;
      E207 := E207 + 1;
      Ada.Directories'Elab_Spec;
      Ada.Directories'Elab_Body;
      E187 := E187 + 1;
      Glib'Elab_Spec;
      Gtkada.Types'Elab_Spec;
      E214 := E214 + 1;
      E211 := E211 + 1;
      Gdk.Frame_Timings'Elab_Spec;
      Gdk.Frame_Timings'Elab_Body;
      E284 := E284 + 1;
      E233 := E233 + 1;
      Gdk.Visual'Elab_Body;
      E268 := E268 + 1;
      E235 := E235 + 1;
      E140 := E140 + 1;
      E156 := E156 + 1;
      GNATCOLL.REFCOUNT'ELAB_SPEC;
      E154 := E154 + 1;
      E152 := E152 + 1;
      GNATCOLL.STRINGS'ELAB_SPEC;
      GNATCOLL.STRINGS'ELAB_BODY;
      E150 := E150 + 1;
      GNATCOLL.JSON'ELAB_SPEC;
      E142 := E142 + 1;
      GNATCOLL.JSON'ELAB_BODY;
      E138 := E138 + 1;
      E229 := E229 + 1;
      Glib.Object'Elab_Spec;
      E222 := E222 + 1;
      Glib.Values'Elab_Body;
      E218 := E218 + 1;
      E224 := E224 + 1;
      Glib.Object'Elab_Body;
      E220 := E220 + 1;
      E231 := E231 + 1;
      E209 := E209 + 1;
      E251 := E251 + 1;
      E263 := E263 + 1;
      Glib.Generic_Properties'Elab_Spec;
      Glib.Generic_Properties'Elab_Body;
      E242 := E242 + 1;
      Gdk.Color'Elab_Spec;
      E240 := E240 + 1;
      E270 := E270 + 1;
      E393 := E393 + 1;
      E261 := E261 + 1;
      Gdk.Device_Tool'Elab_Spec;
      Gdk.Device_Tool'Elab_Body;
      E259 := E259 + 1;
      Gdk.Drawing_Context'Elab_Spec;
      Gdk.Drawing_Context'Elab_Body;
      E347 := E347 + 1;
      E257 := E257 + 1;
      E292 := E292 + 1;
      Glib.Variant'Elab_Spec;
      Glib.Variant'Elab_Body;
      E288 := E288 + 1;
      E355 := E355 + 1;
      Gtk.Builder'Elab_Spec;
      Gtk.Builder'Elab_Body;
      E296 := E296 + 1;
      E335 := E335 + 1;
      Gtk.Cell_Area_Context'Elab_Spec;
      Gtk.Cell_Area_Context'Elab_Body;
      E367 := E367 + 1;
      Gtk.Css_Section'Elab_Spec;
      Gtk.Css_Section'Elab_Body;
      E383 := E383 + 1;
      E276 := E276 + 1;
      Gtk.Orientable'Elab_Spec;
      E341 := E341 + 1;
      Gtk.Paper_Size'Elab_Spec;
      Gtk.Paper_Size'Elab_Body;
      E395 := E395 + 1;
      Gtk.Page_Setup'Elab_Spec;
      Gtk.Page_Setup'Elab_Body;
      E391 := E391 + 1;
      Gtk.Print_Settings'Elab_Spec;
      Gtk.Print_Settings'Elab_Body;
      E401 := E401 + 1;
      E304 := E304 + 1;
      Gtk.Target_List'Elab_Spec;
      Gtk.Target_List'Elab_Body;
      E302 := E302 + 1;
      Gtk.Text_Mark'Elab_Spec;
      Gtk.Text_Mark'Elab_Body;
      E421 := E421 + 1;
      E485 := E485 + 1;
      E309 := E309 + 1;
      Pango.Attributes'Elab_Spec;
      Pango.Attributes'Elab_Body;
      E329 := E329 + 1;
      Pango.Font_Metrics'Elab_Spec;
      Pango.Font_Metrics'Elab_Body;
      E313 := E313 + 1;
      Pango.Language'Elab_Spec;
      Pango.Language'Elab_Body;
      E315 := E315 + 1;
      Pango.Font'Elab_Spec;
      Pango.Font'Elab_Body;
      E311 := E311 + 1;
      E407 := E407 + 1;
      Gtk.Text_Tag'Elab_Spec;
      Gtk.Text_Tag'Elab_Body;
      E409 := E409 + 1;
      Pango.Font_Face'Elab_Spec;
      Pango.Font_Face'Elab_Body;
      E319 := E319 + 1;
      Pango.Font_Family'Elab_Spec;
      Pango.Font_Family'Elab_Body;
      E317 := E317 + 1;
      Pango.Fontset'Elab_Spec;
      Pango.Fontset'Elab_Body;
      E321 := E321 + 1;
      E323 := E323 + 1;
      Pango.Context'Elab_Spec;
      Pango.Context'Elab_Body;
      E307 := E307 + 1;
      Pango.Font_Map'Elab_Spec;
      Pango.Font_Map'Elab_Body;
      E325 := E325 + 1;
      Pango.Tabs'Elab_Spec;
      Pango.Tabs'Elab_Body;
      E331 := E331 + 1;
      Pango.Layout'Elab_Spec;
      Pango.Layout'Elab_Body;
      E327 := E327 + 1;
      Gtk.Print_Context'Elab_Spec;
      Gtk.Print_Context'Elab_Body;
      E397 := E397 + 1;
      Gdk.Frame_Clock'Elab_Spec;
      Gdk.Monitor'Elab_Spec;
      Gdk.Display'Elab_Spec;
      Gdk.Glcontext'Elab_Spec;
      Gdk.Glcontext'Elab_Body;
      E349 := E349 + 1;
      Gdk.Pixbuf'Elab_Spec;
      E244 := E244 + 1;
      Gdk.Screen'Elab_Spec;
      Gdk.Screen'Elab_Body;
      E266 := E266 + 1;
      Gdk.Device'Elab_Spec;
      Gdk.Drag_Contexts'Elab_Spec;
      Gdk.Window'Elab_Spec;
      E345 := E345 + 1;
      Gtk.Accel_Group'Elab_Spec;
      Gtk.Adjustment'Elab_Spec;
      Gtk.Cell_Editable'Elab_Spec;
      Gtk.Entry_Buffer'Elab_Spec;
      Gtk.Icon_Source'Elab_Spec;
      Gtk.Icon_Source'Elab_Body;
      E379 := E379 + 1;
      Gtk.Selection_Data'Elab_Spec;
      Gtk.Selection_Data'Elab_Body;
      E298 := E298 + 1;
      Gtk.Clipboard'Elab_Spec;
      Gtk.Style'Elab_Spec;
      Gtk.Scrollable'Elab_Spec;
      E413 := E413 + 1;
      E405 := E405 + 1;
      Gtk.Text_Tag_Table'Elab_Spec;
      Gtk.Tree_Model'Elab_Spec;
      Gtk.Widget'Elab_Spec;
      Gtk.Cell_Renderer'Elab_Spec;
      E369 := E369 + 1;
      Gtk.Cell_Area'Elab_Spec;
      Gtk.Container'Elab_Spec;
      Gtk.Bin'Elab_Spec;
      Gtk.Bin'Elab_Body;
      E351 := E351 + 1;
      Gtk.Box'Elab_Spec;
      Gtk.Box'Elab_Body;
      E333 := E333 + 1;
      Gtk.Entry_Completion'Elab_Spec;
      Gtk.Misc'Elab_Spec;
      Gtk.Misc'Elab_Body;
      E385 := E385 + 1;
      Gtk.Notebook'Elab_Spec;
      Gtk.Status_Bar'Elab_Spec;
      E278 := E278 + 1;
      Gtk.Settings'Elab_Spec;
      Gtk.Settings'Elab_Body;
      E274 := E274 + 1;
      Gtk.Style_Context'Elab_Spec;
      Gtk.Icon_Set'Elab_Spec;
      Gtk.Icon_Set'Elab_Body;
      E377 := E377 + 1;
      Gtk.Image'Elab_Spec;
      Gtk.Image'Elab_Body;
      E375 := E375 + 1;
      Gtk.Gentry'Elab_Spec;
      Gtk.Text_Child_Anchor'Elab_Spec;
      Gtk.Text_Child_Anchor'Elab_Body;
      E419 := E419 + 1;
      Gtk.Text_Buffer'Elab_Spec;
      Gtk.Text_View'Elab_Spec;
      Gtk.Window'Elab_Spec;
      Gtk.Dialog'Elab_Spec;
      Gtk.Print_Operation'Elab_Spec;
      E249 := E249 + 1;
      Gdk.Device'Elab_Body;
      E255 := E255 + 1;
      Gdk.Display'Elab_Body;
      E246 := E246 + 1;
      Gdk.Drag_Contexts'Elab_Body;
      E253 := E253 + 1;
      Gdk.Frame_Clock'Elab_Body;
      E282 := E282 + 1;
      Gdk.Monitor'Elab_Body;
      E425 := E425 + 1;
      E286 := E286 + 1;
      Gtk.Accel_Group'Elab_Body;
      E294 := E294 + 1;
      Gtk.Adjustment'Elab_Body;
      E339 := E339 + 1;
      Gtk.Cell_Area'Elab_Body;
      E365 := E365 + 1;
      E357 := E357 + 1;
      Gtk.Cell_Renderer'Elab_Body;
      E371 := E371 + 1;
      Gtk.Clipboard'Elab_Body;
      E417 := E417 + 1;
      Gtk.Container'Elab_Body;
      E337 := E337 + 1;
      Gtk.Dialog'Elab_Body;
      E272 := E272 + 1;
      E359 := E359 + 1;
      Gtk.Entry_Buffer'Elab_Body;
      E361 := E361 + 1;
      Gtk.Entry_Completion'Elab_Body;
      E363 := E363 + 1;
      Gtk.Gentry'Elab_Body;
      E353 := E353 + 1;
      Gtk.Notebook'Elab_Body;
      E387 := E387 + 1;
      Gtk.Print_Operation'Elab_Body;
      E389 := E389 + 1;
      E399 := E399 + 1;
      Gtk.Status_Bar'Elab_Body;
      E403 := E403 + 1;
      Gtk.Style'Elab_Body;
      E300 := E300 + 1;
      Gtk.Style_Context'Elab_Body;
      E381 := E381 + 1;
      Gtk.Text_Buffer'Elab_Body;
      E415 := E415 + 1;
      Gtk.Text_Tag_Table'Elab_Body;
      E423 := E423 + 1;
      Gtk.Text_View'Elab_Body;
      E411 := E411 + 1;
      Gtk.Tree_Model'Elab_Body;
      E373 := E373 + 1;
      Gtk.Widget'Elab_Body;
      E280 := E280 + 1;
      Gtk.Window'Elab_Body;
      E343 := E343 + 1;
      E238 := E238 + 1;
      Gtk.Drawing_Area'Elab_Spec;
      Gtk.Drawing_Area'Elab_Body;
      E447 := E447 + 1;
      E457 := E457 + 1;
      E453 := E453 + 1;
      Gtk.Message_Dialog'Elab_Spec;
      Gtk.Message_Dialog'Elab_Body;
      E459 := E459 + 1;
      Gtk.Tooltip'Elab_Spec;
      Gtk.Tooltip'Elab_Body;
      E471 := E471 + 1;
      E463 := E463 + 1;
      E465 := E465 + 1;
      Gtk.Tree_Selection'Elab_Spec;
      Gtk.Tree_Selection'Elab_Body;
      E473 := E473 + 1;
      E467 := E467 + 1;
      Gtk.Tree_Store'Elab_Spec;
      Gtk.Tree_Store'Elab_Body;
      E461 := E461 + 1;
      Gtk.Tree_View_Column'Elab_Spec;
      Gtk.Tree_View_Column'Elab_Body;
      E455 := E455 + 1;
      Gtk.Tree_View'Elab_Spec;
      Gtk.Tree_View'Elab_Body;
      E469 := E469 + 1;
      Gtkada.Handlers'Elab_Spec;
      E476 := E476 + 1;
      Gtkada.Builder'Elab_Spec;
      Gtkada.Builder'Elab_Body;
      E475 := E475 + 1;
      E443 := E443 + 1;
      E427 := E427 + 1;
      Tree_Global'Elab_Spec;
      E497 := E497 + 1;
      E483 := E483 + 1;
      Interface_Package'Elab_Spec;
      E185 := E185 + 1;
   end adainit;

   procedure Ada_Main_Program;
   pragma Import (Ada, Ada_Main_Program, "_ada_main");

   function main
     (argc : Integer;
      argv : System.Address;
      envp : System.Address)
      return Integer
   is
      procedure Initialize (Addr : System.Address);
      pragma Import (C, Initialize, "__gnat_initialize");

      procedure Finalize;
      pragma Import (C, Finalize, "__gnat_finalize");
      SEH : aliased array (1 .. 2) of Integer;

      Ensure_Reference : aliased System.Address := Ada_Main_Program_Name'Address;
      pragma Volatile (Ensure_Reference);

   begin
      if gnat_argc = 0 then
         gnat_argc := argc;
         gnat_argv := argv;
      end if;
      gnat_envp := envp;

      Initialize (SEH'Address);
      adainit;
      Ada_Main_Program;
      adafinal;
      Finalize;
      return (gnat_exit_status);
   end;

--  BEGIN Object file/option list
   --   /home/n7student/Documents/N7/PIM/Projet/ada/obj/json_handler.o
   --   /home/n7student/Documents/N7/PIM/Projet/ada/obj/utils.o
   --   /home/n7student/Documents/N7/PIM/Projet/ada/obj/generic_tree.o
   --   /home/n7student/Documents/N7/PIM/Projet/ada/obj/tree_global.o
   --   /home/n7student/Documents/N7/PIM/Projet/ada/obj/tree_functions.o
   --   /home/n7student/Documents/N7/PIM/Projet/ada/obj/interface_package.o
   --   /home/n7student/Documents/N7/PIM/Projet/ada/obj/main.o
   --   -L/home/n7student/Documents/N7/PIM/Projet/ada/obj/
   --   -L/home/n7student/Documents/N7/PIM/Projet/ada/obj/
   --   -L/usr/local/lib/gtkada/gtkada.static/gtkada/
   --   -L/usr/lib/x86_64-linux-gnu/ada/adalib/gnatcoll/
   --   -L/usr/lib/x86_64-linux-gnu/ada/adalib/gnatprj/
   --   -L/usr/lib/x86_64-linux-gnu/ada/adalib/xmlada_schema/
   --   -L/usr/lib/x86_64-linux-gnu/ada/adalib/xmlada_dom/
   --   -L/usr/lib/x86_64-linux-gnu/ada/adalib/xmlada_sax/
   --   -L/usr/lib/x86_64-linux-gnu/ada/adalib/xmlada_input/
   --   -L/usr/lib/x86_64-linux-gnu/ada/adalib/xmlada_unicode/
   --   -L/root/gtkada/lib/
   --   -L/usr/lib/gcc/x86_64-linux-gnu/10/adalib/
   --   -shared
   --   -shared-libgcc
   --   -shared-libgcc
   --   -shared-libgcc
   --   -lgnat-10
   --   -ldl
--  END Object file/option list   

end ada_main;
