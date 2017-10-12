Before do |scenario|

    scenario_tags = scenario.source_tag_names
    if scenario_tags.include?('@reinstall')
        reinstall_apps
        start_test_server_in_background
        server = 1
    end

    if scenario_tags.include?('@clear_apps')
        clear_app_data
        start_test_server_in_background
        server = 1
    end

    start_test_server_in_background if server != 1

end

After do |scenario|
    shutdown_test_server
end