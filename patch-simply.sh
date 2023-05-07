#patching the source with nethunter patches, in order to work
echo "  [+] Setting patch files...
ls nh_patches/
echo "  [+] Setting up Done.
echo "  [+] Patching..."
echo
patch -p1 < nh_patches/ath9k:_Add_cast_to_u8_to_FREQ2FBIN_macro.patch
patch -p1 < nh_patches/fix-ath9k_naming_conflict.patch
patch -p1 < nh_patches/fix-header.patch
patch -p1 < nh_patches/fix-rxlock-spin.patch
patch -p1 < nh_patches/injection.patch
patch -p1 < nh_patches/rndis-fix.patch
echo
echo "   [+] Patching Done."
echo
