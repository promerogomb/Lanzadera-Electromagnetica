$begin 'Profile'
	$begin 'ProfileGroup'
		MajorVer=2023
		MinorVer=1
		Name='Solution Process'
		$begin 'StartInfo'
			I(1, 'Start Time', '05/17/2024 16:29:43')
			I(1, 'Host', 'TEFICIENCIA04')
			I(1, 'Processor', '12')
			I(1, 'OS', 'NT 10.0')
			I(1, 'Product', 'Maxwell2D 2023.1.1')
		$end 'StartInfo'
		$begin 'TotalInfo'
			I(1, 'Elapsed Time', '00:57:12')
			I(1, 'ComEngine Memory', '62 M')
		$end 'TotalInfo'
		GroupOptions=8
		TaskDataOptions(Memory=8)
		ProfileItem('', 0, 0, 0, 0, 0, 'I(1, 1, \'Executing From\', \'C:\\\\Program Files\\\\AnsysEM\\\\v231\\\\Win64\\\\MAXWELL2DCOMENGINE.exe\')', false, true)
		$begin 'ProfileGroup'
			MajorVer=2023
			MinorVer=1
			Name='HPC'
			$begin 'StartInfo'
				I(1, 'Type', 'Manual')
				I(1, 'Distribution Types', 'Variations, Frequencies')
				I(1, 'MPI Vendor', 'Intel')
				I(1, 'MPI Version', '2018')
			$end 'StartInfo'
			$begin 'TotalInfo'
				I(0, ' ')
			$end 'TotalInfo'
			GroupOptions=0
			TaskDataOptions(Memory=8)
			ProfileItem('Machine', 0, 0, 0, 0, 0, 'I(4, 1, \'Name\', \'TEFICIENCIA04.DEV.UNAV.ES\', 3, \'RAM Limit\', 90, \'%f%%\', 2, \'Tasks\', 1, false, 2, \'Cores\', 4, false)', false, true)
		$end 'ProfileGroup'
		ProfileItem('Design Validation', 0, 0, 0, 0, 0, 'I(3, 1, \'Level\', \'Perform full validations\', 1, \'Elapsed Time\', \'00:00:00\', 2, \'Memory\', 61960, true)', false, true)
		$begin 'ProfileGroup'
			MajorVer=2023
			MinorVer=1
			Name='Initial Meshing'
			$begin 'StartInfo'
				I(1, 'Time', '05/17/2024 16:29:43')
			$end 'StartInfo'
			$begin 'TotalInfo'
				I(1, 'Elapsed Time', '00:00:13')
			$end 'TotalInfo'
			GroupOptions=4
			TaskDataOptions(Memory=8)
			ProfileItem('Mesh', 0, 0, 0, 0, 29000, 'I(2, 1, \'Type\', \'TAU(2D)\', 2, \'Triangles\', 392, false)', true, true)
			ProfileItem('  Manual Refine', 12, 0, 12, 0, 319008, 'I(2, 2, \'Triangles\', 109727, false, 0, \'Length1, Length2, Length3\')', true, true)
		$end 'ProfileGroup'
		$begin 'ProfileGroup'
			MajorVer=2023
			MinorVer=1
			Name='Transient Solution'
			$begin 'StartInfo'
				I(1, 'Time', '05/17/2024 16:29:58')
			$end 'StartInfo'
			$begin 'TotalInfo'
				I(1, 'Elapsed Time', '00:56:57')
			$end 'TotalInfo'
			GroupOptions=4
			TaskDataOptions(Memory=8)
			ProfileItem('HPC Settings', 0, 0, 0, 0, 0, 'I(1, 2, \'Cores\', 4, false)', false, true)
			$begin 'ProfileGroup'
				MajorVer=2023
				MinorVer=1
				Name='Time - 0s'
				$begin 'StartInfo'
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions(Memory=8)
				ProfileItem('  Matrix Solve', 2, 0, 3, 0, 199827, 'I(5, 1, \'Type\', \'DRA\', 2, \'Cores\', 4, false, 2, \'Matrix\', 292763, false, 1, \'Disk\', \'0KB\', 2, \'Calls\', 3, false)', true, true)
				ProfileItem('  Solve', 30, 0, 53, 0, 998576, 'I(1, 3, \'Final Residual\', 6.43382e-08, \'%g\')', true, true)
				ProfileItem('  Field Recovery', 31, 0, 33, 0, 1025656, 'I(1, 0, \'\')', true, true)
			$end 'ProfileGroup'
			$begin 'ProfileGroup'
				MajorVer=2023
				MinorVer=1
				Name='Time - 0.001s'
				$begin 'StartInfo'
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions(Memory=8)
				ProfileItem('  Matrix Solve', 1, 0, 2, 0, 118021, 'I(5, 1, \'Type\', \'DRS\', 2, \'Cores\', 4, false, 2, \'Matrix\', 287298, false, 1, \'Disk\', \'0KB\', 2, \'Calls\', 2, false)', true, true)
				ProfileItem('  Solve', 37, 0, 54, 0, 1182532, 'I(1, 3, \'Final Residual\', 2.37261e-09, \'%g\')', true, true)
				ProfileItem('  Field Recovery', 31, 0, 33, 0, 1182532, 'I(1, 0, \'\')', true, true)
			$end 'ProfileGroup'
			$begin 'ProfileGroup'
				MajorVer=2023
				MinorVer=1
				Name='Time - 0.002s'
				$begin 'StartInfo'
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions(Memory=8)
				ProfileItem('  Matrix Solve', 0, 0, 2, 0, 117801, 'I(5, 1, \'Type\', \'DRS\', 2, \'Cores\', 4, false, 2, \'Matrix\', 287712, false, 1, \'Disk\', \'0KB\', 2, \'Calls\', 2, false)', true, true)
				ProfileItem('  Solve', 49, 0, 64, 0, 1222888, 'I(1, 3, \'Final Residual\', 3.80897e-08, \'%g\')', true, true)
				ProfileItem('  Field Recovery', 43, 0, 45, 0, 1222888, 'I(1, 0, \'\')', true, true)
			$end 'ProfileGroup'
			$begin 'ProfileGroup'
				MajorVer=2023
				MinorVer=1
				Name='Time - 0.003s'
				$begin 'StartInfo'
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions(Memory=8)
				ProfileItem('  Matrix Solve', 1, 0, 2, 0, 120545, 'I(5, 1, \'Type\', \'DRS\', 2, \'Cores\', 4, false, 2, \'Matrix\', 289852, false, 1, \'Disk\', \'0KB\', 2, \'Calls\', 2, false)', true, true)
				ProfileItem('  Solve', 45, 0, 63, 0, 1241480, 'I(1, 3, \'Final Residual\', 1.42782e-08, \'%g\')', true, true)
				ProfileItem('  Field Recovery', 41, 0, 43, 0, 1241480, 'I(1, 0, \'\')', true, true)
			$end 'ProfileGroup'
			$begin 'ProfileGroup'
				MajorVer=2023
				MinorVer=1
				Name='Time - 0.004s'
				$begin 'StartInfo'
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions(Memory=8)
				ProfileItem('  Matrix Solve', 0, 0, 2, 0, 120278, 'I(5, 1, \'Type\', \'DRS\', 2, \'Cores\', 4, false, 2, \'Matrix\', 288748, false, 1, \'Disk\', \'0KB\', 2, \'Calls\', 2, false)', true, true)
				ProfileItem('  Solve', 46, 0, 63, 0, 1243472, 'I(1, 3, \'Final Residual\', 8.01708e-08, \'%g\')', true, true)
				ProfileItem('  Field Recovery', 40, 0, 42, 0, 1243472, 'I(1, 0, \'\')', true, true)
			$end 'ProfileGroup'
			$begin 'ProfileGroup'
				MajorVer=2023
				MinorVer=1
				Name='Time - 0.005s'
				$begin 'StartInfo'
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions(Memory=8)
				ProfileItem('  Matrix Solve', 1, 0, 1, 0, 121914, 'I(5, 1, \'Type\', \'DRS\', 2, \'Cores\', 4, false, 2, \'Matrix\', 292651, false, 1, \'Disk\', \'0KB\', 2, \'Calls\', 2, false)', true, true)
				ProfileItem('  Solve', 45, 0, 62, 0, 1253368, 'I(1, 3, \'Final Residual\', 9.07829e-08, \'%g\')', true, true)
				ProfileItem('  Field Recovery', 42, 0, 44, 0, 1253368, 'I(1, 0, \'\')', true, true)
			$end 'ProfileGroup'
			$begin 'ProfileGroup'
				MajorVer=2023
				MinorVer=1
				Name='Time - 0.006s'
				$begin 'StartInfo'
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions(Memory=8)
				ProfileItem('  Matrix Solve', 1, 0, 2, 0, 119309, 'I(5, 1, \'Type\', \'DRS\', 2, \'Cores\', 4, false, 2, \'Matrix\', 288921, false, 1, \'Disk\', \'0KB\', 2, \'Calls\', 2, false)', true, true)
				ProfileItem('  Solve', 42, 0, 59, 0, 1264092, 'I(1, 3, \'Final Residual\', 1.39123e-07, \'%g\')', true, true)
				ProfileItem('  Field Recovery', 40, 0, 42, 0, 1264092, 'I(1, 0, \'\')', true, true)
			$end 'ProfileGroup'
			$begin 'ProfileGroup'
				MajorVer=2023
				MinorVer=1
				Name='Time - 0.007s'
				$begin 'StartInfo'
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions(Memory=8)
				ProfileItem('  Matrix Solve', 2, 0, 2, 0, 122033, 'I(5, 1, \'Type\', \'DRS\', 2, \'Cores\', 4, false, 2, \'Matrix\', 293781, false, 1, \'Disk\', \'0KB\', 2, \'Calls\', 2, false)', true, true)
				ProfileItem('  Solve', 44, 0, 61, 0, 1281520, 'I(1, 3, \'Final Residual\', 4.95762e-07, \'%g\')', true, true)
				ProfileItem('  Field Recovery', 41, 0, 43, 0, 1281520, 'I(1, 0, \'\')', true, true)
			$end 'ProfileGroup'
			$begin 'ProfileGroup'
				MajorVer=2023
				MinorVer=1
				Name='Time - 0.008s'
				$begin 'StartInfo'
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions(Memory=8)
				ProfileItem('  Matrix Solve', 1, 0, 2, 0, 120523, 'I(5, 1, \'Type\', \'DRS\', 2, \'Cores\', 4, false, 2, \'Matrix\', 288958, false, 1, \'Disk\', \'0KB\', 2, \'Calls\', 2, false)', true, true)
				ProfileItem('  Solve', 43, 0, 60, 0, 1292308, 'I(1, 3, \'Final Residual\', 3.85632e-07, \'%g\')', true, true)
				ProfileItem('  Field Recovery', 42, 0, 44, 0, 1292308, 'I(1, 0, \'\')', true, true)
			$end 'ProfileGroup'
			$begin 'ProfileGroup'
				MajorVer=2023
				MinorVer=1
				Name='Time - 0.009s'
				$begin 'StartInfo'
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions(Memory=8)
				ProfileItem('  Matrix Solve', 2, 0, 2, 0, 121056, 'I(5, 1, \'Type\', \'DRS\', 2, \'Cores\', 4, false, 2, \'Matrix\', 290296, false, 1, \'Disk\', \'0KB\', 2, \'Calls\', 2, false)', true, true)
				ProfileItem('  Solve', 43, 0, 60, 0, 1296300, 'I(1, 3, \'Final Residual\', 5.17905e-07, \'%g\')', true, true)
				ProfileItem('  Field Recovery', 40, 0, 42, 0, 1296300, 'I(1, 0, \'\')', true, true)
			$end 'ProfileGroup'
			$begin 'ProfileGroup'
				MajorVer=2023
				MinorVer=1
				Name='Time - 0.01s'
				$begin 'StartInfo'
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions(Memory=8)
				ProfileItem('  Matrix Solve', 0, 0, 2, 0, 120009, 'I(5, 1, \'Type\', \'DRS\', 2, \'Cores\', 4, false, 2, \'Matrix\', 289527, false, 1, \'Disk\', \'0KB\', 2, \'Calls\', 2, false)', true, true)
				ProfileItem('  Solve', 42, 0, 59, 0, 1297828, 'I(1, 3, \'Final Residual\', 7.30792e-07, \'%g\')', true, true)
				ProfileItem('  Field Recovery', 41, 0, 43, 0, 1297828, 'I(1, 0, \'\')', true, true)
			$end 'ProfileGroup'
			$begin 'ProfileGroup'
				MajorVer=2023
				MinorVer=1
				Name='Time - 0.011s'
				$begin 'StartInfo'
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions(Memory=8)
				ProfileItem('  Matrix Solve', 0, 0, 2, 0, 121363, 'I(5, 1, \'Type\', \'DRS\', 2, \'Cores\', 4, false, 2, \'Matrix\', 291850, false, 1, \'Disk\', \'0KB\', 2, \'Calls\', 2, false)', true, true)
				ProfileItem('  Solve', 43, 0, 60, 0, 1301012, 'I(1, 3, \'Final Residual\', 1.14825e-06, \'%g\')', true, true)
				ProfileItem('  Field Recovery', 40, 0, 42, 0, 1301012, 'I(1, 0, \'\')', true, true)
			$end 'ProfileGroup'
			$begin 'ProfileGroup'
				MajorVer=2023
				MinorVer=1
				Name='Time - 0.012s'
				$begin 'StartInfo'
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions(Memory=8)
				ProfileItem('  Matrix Solve', 1, 0, 1, 0, 120617, 'I(5, 1, \'Type\', \'DRS\', 2, \'Cores\', 4, false, 2, \'Matrix\', 290814, false, 1, \'Disk\', \'0KB\', 2, \'Calls\', 2, false)', true, true)
				ProfileItem('  Solve', 43, 0, 60, 0, 1307176, 'I(1, 3, \'Final Residual\', 1.64671e-06, \'%g\')', true, true)
				ProfileItem('  Field Recovery', 40, 0, 42, 0, 1307176, 'I(1, 0, \'\')', true, true)
			$end 'ProfileGroup'
			$begin 'ProfileGroup'
				MajorVer=2023
				MinorVer=1
				Name='Time - 0.013s'
				$begin 'StartInfo'
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions(Memory=8)
				ProfileItem('  Matrix Solve', 2, 0, 2, 0, 120565, 'I(5, 1, \'Type\', \'DRS\', 2, \'Cores\', 4, false, 2, \'Matrix\', 288710, false, 1, \'Disk\', \'0KB\', 2, \'Calls\', 2, false)', true, true)
				ProfileItem('  Solve', 42, 0, 59, 0, 1307176, 'I(1, 3, \'Final Residual\', 2.40233e-06, \'%g\')', true, true)
				ProfileItem('  Field Recovery', 39, 0, 41, 0, 1307176, 'I(1, 0, \'\')', true, true)
			$end 'ProfileGroup'
			$begin 'ProfileGroup'
				MajorVer=2023
				MinorVer=1
				Name='Time - 0.014s'
				$begin 'StartInfo'
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions(Memory=8)
				ProfileItem('  Matrix Solve', 2, 0, 2, 0, 121037, 'I(5, 1, \'Type\', \'DRS\', 2, \'Cores\', 4, false, 2, \'Matrix\', 290374, false, 1, \'Disk\', \'0KB\', 2, \'Calls\', 2, false)', true, true)
				ProfileItem('  Solve', 42, 0, 59, 0, 1311356, 'I(1, 3, \'Final Residual\', 3.30729e-06, \'%g\')', true, true)
				ProfileItem('  Field Recovery', 40, 0, 42, 0, 1311356, 'I(1, 0, \'\')', true, true)
			$end 'ProfileGroup'
			$begin 'ProfileGroup'
				MajorVer=2023
				MinorVer=1
				Name='Time - 0.015s'
				$begin 'StartInfo'
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions(Memory=8)
				ProfileItem('  Matrix Solve', 0, 0, 2, 0, 122082, 'I(5, 1, \'Type\', \'DRS\', 2, \'Cores\', 4, false, 2, \'Matrix\', 292358, false, 1, \'Disk\', \'0KB\', 2, \'Calls\', 2, false)', true, true)
				ProfileItem('  Solve', 43, 0, 60, 0, 1317276, 'I(1, 3, \'Final Residual\', 1.7801e-05, \'%g\')', true, true)
				ProfileItem('  Field Recovery', 41, 0, 43, 0, 1317276, 'I(1, 0, \'\')', true, true)
			$end 'ProfileGroup'
			$begin 'ProfileGroup'
				MajorVer=2023
				MinorVer=1
				Name='Time - 0.016s'
				$begin 'StartInfo'
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions(Memory=8)
				ProfileItem('  Matrix Solve', 0, 0, 1, 0, 120945, 'I(5, 1, \'Type\', \'DRS\', 2, \'Cores\', 4, false, 2, \'Matrix\', 289894, false, 1, \'Disk\', \'0KB\', 2, \'Calls\', 2, false)', true, true)
				ProfileItem('  Solve', 42, 0, 59, 0, 1318032, 'I(1, 3, \'Final Residual\', 3.5321e-09, \'%g\')', true, true)
				ProfileItem('  Field Recovery', 39, 0, 41, 0, 1318032, 'I(1, 0, \'\')', true, true)
			$end 'ProfileGroup'
			$begin 'ProfileGroup'
				MajorVer=2023
				MinorVer=1
				Name='Time - 0.017s'
				$begin 'StartInfo'
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions(Memory=8)
				ProfileItem('  Matrix Solve', 1, 0, 0, 0, 120326, 'I(4, 1, \'Type\', \'DRS\', 2, \'Cores\', 4, false, 2, \'Matrix\', 291117, false, 1, \'Disk\', \'0KB\')', true, true)
				ProfileItem('  Solve', 36, 0, 42, 0, 1322176, 'I(1, 3, \'Final Residual\', 2.48367e-08, \'%g\')', true, true)
				ProfileItem('  Field Recovery', 41, 0, 43, 0, 1322176, 'I(1, 0, \'\')', true, true)
			$end 'ProfileGroup'
			$begin 'ProfileGroup'
				MajorVer=2023
				MinorVer=1
				Name='Time - 0.018s'
				$begin 'StartInfo'
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions(Memory=8)
				ProfileItem('  Matrix Solve', 0, 0, 0, 0, 120146, 'I(4, 1, \'Type\', \'DRS\', 2, \'Cores\', 4, false, 2, \'Matrix\', 290314, false, 1, \'Disk\', \'0KB\')', true, true)
				ProfileItem('  Solve', 36, 0, 41, 0, 1326248, 'I(1, 3, \'Final Residual\', 2.39046e-08, \'%g\')', true, true)
				ProfileItem('  Field Recovery', 40, 0, 42, 0, 1326248, 'I(1, 0, \'\')', true, true)
			$end 'ProfileGroup'
			$begin 'ProfileGroup'
				MajorVer=2023
				MinorVer=1
				Name='Time - 0.019s'
				$begin 'StartInfo'
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions(Memory=8)
				ProfileItem('  Matrix Solve', 1, 0, 1, 0, 119853, 'I(4, 1, \'Type\', \'DRS\', 2, \'Cores\', 4, false, 2, \'Matrix\', 291250, false, 1, \'Disk\', \'0KB\')', true, true)
				ProfileItem('  Solve', 36, 0, 41, 0, 1327984, 'I(1, 3, \'Final Residual\', 1.84657e-08, \'%g\')', true, true)
				ProfileItem('  Field Recovery', 40, 0, 42, 0, 1327984, 'I(1, 0, \'\')', true, true)
			$end 'ProfileGroup'
			$begin 'ProfileGroup'
				MajorVer=2023
				MinorVer=1
				Name='Time - 0.02s'
				$begin 'StartInfo'
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions(Memory=8)
				ProfileItem('  Matrix Solve', 0, 0, 1, 0, 121361, 'I(4, 1, \'Type\', \'DRS\', 2, \'Cores\', 4, false, 2, \'Matrix\', 291394, false, 1, \'Disk\', \'0KB\')', true, true)
				ProfileItem('  Solve', 35, 0, 41, 0, 1332836, 'I(1, 3, \'Final Residual\', 1.22862e-08, \'%g\')', true, true)
				ProfileItem('  Field Recovery', 39, 0, 41, 0, 1332836, 'I(1, 0, \'\')', true, true)
			$end 'ProfileGroup'
			$begin 'ProfileGroup'
				MajorVer=2023
				MinorVer=1
				Name='Time - 0.021s'
				$begin 'StartInfo'
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions(Memory=8)
				ProfileItem('  Matrix Solve', 1, 0, 1, 0, 121050, 'I(4, 1, \'Type\', \'DRS\', 2, \'Cores\', 4, false, 2, \'Matrix\', 291963, false, 1, \'Disk\', \'0KB\')', true, true)
				ProfileItem('  Solve', 35, 0, 40, 0, 1334260, 'I(1, 3, \'Final Residual\', 7.49165e-09, \'%g\')', true, true)
				ProfileItem('  Field Recovery', 41, 0, 43, 0, 1334260, 'I(1, 0, \'\')', true, true)
			$end 'ProfileGroup'
			$begin 'ProfileGroup'
				MajorVer=2023
				MinorVer=1
				Name='Time - 0.022s'
				$begin 'StartInfo'
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions(Memory=8)
				ProfileItem('  Matrix Solve', 1, 0, 1, 0, 120848, 'I(4, 1, \'Type\', \'DRS\', 2, \'Cores\', 4, false, 2, \'Matrix\', 291618, false, 1, \'Disk\', \'0KB\')', true, true)
				ProfileItem('  Solve', 36, 0, 41, 0, 1338344, 'I(1, 3, \'Final Residual\', 4.31843e-09, \'%g\')', true, true)
				ProfileItem('  Field Recovery', 41, 0, 43, 0, 1338344, 'I(1, 0, \'\')', true, true)
			$end 'ProfileGroup'
			$begin 'ProfileGroup'
				MajorVer=2023
				MinorVer=1
				Name='Time - 0.023s'
				$begin 'StartInfo'
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions(Memory=8)
				ProfileItem('  Matrix Solve', 0, 0, 1, 0, 121537, 'I(4, 1, \'Type\', \'DRS\', 2, \'Cores\', 4, false, 2, \'Matrix\', 292627, false, 1, \'Disk\', \'0KB\')', true, true)
				ProfileItem('  Solve', 36, 0, 42, 0, 1346824, 'I(1, 3, \'Final Residual\', 2.37795e-09, \'%g\')', true, true)
				ProfileItem('  Field Recovery', 41, 0, 43, 0, 1346824, 'I(1, 0, \'\')', true, true)
			$end 'ProfileGroup'
			$begin 'ProfileGroup'
				MajorVer=2023
				MinorVer=1
				Name='Time - 0.024s'
				$begin 'StartInfo'
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions(Memory=8)
				ProfileItem('  Matrix Solve', 0, 0, 1, 0, 121005, 'I(4, 1, \'Type\', \'DRS\', 2, \'Cores\', 4, false, 2, \'Matrix\', 293048, false, 1, \'Disk\', \'0KB\')', true, true)
				ProfileItem('  Solve', 36, 0, 42, 0, 1353184, 'I(1, 3, \'Final Residual\', 4.54662e-09, \'%g\')', true, true)
				ProfileItem('  Field Recovery', 41, 0, 43, 0, 1353184, 'I(1, 0, \'\')', true, true)
			$end 'ProfileGroup'
			$begin 'ProfileGroup'
				MajorVer=2023
				MinorVer=1
				Name='Time - 0.025s'
				$begin 'StartInfo'
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions(Memory=8)
				ProfileItem('  Matrix Solve', 1, 0, 1, 0, 121494, 'I(4, 1, \'Type\', \'DRS\', 2, \'Cores\', 4, false, 2, \'Matrix\', 294321, false, 1, \'Disk\', \'0KB\')', true, true)
				ProfileItem('  Solve', 37, 0, 43, 0, 1357776, 'I(1, 3, \'Final Residual\', 6.83215e-10, \'%g\')', true, true)
				ProfileItem('  Field Recovery', 41, 0, 43, 0, 1357776, 'I(1, 0, \'\')', true, true)
			$end 'ProfileGroup'
			$begin 'ProfileGroup'
				MajorVer=2023
				MinorVer=1
				Name='Time - 0.026s'
				$begin 'StartInfo'
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions(Memory=8)
				ProfileItem('  Matrix Solve', 0, 0, 1, 0, 120638, 'I(4, 1, \'Type\', \'DRS\', 2, \'Cores\', 4, false, 2, \'Matrix\', 291292, false, 1, \'Disk\', \'0KB\')', true, true)
				ProfileItem('  Solve', 36, 0, 41, 0, 1362652, 'I(1, 3, \'Final Residual\', 3.67691e-10, \'%g\')', true, true)
				ProfileItem('  Field Recovery', 41, 0, 43, 0, 1362652, 'I(1, 0, \'\')', true, true)
			$end 'ProfileGroup'
			$begin 'ProfileGroup'
				MajorVer=2023
				MinorVer=1
				Name='Time - 0.027s'
				$begin 'StartInfo'
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions(Memory=8)
				ProfileItem('  Matrix Solve', 0, 0, 1, 0, 121685, 'I(4, 1, \'Type\', \'DRS\', 2, \'Cores\', 4, false, 2, \'Matrix\', 294052, false, 1, \'Disk\', \'0KB\')', true, true)
				ProfileItem('  Solve', 36, 0, 41, 0, 1370296, 'I(1, 3, \'Final Residual\', 1.98995e-10, \'%g\')', true, true)
				ProfileItem('  Field Recovery', 40, 0, 42, 0, 1370296, 'I(1, 0, \'\')', true, true)
			$end 'ProfileGroup'
			$begin 'ProfileGroup'
				MajorVer=2023
				MinorVer=1
				Name='Time - 0.028s'
				$begin 'StartInfo'
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions(Memory=8)
				ProfileItem('  Matrix Solve', 0, 0, 1, 0, 120751, 'I(4, 1, \'Type\', \'DRS\', 2, \'Cores\', 4, false, 2, \'Matrix\', 291703, false, 1, \'Disk\', \'0KB\')', true, true)
				ProfileItem('  Solve', 37, 0, 42, 0, 1372396, 'I(1, 3, \'Final Residual\', 1.0817e-10, \'%g\')', true, true)
				ProfileItem('  Field Recovery', 41, 0, 43, 0, 1372396, 'I(1, 0, \'\')', true, true)
			$end 'ProfileGroup'
			$begin 'ProfileGroup'
				MajorVer=2023
				MinorVer=1
				Name='Time - 0.029s'
				$begin 'StartInfo'
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions(Memory=8)
				ProfileItem('  Matrix Solve', 0, 0, 1, 0, 121259, 'I(4, 1, \'Type\', \'DRS\', 2, \'Cores\', 4, false, 2, \'Matrix\', 293063, false, 1, \'Disk\', \'0KB\')', true, true)
				ProfileItem('  Solve', 37, 0, 42, 0, 1373152, 'I(1, 3, \'Final Residual\', 5.82155e-11, \'%g\')', true, true)
				ProfileItem('  Field Recovery', 41, 0, 43, 0, 1373152, 'I(1, 0, \'\')', true, true)
			$end 'ProfileGroup'
			$begin 'ProfileGroup'
				MajorVer=2023
				MinorVer=1
				Name='Time - 0.03s'
				$begin 'StartInfo'
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions(Memory=8)
				ProfileItem('  Matrix Solve', 1, 0, 1, 0, 120477, 'I(4, 1, \'Type\', \'DRS\', 2, \'Cores\', 4, false, 2, \'Matrix\', 290691, false, 1, \'Disk\', \'0KB\')', true, true)
				ProfileItem('  Solve', 36, 0, 41, 0, 1385232, 'I(1, 3, \'Final Residual\', 3.07007e-11, \'%g\')', true, true)
				ProfileItem('  Field Recovery', 41, 0, 43, 0, 1385232, 'I(1, 0, \'\')', true, true)
			$end 'ProfileGroup'
			$begin 'ProfileGroup'
				MajorVer=2023
				MinorVer=1
				Name='Time - 0.031s'
				$begin 'StartInfo'
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions(Memory=8)
				ProfileItem('  Matrix Solve', 0, 0, 1, 0, 121645, 'I(4, 1, \'Type\', \'DRS\', 2, \'Cores\', 4, false, 2, \'Matrix\', 293308, false, 1, \'Disk\', \'0KB\')', true, true)
				ProfileItem('  Solve', 37, 0, 42, 0, 1385232, 'I(1, 3, \'Final Residual\', 1.57857e-11, \'%g\')', true, true)
				ProfileItem('  Field Recovery', 41, 0, 43, 0, 1385232, 'I(1, 0, \'\')', true, true)
			$end 'ProfileGroup'
			$begin 'ProfileGroup'
				MajorVer=2023
				MinorVer=1
				Name='Time - 0.032s'
				$begin 'StartInfo'
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions(Memory=8)
				ProfileItem('  Matrix Solve', 0, 0, 1, 0, 121487, 'I(4, 1, \'Type\', \'DRS\', 2, \'Cores\', 4, false, 2, \'Matrix\', 292630, false, 1, \'Disk\', \'0KB\')', true, true)
				ProfileItem('  Solve', 37, 0, 42, 0, 1385232, 'I(1, 3, \'Final Residual\', 7.90765e-12, \'%g\')', true, true)
				ProfileItem('  Field Recovery', 42, 0, 44, 0, 1385232, 'I(1, 0, \'\')', true, true)
			$end 'ProfileGroup'
			$begin 'ProfileGroup'
				MajorVer=2023
				MinorVer=1
				Name='Time - 0.033s'
				$begin 'StartInfo'
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions(Memory=8)
				ProfileItem('  Matrix Solve', 1, 0, 0, 0, 121455, 'I(4, 1, \'Type\', \'DRS\', 2, \'Cores\', 4, false, 2, \'Matrix\', 292420, false, 1, \'Disk\', \'0KB\')', true, true)
				ProfileItem('  Solve', 36, 0, 42, 0, 1387072, 'I(1, 3, \'Final Residual\', 3.87374e-12, \'%g\')', true, true)
				ProfileItem('  Field Recovery', 41, 0, 43, 0, 1387072, 'I(1, 0, \'\')', true, true)
			$end 'ProfileGroup'
			$begin 'ProfileGroup'
				MajorVer=2023
				MinorVer=1
				Name='Time - 0.034s'
				$begin 'StartInfo'
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions(Memory=8)
				ProfileItem('  Matrix Solve', 0, 0, 1, 0, 121130, 'I(4, 1, \'Type\', \'DRS\', 2, \'Cores\', 4, false, 2, \'Matrix\', 292222, false, 1, \'Disk\', \'0KB\')', true, true)
				ProfileItem('  Solve', 37, 0, 42, 0, 1387708, 'I(1, 3, \'Final Residual\', 1.88006e-12, \'%g\')', true, true)
				ProfileItem('  Field Recovery', 40, 0, 42, 0, 1387708, 'I(1, 0, \'\')', true, true)
			$end 'ProfileGroup'
			$begin 'ProfileGroup'
				MajorVer=2023
				MinorVer=1
				Name='Time - 0.035s'
				$begin 'StartInfo'
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions(Memory=8)
				ProfileItem('  Matrix Solve', 1, 0, 1, 0, 121927, 'I(4, 1, \'Type\', \'DRS\', 2, \'Cores\', 4, false, 2, \'Matrix\', 292753, false, 1, \'Disk\', \'0KB\')', true, true)
				ProfileItem('  Solve', 35, 0, 41, 0, 1397528, 'I(1, 3, \'Final Residual\', 9.15567e-13, \'%g\')', true, true)
				ProfileItem('  Field Recovery', 40, 0, 42, 0, 1397528, 'I(1, 0, \'\')', true, true)
			$end 'ProfileGroup'
			$begin 'ProfileGroup'
				MajorVer=2023
				MinorVer=1
				Name='Time - 0.036s'
				$begin 'StartInfo'
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions(Memory=8)
				ProfileItem('  Matrix Solve', 0, 0, 1, 0, 119935, 'I(4, 1, \'Type\', \'DRS\', 2, \'Cores\', 4, false, 2, \'Matrix\', 290650, false, 1, \'Disk\', \'0KB\')', true, true)
				ProfileItem('  Solve', 34, 0, 40, 0, 1397528, 'I(1, 3, \'Final Residual\', 4.51058e-13, \'%g\')', true, true)
				ProfileItem('  Field Recovery', 39, 0, 41, 0, 1397528, 'I(1, 0, \'\')', true, true)
			$end 'ProfileGroup'
			$begin 'ProfileGroup'
				MajorVer=2023
				MinorVer=1
				Name='Time - 0.037s'
				$begin 'StartInfo'
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions(Memory=8)
				ProfileItem('  Matrix Solve', 1, 0, 0, 0, 121123, 'I(4, 1, \'Type\', \'DRS\', 2, \'Cores\', 4, false, 2, \'Matrix\', 291709, false, 1, \'Disk\', \'0KB\')', true, true)
				ProfileItem('  Solve', 36, 0, 42, 0, 1397528, 'I(1, 3, \'Final Residual\', 2.25395e-13, \'%g\')', true, true)
				ProfileItem('  Field Recovery', 41, 0, 43, 0, 1397528, 'I(1, 0, \'\')', true, true)
			$end 'ProfileGroup'
			$begin 'ProfileGroup'
				MajorVer=2023
				MinorVer=1
				Name='Time - 0.038s'
				$begin 'StartInfo'
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions(Memory=8)
				ProfileItem('  Matrix Solve', 0, 0, 1, 0, 120425, 'I(4, 1, \'Type\', \'DRS\', 2, \'Cores\', 4, false, 2, \'Matrix\', 290924, false, 1, \'Disk\', \'0KB\')', true, true)
				ProfileItem('  Solve', 36, 0, 41, 0, 1401708, 'I(1, 3, \'Final Residual\', 1.14043e-13, \'%g\')', true, true)
				ProfileItem('  Field Recovery', 42, 0, 44, 0, 1401708, 'I(1, 0, \'\')', true, true)
			$end 'ProfileGroup'
			$begin 'ProfileGroup'
				MajorVer=2023
				MinorVer=1
				Name='Time - 0.039s'
				$begin 'StartInfo'
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions(Memory=8)
				ProfileItem('  Matrix Solve', 0, 0, 1, 0, 121231, 'I(4, 1, \'Type\', \'DRS\', 2, \'Cores\', 4, false, 2, \'Matrix\', 291112, false, 1, \'Disk\', \'0KB\')', true, true)
				ProfileItem('  Solve', 39, 0, 45, 0, 1401708, 'I(1, 3, \'Final Residual\', 5.82014e-14, \'%g\')', true, true)
				ProfileItem('  Field Recovery', 41, 0, 43, 0, 1401708, 'I(1, 0, \'\')', true, true)
			$end 'ProfileGroup'
			$begin 'ProfileGroup'
				MajorVer=2023
				MinorVer=1
				Name='Time - 0.04s'
				$begin 'StartInfo'
				$end 'StartInfo'
				$begin 'TotalInfo'
					I(0, ' ')
				$end 'TotalInfo'
				GroupOptions=0
				TaskDataOptions(Memory=8)
				ProfileItem('  Matrix Solve', 1, 0, 1, 0, 120965, 'I(4, 1, \'Type\', \'DRS\', 2, \'Cores\', 4, false, 2, \'Matrix\', 291658, false, 1, \'Disk\', \'0KB\')', true, true)
				ProfileItem('  Solve', 37, 0, 42, 0, 1401708, 'I(1, 3, \'Final Residual\', 2.98499e-14, \'%g\')', true, true)
				ProfileItem('  Field Recovery', 81, 0, 86, 0, 1401708, 'I(1, 0, \'\')', true, true)
			$end 'ProfileGroup'
		$end 'ProfileGroup'
		ProfileFootnote('I(2, 1, \'Stop Time\', \'05/17/2024 17:26:55\', 1, \'Status\', \'Normal Completion\')', 0)
	$end 'ProfileGroup'
$end 'Profile'
