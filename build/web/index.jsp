<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>
<head>

	<title>Microbasurales - Temuco</title>

	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0">

	<link rel="shortcut icon" type="image/x-icon" href="docs/images/favicon.ico" />

		<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
		<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" href="https://unpkg.com/leaflet@1.3.4/dist/leaflet.css" integrity="sha512-puBpdR0798OZvTTbP4A8Ix/l+A4dHDD0DGqYW6RQ+9jxkRFclaxxQb/SJAWZfWAkuyeQUytO7+7N4QKrDh+drA==" crossorigin=""/>
    <script src="https://unpkg.com/leaflet@1.3.4/dist/leaflet.js" integrity="sha512-nMMmRyTVoLYqjP9hrbed9S+FzjZHW5gY1TWCHA5ckwXZBadntCNs8kEqAWdrb9O7rxbCaA4lKTIWjDXZxflOcA==" crossorigin=""></script>

</head>
<body onload="hola()" style="width: 100%; height: 100%;">

	<nav class="navbar navbar-expand-md navbar-dark bg-dark">
	<div class="navbar-collapse collapse w-100 order-1 order-md-0 dual-collapse2">
			<ul class="navbar-nav mr-auto">
					
			</ul>
	</div>
	<div class="mx-auto order-0">
			<a class="navbar-brand mx-auto" href="#">Microbasurales Temuco</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target=".dual-collapse2">
					<span class="navbar-toggler-icon"></span>
			</button>
	</div>
	<div class="navbar-collapse collapse w-100 order-3 dual-collapse2">
			<ul class="navbar-nav ml-auto">
				
			</ul>
	</div>
</nav>

