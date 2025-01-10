# Copyright (c) 2022 Fyde Innovations Limited and the openFyde Authors.
# Distributed under the license specified in the root directory of this project.

cros_post_src_install_edge2_openfyde_flash_spi() {
  exeinto /usr/sbin
  doexe ${EDGE2_OPENFYDE_BASHRC_FILEPATH}/flash_spi.sh
}

cros_pre_src_prepare_oedge2_openfyde_patches() {
  eapply ${EDGE2_OPENFYDE_BASHRC_FILEPATH}/edge2.patch
}
