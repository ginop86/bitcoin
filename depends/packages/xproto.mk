package=xproto
$(package)_version=7.0.28
$(package)_download_path=http://xorg.freedesktop.org/releases/individual/proto
$(package)_file_name=$(package)-$($(package)_version).tar.bz2
$(package)_sha256_hash=29e85568d1f68ceef8a2c081dad9bc0e5500a53cfffde24b564dc43d46ddf6ca

define $(package)_set_vars
$(package)_config_opts=--disable-shared
endef

define $(package)_config_cmds
  $($(package)_autoconf)
endef

define $(package)_build_cmds
  $(MAKE)
endef

define $(package)_stage_cmds
  $(MAKE) DESTDIR=$($(package)_staging_dir) install
endef
