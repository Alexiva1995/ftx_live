@extends('layouts.landing')

@push('styles')
    <style>
        .legal-titles{
            font-size: 30px; 
            font-weight: bold;
        }
        .legal-text{
            font-size: 18px; 
            font-weight: 400;
        }
        .item-li{
            background-color: white;
        }
        .item-li .nav-link{
            color: #B70F1E !important;
        }
        .nav-pills .item-li .nav-link.active, .nav-pills .show>.nav-link {
            color: #fff !important;
            background-color:#B70F1E !important;
        }
        .legal-item{
            background-color: #212529;
            border:  1px solid gray;
            font-size: 14px;
            font-weight: 500;
            color:  gray;
        }
        .list-group-legal{
            width: 15%;
            position: fixed; 
            /*z-index: 1000;*/
        }
        .tab-pane{
            text-align: justify;
        }
    </style>
@endpush

@push('scripts')
    <script>
        //Cuando cargue la página completamente
        $(document).ready(function(){
            console.log($("#section-paises").offset().top);
            //Creamos un evento click para el enlace
            $(".ancla").click(function(evento){
                //Anulamos la funcionalidad por defecto del evento
                evento.preventDefault();
                //Creamos el string del enlace ancla
                var codigo = "#" + $(this).data("ancla");
                //Funcionalidad de scroll lento para el enlace ancla en 3 segundos
                $("html,body").animate({scrollTop: $(codigo).offset().top - 100}, 2000);
            });
            $(window).scroll(function(event) {
                var paisesTop = $("#section-paises").offset().top - 415;
                var scrollTop = $(window).scrollTop();

                if (scrollTop > paisesTop){
                    $(".list-group-legal").css('display', 'none');
                }else{
                    $(".list-group-legal").css('display', 'block');
                }
            });
        });
    </script>
