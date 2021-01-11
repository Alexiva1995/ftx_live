	<!-- Modal Agregar Artículo-->
	<div class="modal fade" id="modal-article-new" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
          <div class="modal-content" style="background-color: black;">
                <div class="modal-header">
                  <h5 class="modal-title white" id="exampleModalLabel">Crear Artículo</h5>
                </div>
                <form action="{{ route('admin.soporte.create.article') }}" method="POST" enctype="multipart/form-data">
                  {{ csrf_field() }}
                  <div class="modal-body">
                      <div class="container-fluid">
                          <div class="row">
                              <div class="col-md-12">
                                  <div class="form-group">
                                      <label class="white">Título del Artículo</label>
                                      <input type="text" class="form-control" name="title" required>
                                  </div>
                              </div>
                              <div class="col-md-12">
                                  <div class="form-group">
                                      <label class="white">Descripción</label>
                                      <textarea class="ckeditor form-control" name="description" required></textarea>
                                  </div>
                              </div>
                          </div>
                      </div>

                  </div>
                    <div class="modal-footer">
                      <button type="button" class="btn btn-danger" data-dismiss="modal">Cancelar</button>
                      <button type="submit" class="btn btn-danger">Crear Artículo</button>
                    </div>
                </form>
          </div>
        </div>
  </div>
