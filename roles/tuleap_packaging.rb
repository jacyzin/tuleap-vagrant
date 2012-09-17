name 'tuleap_packaging'
description 'Tuleap packaging environment'
run_list 'recipe[tuleap::packaging_tools]',
         'recipe[tuleap::local_repos]',
         'recipe[tuleap::build]',
         'recipe[tuleap::rpm_deployment]'
default_attributes 'tuleap' => {'repo' => 'local'}
