/vagrant_setup/setup_os.sh
/vagrant_setup/setup_curl.sh
/vagrant_setup/setup_zip.sh
su -c "source /vagrant_setup/setup_sdkman.sh" vagrant
su -c "source /vagrant_setup/setup_java.sh" vagrant
/vagrant_setup/setup_maven.sh
/vagrant_setup/setup_git.sh
/vagrant_setup/setup_docker.sh
/vagrant_setup/setup_snap.sh
/vagrant_setup/setup_intellij.sh
su -c "source /vagrant_setup/setup_spring.sh" vagrant
su -c "source /vagrant_setup/setup_visualvm.sh" vagrant

