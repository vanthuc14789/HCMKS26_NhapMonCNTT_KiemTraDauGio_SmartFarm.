# AUDIT: xac nhan da tham dinh script
echo "===============================" > ..\backup\bao-cao-su-co.txt
echo "BAO CAO SU CO - SMARTFARM" >> ..\backup\bao-cao-su-co.txt
echo "Ngay Gio: $(get-date)">> ..\backup\bao-cao-su-co.txt
echo "===============================">> ..\backup\bao-cao-su-co.txt
get-content ..\data\log-he-thong.log | select-string "CRITICAL|ERROR" >> ..\backup\bao-cao-su-co.txt
$soloi=(get-content ..\data\log-he-thong.log | select-string "CRITICAL|ERROR" | measure-object).count
echo "TONG SO SU CO: $soloi" >> ..\backup\bao-cao-su-co.txt
