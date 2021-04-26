<div class="modal-header">
    <h5 class="modal-title text-white">{{ $question }}</h5>
</div>
<div class="modal-body">
    <div class="container-fluid">
        <table id="mytable" class="table">
            <thead>
                <tr>
                    <th class="text-center text-white">Respuesta</th>
                    <th class="text-center text-white">Cantidad</th>
                </tr>
            </thead>
            <tbody>
                @for($i = 0; $i < count($answers); $i++)
					<tr>
					    <td class="text-center text-white">{{ $answers[$i] }}</td>
						<td class="text-center text-white">{{ $answers_count[$i] }}</td>
				    </tr>
				@endfor
            </tbody>
		</table>
    </div>
</div>
<div class="modal-footer">
    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
</div>