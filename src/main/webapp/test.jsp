<html lang="en" style="height: auto;">
<head>

<!-- DataTables -->
<link rel="stylesheet"
	href="https://adminlte.io/themes/v3/plugins/datatables-bs4/css/dataTables.bootstrap4.min.css">
<link rel="stylesheet"
	href="https://adminlte.io/themes/v3/plugins/datatables-responsive/css/responsive.bootstrap4.min.css">
<link rel="stylesheet"
	href="https://adminlte.io/themes/v3/plugins/datatables-buttons/css/buttons.bootstrap4.min.css">
<!-- Theme style -->
<link rel="stylesheet"
	href="https://adminlte.io/themes/v3/dist/css/adminlte.min.css">
</head>
<body style="height: auto;">

	<div class="card">
		<div class="card-header">
			<h1 class="card-title">Analytics testcase data</h1>
		</div>
		<!-- /.card-header -->
		<div class="card-body">
			<div id="example1_wrapper" class="dataTables_wrapper dt-bootstrap4">
				<div class="row">
					<div class="col-sm-12 col-md-6">
						
					</div>
					<div class="col-sm-12 col-md-6">

					</div>
				</div>
				<div class="row">
					<div class="col-sm-12">
						<table id="example1"
							class="table table-bordered table-striped dataTable dtr-inline"
							role="grid" aria-describedby="example1_info">
							<thead>
								<tr role="row">
								<%@page import="java.sql.*,java.util.*,databaseOperations.*"%>
<%@page import="java.sql.*,java.util.*,databaseOperations.Select"%>
								<% try{
								
									Select s = new Select();
									ResultSet rs = s.getTableData();
									ResultSetMetaData rsmd = rs.getMetaData();
									int columnsNumber = rsmd.getColumnCount();
									 for (int i = 1; i <= columnsNumber; i++) {
								%>
<th class="sorting sorting_asc" tabindex="0"
										aria-controls="example1" rowspan="1" colspan="1"
										aria-sort="ascending"
										aria-label="Rendering engine: activate to sort column descending">
										<%=rsmd.getColumnName(i) %></th>
								<%} %>
								</tr>
							</thead>
							<tbody>
							<% while (rs.next()) {%>
								<tr class="odd">
								<td class="dtr-control sorting_1" tabindex="0"><%=rs.getObject(1) %></td>
								<%  for (int i = 2; i <= columnsNumber; i++) {%>
									<td><%=rs.getObject(i) %></td>

									<% } %>
								</tr>
								<%}

							
							%>
								
							</tbody>
							<tfoot>
								<tr>
								<%						
								for (int i = 1; i <= columnsNumber; i++) {
									
									%>
									<th rowspan="1" colspan="1"><%=rsmd.getColumnName(i) %></th>
									
									<% 
									
								}
								
								
								} catch (Exception e) {
									System.out.print(e);
									e.printStackTrace();
								} %>
									

								</tr>
							</tfoot>
						</table>
					</div>
				</div>
			</div>
		</div>
		<!-- /.card-body -->
	</div>
	<!-- /.card -->
	<!-- jQuery -->
	<script
		src="https://adminlte.io/themes/v3/plugins/jquery/jquery.min.js"></script>
	<!-- Bootstrap 4 -->
	<script
		src="https://adminlte.io/themes/v3/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
	<!-- DataTables  & Plugins -->
	<script
		src="https://adminlte.io/themes/v3/plugins/datatables/jquery.dataTables.min.js"></script>
	<script
		src="https://adminlte.io/themes/v3/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
	<script
		src="https://adminlte.io/themes/v3/plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
	<script
		src="https://adminlte.io/themes/v3/plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>
	<script
		src="https://adminlte.io/themes/v3/plugins/datatables-buttons/js/dataTables.buttons.min.js"></script>
	<script
		src="https://adminlte.io/themes/v3/plugins/datatables-buttons/js/buttons.bootstrap4.min.js"></script>
	<script src="https://adminlte.io/themes/v3/plugins/jszip/jszip.min.js"></script>
	<script
		src="https://adminlte.io/themes/v3/plugins/pdfmake/pdfmake.min.js"></script>
	<script
		src="https://adminlte.io/themes/v3/plugins/pdfmake/vfs_fonts.js"></script>
	<script
		src="https://adminlte.io/themes/v3/plugins/datatables-buttons/js/buttons.html5.min.js"></script>
	<script
		src="https://adminlte.io/themes/v3/plugins/datatables-buttons/js/buttons.print.min.js"></script>
	<script
		src="https://adminlte.io/themes/v3/plugins/datatables-buttons/js/buttons.colVis.min.js"></script>
	<!-- AdminLTE App -->
	<script src="https://adminlte.io/themes/v3/dist/js/adminlte.min.js"></script>
	<!-- AdminLTE for demo purposes -->
	<script src="https://adminlte.io/themes/v3/dist/js/demo.js"></script>
	<!-- Page specific script -->
	<script>
		$(function() {
			$("#example1").DataTable(
					{
						"responsive" : true,
						"lengthChange" : false,
						"autoWidth" : false,
						"buttons" : [ "copy", "csv", "excel", "pdf", "print",
								"colvis" ]
					}).buttons().container().appendTo(
					'#example1_wrapper .col-md-6:eq(0)');
			$('#example2').DataTable({
				"paging" : true,
				"lengthChange" : false,
				"searching" : false,
				"ordering" : true,
				"info" : true,
				"autoWidth" : false,
				"responsive" : true,
			});
		});
	</script>


</body>
</html>