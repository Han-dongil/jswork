<html>
<head>
<!--Load the AJAX API-->
<script type="text/javascript"
	src="https://www.gstatic.com/charts/loader.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js"
	integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
	crossorigin="anonymous"></script>
</head>

<body>
	<!--Div that will hold the pie chart-->
	<div id="chart_div"></div>
</body>
<script type="text/javascript">
	// Load the Visualization API and the corechart package.
	google.charts.load('current', {
		'packages' : [ 'corechart' ]
	});

	// Set a callback to run when the Google Visualization API is loaded.
	google.charts.setOnLoadCallback(drawChart);

	// Callback that creates and populates a data table,
	// instantiates the pie chart, passes in the data and

	// draws it.
	let result;
	function drawChart() {
		//ajax로 데이터 가져오기 
		$.ajax({
			url : "resources/chart.json",
			dataType : "json",
			async:false,
			success : function(abc) {
				result = abc;
			}
		})
		// Create the data table.
		let data = new google.visualization.DataTable();
		data.addColumn('string', 'Topping');
		data.addColumn('number', 'Slices');
		data.addRows(result);

		// Set chart options
		var options = {
			'title' : 'How Much Pizza I Ate Last Night',
			'width' : 400,
			'height' : 300
		};

		// Instantiate and draw our chart, passing in some options.
		var chart = new google.visualization.PieChart(document
				.getElementById('chart_div'));
		chart.draw(data, options);
	}
</script>

</html>