@endpush
@section('content')
    
    <div class="panel with-nav-tabs panel-primary">
        <div class="panel-heading">
            <ul class="nav nav-pills nav-fill m-3">
                <li class="nav-item item-li"><a class="nav-link active" href="#codigo-etico" data-toggle="tab"><b>Código Ético</b></a></li>
                <li class="nav-item item-li"><a class="nav-link" href="#contrato-instructor" data-toggle="tab"><b>Contrato del Instructor</b></a></li>
                <li class="nav-item item-li"><a class="nav-link" href="#contrato-afiliado" data-toggle="tab"><b>Contrato del Afiliado</b></a></li>
                <li class="nav-item item-li"><a class="nav-link" href="#condiciones-generales" data-toggle="tab"><b>Condiciones Generales de Uso y Venta</b></a></li>
                <li class="nav-item item-li"><a class="nav-link" href="#programa-afiliados" data-toggle="tab"><b>Programa de Afiliados</b></a></li>
            </ul>
        </div>
        <div class="panel-body">
            <div class="tab-content section-landing">
                <div class="tab-pane active pt-2 pb-2 pr-2 pl-2" id="codigo-etico">  
                    <div class="row">
                        <div class="col-md-3 d-none d-lg-block d-xl-block">
                            <div class="list-group list-group-legal">
                                <a class="list-group-item legal-item ancla" href="#" data-ancla="codigo-etico-item-1">1.- Introducción</a>
                                <a class="list-group-item legal-item ancla" href="#" data-ancla="codigo-etico-item-2">2.- Códigos de Conducta</a>
                                <a class="list-group-item legal-item ancla" href="#" data-ancla="codigo-etico-item-3">3.- Comunicaciones</a>
                                <a class="list-group-item legal-item ancla" href="#" data-ancla="codigo-etico-item-4">4. Reportes y Sanciones</a>
                            </div>
                        </div>
                        <div class="col-md-9">
                            <div class="legal-titles" id="codigo-etico-item-1">1.-  Introducción</div>
                            <div class="mt-2 legal-text">
                                Al convertirse en un representante de FTX Live, acepta respetar nuestro Código de Ética y conducta. Gracias a estas reglas, su participación en la red de FTX Live se llevará a cabo de acuerdo con nuestros valores de equidad, moralidad e integridad.<br><br>
                                Este Código de Ética rige el comportamiento y las relaciones de los representantes con clientes y prospectos.<br><br>
                                Este Código de Ética es un anexo al contrato de FTX Live.<br><br>
                                Los representantes de FTX Live, deben cumplir con las reglas de este Código de Ética en todo momento en sus tratos comerciales. Cualquier violación de las reglas de este Código de Ética conlleva sanciones como se describe a continuación.
                            </div>

                            <div class="mt-3 legal-titles" id="codigo-etico-item-2">2.-  Códigos de Conducta</div>
                            <div class="mt-2 legal-text">
                                -   HACIA EL CLIENTE EXTERNO <br><br>

                                Los afiliados y promotores del sistema educativo FTX Live deben ofrecer al cliente final excelente servicio. En este contexto, cada afiliado y promotor se compromete a:<br>
                                2.1: Adoptar un método de trabajo saludable y leal hacia FTX Live<br>
                                2.2: Representar a FTX Live de manera seria y profesional ante terceros en el contexto de presentaciones, videos y otros medios comunicados a terceros;<br>
                                2.3: Proporcione solo información y documentos oficiales de FTX Live. La información del producto solo se proporciona en la medida en que cumpla con los datos y declaraciones oficiales de FTX Live.<br>
                                2.4: Sea honesto en sus relaciones con las personas suscritas y bríndeles la información necesaria que les permita tomar una decisión plenamente informada, en particular sobre el precio y las condiciones de pago;<br>
                                2.5: No realice declaraciones falsas o exageradas en la plataformaFTX Live (ftxlive.com) y / o las suscripciones ofrecidas en esta plataforma;<br>
                                2.6: No dé ninguna garantía sobre los ingresos esperados;<br>
                                2.7: Respetar la privacidad de los clientes finales y, por ejemplo, presentarles la oferta de FTX Live solo con su consentimiento expreso y en horarios razonables para llamadas telefónicas;<br>
                                2.8: No se acerque a terceros de manera agresiva o demasiado insistente;<br>
                                2.9: Favorecer los intercambios personalizados con los clientes finales y no enviar correos electrónicos o mensajes promocionando la actividad de FTX Live de forma masiva;<br>
                                2.10: No abusar de la confianza de los clientes finales y, en particular, no explotar la falta de experiencia, enfermedades, edad o habilidades lingüísticas limitadas de los clientes finales;<br>
                                2.11: No solicite con firmeza, agresividad o insistencia la suscripción de clientes finales a productos FTX Live. Está prohibido el uso de fuerza física, acoso o cualquier otro medio opresivo;<br>
                                2.12: No condicione la suscripción de un cliente final a la oferta FTX Live o al cumplimiento de otra obligación. Por ejemplo, la compra de otro producto por parte del cliente final, el pago de una suma de dinero, etc. ;<br>
                                2.13: Esforzarse por trabajar con vestimenta correcta y adoptar un lenguaje distinguido para presentar FTX Live.<br><br>

                                -   HACIA EL CLIENTE INTERNO <br><br>

                                Todos los representantes de FTX Live deben respetarse mutuamente en todo sentido. Teniendo esto en cuenta, todos los afiliados nos comprometemos a respetar y sumar a la organización bajo el estricto seguimiento de las siguientes reglas:<br>
                                3.1: Queda expresamente prohibido a los representantes y promotores de FTX Live, robar material de otros socios comerciales.<br>
                                3.2: Queda expresamente prohibido a los representantes y promotores de FTX Live promover junto con FTX Live el unirse a otra organización comercial prometiendo una mejor supervisión o mejores resultados, es decir, mencionar nuestra academia como beneficio del paquete educativo de otra organización.<br>
                                3.3: Queda expresamente prohibido a los representantes y promotores de FTX Live hacer comentarios negativos y / o degradantes sobre otros representantes y promotores de FTX Live<br>
                                3.4: Queda expresamente prohibido a los representantes y promotores de FTX Live, tratar públicamente en las redes sociales, las disputas con otros representantes y promotores de FTX Live <br>
                                4. Queda expresamente prohibido a los representantes y promotores de FTX Live, tener actividad competitiva o fraudulenta<br>
                                Los representantes y promotores de FTX Live, deben comportarse con un alto sentido de lealtad.- Sin embargo, el ejercicio de la actividad de los representantes y promotores no es exclusivo. No obstante, se abstienen de participar en actividades concurrentes o fraudulentas. Por lo tanto, los socios de FTX Live se comprometen a:<br>
                                4.1: Queda expresamente prohibido a los representantes y promotores de FTX Live, participar en una red del tipo “marketing relacional” del gremio educativo o de formación online (E-Learning) o similar, o participar simultáneamente con algún competidor de FTX Live, en particular <br>
                                4.2: Queda expresamente prohibido a los representantes y promotores de FTX Live, participar en una red de tipo "marketing relacional" o similar, en sectores financieros de riesgo, como comercio, divisas, inversiones de riesgo o criptomonedas;<br>
                                4.3: Queda expresamente prohibido a los representantes y promotores de FTX Live, participar en una actividad fraudulenta, como venta piramidal, cadena de reclutamiento de afiliados o esquema Ponzi;
                            </div>

                            <div class="mt-3 legal-titles" id="codigo-etico-item-3">3.-   Comunicaciones</div>
                            <div class="mt-2 legal-text">
                                Todos los contactos con la prensa, la televisión y la radio relacionados con FTX Live están reservados para FTX Live, a menos que la dirección de la organización acepte alguna excepción y bajo un estricto acuerdo por escrito.<br><br>
                                FTX Live, informa a representantes, promotores y afiliados, que las comunicaciones a través de las redes sociales no están exentas de riesgos y los invita a estar atentos al respecto.
                            </div>

                            <div class="mt-3 legal-titles" id="codigo-etico-item-4">4.   Reportes y Sanciones</div>
                            <div class="mt-2 legal-text">
                                Dependiendo de su gravedad, la (s) violación (es) de una o más de las reglas mencionadas en este Código de Ética podrían ser primero objeto de una o más advertencias.
                                FTX Live también se reserva el derecho, a su sola discreción, de aplicar las sanciones que se mencionan a continuación en función de la gravedad del incumplimiento y bajo previa y estricta investigación:
                                1.- Bajar de categoría, posponer por un período fijo o cancelar permanentemente una afiliación. 
                                2.- Posponer por un período fijo o cancelar definitivamente el pago de una solicitud de retiro de comisiones.
                                3. Suspender por un período fijo su cuenta FTX Live y las comisiones adeudadas durante este período.
                                Cualquier persona puede denunciar bajo estricta confidencialidad toda practica que atente contra este código de ética o en general los intereses de la organización.
                                Con cualquier denuncia abriremos un proceso de investigación sobre el cual se tomarán las medidas pertinentes.
                                Tenga en cuenta que si FTX Live considera que el incumplimiento de las reglas mencionadas en este Código de Ética es particularmente grave, FTX Live se reserva el derecho de rescindir unilateralmente el Contrato FTX Live y cerrar su cuenta en el sitio: www.ftxlive.com sin previo aviso.
                                Cualquier solicitud de aclaración sobre las normas descritas en este Código Ético y / o reclamación sobre su aplicación deberá realizarse a la dirección de correo electrónico indicada en su Contrato FTX Live.
                            </div>
                        </div>
                    </div>
                </div>

                <div class="tab-pane pt-2 pb-2 pr-2 pl-2" id="contrato-instructor">
                    <div class="row">
                        <div class="col-md-3 d-none d-lg-block d-xl-block">
                            <div class="list-group list-group-legal" style="height: 500px; overflow-y: scroll;">
                                <div style="height: auto;">
                                    <a class="list-group-item legal-item ancla" href="#" data-ancla="contrato-instructor-item-1">1.- Introducción</a>
                                    <a class="list-group-item legal-item ancla" href="#" data-ancla="contrato-instructor-item-2">2.- Objeto del Contrato</a>
                                    <a class="list-group-item legal-item ancla" href="#" data-ancla="contrato-instructor-item-3">3.- Remuneración</a>
                                    <a class="list-group-item legal-item ancla" href="#" data-ancla="contrato-instructor-item-4">4.- Naturaleza del contrato</a>
                                    <a class="list-group-item legal-item ancla" href="#" data-ancla="contrato-instructor-item-5">5.- Obligaciones del instructor</a>
                                    <a class="list-group-item legal-item ancla" href="#" data-ancla="contrato-instructor-item-6">6.- Derechos del instructor</a>
                                    <a class="list-group-item legal-item ancla" href="#" data-ancla="contrato-instructor-item-7">7.- Obligaciones de FTX Live</a>
                                    <a class="list-group-item legal-item ancla" href="#" data-ancla="contrato-instructor-item-8">8.- Derechos de FTX Live</a>
                                    <a class="list-group-item legal-item ancla" href="#" data-ancla="contrato-instructor-item-9">9.- Duración del contrato</a>
                                    <a class="list-group-item legal-item ancla" href="#" data-ancla="contrato-instructor-item-10">10.- Terminación del contrato</a>
                                    <a class="list-group-item legal-item ancla" href="#" data-ancla="contrato-instructor-item-11">11.- Modificación del contrato</a>
                                    <a class="list-group-item legal-item ancla" href="#" data-ancla="contrato-instructor-item-12">12.- Capacidad</a>
                                    <a class="list-group-item legal-item ancla" href="#" data-ancla="contrato-instructor-item-13">13.- Datos Personales</a>
                                    <a class="list-group-item legal-item ancla" href="#" data-ancla="contrato-instructor-item-14">14.- Divisibilidad</a>
                                    <a class="list-group-item legal-item ancla" href="#" data-ancla="contrato-instructor-item-15">15.- Ley Aplicable</a>
                                    <a class="list-group-item legal-item ancla" href="#" data-ancla="contrato-instructor-item-16">16.- Jurisdicción</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-9">
                            <div class="legal-titles" id="contrato-instructor-item-1">1.  Introducción</div>
                            <div class="mt-2 legal-text">
                                1.1 - FENTTIX CORP, con domicilio en Panamá City y bajo el nombre comercial de: Fenttix
                                Presentan a continuación las siguientes condiciones de relación entre la marca y producto: FTX Live, referenciadas en estas especificaciones como: FTX Live, proporcionando un marco legal para los términos de prestación de sus servicios de educación en línea al sitio web: www.ftxlive.com , denominado como: el "Sitio" y definiendo las condiciones de acceso y uso de los servicios del Sitio por "el Usuario".<br>

                                La organización es representada, administrada y operada desde Guadalajara, Jalisco, México por la Lic. Noemy Alemán Cabrera y en lo sucesivo, "FTX Live" por un lado, y<br>

                                1.2 - La persona física o jurídica abajo firmante y, en adelante, el "Instructor FTX Live" por otro lado, en lo sucesivo denominadas colectivamente las "Partes" o individualmente una "Parte".<br><br>

                                <b style="font-size: 20px;">Lo siguiente se explica de antemano:</b><br><br>
                                
                                FTX Live (FTX Live) es una plataforma de e-learning que ofrece un catálogo de cursos de formación variados accesibles en el sitio web: www.ftxlive.com  en adelante, la “Plataforma”) diseñada para el desarrollo personal, profesional y financiero, la cual facilita su contenido a través de diferentes fórmulas de suscripción en función de las opciones suscritas por los suscriptores (en adelante: en lo sucesivo denominados conjuntamente la "Suscripción").<br>

                                <br>Entre las Suscripciones que ofrece FTX Live, se encuentra la Suscripciones y categorías denominadas "SER" “HACER” “TENER” y “TRASCENDER”, que permiten a su beneficiario acceso limitado al contenido correspondiente a cada paquete (incluidos los streaming de FTX Live y de nuestro partner FTX Live ) ofrecido en la Plataforma al vencimiento de su Suscripción para todo el contenido publicado en esa fecha (en adelante, la “Suscripción FTX Live”).
                                FTX Live también ofrece a los titulares de cualquiera de sus suscripciones, la posibilidad de obtener ventajas y beneficios, denominadas en el presente documento como “comisiones y bonos” particularmente establecidos en cada membresía y a adquirirse bajo el ejercicio de promoción y venta de una nueva Suscripción gracias a su intervención o referencia. <br><br>

                                <b style="font-size: 20px;">Preámbulo:</b><br><br>

                                El instructor trabaja como instructor y especialista en un campo de acción, en particular y desea poner videos de capacitación a disposición de FTX Live. Las Partes desean comprometerse mutuamente con lo siguiente:<br>
                            </div>

                            <div class="mt-3 legal-titles" id="contrato-instructor-item-2">2.- Objeto del Contrato</div>
                            <div class="mt-2 legal-text">
                                Las Partes acuerdan que el objeto de este Contrato es regular contractualmente los servicios de capacitación, instrucción y apoyo a las personas orientados al desarrollo de habilidades específicas en el sector personal, profesional o financiero; los videos de capacitación están disponibles para los suscriptores en la plataforma de aprendizaje electrónico de FTX Live (la "Plataforma") proporcionada por el Instructor (el "Contenido") y la remuneración por este Contenido es cobrada por FTX Live.
                            </div>

                            <div class="mt-3 legal-titles" id="contrato-instructor-item-3">3.- Remuneración</div>
                            <div class="mt-2 legal-text">
                                Las Partes acuerdan que la remuneración que FTX Live pagará al Instructor por el Contenido Contratado resultará del reparto mensual del 10% del valor de la membresía mensual/anual/vitalicia correspondiente a su modulo, siempre y cuando cumpla con el # mínimo de vistas y compras requeridas, el cual deberá ser mayor a 50 tickets generados por la venta y la renovación de planes educativos cada mes, excluyendo los USD49 (cuarenta y nueve dólares estadounidenses) correspondientes a la licencia FTX Live y destinados a la gestión y administración de las herramientas del programa FTX Live, cargos bancarios, impuestos y cualquier tarifa relacionada con la producción del Contenido.<br><br>

                                Cada mes, los resultados del Instructor se calcularán de acuerdo con la cantidad de personas que han seguido y comprado la (s) formación (es) del Instructor, facilitada en el módulo y bajo el costo correspondiente a su expertiz., según un algoritmo y reglas definidas por FTX Live, que pueden causar fluctuaciones que el Instructor acepta, y que pueden ser modificado por FTX Live. Al comienzo de cada mes, FTX Live enviará por correo electrónico al Instructor un informe detallado de los resultados generados por la (s) formación (es) del Instructor durante el mes anterior (el "Informe mensual").<br><br>

                                Al recibir el Informe Mensual, el Instructor debe emitir la factura correspondiente a FTX Live. La contraprestación se abonará mensualmente, a partir del día 15 de cada mes siguiente al envío de la correspondiente factura, a la cuenta bancaria del Instructor, una vez que su formación haya sido puesta en la plataforma por un período mínimo de 30 (treinta ) días.
                                El monto mínimo por cada pago realizado por FTX Live es USD149 (ciento cuarenta y nueve dólares estadounidenses). Si el monto indicado en una factura mensual es menor a USD 149, este monto será transferido a las próximas facturas mensuales y será liquidado por FTX Live cuando el monto total de facturas adeudadas al Instructor haya alcanzado los USD 149.
                            </div>

                            <div class="mt-3 legal-titles" id="contrato-instructor-item-4">4.- Naturaleza del contrato</div>
                            <div class="mt-2 legal-text">
                                Dada la naturaleza de este Acuerdo, la relación entre FTX Live y el Instructor es la de un contratista independiente y ambas Partes acuerdan que no se consideran ni deben considerarse agentes o empleados del otro. Este Contrato no establece una relación de subordinación como la de un empleador y un empleado, una asociación o una empresa conjunta.
                            </div>

                            <div class="mt-3 legal-titles" id="contrato-instructor-item-5">5.- Obligaciones del instructor</div>
                            <div class="mt-2 legal-text">
                                Bajo este Contrato, el Instructor tendrá las siguientes obligaciones:
                                Proporcionar el Contenido con total responsabilidad, integridad y diligencia.
                                No distribuya gratuitamente los cursos de formación encomendados a FTX Live en ningún medio.<br><br>

                                No vender el Contenido producido por FTX Live o contenido similar por sus propios medios a un tercero en cualquier medio.<br><br>

                                En el caso de la producción personal por parte del Instructor de los entrenamientos puestos en la Plataforma, no vender sus entrenamientos sin informar a FTX Live por escrito para generar los acuerdos correspondientes y mantener siempre la mejor relación y distinción de la propuesta de valor de FTX Live.<br><br>

                                Otorgar a FTX Live una licencia exclusiva para todo el mundo, exclusiva, libre de derechos, transferible y asignable para usar el Contenido, el derecho a reproducirlo, alojarlo, crear copias técnicas, distribuirlo, comunicarlo al público, modificarlo, analizarlo, visualizarlo y ejecutarlo con el único fin de operar, promover y mejorar la Plataforma.<br><br>

                                Garantizar a FTX Live frente a cualquier recurso o acción que se le pueda interponer por cualquier causa, con motivo de la cesión cedida, a los autores, beneficiarios, editores y en general a cualquier persona que considere tener algún derecho para hacer valer sobre todo o parte del Contenido o sobre su uso.<br><br>

                                Garantizar a FTX Live el ejercicio pacífico de los derechos cedidos y en particular que no introducirá en su obra reminiscencias o semejanzas que vulneren los derechos de un tercero; que no ha realizado ni hará ningún acto que pueda impedir o interferir con el pleno disfrute por FTX Live de los derechos que le confiere esta cesión. En general, el Instructor deberá abstenerse de cualquier hecho que pueda obstaculizar la explotación de la obra por parte de FTX Live.
                            </div>

                            <div class="mt-3 legal-titles" id="contrato-instructor-item-6">6.- Derechos del instructor</div>
                            <div class="mt-2 legal-text">
                                Bajo este Contrato, el Instructor tiene los siguientes derechos:<br><br>

                                Recibir el pago dentro de los plazos especificados en la cláusula 2 de este Contrato.
                                Tener acceso en la Plataforma a su formación.<br><br>

                                En el caso de la producción personal por parte del Instructor de sus entrenamientos colocados en la Plataforma de FTX Live, el Instructor puede revender el contenido de estos entrenamientos siempre que haya notificado a FTX Live por escrito y obtenido su aprobación previa por escrito con las condiciones de venta definidas y en particular el precio de venta, el comprador y / o la plataforma en la que estará disponible la formación.<br><br>

                                Utilizar el contenido intelectual del Contenido (es decir, el conocimiento / know-how del Instructor y su conocimiento que hizo posible la producción del Contenido) en medios y formas distintas del Contenido y la Plataforma.<br><br>

                                FTX Live prohíbe estrictamente cualquier contenido que infrinja los derechos de autor en su Plataforma y eliminará cualquier Contenido de este tipo que viole los derechos de propiedad intelectual o derechos de imagen de otros.
                            </div>

                            <div class="mt-3 legal-titles" id="contrato-instructor-item-7">7.- Obligaciones de FTX Live</div>
                            <div class="mt-2 legal-text">
                                Bajo este Acuerdo, FTX Live tiene las siguientes obligaciones:<br><br>

                                Pagar oportunamente la contraprestación a que se refiere la cláusula 2 de este Acuerdo.
                                No ofrezca ni venda la formación del Instructor fuera de su Plataforma.<br><br>

                                Proteja la información personal del Instructor de acuerdo con las leyes y regulaciones aplicables en materia de protección de datos personales y nunca la comunique a un tercero sin el consentimiento por escrito del Instructor.<br><br>

                                Todo el contenido, fotos, cursos de instructor, solo se utilizarán en el contexto definido por FTX Live a través de su sitio web y / o redes sociales.<br><br>

                                FTX Live nunca promoverá ni utilizará la imagen del Instructor o del experto fuera de este contexto sin su consentimiento por escrito.
                            </div>

                            <div class="mt-3 legal-titles" id="contrato-instructor-item-8">8.- Derechos de FTX Live</div>
                            <div class="mt-2 legal-text">
                                FTX Live tiene los siguientes derechos:<br><br>

                                Recibir el Contenido amparado por este Contrato, con diligencia, honestidad, prontitud y profesionalismo en la ejecución del mismo;<br><br>

                                Que cualquier anomalía que pueda surgir en el contexto del Contenido será tratada por el Instructor, incluidos los problemas de derechos de autor;<br><br>

                                Editar los videos producidos a su conveniencia, de acuerdo con las reglas de edición y cualidades que estime adecuadas.<br><br>

                                Obtener del Instructor durante toda la duración del Contrato un derecho y una licencia limitados, exclusivos, no sublicenciables, intransferibles e intransferibles para utilizar la propiedad intelectual del contenido de la formación del Instructor de acuerdo con las condiciones definidas por este Contrato.
                            </div>

                            <div class="mt-3 legal-titles" id="contrato-instructor-item-9">9.- Duración del contrato</div>
                            <div class="mt-2 legal-text">
                                Este Contrato se concluye por un período de un (1) año a partir de la fecha de firma. Puede ser prorrogado por acuerdo tácito por períodos sucesivos de un (1) año cada uno. Podrá ser rescindido unilateralmente por cualquiera de las Partes, sujeto al cumplimiento de una notificación previa en las condiciones descritas en la cláusula 9.
                            </div>

                            <div class="mt-3 legal-titles" id="contrato-instructor-item-10">10.- Terminación del contrato</div>
                            <div class="mt-2 legal-text">              
                                En el caso de que, por cualquier motivo, FTX Live decida renunciar a todo o parte del Contenido amparado por este Acuerdo, deberá informar al Instructor con 15 (quince) días de anticipación por correo electrónico con acuse de recibo.
                                El Contrato se rescindirá automáticamente dentro de los 15 (quince) días posteriores al envío del correo electrónico.<br><br>

                                El Instructor que por cualquier motivo decida renunciar a todo o parte del Contenido amparado por este Contrato se encuentra en la misma situación y deberá informar a FTX Live con 15 (quince) días de antelación por correo electrónico con acuse de recibo enviado a la dirección indicada en este Acuerdo. El Contrato se rescindirá automáticamente dentro de los 15 (quince) días posteriores al envío del correo electrónico.<br><br>

                                En el caso de que el servicio del Instructor no cumpla con los requisitos de calidad definidos por FTX Live bajo este Contrato o de vez en cuando por escrito, o el servicio del Instructor no cumpla con el plan de entrenamiento y Aspectos pedagógicos definidos por escrito con el equipo de producción de vez en cuando, FTX Live se reserva el derecho de no publicar la formación del Instructor en su Plataforma.<br><br>

                                El Instructor podrá entonces obtener los videos sin procesar de su entrenamiento sujeto a pagarle a FTX Live los costos de producción, correspondientes a una suma global de USD 1.000
                            </div>

                            <div class="mt-3 legal-titles" id="contrato-instructor-item-11">11.- Modificación del contrato</div>
                            <div class="mt-2 legal-text">
                                FTX Live se reserva el derecho de modificar unilateralmente cualquier estipulación de este Contrato que se considere no sustancial, mediante el envío de una notificación por escrito al Instructor, que el Instructor acepta.<br><br>

                                Cualquier modificación contractual considerada sustancial solo es válida de mutuo acuerdo por escrito y firmada por ambas Partes.
                            </div>

                            <div class="mt-3 legal-titles" id="contrato-instructor-item-12">12.- Capacidad</div>
                            <div class="mt-2 legal-text">
                                El Instructor y FTX Live reconocen y garantizan que:<br><br>

                                Este Acuerdo y el cumplimiento de sus respectivas obligaciones en virtud de este Acuerdo no constituyen ni constituirán una violación de ninguna otra consulta, no divulgación, confidencialidad u otro acuerdo del que sean partes;<br><br>

                                Tienen plena capacidad, poder y jurisdicción para ejecutar este Acuerdo y cumplir sus términos;<br><br>

                                Durante la ejecución del Contrato, las Partes no deben infringir, desviar o violar ninguna patente, derecho de autor, secreto comercial, marca registrada o cualquier otro derecho de propiedad intelectual de terceros;<br><br>

                                El Instructor garantiza que es el propietario de los derechos de propiedad intelectual relacionados con las capacitaciones que ofrece a FTX Live y que estas capacitaciones no violan los derechos de propiedad intelectual de terceros. El Instructor se compromete a indemnizar y proteger a FTX Live contra todos los reclamos, acciones, responsabilidades, daños, pérdidas, multas, sanciones, costos y gastos, incluidos los honorarios razonables de abogados y expertos, que surjan de una violación. real o alegado de esta cláusula 11.
                            </div>

                            <div class="mt-3 legal-titles" id="contrato-instructor-item-13">13.- Datos personales</div>
                            <div class="mt-2 legal-text">
                                El Instructor acepta que FTX Live recopila, almacena y procesa datos, incluidos los datos personales relacionados con el Instructor, en el contexto de la ejecución de este Contrato y para las necesidades del funcionamiento de la Plataforma dentro del marco de las leyes y regulaciones aplicables y Las políticas de privacidad de FTX Live están disponibles para el instructor.
                            </div>

                            <div class="mt-3 legal-titles" id="contrato-instructor-item-14">14.- Divisibilidad</div>
                            <div class="mt-2 legal-text">
                                Si una de las disposiciones de este Contrato se considera inválida o inaplicable, la validez y aplicabilidad de las demás disposiciones del Contrato no se verán afectadas.
                            </div>

                            <div class="mt-3 legal-titles" id="contrato-instructor-item-15">15.- Ley Aplicable</div>
                            <div class="mt-2 legal-text">
                                La ejecución e interpretación de este Acuerdo se realiza de conformidad con las leyes de México, país donde se lleva a cabo la representación, administración, producción y operación de la plataforma.
                            </div>

                            <div class="mt-3 legal-titles" id="contrato-instructor-item-16">16.- Jurisdicción</div>
                            <div class="mt-2 legal-text">
                                El contrato está sujeto a la ley mexicana. Para todas las disputas que surjan del Contrato, incluidas las relacionadas con su validez, interpretación, ejecución, terminación y / o las consecuencias de su terminación, las Partes otorgan jurisdicción al Tribunal Comercial de México.<br><br>
                                Después de haber leído este Acuerdo en su totalidad y conocer su contenido y alcance legal, las Partes aceptan sus términos y condiciones.
                            </div>
                        </div>
                    </div>
                </div>

                <div class="tab-pane pt-2 pb-2 pr-2 pl-2" id="contrato-afiliado">
                    <div class="row">
                        <div class="col-md-3 d-none d-lg-block d-xl-block" >
                            <div class="list-group list-group-legal" style="height: 500px; overflow-y: scroll;">
                                <div style="height: auto;">
                                    <a class="list-group-item legal-item ancla" href="#" data-ancla="contrato-afiliado-item-1">1.- Antecedentes entre los firmantes</a>
                                    <a class="list-group-item legal-item ancla" href="#" data-ancla="contrato-afiliado-item-2">2.- Objeto del contrato</a>
                                    <a class="list-group-item legal-item ancla" href="#" data-ancla="contrato-afiliado-item-3">3.- Condiciones de ejecución del contrato</a>
                                    <a class="list-group-item legal-item ancla" href="#" data-ancla="contrato-afiliado-item-4">4.- Independencia de las Partes</a>
                                    <a class="list-group-item legal-item ancla" href="#" data-ancla="contrato-afiliado-item-5">5.- Comisiones pagadas al Asociado FTX Live</a>
                                    <a class="list-group-item legal-item ancla" href="#" data-ancla="contrato-afiliado-item-6">6.- Duración del contrato</a>
                                    <a class="list-group-item legal-item ancla" href="#" data-ancla="contrato-afiliado-item-7">7.- Intuitu Personae</a>
                                    <a class="list-group-item legal-item ancla" href="#" data-ancla="contrato-afiliado-item-8">8.- Terminación Anticipada</a>
                                    <a class="list-group-item legal-item ancla" href="#" data-ancla="contrato-afiliado-item-9">9.- Consecuencias de la rescisión del contrato</a>
                                    <a class="list-group-item legal-item ancla" href="#" data-ancla="contrato-afiliado-item-10">10.- Derechos de propiedad intelectual e industrial</a>
                                    <a class="list-group-item legal-item ancla" href="#" data-ancla="contrato-afiliado-item-11">11.- Confidencialidad</a>
                                    <a class="list-group-item legal-item ancla" href="#" data-ancla="contrato-afiliado-item-12">12.- Modificaciones</a>
                                    <a class="list-group-item legal-item ancla" href="#" data-ancla="contrato-afiliado-item-13">13.- Ley aplicable y atribución de competencia</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-9">
                            <div class="legal-titles" id="contrato-afiliado-item-1"> 1.- Antecedentes entre los firmantes</div>
                            <div class="mt-2 legal-text">
                                1.1 - FENTTIX CORP, con domicilio en Panama City y bajo el nombre comercial de: Fenttix Presentan a continuación las siguientes condiciones generales de uso y venta, conocidas como CGUV de la marca y producto: FTX Live, referenciadas en estas especificaciones como: FTX Live, proporcionando un marco legal para los términos de prestación de sus servicios de educación en línea al sitio web: www.ftxlive.com , denominado como: el "Sitio" y definiendo las condiciones de acceso y uso de los servicios del Sitio por "el Usuario".<br><br>

                                La organización es representada, administrada y operada desde Guadalajara, Jalisco, México por la Lic. Noemy Alemán Cabrera y en lo sucesivo, "FTX Live" por un lado, y<br>
                                1.2 - La persona física o jurídica abajo firmante y, en adelante, el "Asociado FTX Live" por otro lado, en lo sucesivo denominadas colectivamente las "Partes" o individualmente una "Parte".<br><br>

                                <b>Lo siguiente se explica de antemano:</b><br><br>
                                FTX Live (FTX Live) es una plataforma de e-learning que ofrece un catálogo de cursos de formación variados accesibles en el sitio web: www.ftxlive.com  en adelante, la “Plataforma”) diseñada para el desarrollo personal, profesional y financiero, la cual facilita su contenido a través de diferentes fórmulas de suscripción en función de las opciones suscritas por los suscriptores (en adelante: en lo sucesivo denominados conjuntamente la "Suscripción").<br><br>

                                Entre las Suscripciones que ofrece FTX Live, se encuentra la Suscripciones y categorías denominadas "SER" “HACER” “TENER” y “TRASCENDER”, que permiten a su beneficiario acceso limitado al contenido correspondiente a cada paquete (incluidos los streaming de FTX Live y de nuestro partner FTX Live ) ofrecido en la Plataforma al vencimiento de su Suscripción para todo el contenido publicado en esa fecha (en adelante, la “Suscripción FTX Live”).
                                FTX Live también ofrece a los titulares de cualquiera de sus suscripciones, la posibilidad de obtener ventajas y beneficios, denominadas en el presente documento como “comisiones y bonos” particularmente establecidos en cada membresía y a adquirirse bajo el ejercicio de promoción y venta de una nueva Suscripción gracias a su intervención o referencia. <br>
                                El asociado de FTX Live que ha contratado una Suscripción FTX Live para para beneficiarse del acceso a la Plataforma, y ha manifestado el deseo de poder beneficiarse de las ventajas mencionadas anteriormente en el caso de que las Suscripciones sean contratadas por terceros gracias a su intervención o referencia.<br>
                                Las Partes se han unido para definir los términos y condiciones bajo los cuales el Asociado FTX Live se beneficia de ciertas ventajas en este contexto.<br>
                                Se especifica en este documento que cada una de las partes ha tenido tiempo que considera suficiente para examinar y analizar este contrato, negociado de común acuerdo, en caso de ser necesario, recurriendo al asesoramiento de su elección si fuera necesario.
                                Por lo tanto, después de haber tenido toda la información útil para aclarar su consentimiento, FTX Live y el asociado FTX Live se acercaron para concluir este contrato de intermediación (en adelante, el “Contrato”).<br><br>
                                Dicho esto, se acordó lo siguiente:
                            </div>

                            <div class="mt-3 legal-titles" id="contrato-afiliado-item-2">2.- Objeto del contrato</div>
                            <div class="mt-2 legal-text">
                                FTX Live encomienda al asociado de FTX Live que lo acepte, la posibilidad de promocionar las Suscripciones a personas o empresas susceptibles de estar interesadas en ellas. La dirección comercial de FTX Live pondrá en contacto con los nuevos suscriptores de la Plataforma. No tendrá el poder de negociar y/o celebrar contratos adicionales a este sin el consentimiento de la dirección general de FTX Live y dichos suscriptores ni dará beneficios exclusivos ni fuera de los ya marcados en cada membresía y especificados en este y los contratos establecidos en la parte legal de la plataforma. <br><br>

                                En cualquier caso, FTX Live conservará plena libertad para aceptar o rechazar, sin tener que justificarlo, contratar uno o más suscriptores potenciales presentados por el asociado FTX Live, denominándolos bajo el rol de: Mentor y formalizando su relación bajo un estricto criterio legal establecido en su respectivo contrato.
                                De acuerdo con lo dispuesto entre ambas partes, el asociado FTX Live tiene la calidad de promotor y comerciante, ejerciendo su profesión con total independencia y libertad y, por lo tanto, puede desplegar cualquier actividad de su elección, realizar cualquier negocio y otras operaciones por cuenta propia fuera de su actividad en los términos del Contrato, sujeto a las estipulaciones previstas en el Contrato.<br><br>

                                En consecuencia, el asociado FTX Live declara que nunca ha sido objeto de condena penal, ni de ninguna de las medidas encaminadas a restringir su capacidad comercial, lo que FTX Live reconoce en base a esta declaración.<br><br>

                                El Asociado FTX Live no podrá en ningún caso reclamar el desconocimiento de ninguna de las cláusulas establecidas en este contrato u otros anexos a la sección legal del sitio: www.ftxlive.com asumiendo este último todos los costos y gastos relacionados con el desempeño de su misión y declarando estar plenamente satisfecho con las condiciones. resultados financieros derivados del Contrato.<br><br>

                                Como corredor que ejerce una profesión comercial independiente, el Asociado FTX Live hará su propio negocio y asumirá el costo de todos los impuestos y aranceles fiscales y parafiscales, así como todas las contribuciones sociales que correspondan en el país de residencia y comercialización.
                            </div>

                            <div class="mt-3 legal-titles" id="contrato-afiliado-item-3">3.- Condiciones de ejecución del contrato</div>
                            <div class="mt-2 legal-text">
                                3.1.- El Asociado FTX Live deberá realizar todos los pasos y trámites que sean útiles y necesarios para el cumplimiento de su misión según se define en el artículo “Objeto del Contrato”.<br><br>

                                Por lo tanto, el Asociado FTX Live debe informar a los posibles suscriptores de todas las condiciones comerciales, administrativas, legales y financieras relacionadas con las Suscripciones, sean esquemas de comisiones, bonificaciones, pagos, políticas y en general todos los requerimientos que deberá aceptar para incorporarse a la plataforma.<br><br>

                                El asociado FTX Live determinará por sí solo sus métodos de trabajo, de forma independiente y sin ningún vínculo de subordinación con FTX Live. En consecuencia, el asociado FTX Live asegurará los riesgos inherentes a su actividad personal. El Asociado FTX Live será así personalmente responsable de las pólizas de seguro necesarias para el ejercicio de su profesión, en particular en materia de responsabilidad civil.<br><br>

                                Los precios y condiciones de las Suscripciones son establecidos por FTX Live, especificándose que estas últimas son escalables. Todos los cambios en las condiciones de las Suscripciones, así como las variaciones de precio relacionadas, se comunicarán al Asociado FTX Live antes de su implementación.<br><br>

                                Además, el asociado FTX Live debe asegurarse en particular de que ni la apariencia de sus instalaciones profesionales, ni el estado de su equipo o la calidad de su servicio, puedan dar al público y suscriptores o suscriptores potenciales un Imagen desfavorable de FTX Live.
                                El Asociado FTX Live se compromete a comportarse siempre con FTX Live como un asociado leal y de buena fe.<br><br>

                                3.2.- El Asociado FTX Live se compromete a respetar la ética y la moralidad en el marco de la actividad que desarrolla en aplicación de la presente, y en particular al respeto de la “Carta de ética” FTX Live del que declara haber cursado. conocimiento previo a la firma del presente, que aparece en la sección de “información legal” de la Plataforma, y que describe los comportamientos que el Asociado FTX Live debe asegurarse de respetar en el contexto de sus intercambios con prospectos suscritos.<br><br>

                                3.3.- FTX Live proporcionará al asociado de FTX Live el material publicitario y la documentación necesaria para su actividad en formato digital, así como varias herramientas de formación dedicadas, dentro del área del back office de “FTX Live” que aparece dentro de la Plataforma. El Asociado FTX Live se compromete a velar por la conservación de los elementos así puestos a su disposición y a evitar su divulgación a terceros.
                                No se podrá realizar el uso o difusión por parte del Asociado FTX Live de otros medios y / o herramientas de comunicación o cualquier otro documento que mencione a FTX Live, sus marcas, logotipos o servicios y / o cualquier modificación de los medios existentes por parte del Asociado FTX Live. que en el respeto de la imagen de marca de FTX Live. <br><br>

                                Como tal, el asociado FTX Live se compromete a cesar todo uso de un medio de comunicación que FTX Live considere no acorde con la imagen de la red y / o su ética, en un plazo máximo de 48 horas desde la notificación de FTX Live y para eliminar dicho contenido contencioso dentro de un período máximo de 15 días desde esta notificación. En caso contrario, FTX Live podrá reclamar la rescisión del Contrato en las condiciones definidas en el artículo "Rescisión anticipada".<br><br>

                                3.4.- Por la presente, FTX Live otorga al Asociado de FTX Live un link de referidos disponible en el Backoffice y que probablemente otorgue reducciones en los costos de las membresías a los nuevos suscriptores. 

                                <div class="ml-5 mr-5 mt-3 mb-3 table-bordered">
                                    <table>
                                        <thead>
                                            <th class="text-center">Tipo de Membresía</th>
                                            <th class="text-center">Costo Mensual con Link de Referido FTX Live</th>
                                            <th class="text-center">Comisión mensual para el asociado FTX Live</th>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td class="text-center">Suscripción mensual Membresía del VER<br> (con link de referencia FTX Live)</td>
                                                <td class="text-center">$ 9.99 / mes</td>
                                                <td class="text-center">$ 2.99 / mes</td>
                                            </tr>
                                            <tr>
                                                <td class="text-center">Suscripción mensual Membresía del DAR<br> (con link de referencia FTX Live)</td>
                                                <td class="text-center">$ 19.99 / mes</td>
                                                <td class="text-center">$ 5.99 / mes</td>
                                            </tr>
                                            <tr>
                                                <td class="text-center">Suscripción mensual Membresía del GANAR<br> (con link de referencia FTX Live)</td>
                                                <td class="text-center">$ 29.99 / mes</td>
                                                <td class="text-center">$ 8.99 / mes</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>

                                A solicitud del asociado de FTX Live, FTX Live se compromete a saldar todas las comisiones comprobables por las ventas efectivas bajo los links de referidos de cada asociado y para lo cual se configura un código específico incrustado en el mismo link de referencia, el cual permite mayor control y seguridad. <br><br>

                                3.5: En general y bajo el compromiso de actuar con la mayor ética establecida y ser parte de la comunidad, el asociado FTX Live debe brindar información exacta sobre el avance de su misión y justificar su debida diligencia ante la primera solicitud de FTX Live.<br><br>

                                La colaboración del asociado FTX Live y FTX Live requiere un intercambio regular de información, por cualquier medio apropiado, en particular por el Backoffice, el correo electrónico, la herramienta Telegram Messenger, el grupo dedicado de Facebook y otras redes sociales, pero también las videoconferencias / reuniones telefónicas a las que las partes participarán, teniendo en cuenta su respectiva disponibilidad.
                            </div>

                            <div class="mt-3 legal-titles" id="contrato-afiliado-item-4">4.- Independencia de las Partes</div>
                            <div class="mt-2 legal-text">
                                Todos los actos realizados por el Asociado FTX Live en el marco de la ejecución del Contrato se realizan con total independencia y con exclusión de cualquier relación de subordinación, siendo cada una de las Partes responsable del cumplimiento de la normativa aplicable, relativa a la actividad que su propio.<br><br>

                                El Asociado de FTX Live reconoce que FTX Live de ninguna manera le ha otorgado un mandato representativo y, en consecuencia, se reserva el derecho de elegir cuidadosamente a sus socios, representantes, comisionistas, agentes, promotores, influencer, mentores, afiliados o asociados de FTX Live para actuar en nombre y / o en nombre de FTX Live.<br><br>

                                El Asociado FTX LiveA no debe recibir fondos bajo ninguna circunstancia a nombre y / o en representación de FTX Live, salvo las establecidas en este documento y/o la sección legal de la plataforma por concepto de comisiones y bonos correspondientes a la promoción con venta efectiva de las membresías “Ser”, “Hacer”, “Tener” y “Trascender” o cualquier otra derivada del mismo contenido y programa de compensaciones.
                            </div>

                            <div class="mt-3 legal-titles" id="contrato-afiliado-item-5">5.- Comisiones pagadas al Asociado FTX Live</div>
                            <div class="mt-2 legal-text">
                                A cambio de ejecución exitosa de la referencia del asociado FTX Live resultante del presente, FTX Live se compromete a pagar al asociado FTX Live las comisiones definidas en la cláusula 3.4 del Contrato sobre una billetera digital y accesible en el Backoffice de la plataforma.
                                El Asociado FTX Live solo adquirirá el derecho a la comisión si la transacción es por una venta efectiva, proporcionado exclusivamente a través de la intervención del comité de administración de FTX Live confirmado y auditado por el departamento de calidad de la organización. <br><br>

                                El pago de las comisiones adeudadas se realizará después de la deducción de los impuestos adeudados o de la retención en origen. El Asociado FTX Live se compromete así a declarar a las autoridades competentes la compensación recibida en este contexto, y a pagar todos los derechos e impuestos relacionados, sin que FTX Live pueda preocuparse.<br><br>

                                El Asociado FTX Live tendrá la opción de transferir los fondos disponibles en billetera a su cuenta bancaria, registrada desde su inscripción a la plataforma, disponible en el Backoffice, siendo dicha transferencia efectiva dentro de los 7 días a partir de la fecha en que el Asociado FTX Live realiza la solicitud.
                                También se aplicarán cargos adicionales equivalentes a US $10 si la solicitud de transferencia del Asociado FTX Live es a paypal o algún otro banco fuera del convenio y solo ocurre cuando el saldo disponible en su billetera es inferior a US $ 49. Estos costos adicionales no se aplican en caso de rescisión del Contrato en las condiciones definidas en el artículo “Terminación anticipada” del Contrato.<br><br>

                                El pago de las comisiones adeudadas al Asociado FTX Live se realiza en dólares estadounidenses o en la moneda local aplicable en el país del Asociado FTX Live cuando esta moneda sea admitida por FTX Live y si el Asociado FTX Live así lo elige. En su caso, la conversión del importe a abonar en la cuenta bancaria del Asociado FTX Live en moneda local se realizará mediante la herramienta que especifique la organización de FTX Live, a la tasa vigente el día en que FTX Live inicie la transferencia.<br><br>

                                En caso de cancelación de una compra por parte de un suscriptor proporcionada por el asociado de FTX Live, las comisiones relacionadas, si las hubiera, recibidas por el Asociado FTX Live deben devolverse a FTX Live. En caso de que se incumpla alguna de las condiciones previstas en el Contrato, las comisiones relacionadas recibidas por el Asociado FTX Live deberán devolverse a FTX Live.<br><br>

                                Las Partes acuerdan expresamente a este efecto que la compensación puede tener lugar de pleno derecho entre todas las sumas adeudadas por FTX Live al Asociado de FTX Live en aplicación del presente, y todas las sumas adeudadas por el Asociado de FTX Live a FTX Live. Esta compensación tendrá lugar dentro la billetera de la plataforma y asignada a su numero de afiliación correspondiente.
                            </div>

                            <div class="mt-3 legal-titles" id="contrato-afiliado-item-6">6.- Duración del contrato</div>
                            <div class="mt-2 legal-text">
                                El Contrato es indivisible del contrato de Suscripción FTX Live A suscrito por el Asociado FTX Live durante la validación del documento de Condiciones Generales de Uso y Venta, y concluido por la duración de este.<br><br>

                                El Contrato podrá renovarse por pacto tácito, y finalizará automáticamente afín con la extinción (sea cual sea la causa: finalización de su plazo, extinción anticipada, vigencia o desvinculación del medio de pago etc.) de la Suscripción de que se trate.<br><br>

                                Esta indivisibilidad no es recíproca, y cada una de las Partes tendrá la opción de rescindir este Contrato en las condiciones previstas en las cláusulas 7 y 8 de este documento, sin que ello dé lugar a la rescisión del contrato relativo a la Suscripción. 
                            </div>

                            <div class="mt-3 legal-titles" id="contrato-afiliado-item-7">7.- Intuitu Personae</div>
                            <div class="mt-2 legal-text">
                                El Contrato se concluye en consideración de la persona del Asociado FTX Live, quien se compromete a involucrarse personalmente en el desempeño de los objetivos establecidos, derivada de estos presentes.<br><br>

                                En consecuencia, el Asociado FTX Live no puede transferir, ceder o subcontratar la totalidad o parte de los derechos y / u obligaciones derivados de estos a un tercero sin el consentimiento previo por escrito de FTX Live.<br><br>

                                Por su parte, FTX Live queda libre de transferir, ceder o subcontratar la totalidad o parte de los derechos y / u obligaciones derivados de estos a cualquier tercero de su elección, sin que el Asociado FTX Live pueda invocarlos a efectos de cancelar el contrato.
                            </div>

                            <div class="mt-3 legal-titles" id="contrato-afiliado-item-8">8.- Terminación anticipada</div>
                            <div class="mt-2 legal-text">
                                El Contrato podrá ser rescindido anticipadamente, por cualquiera de las Partes, en caso de incumplimiento de cualquiera de las obligaciones.<br><br>

                                La rescisión anticipada se producirá quince días después de la notificación formal por correo certificado con acuse de recibo a la Parte incumplidora, indicando la intención de aplicar esta cláusula de rescisión expresa, que ha quedado sin efecto.<br><br>

                                En particular, se considerará como una falla que justifica la implementación de esta cláusula, sin que esta lista sea exhaustiva:<br><br>

                                - el incumplimiento por parte del asociado de una de las obligaciones derivadas del artículo 2;<br>
                                - incumplimiento de la normativa aplicable por parte del Asociado FTX Live y / o de la imagen de marca de FTX Live;<br>
                                - incumplimiento por parte de FTX Live de su compromiso de pagar una comisión adeudada por FTX Live al asociado de FTX Live en la fecha de vencimiento;<br>
                                - Incumplimiento por parte de FTX Live de su compromiso de recompra de membresías por parte del asociado FTX Live.
                            </div>

                            <div class="mt-3 legal-titles" id="contrato-afiliado-item-9">9.- Consecuencias de la rescisión del contrato</div>
                            <div class="mt-2 legal-text">
                                En caso de rescisión del Contrato, cualquiera que sea la causa, el compromiso del Asociado FTX Live finalizará automáticamente.<br><br>

                                No obstante lo anterior, en caso de rescisión del Contrato por un motivo distinto a la rescisión del Contrato por culpa del Asociado FTX Live, FTX Live se compromete a abonar a este último las comisiones relativas y acumuladas a la fecha de su salida.<br><br>

                                El Asociado FTX Live también puede seguir teniendo acceso limitado al contenido correspondiente a cada paquete adquirido (incluidos los streaming de FTX Live y de nuestro partner FTX Live ) ofrecido en la Plataforma al vencimiento de su Suscripción para todo el contenido publicado en esa fecha y al Backoffice, sujeto a disponibilidad de la Plataforma, siendo FTX Live libre de rescindirla en cualquier momento.<br><br>

                                En cualquier caso, el Asociado FTX Live no podrá reclamar ninguna compensación al finalizar el Contrato.
                            </div>

                            <div class="mt-3 legal-titles" id="contrato-afiliado-item-10">10.- Derechos de propiedad intelectual e industrial</div>
                            <div class="mt-2 legal-text">
                                El Asociado FTX Live tiene derecho a utilizar las marcas, logotipos y signos distintivos de FTX Live para la promoción y venta exclusiva de Suscripciones, en estricto cumplimiento de estas condiciones.<br><br>

                                El Asociado FTX Live no adquiere ningún derecho de propiedad o licencia, cualquiera que sea la base o el contenido, sobre estas marcas comerciales y signos distintivos.
                                Bajo ninguna circunstancia el Asociado FTX Live está autorizado a registrar una marca y / o cualquier derecho de propiedad intelectual o industrial de cualquier tipo y / o un nombre de dominio que comprenda los términos de FTX Live
                            </div>

                            <div class="mt-3 legal-titles" id="contrato-afiliado-item-11">11.- Confidencialidad</div>
                            <div class="mt-2 legal-text">
                                Las Partes se comprometen a mantener la confidencialidad de la información recopilada durante o durante la aplicación del Contrato.<br><br>

                                Tomarán todas las precauciones útiles para evitar la divulgación prohibida o el uso de información confidencial por parte de sus empleados, subagentes o cualquier profesional que trabaje en su nombre.<br><br>

                                Esta obligación sobrevivirá a la rescisión del Contrato sin límite de tiempo, cualquiera que sea la causa de la rescisión (vencimiento, rescisión anticipada), siempre que la información en cuestión no haya pasado al dominio público
                            </div>

                            <div class="mt-3 legal-titles" id="contrato-afiliado-item-12"> 12.- Modificaciones</div>
                            <div class="mt-2 legal-text">
                                Para ser exigible contra las Partes, cualquier modificación realizada al Contrato debe ser objeto de una enmienda escrita firmada por las Partes.
                            </div>

                            <div class="mt-3legal-titles" id="contrato-afiliado-item-13"> 13.- Ley aplicable y atribución de competencia</div>
                            <div class="mt-2 legal-text">
                                El contrato está sujeto a la ley mexicana. Para todas las disputas que surjan del Contrato, incluidas las relacionadas con su validez, interpretación, ejecución, terminación y / o las consecuencias de su terminación, las Partes otorgan jurisdicción al Tribunal Comercial de México.
                            </div>
                        </div>
                    </div>
                </div>

                <div class="tab-pane pt-2 pb-2 pr-2 pl-2" id="condiciones-generales">
                    <div class="row">
                        <div class="col-md-3 d-none d-lg-block d-xl-block">
                            <div class="list-group list-group-legal">
                                <a class="list-group-item legal-item ancla" href="#" data-ancla="condiciones-generales-item-1">1.- Suscripción</a>
                                <a class="list-group-item ancla legal-item" href="#" data-ancla="condiciones-generales-item-2">2.- Facturación y rescisión</a>
                                <a class="list-group-item ancla legal-item" href="#" data-ancla="condiciones-generales-item-3">3.- Servicio FTX Live</a>
                                <a class="list-group-item ancla legal-item" href="#" data-ancla="condiciones-generales-item-4">4.- Contraseñas y acceso a la cuenta</a>
                                <a class="list-group-item ancla legal-item" href="#" data-ancla="condiciones-generales-item-5">5.- Tratamiento de datos personales</a>
                                <a class="list-group-item ancla legal-item" href="#" data-ancla="condiciones-generales-item-6">6.- Cookies</a>
                                <a class="list-group-item ancla legal-item" href="#" data-ancla="condiciones-generales-item-7">7.- Responsabilidad</a>
                                <a class="list-group-item ancla legal-item" href="#" data-ancla="condiciones-generales-item-8">8.- Derecho de desistimiento del Usuario</a>
                                <a class="list-group-item ancla legal-item" href="#" data-ancla="condiciones-generales-item-9">9.- Propiedad intelectual</a>
                                <a class="list-group-item ancla legal-item" href="#" data-ancla="condiciones-generales-item-10">10.- Varios</a>
                            </div>
                        </div>
                        <div class="col-md-9">
                            <div class="legal-text">
                                FENTTIX CORP, con domicilio en Panama City y bajo el nombre comercial de: Fenttix Presentan a continuación las siguientes condiciones generales de uso y venta, conocidas como CGUV de la marca y producto: FTX Live, referenciadas en estas especificaciones como: FTX Live, proporcionando un marco legal para los términos de prestación de sus servicios de educación en línea al sitio web: www.ftxlive.com , denominado como: el "Sitio" y definiendo las condiciones de acceso y uso de los servicios del Sitio por "el Usuario".<br><br>

                                El sitio FTX Live, ofrece un servicio de suscripción personalizado que permite a los usuarios acceder a su contenido a través de tutoriales de capacitación, transmitidos a través de wifi en cualquier modelo de PC, laptop, smartphone, tablet u otros dispositivos que puedan reproducir con wifi el sitio y su contenido.<br><br>

                                Estos términos y condiciones rigen el uso de nuestro servicio. Tal como se utilizan en este documento, las expresiones "servicio FTX Live", "nuestro servicio" o "el servicio" se refieren al servicio personalizado proporcionado por FTX Live que le permite buscar y ver su contenido , incluidas todas las funciones, recomendaciones, el Sitio y las interfaces de usuario, así como todo el Contenido de FTX Live y el software asociado con nuestro servicio. <br><br>

                                FTX Live invita a los usuarios a leer detenidamente estos T & C. La suscripción a cualquier membresía en el Sitio implica la aceptación del CGUV. Las características de cada suscripción se indican en la página dedicada del Sitio. <br><br>

                                Las fotografías de los especialistas, mentores y profesores si son contractuales, los gráficos y el resto de las ilustraciones fueron adquiridos mediante una biblioteca digital con una licencia pagada para la adquisición de dicho material.<br><br>

                                El Usuario reconoce haber leído y aceptado los TyC al marcar la casilla provista para hacerlo antes de suscribirse a una suscripción en línea. Estos TyC se comunican sistemáticamente al Usuario que los solicita.
                            </div>

                            <div class="mt-3 legal-titles" id="condiciones-generales-item-1">1.  Suscripción</div>
                            <div class="mt-2 legal-text">
                                1.1: Su suscripción FTX Live le permite el acceso al servicio de educación en línea (Contenido de FTX Live) de forma continua hasta su terminación o vencimiento, según las condiciones del paquete de suscripción. Para utilizar el servicio FTX Live, debe tener acceso a Internet y un dispositivo compatible con FTX Live, y debe proporcionarnos uno o más Métodos de pago. Un "Método de pago" significa un método de pago actual, válido y aceptado que puede actualizarse de vez en cuando y puede incluir el pago a través de su cuenta con un tercero. A menos que cancele su suscripción antes de la fecha de facturación, en donde nos reservamos el derecho de su ingreso a la academia a partir del día final de su período de facturación en curso. <br><br>

                                1.2: Podemos ofrecer diferentes paquetes de suscripción, incluidos paquetes promocionales especiales. Algunos de ellos pueden tener diferentes condiciones y restricciones, sobre las cuales se le informará cuando se registre o en otras comunicaciones que se le pongan a su disposición. Puede encontrar los detalles específicos de su suscripción a FTX Live visitando nuestro sitio web: www.ftxlive.com y haciendo clic en el enlace “términos y condiciones” disponible en la parte inferior de la página principal del sitio. <br><br>

                                1.3 : Precio. Cuando un usuario desea suscribirse a una suscripción al servicio FTX Live, el precio de la suscripción correspondiente que aparece en este Sitio, el cual será especificado en Dólares (USD) sin impuestos y tiene en cuenta las reducciones aplicables vigentes el día de la suscripción. Las suscripciones se describen en la página correspondiente dentro del Sitio. <br><br>

                                1.4 : Para suscribirse, el Usuario debe completar todos los campos obligatorios o en su defecto no se podrá completar la suscripción al paquete educativo que desee adquirir. <br><br>

                                1.5 : Usted garantiza y declara por su honor que toda la información comunicada en el Sitio, en particular durante su suscripción, es exacta y conforme. Usted acepta actualizar su información personal desde la página dedicada a este último y disponible en la pestaña "Mi perfil" del Sitio. 
                            </div>

                            <div class="mt-3 legal-titles" id="condiciones-generales-item-2">2. Facturación y rescisión</div>
                            <div class="mt-2 legal-text">
                                2.1 : Ciclo de facturación<br>
                                Las tarifas de suscripción al servicio FTX Live se facturarán a través de su Método de pago en la fecha de facturación específica y el impuesto indicado en su página "Mi perfil". La duración de su ciclo de facturación dependerá del tipo de suscripción que elija cuando se inscriba en el servicio. En algunos casos, su fecha de facturación puede cambiar, por ejemplo, si su método de pago no funcionó o si su suscripción paga comenzó en un día que no figura en un mes determinado. Acceda a nuestro sitio web y a la página "Mi perfil" para conocer la fecha de su próxima factura.<br><br>

                                2.2 : Medios de pago<br>
                                Para utilizar el servicio FTX Live, debe proporcionarnos uno o más métodos de pago. Usted nos autoriza a debitar su cuenta a través de cualquier Método de pago asociado con su cuenta en caso de que su Método de pago principal sea rechazado o ya no esté disponible para el pago de sus tarifas de suscripción. Usted es responsable de cualquier monto no retirado. Si un pago no se liquida debido al vencimiento de la tarjeta, saldo insuficiente o cualquier otro motivo, y no cancela su cuenta, podemos suspender su acceso a nuestro servicio hasta que ha registrado correctamente su cuenta a través de un método de pago válido. Para ciertos métodos de pago, el proveedor de servicios puede cobrarle ciertos costos, como tarifas por transacciones internacionales u otras tarifas relacionadas con el procesamiento de su Método de pago. Los cargos por impuestos locales pueden variar según el método de pago utilizado. Comuníquese con el proveedor de su método de pago para obtener más información.<br><br>

                                2.3 : Actualización de sus métodos de pago<br>
                                Puede actualizar sus métodos de ingresando a la sección dentro de la página de "Back Office". También podemos actualizar sus métodos de pago con la información proporcionada por los proveedores de servicios de pago. Después de cualquier actualización, nos autoriza a continuar debitando su cuenta a través de los métodos de pago correspondientes.<br><br>

                                2.4 : Cancelación<br>
                                Puede cancelar su suscripción a FTX Live en cualquier momento y seguirá teniendo acceso al servicio hasta el final de su período de facturación. Los pagos no son reembolsables y no otorgamos reembolsos ni créditos por períodos de uso parcial o por cualquier Contenido de FTX Live no visto. Para cancelar su suscripción, vaya a la página "Mi perfil", haga clic en "Cancelar mi suscripción" y siga las instrucciones. Si cancela su suscripción, su cuenta se cerrará automáticamente al final de su período de facturación actual. Para saber cuándo se cerrará su cuenta, haga clic en la página "Mi perfil". <br><br>

                                2.5 : Cambios de precio y suscripción<br>
                                Es posible que cambiemos nuestras suscripciones y el precio de nuestro servicio de vez en cuando. Sin embargo, cualquier cambio en los precios o sus suscripciones solo será aplicable después de un período mínimo de 30 días después de recibir una notificación nuestra. 
                            </div>

                            <div class="mt-3 legal-titles" id="condiciones-generales-item-3">3.- Servicio FTX Live</div>
                            <div class="mt-2 legal-text">
                                3.1 : Debes tener 18 años o haber alcanzado la mayoría de edad legal en tu provincia, territorio o país para suscribirte al servicio FTX Live. Los menores pueden utilizar el servicio solo bajo la supervisión de un adulto. <br><br>

                                3.2 : El servicio FTX Live, así como cualquier contenido visualizado a través del servicio, está reservado solo para uso personal y no comercial y no debe compartirse con terceros. Durante el plazo de su suscripción, le otorgamos un derecho limitado, no exclusivo e intransferible para acceder al servicio FTX Live y ver el Contenido FTX Live. Salvo lo anterior, no se le otorga ningún derecho, título o interés. Acepta no utilizar el servicio para proyecciones públicas.<br><br>
                                 
                                3.3 : Solo podrá ver Contenido de FTX Live en los países donde ofrecemos nuestro servicio. El contenido disponible puede variar según la región y se puede cambiar en cualquier momento.<br><br>

                                3.4 : El servicio FTX Live, incluido el contenido de la biblioteca, se actualiza periódicamente. Asimismo, probamos periódicamente varios aspectos de nuestro servicio, incluido nuestro sitio web, las interfaces de usuario, las ofertas promocionales y la disponibilidad de Contenido FTX Live. <br><br> 
                                 
                                3.5: Usted acepta no archivar, reproducir, distribuir, modificar, mostrar, ejecutar, publicar, otorgar, crear trabajos derivados, vender o usar (excepto con la autorización expresa mencionada en estos TyC) el contenido y la información del servicio FTX Live ( u obtenido a través de él). También acepta no: eludir, eliminar, modificar, desactivar, destruir o anular las protecciones del contenido dentro del marco del servicio FTX Live; utilizar bots, rastreadores web, herramientas de recolección web u otros métodos automatizados para acceder al servicio FTX Live; descompilar, realizar ingeniería inversa o desensamblar cualquier software, producto o proceso accesible a través del servicio FTX Live; insertar cualquier código o producto, o manipular el contenido del servicio FTX Live de cualquier forma; o utilizar cualquier método de extracción, recopilación o extracción de datos. Así mismo, acepta no descargar, mostrar, enviar por correo electrónico o enviar o transmitir de ninguna manera ningún contenido con el fin de interrumpir, destruir o restringir la funcionalidad de cualquier software o equipo informático o telecomunicaciones asociadas con el servicio FTX Live, incluido cualquier virus o cualquier otro código, archivo o programa informático. Nos reservamos el derecho de terminar o restringir su uso de nuestro servicio si viola estos TyC o hace un uso ilegal o ilegítimo del servicio, enviar por correo electrónico o enviar o transmitir de cualquier manera cualquier contenido con el fin de interrumpir, destruir o restringir la funcionalidad de cualquier software o computadora o equipo de telecomunicaciones asociado con el servicio FTX Live, incluido cualquier virus o cualquier otro código, archivo o programa informático. Nos reservamos el derecho de terminar o restringir su uso de nuestro servicio si viola estos TyC o hace un uso ilegal o ilegítimo del servicio. enviar por correo electrónico o enviar o transmitir de cualquier manera cualquier contenido con el fin de interrumpir, destruir o restringir la funcionalidad de cualquier software o computadora o equipo de telecomunicaciones asociado con el servicio FTX Live, incluido cualquier virus o cualquier otro código, archivo o programa informático. Nos reservamos el derecho de terminar o restringir su uso de nuestro servicio si viola estos TyC o hace un uso ilegal o ilegítimo del servicio.<br><br>
                                 
                                3.6 : La calidad de visualización del Contenido FTX Live puede variar de un dispositivo a otro y puede verse influenciada por varios factores, incluida su ubicación, ancho de banda disponible y / o la velocidad de su conexión a Internet. Los costos de conexión a Internet son su responsabilidad. Comuníquese con su proveedor de servicios de Internet para obtener detalles sobre posibles cargos por uso de datos de Internet. 
                            </div>

                            <div class="mt-3 legal-titles" id="condiciones-generales-item-4">4.- Contraseñas y acceso a la cuenta</div>
                            <div class="mt-2 legal-text">
                                4.1: El Usuario que ha creado la cuenta FTX Live y se le facturan las tarifas de suscripción a través del Método de pago elegido (el "Titular de la cuenta") tiene acceso a la cuenta FTX Live y tiene control sobre ella y los dispositivos compatibles con FTX Live utilizados para acceder a nuestro servicio. Este Usuario es responsable de toda la actividad que ocurra a través de su cuenta FTX Live. Con el fin de mantener el control de la cuenta y evitar que alguien acceda a ella (y, en particular, acceder a la información del historial de lectura de la cuenta)<br><br>

                                4.2 : Usted es personalmente responsable de actualizar y mantener información precisa relacionada con su cuenta. Podemos cancelar o suspender su cuenta para protegerlo, así como para proteger a FTX Live o a sus socios, contra cualquier robo de identidad u otra actividad fraudulenta. El borrado de la cuenta conlleva la pérdida definitiva de todas las ventajas y servicios adquiridos en el Sitio.<br><br>

                                4.3 : En el caso de que FTX Live elimine una cuenta por incumplimiento de los deberes y obligaciones establecidos en estos TyC, el titular de la cuenta infractor tiene formalmente prohibido volver a registrarse en el Sitio directamente, a través de otra dirección de correo electrónico o por intermediario sin la autorización expresa de FTX Live.<br><br>

                                4.4 : Si un Titular sospecha de fraude en algún momento, deberá ponerse en contacto con FTX Live lo antes posible, para que FTX Live pueda tomar las medidas necesarias y regularizar la situación.
                            </div>

                            <div class="mt-3 legal-titles" id="condiciones-generales-item-5">5.- Tratamiento de datos personales</div>
                            <div class="mt-2 legal-text">
                                5.1 : FTX Live , es responsable del procesamiento, puede recopilar y procesar datos personales relativos a los Usuarios que deseen acceder al Sitio, en particular a través del formulario de registro, las cookies o cualquier otro formulario que pueda ser ofrecidos a través del Sitio. Si el Usuario rechaza el procesamiento de sus datos, se recomienda que se abstenga de utilizar el Sitio. <br><br>

                                5.2 : Los datos recabados son imprescindibles para la tramitación de sus solicitudes y su fichero dentro de FTX Live y se conservarán por periodos de tiempo proporcionales a los fines para los que fueron recabados y en cumplimiento de las obligaciones que incumben al responsable de tratos. Están destinados principalmente a los departamentos relevantes de FTX Live.<br><br>

                                5.3 : Dentro de los límites establecidos por nuestras políticas, términos y condiciones los Usuarios tienen, en lo particular, el derecho de acceso a sus datos personales, los derechos de modificar, rectificar, limitar, oponerse al tratamiento de estos o el derecho a solicitar su cesión y supresión siempre que pueda estar justificado por un motivo legítimo. Las solicitudes deben dirigirse al gerente a soporte@ftxlive.com - El titular de los datos también tiene la posibilidad de emprender una queja por cualquier controversia. Si tenemos alguna duda sobre su identidad, es posible que se le solicite una copia de un documento oficial de su identidad.<br><br>

                                5.4 : El responsable del tratamiento se compromete a implementar la protección física y lógica de los datos personales de acuerdo con los requisitos de nuestro Reglamento.<br><br>

                                5.5 : FTX Live podrá recurrir a terceras empresas para realizar determinadas operaciones. Al navegar por el Sitio, el Usuario acepta que terceras empresas puedan tener acceso a sus datos para permitir el correcto funcionamiento del Sitio. Estas empresas de terceros solo tienen acceso a los datos recopilados en el contexto de la realización de una tarea específica. FTX Live sigue siendo responsable del procesamiento de estos datos. Además, es posible que el Usuario deba recibir información u ofertas comerciales de FTX Live y/o sus socios. El Usuario podrá en cualquier momento oponerse a la recepción de estas ofertas comerciales, dirigiéndose a la siguiente dirección de correo electrónico: soporte@ftxlive.com <br><br>

                                5.6 : La información de los usuarios podrá ser transmitida a terceros sin su consentimiento previo expreso con el fin de lograr los siguientes objetivos:<br> 

                                1. Respetar la ley, <br>
                                2. Proteger a cualquier persona contra daños graves, <br>
                                3. Luchar contra el fraude o infracciones de FTX Live y sus usuarios,<br> 
                                4. Proteger los derechos de propiedad de FTX Live .<br>

                            </div>

                            <div class="mt-3 legal-titles" id="condiciones-generales-item-6">6.- Cookies</div>
                            <div class="mt-2 legal-text">
                                6.1 : Para permitir que sus Usuarios se beneficien de una navegación óptima en el Sitio y un mejor funcionamiento de las diferentes interfaces y aplicaciones, FTX Live puede colocar una cookie en la computadora del Usuario. Esta cookie se utiliza para almacenar información relacionada con la navegación en el Sitio, así como cualquier dato ingresado por los Usuarios (en particular búsquedas, inicio de sesión, correo electrónico, contraseña).<br><br>

                                6.2 : El Usuario autoriza expresamente a FTX Live a colocar un archivo denominado "cookie" en el disco duro del usuario.<br><br>

                                6.3 : El Usuario tiene la opción de bloquear, modificar el período de retención o eliminar esta cookie a través de la interfaz de su navegador. Si la desactivación sistemática de las cookies en el navegador del Usuario le impide utilizar determinados servicios o características del Sitio, este mal funcionamiento no puede en modo alguno constituir un perjuicio para el Usuario, que no puede reclamar ninguna indemnización por este hecho.
                            </div>

                            <div class="mt-3 legal-titles" id="condiciones-generales-item-7">7.- Responsabilidad</div>
                            <div class="mt-2 legal-text">
                                7.1 : FTX Live no se hace responsable en modo alguno de la indisponibilidad, ya sea temporal o permanente del Sitio y aunque FTX Live implementa todos sus medios para garantizar el servicio en todo momento, es posible que se interrumpe en cualquier momento. Además, FTX Live se reserva el derecho, mediante acto voluntario, de hacer que el Sitio no esté disponible para llevar a cabo cualquier operación de actualización, mejora o mantenimiento. En la medida de lo posible, FTX Live se esforzará por notificar a los Usuarios de esto a través del Sitio.<br><br>

                                7.2 : Como se mencionó anteriormente en este documento, FTX Live de ninguna manera se hace responsable de cualquier falla en la operación de los servicios por razones fuera de su control, imprevisibles e irresistibles o cuya culpa no pueda ser atribuible a ello.
                            </div>

                            <div class="mt-3 legal-titles" id="condiciones-generales-item-8">8.- Derecho de desistimiento del Usuario</div>
                            <div class="mt-2 legal-text">
                                8.1 : La provisión intangible, digital, directa e inmediata de Contenido FTX Live al Usuario constituye una excepción al Consumidor y solo se dará por situaciones en donde se comprometa el contenido a actividades no legales o no permitidas y estipuladas en este documento. En consecuencia, al aceptar estos TyC y desear tener acceso al Contenido de FTX Live, el Usuario renuncia expresamente a su derecho de desistimiento. 
                            </div>

                            <div class="mt-3 legal-titles" id="condiciones-generales-item-9">9.- Propiedad intelectual</div>
                            <div class="mt-2 legal-text">
                                9.1 : La marca, logo, tecnologías, carta gráfica, datos, textos, comentarios, ilustraciones, imágenes, animadas o no, secuencias de video, sonidos, patentes, datos privados, tecnologías, productos, publicaciones, proceso de este Sitio son propiedad exclusiva de FTX Live y de terceros que le hayan otorgado una licencia y obras intelectuales protegidas por derechos de autor. Cualquier distribución, explotación, representación, reproducción, ya sea parcial o total, sin la previa y expresa autorización de FTX Live está estrictamente prohibida y expondrá al infractor a procesos civiles y penales.
                            </div>

                            <div class="mt-3 legal-titles" id="condiciones-generales-item-10">10.- Varios</div>
                            <div class="mt-2 legal-text">
                                10.1 : Leyes aplicables. Estas CGUV se rigen e interpretan de acuerdo con la ley mexicana, país en donde se llevó a cabo el desarrollo intelectual del proyecto y sus contenidos y/o en Colombia, país en donde se llevó el desarrollo del software. Estos TyC no pueden limitar las disposiciones relativas a la protección del consumidor de las que puede beneficiarse en virtud de la legislación vigente en su país de residencia. Cualquier disputa que pueda surgir entre FTX Live y un Usuario durante la ejecución de estas condiciones será objeto de un intento de resolución amistosa. De lo contrario, las disputas se llevarán a la atención de los tribunales de derecho común competentes a los países antes mencionados.<br><br>

                                10.2 : Contenido no solicitado. FTX Live no acepta ningún contenido o ideas no solicitados relacionados con el Contenido de FTX Live y no es responsable de las similitudes entre su contenido o programación y el contenido o las ideas que se le transmiten. <br><br>

                                10.3 : Atención al cliente. Para obtener más información sobre nuestro servicio y sus características o si necesita ayuda para usar su cuenta, comuníquese con nosotros a la siguiente dirección: soporte@ftxlive.com , visite la sección de soporte dentro del home de FTX Live disponible. <br><br>

                                10.4 : Nulidad - Invalidez. Si una o más disposiciones de estas CGUV resultan ser inválidas, ilegales o inaplicables, las disposiciones restantes seguirán siendo plenamente aplicables y conservarán sus efectos. <br><br>

                                10.5 : No renuncia. El hecho de que FTX Live o el Usuario no ejerza, en ningún momento, una prerrogativa reconocida por estos TyC en ningún caso podrá interpretarse como una renuncia expresa o tácita al derecho a ejercer dicha prerrogativa en el futuro. <br><br>

                                10.6 : Modificación del sitio. FTX Live se reserva el derecho de modificar el Sitio, así como cualquier otro componente de los servicios FTX Live proporcionados por FTX Live a través del Sitio. <br><br>

                                10.7 : Modificación del CGUV. FTX Live puede, de vez en cuando, modificar estos TyC. Le notificaremos al menos 30 días antes de que dichos cambios sean aplicables.<br><br> 

                                10.8 : Comunicaciones electrónicas. Le enviaremos información de la cuenta (por ejemplo, autorizaciones de pago, facturas, cambios de contraseña o método de pago, mensajes de confirmación, notificaciones) solo de forma electrónica, por ejemplo, por correo electrónico. 'enviando un correo electrónico a la dirección que nos proporcionó al registrarse.<br><br>

                                <b>IDIOMAS DISPONIBLES</b><br>
                                <ul>
                                    <li>ALEMÁN</li>
                                    <li>ÁRABE</li>
                                    <li>CHINO</li>
                                    <li>ESPAÑOL</li>
                                    <li>FRANCÉS</li>
                                    <li>HINDI</li>
                                    <li>INGLÉS</li>
                                    <li>ITALIANO</li>
                                    <li>JAPONÉS</li>
                                    <li>POSTUGUÉS</li>
                                    <li>RUSO</li>
                                    <li>VIETNAMITA</li>
                                </ul><br>
                                  
                                <b>NUESTRA COMUNIDAD</b><br>

                                <a href="{{route('shopping-cart.membership')}}"><i class="fa fa-arrow-left"></i> Únase a FTX Live con un plan principiante</a> <br>

                                <a href="{{ route('blog.afiliados')}}"><i class="fa fa-arrow-left"></i> Conviértete en entrenador</a><br><br>

                                <B>SOPORTE Y ATENCIÓN AL CLIENTE</b><br>

                                Nuestro servicio de atención al cliente internacional está disponible las 24 horas del día, los 365 días del año, sin embargo y su solicitud será enlistada en un sistema de tickets calendarizados y atendidos en tiempo y forma por nuestros agentes de soporte, informándole cualquier detalle de su solicitud via correo electrónico.<br>

                                @if (Auth::guest())
                                    <a href="#" data-toggle="modal" data-target="#contactModal"><i class="fa fa-question-circle-o" aria-hidden="true"></i> Ir a soporte</a>
                                @else
                                    <a href="{{ route ('soporte')}}"><i class="fa fa-question-circle-o" aria-hidden="true"></i> Ir a soporte</a>
                                @endif<br><br>

                                © Copyright 2020-2021, Todos los derechos reservados<br>
                                FTX Live<br> 
                                <b>FTX Live</b> es una marca impulsada por<br>
                                <b>FENTTIX CORP</b><br>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="tab-pane pt-2 pb-2 pr-2 pl-2" id="programa-afiliados">
                    <div class="row">
                        <div class="col-md-3 d-none d-lg-block d-xl-block">
                            <div class="list-group list-group-legal">
                                <a class="list-group-item legal-item ancla" href="#" data-ancla="programa-afiliados-item-1">1.- Comisión residual mensual</a>
                                <a class="list-group-item legal-item ancla" href="#" data-ancla="programa-afiliados-item-2">2.- Comisión residual anual</a>
                                <a class="list-group-item legal-item ancla" href="#" data-ancla="programa-afiliados-item-3">3.- Fechas de Pago</a>
                                <a class="list-group-item legal-item ancla" href="#" data-ancla="programa-afiliados-item-4">4.- Límite de Comisiones</a>
                                <a class="list-group-item legal-item ancla" href="#" data-ancla="programa-afiliados-item-5">5.- Reembolsos</a>
                            </div>
                        </div>
                        <div class="col-md-9">
                            <div class="legal-text">
                                El Afiliado de FTX Live recibirá, una comisión abonada a su billetera interna de acuerdo con los siguientes criterios:<br><br>
                                Se acuerda expresamente que el afiliado a FTX Live recibirá única y exclusivamente compensaciones de ventas efectivas.<br>
                                En general, el derecho de comisión solo será adquirido una vez al mes por el afiliado de FTX Live a condición del total de las ventas efectivas referidas y confirmadas por su número de afiliación. <br>
                                El afiliado de FTX Live podrá consultar los detalles de las transacciones y sus comisiones en el Backoffice en el marco de estos presentes puntos:
                            </div>

                            <div class="mt-3 legal-titles" id="programa-afiliados-item-1">1.- Comisión residual mensual</div>
                            <div class="mt-2 legal-text">
                                La comisión residual mensual consiste en el monto que recibe el afiliado de FTX Live, por la venta de una suscripción concluida a través de uno de sus enlaces de patrocinio entre FTX Live y un nuevo suscriptor. El registro de la comisión se generará en cada pago de la suscripción elegida por parte del nuevo firmante hasta su terminación. Por lo tanto, el afiliado de FTX Live que refiere, seguirá recibiendo dicha comisión hasta que el afiliado referido deje de pagar su membresía.<br><br>

                                La tasa de comisión del Afiliado de FTX Live se establece en el 30% de la facturación mensual, solo de sus ventas efectivas, registradas bajo su número de afiliación y disponibles para su contabilidad en su backoffice.<br><br>

                                Los montos establecidos son sin incluir los impuestos generados por las mismas ventas y van de acuerdo con la siguiente tabla:<br>

                                <div class="ml-5 mr-5 mt-3 mb-3 table-bordered">
                                    <table>
                                        <thead>
                                            <th class="text-center">Tipo de Membresía</th>
                                            <th class="text-center">Costo Mensual con Link de Referido FTX Live</th>
                                            <th class="text-center">Comisión mensual para el afiliado FTX Live</th>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td class="text-center">Suscripción mensual Membresía del VER<br> (con link de referencia FTX Live)</td>
                                                <td class="text-center">$ 9.99 / mes</td>
                                                <td class="text-center">$ 2.99 / mes</td>
                                            </tr>
                                            <tr>
                                                <td class="text-center">Suscripción mensual Membresía del DAR<br> (con link de referencia FTX Live)</td>
                                                <td class="text-center">$ 19.99 / mes</td>
                                                <td class="text-center">$ 5.99 / mes</td>
                                            </tr>
                                            <tr>
                                                <td class="text-center">Suscripción mensual Membresía del GANAR<br> (con link de referencia FTX Live)</td>
                                                <td class="text-center">$ 29.99 / mes</td>
                                                <td class="text-center">$ 8.99 / mes</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>

                            <div class="mt-3 legal-titles" id="programa-afiliados-item-2">1.- Comisión residual anual</div>
                            <div class="mt-2 legal-text">
                                La comisión residual anual consiste en el monto que recibe el afiliado de FTX Live, por la venta de una Suscripción concluida a través de uno de sus enlaces de patrocinio entre FTX Live y un nuevo suscriptor. La comisión se generará en cada pago de la Suscripción elegida por parte del nuevo suscriptor hasta su terminación. Por lo tanto, el Socio FTX Live seguirá recibiendo la comisión hasta que el afiliado referido deje de pagar su membresía.<br><br>

                                La tasa de comisión del Afiliado de FTX Live se establece en el 30% de la facturación anual, solo de sus ventas efectivas, sin incluir los impuestos generados por las mismas, de acuerdo con la siguiente tabla:<br>

                                <div class="ml-5 mr-5 mt-3 mb-3 table-bordered">
                                    <table>
                                        <thead>
                                            <th class="text-center">Tipo de Membresía</th>
                                            <th class="text-center">Costo con Link de Referido FTX Live</th>
                                            <th class="text-center">Comisión mensual para el afiliado FTX Live</th>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td class="text-center">Suscripción mensual Membresía del VER<br> (con link de referencia FTX Live)</td>
                                                <td class="text-center">$ 100 por año</td>
                                                <td class="text-center">$ 30 por año</td>
                                            </tr>
                                            <tr>
                                                <td class="text-center">Suscripción mensual Membresía del DAR<br> (con link de referencia FTX Live)</td>
                                                <td class="text-center">$ 220 por año</td>
                                                <td class="text-center">$ 66 por año</td>
                                            </tr>
                                            <tr>
                                                <td class="text-center">Suscripción mensual Membresía del GANAR<br> (con link de referencia FTX Live)</td>
                                                <td class="text-center">$ 340 por año</td>
                                                <td class="text-center">$ 102 por año</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>

                            <div class="mt-3 legal-titles" id="programa-afiliados-item-3">3.- Fechas de Pago</div>
                            <div class="mt-2 legal-text">
                                Todas las comisiones son acumulativas y se especifica que por estándar de calidad y procesos administrativos internos, los pagos de comisiones por las ventas efectivas con links de referidos se generarán dentro de los 7 primeros días posteriores al mes consiguiente de sus registros, es decir:<br>

                                <div class="ml-5 mr-5 mt-3 mb-3 table-bordered">
                                    <table>
                                        <thead>
                                            <th class="text-center">Ejemplos</th>
                                            <th class="text-center">Tipo de Membresía Adquirida</th>
                                            <th class="text-center">Tipo de Suscripción</th>
                                            <th class="text-center">Costo de la Membresía</th>
                                            <th class="text-center">Registros realizados de compras efectivas y pagos de nuevos afiliados con link de referido FTX Live</th>
                                            <th class="text-center">Monto de Comisión</th>
                                            <th class="text-center">Fecha de Pago de Comisiones</th>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td class="text-center">1</td>
                                                <td class="text-center">VER</td>
                                                <td class="text-center">MENSUAL</td>
                                                <td class="text-center">$ 9.99 USD</td>
                                                <td class="text-center">Del 1 al 30 de Enero</td>
                                                <td class="text-center">Pago mensual $ 2.99 USD</td>
                                                <td class="text-center">Entre el 5 y 7 de Febrero</td>
                                            </tr>
                                            <tr>
                                                <td class="text-center">2</td>
                                                <td class="text-center">DAR</td>
                                                <td class="text-center">ANUAL</td>
                                                <td class="text-center">1 solo cobro anual $ 340 USD</td>
                                                <td class="text-center">Día: 12 de Agosto</td>
                                                <td class="text-center">1 solo pago anual $ 102 USD</td>
                                                <td class="text-center">Entre el 5 y 7 de Septiembre</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>

                            <div class="mt-3 legal-titles" id="programa-afiliados-item-4">4.- Límite de Comisiones</div>
                            <div class="mt-2 legal-text">
                                Las comisiones de todos los afiliados de FTX Live están delimitadas al 30% de la facturación total de sus ventas efectivas y confirmadas a través del link de referencia y configuración de numero de afiliación, excluidos los impuestos generados por FTX Live durante el mes. <br>
                                Para el calculo de comisiones se tomará en consideración los siguientes criterios:<br>

                                <div class="ml-5 mr-5 mt-3 mb-3 table-bordered">
                                    <table>
                                        <thead>
                                            <th class="text-center">Ejemplo</th>
                                            <th class="text-center">Tipo de Membresía Adquirida</th>
                                            <th class="text-center">Tipo de Suscripción</th>
                                            <th class="text-center">Costo de la Membresía</th>
                                            <th class="text-center">Fecha de Compra</th>
                                            <th class="text-center">Monto de Comisión</th>
                                            <th class="text-center">Medio de Pago</th>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td class="text-center">1</td>
                                                <td class="text-center">VER</td>
                                                <td class="text-center">MENSUAL</td>
                                                <td class="text-center">$ 9.99 USD</td>
                                                <td class="text-center">15-01-2021</td>
                                                <td class="text-center">$ 2.99 USD</td>
                                                <td class="text-center">Tarjeta de Crédito</td>
                                            </tr>
                                            <tr>
                                                <td class="text-center">2</td>
                                                <td class="text-center">HACER</td>
                                                <td class="text-center">ANUAL</td>
                                                <td class="text-center">$ 450 USD</td>
                                                <td class="text-center">15-01-2021</td>
                                                <td class="text-center">$ 135 USD</td>
                                                <td class="text-center">Bitcoin</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>

                            <div class="mt-3 legal-titles" id="programa-afiliados-item-5">5.- Reembolsos</div>
                            <div class="mt-2 legal-text">
                                Los reembolsos enumerados se generarán directamente en la billetera del afiliado FTX Live en un plazo máximo de 15 días a partir de la solicitud realizada por este último, sujeto a la presentación de los documentos de respaldo pertinentes al análisis del caso.
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection