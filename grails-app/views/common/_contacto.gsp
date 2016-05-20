<fieldset>
	<legend>Contacto </legend>
	<div class="form-group">
		<label for="nombre" class="col-sm-2 control-label">Nombre </label>
		<div class="col-sm-10">
			<input name="contacto.nombre" 
				value="${it?.contacto?.nombre}"
				type="text" class="form-control mayusculas" 
				placeholder="Contacto Nombre">
		</div>
	</div>

	<div class="form-group">
		<label for="puesto" class="col-sm-2 control-label">Puesto</label>
		<div class="col-sm-10">
			<input name="contacto.puesto" 
				value="${it?.contacto?.puesto}"
				type="text" class="form-control mayusculas" 
				placeholder="Puesto">
		</div>
	</div>

	<div class="form-group">
		<label for="email" class="col-sm-2 control-label">e-mail </label>
		<div class="col-sm-10">
			<input name="contacto.email" 
				value="${it?.contacto?.email}"
				type="text" class="form-control mayusculas" 
				placeholder="e-email">
		</div>
	</div>

	<div class="form-group">
		<label for="telefono" class="col-sm-2 control-label">Telefono </label>
		<div class="col-sm-10">
			<input name="contacto.telefono" 
				value="${it?.contacto?.telefono}"
				type="text" class="form-control mayusculas" 
				placeholder="Telefono">
		</div>
	</div>

	<div class="form-group">
		<label for="celular" class="col-sm-2 control-label">Mobil </label>
		<div class="col-sm-10">
			<input name="contacto.celular" 
				value="${it?.contacto?.celular}"
				type="text" class="form-control mayusculas" 
				placeholder="Mobil">
		</div>
	</div>

	<div class="form-group">
		<label for="tipo" class="col-sm-2 control-label">Tipo </label>
		<div class="col-sm-10">
			<input name="contacto.tipo" 
				value="${it?.contacto?.tipo}"
				type="text" class="form-control mayusculas" 
				placeholder="Tipo contacto">
		</div>
	</div>
	


</fieldset>