#patching the source with nethunter patches, in order to work
echo
echo "  [+] Patching..."
echo
patch -p1 < ath9k:_Add_cast_to_u8_to_FREQ2FBIN_macro.patch
patch -p1 <fix-ath9k_naming_conflict.patch
patch -p1 <fix-header.patch
patch -p1 <fix-rxlock-spin.patch
patch -p1 <injection.patch
patch -p1 <rndis-fix.patch
echo
echo "   [+] Patching Done."
echo
