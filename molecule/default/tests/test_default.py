def test_machine(host):
    assert host.package('postgresql').is_installed