<div class="container-fluid">
		<div class="row">
		  <div class="col-md-12">
		    <div id="mapid" style=" position: absolute; width: 100%; left: 0; height: 600px;"></div>
		  </div>
		</div>
	</div>


	<!-- EMPIEZA MODAL DE REGISTRO NUEVO BASURAL -->
	<div class="modal fade" id="nuevoBasural" tabindex="-1" role="dialog" aria-labelledby="InformarNuevoBasural" aria-hidden="true">
	  <div class="modal-dialog" role="document">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title" id="exampleModalLabel">Informar nuevo microbasural</h5>
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	          <span aria-hidden="true">&times;</span>
	        </button>
	      </div>
	      <div class="modal-body">
	        ...
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-danger" data-dismiss="modal"><i class="fa fa-times"></i> Cerrar</button>
	        <button type="button" class="btn btn-success"><i class="fa fa-check"></i> Guardar basural</button>
	      </div>
	    </div>
	  </div>
	</div>
	<!-- TERMINA MODAL DE REGISTRO NUEVO BASURAL -->

	<!-- EMPIEZA MODAL DE ELIMINACION DE BASURAL -->
	<div class="modal fade" id="basuralEliminado" tabindex="-1" role="dialog" aria-labelledby="basuralEliminado" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Informar un microbasural solucionado</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					...
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-danger" data-dismiss="modal"><i class="fa fa-times"></i> Cerrar</button>
	        <button type="button" class="btn btn-success"><i class="fa fa-check"></i> Informar punto solucionado</button>
				</div>
			</div>
		</div>
            <p>${datos}</p>
            
            
            
            
            
            
            
            
            
            
            
	</div>
	<!-- TERMINA MODAL DE ELIMINACION DE BASURAL -->







	<script>

		var mymap = L.map('mapid').setView([-38.739, -72.587], 12.12);

		L.tileLayer('https://api.tiles.mapbox.com/v4/{id}/{z}/{x}/{y}.png?access_token=pk.eyJ1IjoibWFwYm94IiwiYSI6ImNpejY4NXVycTA2emYycXBndHRqcmZ3N3gifQ.rJcFIG214AriISLbB6B5aw', {
			maxZoom: 18,

			id: 'mapbox.streets'
		}).addTo(mymap);//Labranza
                
	function hola(){	
                    L.marker([${datos.get(0).getLatitud()}, ${datos.get(0).getLongitud()}]).addTo(mymap).bindPopup("Micro-Basural "+(0+1)).openPopup();
                    L.marker([${datos.get(1).getLatitud()}, ${datos.get(1).getLongitud()}]).addTo(mymap).bindPopup("Micro-Basural "+(1+1)).openPopup();
                    L.marker([${datos.get(2).getLatitud()}, ${datos.get(2).getLongitud()}]).addTo(mymap).bindPopup("Micro-Basural "+(2+1)).openPopup();
                    L.marker([${datos.get(3).getLatitud()}, ${datos.get(3).getLongitud()}]).addTo(mymap).bindPopup("Micro-Basural "+(3+1)).openPopup();
                    L.marker([${datos.get(4).getLatitud()}, ${datos.get(4).getLongitud()}]).addTo(mymap).bindPopup("Micro-Basural "+(4+1)).openPopup();
                    L.marker([${datos.get(5).getLatitud()}, ${datos.get(5).getLongitud()}]).addTo(mymap).bindPopup("Micro-Basural "+(5+1)).openPopup();
                    L.marker([${datos.get(6).getLatitud()}, ${datos.get(6).getLongitud()}]).addTo(mymap).bindPopup("Micro-Basural "+(6+1)).openPopup();
                    L.marker([${datos.get(7).getLatitud()}, ${datos.get(7).getLongitud()}]).addTo(mymap).bindPopup("Micro-Basural "+(7+1)).openPopup();
                    L.marker([${datos.get(8).getLatitud()}, ${datos.get(8).getLongitud()}]).addTo(mymap).bindPopup("Micro-Basural "+(8+1)).openPopup();
                    L.marker([${datos.get(9).getLatitud()}, ${datos.get(9).getLongitud()}]).addTo(mymap).bindPopup("Micro-Basural "+(9+1)).openPopup();
                    L.marker([${datos.get(10).getLatitud()}, ${datos.get(10).getLongitud()}]).addTo(mymap).bindPopup("Micro-Basural "+(10+1)).openPopup();
                    L.marker([${datos.get(11).getLatitud()}, ${datos.get(11).getLongitud()}]).addTo(mymap).bindPopup("Micro-Basural "+(11+1)).openPopup();
                    L.marker([${datos.get(12).getLatitud()}, ${datos.get(12).getLongitud()}]).addTo(mymap).bindPopup("Micro-Basural "+(12+1)).openPopup();
                    L.marker([${datos.get(13).getLatitud()}, ${datos.get(13).getLongitud()}]).addTo(mymap).bindPopup("Micro-Basural "+(13+1)).openPopup();
                    L.marker([${datos.get(14).getLatitud()}, ${datos.get(14).getLongitud()}]).addTo(mymap).bindPopup("Micro-Basural "+(14+1)).openPopup();
                    L.marker([${datos.get(15).getLatitud()}, ${datos.get(15).getLongitud()}]).addTo(mymap).bindPopup("Micro-Basural "+(15+1)).openPopup();
                    L.marker([${datos.get(16).getLatitud()}, ${datos.get(16).getLongitud()}]).addTo(mymap).bindPopup("Micro-Basural "+(16+1)).openPopup();
                    L.marker([${datos.get(17).getLatitud()}, ${datos.get(17).getLongitud()}]).addTo(mymap).bindPopup("Micro-Basural "+(17+1)).openPopup();
                    L.marker([${datos.get(18).getLatitud()}, ${datos.get(18).getLongitud()}]).addTo(mymap).bindPopup("Micro-Basural "+(18+1)).openPopup();
                    L.marker([${datos.get(19).getLatitud()}, ${datos.get(19).getLongitud()}]).addTo(mymap).bindPopup("Micro-Basural "+(19+1)).openPopup();
}
                   
		
		L.polygon([
			[-38.7789,-72.7773],
			[-38.7787,-72.7709],
			[-38.7770,-72.7668],
			[-38.7768,-72.7638],
			[-38.7738,-72.7573],
			[-38.7753,-72.7519],
			[-38.7757,-72.7454],
			[-38.7732,-72.7344],
			[-38.7552,-72.7344],
			[-38.7556,-72.7516],
			[-38.7612,-72.7523],
			[-38.7625,-72.7788]
			]).addTo(mymap).bindPopup("Labranza");

		L.polygon([//Fundo el Carmen
			[-38.7423, -72.6667],
			[-38.73695,-72.65730],
			[-38.73497,-72.65290],
			[-38.73507,-72.64966],
			[-38.73407,-72.64676],
			[-38.73182, -72.64460],
			[-38.72921, -72.64268],
			[-38.72792, -72.64034],
			[-38.72651, -72.63856],
			[-38.72537, -72.63795],
			[-38.72435, -72.63625],
			[-38.72469, -72.63381],
			[-38.72509, -72.63199],
			[-38.72175, -72.62779],
			[-38.72114, -72.62976],
			[-38.71980, -72.62976],
			[-38.71913, -72.63311],
			[-38.71914, -72.63714],
			[-38.71789, -72.63894],
			[-38.71603, -72.64014],
			[-38.71418, -72.64199],
			[-38.71338, -72.64535],
			[-38.71287, -72.64678],
			[-38.71281, -72.64862],
			[-38.71242, -72.64963],
			[-38.71185, -72.65031],
			[-38.70981, -72.65015],
			[-38.70919, -72.65083],
			[-38.70805, -72.65641],
			[-38.70868, -72.65834],//
			[-38.70832, -72.66089],
			[-38.70726, -72.66124],
			[-38.70699, -72.66441],
			[-38.70637, -72.66583],
			[-38.71119, -72.66753],
			[-38.71077, -72.66967],
			[-38.72272, -72.67619],
			[-38.72285, -72.66053]
			]).addTo(mymap).bindPopup("Fundo el Carmen");

		L.polygon([//sector Pablo Neruda
			[-38.73545, -72.65396],
			[-38.73497, -72.65290],
			[-38.73508, -72.64961],
			[-38.73390, -72.64649],
			[-38.72924, -72.64259],
			[-38.72793, -72.64022],
			[-38.72653, -72.63843],
			[-38.72526, -72.63770],
			[-38.72435, -72.63610],
			[-38.72556, -72.62937],
			[-38.72636, -72.62769],
			[-38.72663, -72.62607],
			[-38.72871, -72.62684],
			[-38.73001, -72.62615],
			[-38.72904, -72.62233],
			[-38.72884, -72.62078],
			[-38.73621, -72.62319],
			[-38.73725, -72.61937],
			[-38.74073, -72.62062],
			[-38.73972, -72.62366],
			[-38.74347, -72.62456],
			[-38.74468, -72.61956],
			[-38.74550, -72.61976],
			[-38.75214, -72.65052],
			[-38.74692, -72.65298],
			[-38.74617, -72.65264],
			[-38.7470, -72.6490],
			[-38.7468, -72.6478]
			]).addTo(mymap).bindPopup("sector Pablo Neruda");

		L.polygon([//Sector Aquelarre
			[-38.7545, -72.6616],
			[-38.7574, -72.6604],
			[-38.75751, -72.65421],
			[-38.75665, -72.64111],
			[-38.75488, -72.63496],
			[-38.75412, -72.62001],
			[-38.75127, -72.61659],
			[-38.75074, -72.61731],
			[-38.74874, -72.62418],
			[-38.74618, -72.62216]
			]).addTo(mymap).bindPopup("Sector Aquelarre");

		L.polygon([//Sector Alemania
			[-38.7361, -72.6232],
			[-38.7373, -72.6186],
			[-38.7367, -72.6183],
			[-38.73747, -72.61637],
			[-38.73818, -72.61729],
			[-38.73862, -72.61695],
			[-38.74052, -72.60458],
			[-38.73662, -72.60321],
			[-38.73690, -72.60163],
			[-38.73363, -72.60066],
			[-38.73029, -72.60575],
			[-38.72860, -72.61060],
			[-38.72868, -72.61150],
			[-38.72805, -72.61351],
			[-38.72879, -72.62064]
			]).addTo(mymap).bindPopup("Sector Alemania");

		L.polygon([//Sector Amanecer
			[-38.75742, -72.65704],
			[-38.75911, -72.65630],
			[-38.75929, -72.65448],
			[-38.76234, -72.65348],
			[-38.76197, -72.64787],
			[-38.76189, -72.63849],
			[-38.76111, -72.63086],
			[-38.76158, -72.62713],
			[-38.76143, -72.62320],
			[-38.76104, -72.61976],
			[-38.76056, -72.61741],
			[-38.75989, -72.61592],
			[-38.75806, -72.61330],
			[-38.75683, -72.61047],
			[-38.75693, -72.60574],
			[-38.75379, -72.60649],
			[-38.74679, -72.60443],
			[-38.74672, -72.60767],
			[-38.75247, -72.61457],
			[-38.75396, -72.61543],
			[-38.75491, -72.63491],
			[-38.75666, -72.64111],
			[-38.75754, -72.65410]
			]).addTo(mymap).bindPopup("Sector Amanecer");

		L.polygon([//Sector Pedro de Valdivia
			[-38.7002, -72.6318],
			[-38.7045, -72.6348],
			[-38.7059, -72.6390],
			[-38.7098, -72.6414],
			[-38.7123, -72.6411],
			[-38.7140, -72.6418],
			[-38.7160, -72.6400],
			[-38.71794, -72.63871],
			[-38.71922, -72.63723],
	        [-38.71923, -72.63301],
			[-38.71981, -72.62975],
			[-38.72112, -72.62975],
			[-38.72173, -72.62778],
			[-38.72511, -72.63188],
			[-38.72555, -72.62937],
			[-38.72638, -72.62769],
			[-38.72670, -72.62606],
			[-38.72878, -72.62689],
			[-38.73006, -72.62636],
			[-38.72803, -72.61352],
			[-38.72868, -72.61149],
			[-38.72860, -72.61060],
			[-38.73040, -72.60550],
			[-38.73362, -72.60064],
			[-38.72617, -72.59865],
			[-38.72640, -72.60186],
			[-38.71830, -72.60615],
			[-38.70939, -72.60564],
			[-38.70845, -72.60958],
			[-38.70450, -72.60984],
			[-38.70309, -72.61671],
			[-38.70082, -72.61714],
			[-38.70062, -72.62709]
			]).addTo(mymap).bindPopup("Sector Pedro de Valdivia");

		L.polygon([//Sector la Frontera
			[-38.7371, -72.6193],
			[-38.7407, -72.6207],
			[-38.7398, -72.6236],
			[-38.74347, -72.62454],
			[-38.74467, -72.61956],
			[-38.74552, -72.61975],
			[-38.74618, -72.62210],
			[-38.74873, -72.62416],
			[-38.75073, -72.61730],
			[-38.75126, -72.61658],
			[-38.75415, -72.61992],
			[-38.75395, -72.61543],
			[-38.75245, -72.61464],
			[-38.74671, -72.60768],
			[-38.74675, -72.60440],
			[-38.7369, -72.6017],
			[-38.7367, -72.6032],
			[-38.74054, -72.60457],
			[-38.73860, -72.61689],
			[-38.73820, -72.61725],
			[-38.73749, -72.61641],
			[-38.73669, -72.61827],
			[-38.73730, -72.61861]
			]).addTo(mymap).bindPopup("Sector la Frontera");

		L.polygon([//Temuco Centro
			[-38.75386, -72.60643],
			[-38.75308, -72.60393],
			[-38.75130, -72.60305],
			[-38.74899, -72.60298],
			[-38.74823, -72.60223],
			[-38.74705, -72.60030],
			[-38.74639, -72.59897],
			[-38.74624, -72.59591],
			[-38.74597, -72.59469],
			[-38.74592, -72.59319],
			[-38.74597, -72.59263],
			[-38.74644, -72.59173],
			[-38.74729, -72.59100],
			[-38.74803, -72.58992],
			[-38.74804, -72.58797],
			[-38.74704, -72.58827],
			[-38.74306, -72.58753],
			[-38.74303, -72.58670],
			[-38.73970, -72.58302],
			[-38.73909, -72.58185],
			[-38.73829, -72.58138],
			[-38.73290, -72.57483],
			[-38.73269, -72.57397],
			[-38.72829, -72.56771],
			[-38.72426, -72.56925],
			[-38.72535, -72.57379],
			[-38.72524, -72.57448],
			[-38.72609, -72.57838],
			[-38.72585, -72.57887],
			[-38.72632, -72.57889],
			[-38.72672, -72.57920],
			[-38.72686, -72.58127],
			[-38.72750, -72.58216],
			[-38.72881, -72.58552],
			[-38.72898, -72.58796],
			[-38.73050, -72.59126],
			[-38.73098, -72.59289],
			[-38.73032, -72.59632],
			[-38.72764, -72.59594],
			[-38.7260, -72.5985]
			]).addTo(mymap).bindPopup("Temuco Centro");

		L.polygon([
			[-38.7284, -72.5676],
			[-38.72525, -72.56247],
			[-38.72399, -72.56097],
			[-38.71780, -72.55648],
			[-38.71218, -72.55746],
			[-38.71119, -72.55895],
			[-38.71929, -72.56778],
			[-38.71643, -72.56896],
			[-38.71780, -72.56939],
			[-38.71884, -72.57008],
			[-38.71922, -72.57060],
			[-38.71971, -72.57156],
			[-38.72117, -72.57539],
			[-38.72146, -72.57571],
			[-38.72244, -72.57679],
			[-38.72305, -72.57852],
			[-38.72359, -72.57863],
			[-38.72414, -72.57849],
			[-38.72513, -72.57873],
			[-38.72575, -72.57894],
			[-38.72608, -72.57837],
			[-38.72524, -72.57449],
			[-38.72535, -72.57380],
			[-38.72426, -72.56925]
			]).addTo(mymap).bindPopup("Pueblo Nuevo");

		L.polygon([//Sector las mariposas
			[-38.71928, -72.56778],
			[-38.6894, -72.5340],
			[-38.68703, -72.53982],
			[-38.69526, -72.54878],
			[-38.69549, -72.54892],
			[-38.69555, -72.54972],
			[-38.69613, -72.55076],
			[-38.69584, -72.55212],
			[-38.69578, -72.55267],
			[-38.69576, -72.55328],
			[-38.69607, -72.55404],
			[-38.69607, -72.55435],
			[-38.69644, -72.55454],
			[-38.69667, -72.55530],
			[-38.69736, -72.55540],
			[-38.69799, -72.55621],
			[-38.69843, -72.55399],
			[-38.69968, -72.55400],
			[-38.69987, -72.55437],
			[-38.70035, -72.55472],
			[-38.70092, -72.55567],
			[-38.70156, -72.55568],
			[-38.70226, -72.55457],
			[-38.70322, -72.55560],
			[-38.70625, -72.56306],
			[-38.70838, -72.57369],
			[-38.71144, -72.56822],
			[-38.71443, -72.56993]
			]).addTo(mymap).bindPopup("Sector las mariposas");
			
		L.polygon([//Sector Costanera del Cautín
			[-38.74806, -72.58794],
			[-38.74825, -72.58712],
			[-38.74752, -72.57981],
			[-38.74691, -72.57850],
			[-38.74587, -72.57677],
			[-38.74341, -72.57396],
			[-38.74187, -72.57255],
			[-38.74063, -72.57019],
			[-38.73862, -72.56761],
			[-38.73711, -72.56289],
			[-38.73578, -72.56023],
			[-38.73491, -72.55916],
			[-38.73360, -72.55603],
			[-38.73186, -72.55461],
			[-38.73186, -72.55461],
			[-38.72490, -72.55315],
			[-38.72202, -72.55255],
			[-38.71890, -72.54963],
			[-38.71827, -72.54662],
			[-38.71736, -72.54401],
			[-38.71616, -72.54440],
			[-38.71451, -72.54311],
			[-38.71328, -72.54195],
			[-38.70701, -72.53740],
			[-38.69935, -72.54581],
			[-38.71119, -72.55888],
			[-38.71217, -72.55744],
			[-38.71781, -72.55647],
			[-38.72399, -72.56100],
			[-38.72527, -72.56248],
			[-38.72840, -72.56757],
			[-38.72828, -72.56771],
			[-38.73266, -72.57397],
			[-38.73286, -72.57485],
			[-38.73829, -72.58138],
			[-38.73909, -72.58186],
			[-38.73970, -72.58302],
			[-38.74303, -72.58670],
			[-38.74309, -72.58751],
			[-38.74706, -72.58828]
			]).addTo(mymap).bindPopup("Sector Costanera del Cautín");
			
		L.polygon([//Sector Maipo
			[-38.74230, -72.66675],
			[-38.75515, -72.66487],
			[-38.75218, -72.65058],
			[-38.74691, -72.65298],
			[-38.74615, -72.65263],
			[-38.74702, -72.64898],
			[-38.74685, -72.64779],
			[-38.73546, -72.65398],
			[-38.73695, -72.65731]
			]).addTo(mymap).bindPopup("Sector Maipo");
			
			
			
		
		
	</script>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.bundle.min.js" integrity="sha384-pjaaA8dDz/5BgdFUPX6M/9SUZv4d12SUPF0axWc+VRZkx5xU3daN+lYb49+Ax+Tl" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>


</body>
</html>
