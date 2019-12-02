$fuel = get-content "C:\Home\Advent\Day1\calcs.txt"

#day1 - part1
foreach ($f in $fuel){
    $f = $f/3
    $f = [math]::Floor($f)
    $f = $f - 2
    $f | out-file "C:\home\Advent\Day1\postcalcs.txt" -Append
}

#day1 - part1
foreach ($f in $fuel){
    While($f -ge 0){
    $f = $f/3
    $f = [math]::Floor($f)
    $f = $f - 2
        If ($f -gt 0){
            $f | out-file "C:\home\Advent\Day1\postcalcs_part2.txt" -Append
        }
    }
}

$day1p1 = Get-Content "C:\home\Advent\Day1\postcalcs.txt" | Measure-Object -Sum
$day1p1.Sum

$day1p2 = Get-Content "C:\home\Advent\Day1\postcalcs_part2.txt" | Measure-Object -Sum
$day1p2.Sum

#first answer - 3394106
#second answer - 5088280