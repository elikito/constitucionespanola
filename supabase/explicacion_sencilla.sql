-- ============================================================================
-- ACTUALIZACIÓN DE LA BBDD: AÑADIR EXPLICACIONES SENCILLAS
-- ============================================================================

-- 1. Añadimos la columna nueva
ALTER TABLE articulos ADD COLUMN explicacion_sencilla TEXT;

-- 2. Actualizamos los registros con las explicaciones

-- ----------------------------------------------------------------------------
-- TÍTULO PRELIMINAR (1-9)
-- ----------------------------------------------------------------------------
UPDATE articulos SET explicacion_sencilla = 'España es un país democrático donde la ley es igual para todos. El poder viene de los ciudadanos y la forma de gobierno es una Monarquía Parlamentaria (hay Rey, pero gobierna el Parlamento elegido por la gente).' WHERE numero_articulo = 1;
UPDATE articulos SET explicacion_sencilla = 'España es una nación única e indivisible, pero reconoce que sus diferentes regiones y nacionalidades tienen derecho a tener autonomía (gobierno propio) y deben ayudarse entre sí.' WHERE numero_articulo = 2;
UPDATE articulos SET explicacion_sencilla = 'El castellano es la lengua oficial y todos debemos conocerla. Las otras lenguas (catalán, euskera, gallego, etc.) también son oficiales en sus regiones y deben protegerse como una riqueza cultural.' WHERE numero_articulo = 3;
UPDATE articulos SET explicacion_sencilla = 'La bandera de España es roja, amarilla y roja. Las Comunidades Autónomas pueden tener sus propias banderas, que se pondrán junto a la de España en los edificios oficiales.' WHERE numero_articulo = 4;
UPDATE articulos SET explicacion_sencilla = 'La capital de España es Madrid.' WHERE numero_articulo = 5;
UPDATE articulos SET explicacion_sencilla = 'Los partidos políticos son la herramienta principal para la participación política. Son libres de crearse y actuar, pero deben ser democráticos y respetar la Constitución.' WHERE numero_articulo = 6;
UPDATE articulos SET explicacion_sencilla = 'Los sindicatos y asociaciones de empresarios existen para defender los intereses de trabajadores y empresas. Son libres, pero deben funcionar de forma democrática.' WHERE numero_articulo = 7;
UPDATE articulos SET explicacion_sencilla = 'El Ejército (Tierra, Mar y Aire) tiene la misión de defender la independencia de España, su territorio y asegurar que se cumpla la Constitución.' WHERE numero_articulo = 8;
UPDATE articulos SET explicacion_sencilla = 'Todos, ciudadanos y gobernantes, debemos cumplir la ley. El Estado debe trabajar para que la libertad y la igualdad sean reales, facilitar que la gente participe y garantizar la seguridad jurídica (que sepamos a qué atenernos).' WHERE numero_articulo = 9;

-- ----------------------------------------------------------------------------
-- TÍTULO I: DERECHOS Y DEBERES (10-55)
-- ----------------------------------------------------------------------------
UPDATE articulos SET explicacion_sencilla = 'La dignidad de la persona y sus derechos son la base de la sociedad. Las leyes españolas deben interpretarse respetando la Declaración Universal de Derechos Humanos.' WHERE numero_articulo = 10;
UPDATE articulos SET explicacion_sencilla = 'Reglas sobre cómo se consigue o pierde la nacionalidad. A ningún español de nacimiento se le puede quitar su nacionalidad contra su voluntad.' WHERE numero_articulo = 11;
UPDATE articulos SET explicacion_sencilla = 'La mayoría de edad se alcanza a los 18 años.' WHERE numero_articulo = 12;
UPDATE articulos SET explicacion_sencilla = 'Los extranjeros tienen derechos en España. La extradición (enviar a un detenido a otro país) se hará según tratados, pero nunca por delitos políticos.' WHERE numero_articulo = 13;
UPDATE articulos SET explicacion_sencilla = 'Todos los españoles somos iguales ante la ley. No se puede discriminar a nadie por su nacimiento, raza, sexo, religión u opinión.' WHERE numero_articulo = 14;
UPDATE articulos SET explicacion_sencilla = 'Derecho a la vida y a la integridad física. Se prohíbe la tortura. Queda abolida la pena de muerte.' WHERE numero_articulo = 15;
UPDATE articulos SET explicacion_sencilla = 'Libertad ideológica y religiosa. Nadie está obligado a decir qué piensa o en qué cree. Ninguna religión es la oficial del Estado, pero se colaborará con ellas.' WHERE numero_articulo = 16;
UPDATE articulos SET explicacion_sencilla = 'Derecho a la libertad y seguridad. Nadie puede ser detenido arbitrariamente. Si te detienen, deben leerte tus derechos, no puedes estar más de 72 horas sin ver a un juez y tienes derecho a abogado.' WHERE numero_articulo = 17;
UPDATE articulos SET explicacion_sencilla = 'Derecho al honor, a la intimidad y a la propia imagen. El domicilio es inviolable (la policía no puede entrar sin orden judicial salvo delito flagrante) y el secreto de las comunicaciones está garantizado.' WHERE numero_articulo = 18;
UPDATE articulos SET explicacion_sencilla = 'Libertad para elegir dónde vivir y para moverse libremente por todo el país, así como para entrar y salir de España.' WHERE numero_articulo = 19;
UPDATE articulos SET explicacion_sencilla = 'Libertad de expresión, de creación artística y de cátedra. Derecho a recibir información veraz. No puede haber censura previa, pero estas libertades respetarán el honor y la intimidad de los demás.' WHERE numero_articulo = 20;
UPDATE articulos SET explicacion_sencilla = 'Derecho de reunión pacífica. Para manifestarse en la calle hay que avisar a la autoridad, que solo puede prohibirlo si hay peligro de violencia.' WHERE numero_articulo = 21;
UPDATE articulos SET explicacion_sencilla = 'Derecho a asociarse (crear grupos o clubes) libremente, siempre que no sea para cometer delitos. Las asociaciones secretas están prohibidas.' WHERE numero_articulo = 22;
UPDATE articulos SET explicacion_sencilla = 'Derecho a participar en los asuntos públicos (votar y ser votado) y acceder a cargos públicos en igualdad de condiciones.' WHERE numero_articulo = 23;
UPDATE articulos SET explicacion_sencilla = 'Derecho a la tutela judicial efectiva: todos tenemos derecho a un juicio justo, a defendernos, a un abogado y a la presunción de inocencia (eres inocente hasta que se demuestre lo contrario).' WHERE numero_articulo = 24;
UPDATE articulos SET explicacion_sencilla = 'Nadie puede ser condenado por algo que no era delito cuando lo hizo. Las penas de cárcel deben buscar la reeducación y reinserción social.' WHERE numero_articulo = 25;
UPDATE articulos SET explicacion_sencilla = 'Se prohíben los Tribunales de Honor (juicios morales privados dentro de organizaciones).' WHERE numero_articulo = 26;
UPDATE articulos SET explicacion_sencilla = 'Derecho a la educación y libertad de enseñanza. La educación básica es obligatoria y gratuita. Los padres pueden elegir la formación religiosa de sus hijos. Se reconoce la autonomía de las Universidades.' WHERE numero_articulo = 27;
UPDATE articulos SET explicacion_sencilla = 'Libertad sindical (derecho a fundar sindicatos o afiliarse). Derecho a la huelga para defender los intereses de los trabajadores.' WHERE numero_articulo = 28;
UPDATE articulos SET explicacion_sencilla = 'Derecho de petición: cualquier ciudadano puede pedir cosas o quejarse a las autoridades por escrito.' WHERE numero_articulo = 29;
UPDATE articulos SET explicacion_sencilla = 'Derecho y deber de defender a España. Regula el servicio militar (hoy suspendido) y la objeción de conciencia, así como deberes en casos de catástrofe.' WHERE numero_articulo = 30;
UPDATE articulos SET explicacion_sencilla = 'Todos debemos contribuir a pagar los gastos públicos (impuestos) según nuestra capacidad económica. El sistema debe ser justo y no confiscatorio.' WHERE numero_articulo = 31;
UPDATE articulos SET explicacion_sencilla = 'Derecho al matrimonio con plena igualdad jurídica entre hombre y mujer.' WHERE numero_articulo = 32;
UPDATE articulos SET explicacion_sencilla = 'Derecho a la propiedad privada y a la herencia. El Estado puede expropiar bienes si es necesario para el bien común, pero siempre pagando una indemnización.' WHERE numero_articulo = 33;
UPDATE articulos SET explicacion_sencilla = 'Derecho a crear fundaciones con fines de interés general.' WHERE numero_articulo = 34;
UPDATE articulos SET explicacion_sencilla = 'Deber y derecho al trabajo, a elegir profesión, a promocionarse y a un sueldo suficiente, sin discriminación por sexo.' WHERE numero_articulo = 35;
UPDATE articulos SET explicacion_sencilla = 'La ley regulará los Colegios Profesionales (como el de médicos o abogados), que deben funcionar democráticamente.' WHERE numero_articulo = 36;
UPDATE articulos SET explicacion_sencilla = 'Derecho a la negociación colectiva (acuerdos entre trabajadores y empresas) y a adoptar medidas de conflicto colectivo.' WHERE numero_articulo = 37;
UPDATE articulos SET explicacion_sencilla = 'Libertad de empresa dentro de una economía de mercado. Los poderes públicos protegen su ejercicio y la productividad.' WHERE numero_articulo = 38;
UPDATE articulos SET explicacion_sencilla = 'Protección social, económica y jurídica de la familia y especialmente de los niños.' WHERE numero_articulo = 39;
UPDATE articulos SET explicacion_sencilla = 'El Estado debe promover el progreso social, una distribución justa de la riqueza, el pleno empleo, la formación profesional y garantizar el descanso laboral y vacaciones.' WHERE numero_articulo = 40;
UPDATE articulos SET explicacion_sencilla = 'La Seguridad Social debe mantenerse para todos los ciudadanos, garantizando ayudas en caso de necesidad, especialmente ante el desempleo.' WHERE numero_articulo = 41;
UPDATE articulos SET explicacion_sencilla = 'El Estado protegerá los derechos de los trabajadores españoles que estén en el extranjero y facilitará su retorno.' WHERE numero_articulo = 42;
UPDATE articulos SET explicacion_sencilla = 'Derecho a la protección de la salud. El Estado debe organizar la salud pública y fomentar el deporte y la educación sanitaria.' WHERE numero_articulo = 43;
UPDATE articulos SET explicacion_sencilla = 'Derecho a acceder a la cultura y promoción de la ciencia y la investigación por parte del Estado.' WHERE numero_articulo = 44;
UPDATE articulos SET explicacion_sencilla = 'Derecho a disfrutar de un medio ambiente adecuado y deber de conservarlo. Quien contamine deberá pagar y reparar el daño.' WHERE numero_articulo = 45;
UPDATE articulos SET explicacion_sencilla = 'El Estado garantizará la conservación del patrimonio histórico, cultural y artístico de España.' WHERE numero_articulo = 46;
UPDATE articulos SET explicacion_sencilla = 'Derecho a una vivienda digna. Los poderes públicos deben poner los medios para ello y regular el uso del suelo para evitar la especulación.' WHERE numero_articulo = 47;
UPDATE articulos SET explicacion_sencilla = 'Fomento de la participación de los jóvenes en el desarrollo político, social y económico.' WHERE numero_articulo = 48;
UPDATE articulos SET explicacion_sencilla = 'Atención especial a las personas con discapacidad para garantizar sus derechos, su integración y su amparo.' WHERE numero_articulo = 49;
UPDATE articulos SET explicacion_sencilla = 'Garantía de pensiones adecuadas para la tercera edad y promoción de su bienestar mediante servicios sociales.' WHERE numero_articulo = 50;
UPDATE articulos SET explicacion_sencilla = 'Defensa de los consumidores y usuarios, protegiendo su seguridad, salud e intereses económicos.' WHERE numero_articulo = 51;
UPDATE articulos SET explicacion_sencilla = 'Regulación de las organizaciones profesionales (cámaras de comercio, etc.), que deben ser democráticas.' WHERE numero_articulo = 52;
UPDATE articulos SET explicacion_sencilla = 'Los derechos fundamentales obligan a todos los poderes públicos. Si se vulneran, se pueden reclamar ante los tribunales, y los más importantes, ante el Tribunal Constitucional (recurso de amparo).' WHERE numero_articulo = 53;
UPDATE articulos SET explicacion_sencilla = 'Crea la figura del Defensor del Pueblo, encargado de defender los derechos de los ciudadanos supervisando a la Administración.' WHERE numero_articulo = 54;
UPDATE articulos SET explicacion_sencilla = 'Ciertos derechos pueden suspenderse temporalmente en casos muy graves (estado de excepción o sitio) o individualmente para investigar bandas terroristas.' WHERE numero_articulo = 55;

-- ----------------------------------------------------------------------------
-- TÍTULO II: LA CORONA (56-65)
-- ----------------------------------------------------------------------------
UPDATE articulos SET explicacion_sencilla = 'El Rey es el Jefe del Estado, símbolo de unidad. No tiene poder político directo (sus actos deben ser firmados por el Gobierno para ser válidos) y representa a España internacionalmente.' WHERE numero_articulo = 56;
UPDATE articulos SET explicacion_sencilla = 'La Corona es hereditaria. Reglas de sucesión: primero hijos que padres, varón sobre mujer (según la redacción original), mayor sobre menor.' WHERE numero_articulo = 57;
UPDATE articulos SET explicacion_sencilla = 'La Reina consorte (o el marido de la Reina) no tiene funciones constitucionales, salvo que sea Regente.' WHERE numero_articulo = 58;
UPDATE articulos SET explicacion_sencilla = 'La Regencia: si el Rey es menor de edad o está inhabilitado, un familiar o alguien nombrado por las Cortes ejerce sus funciones en su nombre.' WHERE numero_articulo = 59;
UPDATE articulos SET explicacion_sencilla = 'La tutela del Rey menor: quién cuida al Rey si es un niño.' WHERE numero_articulo = 60;
UPDATE articulos SET explicacion_sencilla = 'El Rey debe jurar desempeñar fielmente sus funciones y guardar la Constitución al ser proclamado.' WHERE numero_articulo = 61;
UPDATE articulos SET explicacion_sencilla = 'Funciones del Rey: firmar leyes, convocar elecciones, proponer al Presidente del Gobierno, mandar las Fuerzas Armadas, pero casi todo es formal y regulado.' WHERE numero_articulo = 62;
UPDATE articulos SET explicacion_sencilla = 'El Rey acredita a los embajadores y declara la guerra o la paz, previa autorización del Parlamento.' WHERE numero_articulo = 63;
UPDATE articulos SET explicacion_sencilla = 'El Refrendo: El Rey no es responsable de sus actos; la responsabilidad es del Presidente o Ministro que firma junto a él.' WHERE numero_articulo = 64;
UPDATE articulos SET explicacion_sencilla = 'El Rey recibe un presupuesto del Estado para su Casa y familia, que distribuye libremente.' WHERE numero_articulo = 65;

-- ----------------------------------------------------------------------------
-- TÍTULO III: LAS CORTES GENERALES (66-96)
-- ----------------------------------------------------------------------------
UPDATE articulos SET explicacion_sencilla = 'Las Cortes (el Parlamento) representan al pueblo. Están formadas por dos cámaras: Congreso y Senado. Hacen las leyes, aprueban el presupuesto y controlan al Gobierno.' WHERE numero_articulo = 66;
UPDATE articulos SET explicacion_sencilla = 'No se puede ser diputado y senador a la vez. Los parlamentarios no están obligados a seguir órdenes de nadie (voto libre).' WHERE numero_articulo = 67;
UPDATE articulos SET explicacion_sencilla = 'El Congreso: entre 300 y 400 diputados. Se eligen cada 4 años por todos los ciudadanos mediante un sistema proporcional.' WHERE numero_articulo = 68;
UPDATE articulos SET explicacion_sencilla = 'El Senado: Cámara de representación territorial. Se eligen 4 por provincia, más algunos designados por las Comunidades Autónomas.' WHERE numero_articulo = 69;
UPDATE articulos SET explicacion_sencilla = 'Causas por las que alguien no puede ser elegido (jueces, militares en activo, etc.) para garantizar la independencia.' WHERE numero_articulo = 70;
UPDATE articulos SET explicacion_sencilla = 'Inviolabilidad e inmunidad: los parlamentarios no pueden ser juzgados por sus opiniones políticas y solo pueden ser detenidos en caso de delito flagrante.' WHERE numero_articulo = 71;
UPDATE articulos SET explicacion_sencilla = 'Las Cámaras hacen sus propias normas (Reglamentos) y eligen a sus Presidentes.' WHERE numero_articulo = 72;
UPDATE articulos SET explicacion_sencilla = 'Períodos de sesiones: Las Cortes se reúnen ordinariamente de septiembre a diciembre y de febrero a junio.' WHERE numero_articulo = 73;
UPDATE articulos SET explicacion_sencilla = 'Las leyes las aprueban las Cortes. El Congreso tiene la última palabra si no hay acuerdo con el Senado.' WHERE numero_articulo = 74;
UPDATE articulos SET explicacion_sencilla = 'Tipos de leyes: Las Leyes Orgánicas (temas muy importantes) necesitan mayoría absoluta. Las leyes ordinarias, mayoría simple.' WHERE numero_articulo = 75;
UPDATE articulos SET explicacion_sencilla = 'Quién puede proponer leyes: el Gobierno, el Congreso, el Senado, las Comunidades Autónomas o los ciudadanos (iniciativa popular).' WHERE numero_articulo = 76;
UPDATE articulos SET explicacion_sencilla = 'Cómo se tramitan las leyes: se debaten, se presentan enmiendas (cambios) y se votan.' WHERE numero_articulo = 77;
UPDATE articulos SET explicacion_sencilla = 'El Senado puede vetar o enmendar leyes del Congreso, pero el Congreso puede levantar ese veto votando de nuevo.' WHERE numero_articulo = 78;
UPDATE articulos SET explicacion_sencilla = 'Especialidades de leyes de impuestos y presupuestos.' WHERE numero_articulo = 79;
UPDATE articulos SET explicacion_sencilla = 'Presupuestos Generales del Estado: es la ley que dice cuánto dinero tiene el Estado y en qué se gasta. Se aprueba cada año.' WHERE numero_articulo = 80;
UPDATE articulos SET explicacion_sencilla = 'Si no se aprueba el presupuesto a tiempo, se prorroga el del año anterior. Control del gasto.' WHERE numero_articulo = 81;
UPDATE articulos SET explicacion_sencilla = 'Delegación legislativa: las Cortes pueden dejar que el Gobierno haga normas con rango de ley en temas complejos, con límites.' WHERE numero_articulo = 82;
UPDATE articulos SET explicacion_sencilla = 'Leyes de bases: instrucciones que dan las Cortes al Gobierno para hacer un texto legal articulado.' WHERE numero_articulo = 83; /* Nota: El texto original del 83 es sobre leyes de bases, el insert en tu archivo era sobre confianza (error en tu fuente original o confusión de números, pero ajusto a tu texto sql: tu texto SQL del 83 habla de Cuestión de Confianza, que suele ser el 112/114, pero aquí está descrito. Corrijo: Tu insert 83 describe RESPONSABILIDAD POLITICA. Me ciño a TU texto) */
-- CORRECCIÓN: Al revisar tu archivo SQL, el artículo 83 que has insertado habla de "Responsabilidad solidaria y voto de confianza". En la constitución real, el 83 es sobre leyes de bases. Pero seguiré TU archivo.
UPDATE articulos SET explicacion_sencilla = 'El Gobierno responde ante el Congreso. El Presidente puede pedir un voto de confianza para ver si el Congreso le sigue apoyando.' WHERE numero_articulo = 83;
UPDATE articulos SET explicacion_sencilla = 'Moción de censura: El Congreso puede echar al Gobierno si aprueba un candidato alternativo por mayoría absoluta.' WHERE numero_articulo = 84;
UPDATE articulos SET explicacion_sencilla = 'Cuestión de confianza: El Presidente pregunta al Congreso si le apoyan en una ley o política. Si pierde, debe dimitir.' WHERE numero_articulo = 85;
UPDATE articulos SET explicacion_sencilla = 'Decreto legislativo: El Congreso permite al Gobierno escribir leyes técnicas siguiendo unas instrucciones previas.' WHERE numero_articulo = 86;
UPDATE articulos SET explicacion_sencilla = 'Decreto-Ley: En casos de urgente necesidad, el Gobierno puede dictar normas con fuerza de ley, que el Congreso debe validar en 30 días.' WHERE numero_articulo = 87;
UPDATE articulos SET explicacion_sencilla = 'El Congreso puede hacer preguntas e interpelaciones a los Ministros para controlar su gestión.' WHERE numero_articulo = 88;
UPDATE articulos SET explicacion_sencilla = 'Comisiones de investigación: las Cámaras pueden investigar asuntos de interés público.' WHERE numero_articulo = 89;
UPDATE articulos SET explicacion_sencilla = 'Los Ministros no pueden ser juzgados por sus opiniones en el ejercicio de su cargo.' WHERE numero_articulo = 90;
UPDATE articulos SET explicacion_sencilla = 'Los tratados internacionales firmados por España forman parte de nuestra ley interna.' WHERE numero_articulo = 91;
UPDATE articulos SET explicacion_sencilla = 'Tratados que ceden soberanía (como entrar en la Unión Europea): necesitan permiso especial por Ley Orgánica.' WHERE numero_articulo = 92;
UPDATE articulos SET explicacion_sencilla = 'Autorización para tratados importantes (militares, políticos, financieros): requieren permiso de las Cortes.' WHERE numero_articulo = 93; /* Nota: Tu texto SQL 93 habla de org supranacionales, el 94 de autorizacion. Ajusto a tu texto */
-- RE-CORRECCIÓN: Tu insert 93 habla de "tratados por los que se atribuya... competencias". Eso es el Art 93 real. Tu insert 94 habla de autorización. OK.
UPDATE articulos SET explicacion_sencilla = 'Para ceder competencias a una organización internacional (como la UE) se necesita Ley Orgánica.' WHERE numero_articulo = 93;
UPDATE articulos SET explicacion_sencilla = 'Para la mayoría de tratados internacionales importantes, el Gobierno necesita permiso del Congreso y Senado.' WHERE numero_articulo = 94;
UPDATE articulos SET explicacion_sencilla = 'Si un tratado va contra la Constitución, hay que cambiar la Constitución antes de firmarlo.' WHERE numero_articulo = 95;
UPDATE articulos SET explicacion_sencilla = 'Los tratados internacionales pueden ser derogados según las normas internacionales.' WHERE numero_articulo = 96; /* Nota: Tu SQL 96 dice "El Presidente... comunicará... iniciativa". Realmente el 96 habla de derogación. Tu texto insertado en el 96 es raro, parece el 96.2 o modificado. Pondré explicación genérica sobre tratados */

-- ----------------------------------------------------------------------------
-- TÍTULO IV: EL GOBIERNO (97-107)
-- ----------------------------------------------------------------------------
UPDATE articulos SET explicacion_sencilla = 'El Gobierno dirige la política y la administración del país. Está formado por el Presidente, Vicepresidentes y Ministros.' WHERE numero_articulo = 97;
UPDATE articulos SET explicacion_sencilla = 'Composición del Gobierno. El Presidente es elegido por el Congreso y él elige a sus Ministros.' WHERE numero_articulo = 98;
UPDATE articulos SET explicacion_sencilla = 'Elección del Presidente (Investidura): El Rey propone un candidato. Si el Congreso le vota por mayoría absoluta (o simple tras 48h), es Presidente.' WHERE numero_articulo = 99;
UPDATE articulos SET explicacion_sencilla = 'Los Ministros son nombrados y cesados por el Rey a propuesta del Presidente del Gobierno.' WHERE numero_articulo = 100;
UPDATE articulos SET explicacion_sencilla = 'La Administración Pública debe servir a los ciudadanos con objetividad. Se regula el acceso a ser funcionario (mérito y capacidad).' WHERE numero_articulo = 101;
UPDATE articulos SET explicacion_sencilla = 'Responsabilidad de la Administración: los tribunales controlan que la Administración actúe legalmente.' WHERE numero_articulo = 102;
UPDATE articulos SET explicacion_sencilla = 'La Administración actúa con jerarquía y descentralización. El Consejo de Estado es su máximo órgano consultivo.' WHERE numero_articulo = 103;
UPDATE articulos SET explicacion_sencilla = 'Fuerzas y Cuerpos de Seguridad (Policía y Guardia Civil): dependen del Gobierno y su misión es proteger los derechos y la seguridad ciudadana.' WHERE numero_articulo = 104;
UPDATE articulos SET explicacion_sencilla = 'Audiencia de los ciudadanos: la ley regulará cómo los ciudadanos participan en la elaboración de normas administrativas.' WHERE numero_articulo = 105;
UPDATE articulos SET explicacion_sencilla = 'Los tribunales controlan la potestad reglamentaria y la legalidad de la actuación administrativa. Si la Administración te causa un daño, debe indemnizarte.' WHERE numero_articulo = 106;
UPDATE articulos SET explicacion_sencilla = 'El Consejo de Estado es el supremo órgano consultivo del Gobierno.' WHERE numero_articulo = 107; /* OJO: En tu SQL, el 107 es Tribunal de Cuentas. En la Constitución real el 107 es Consejo de Estado y 136 Tribunal de Cuentas.  Me baso en TU texto SQL que dice "Tribunal de Cuentas" en el 107. */
UPDATE articulos SET explicacion_sencilla = 'El Tribunal de Cuentas vigila las cuentas y la gestión económica del Estado.' WHERE numero_articulo = 107;

-- ----------------------------------------------------------------------------
-- TÍTULO V: RELACIONES GOBIERNO-CORTES (108-116)
-- ----------------------------------------------------------------------------
UPDATE articulos SET explicacion_sencilla = 'El Gobierno responde de su gestión política ante el Congreso de los Diputados.' WHERE numero_articulo = 108;
UPDATE articulos SET explicacion_sencilla = 'Las Cámaras pueden pedir al Gobierno información y ayuda.' WHERE numero_articulo = 109;
UPDATE articulos SET explicacion_sencilla = 'Las Cámaras y sus comisiones pueden reclamar la presencia de miembros del Gobierno.' WHERE numero_articulo = 110;
UPDATE articulos SET explicacion_sencilla = 'Interpelaciones y preguntas: Los diputados y senadores preguntan al Gobierno y este debe responder.' WHERE numero_articulo = 111; /* Tu texto 111 dice Disolución. Ajusto a TU texto */
UPDATE articulos SET explicacion_sencilla = 'El Presidente del Gobierno puede disolver las Cortes y convocar elecciones anticipadas.' WHERE numero_articulo = 111;
UPDATE articulos SET explicacion_sencilla = 'Cuestión de confianza: El Presidente pide al Congreso que le ratifique su apoyo.' WHERE numero_articulo = 112; /* Tu texto 112 habla de disolucion conjunta o propuesta. Es raro. Ajusto a TU texto SQL */
UPDATE articulos SET explicacion_sencilla = 'Procedimientos para disolver las Cortes Generales.' WHERE numero_articulo = 112;
UPDATE articulos SET explicacion_sencilla = 'Moción de censura: El Congreso puede exigir responsabilidad política al Gobierno y destituirlo.' WHERE numero_articulo = 113; /* Tu texto SQL 113 dice "Administracion del Estado...". Ajusto a TU texto */
UPDATE articulos SET explicacion_sencilla = 'La Administración sirve al interés general y actúa de acuerdo a la ley bajo control judicial.' WHERE numero_articulo = 113;
UPDATE articulos SET explicacion_sencilla = 'Si el Gobierno pierde la confianza, dimite. Si se aprueba una moción de censura, el candidato alternativo es investido Presidente.' WHERE numero_articulo = 114;
UPDATE articulos SET explicacion_sencilla = 'El Gobierno en funciones continúa gestionando el país hasta que toma posesión el nuevo Gobierno tras las elecciones.' WHERE numero_articulo = 115;
UPDATE articulos SET explicacion_sencilla = 'Estados de alarma, excepción y sitio: situaciones especiales de crisis donde el Gobierno tiene poderes extraordinarios.' WHERE numero_articulo = 116; /* Tu texto 116 habla de confianza negada. Ajusto a TU texto */
UPDATE articulos SET explicacion_sencilla = 'Si el Congreso niega la confianza al Presidente, este dimite y se busca uno nuevo.' WHERE numero_articulo = 116;

-- NOTA IMPORTANTE: Tu archivo SQL tiene mezclados los textos de los artículos del Título V con otros o versiones diferentes. He intentado ajustar la explicación a lo que dice literalmente TU campo 'texto' en la base de datos para evitar incoherencias.

-- ----------------------------------------------------------------------------
-- TÍTULO VI: PODER JUDICIAL (117-127)
-- ----------------------------------------------------------------------------
UPDATE articulos SET explicacion_sencilla = 'La justicia emana del pueblo. Los jueces son independientes, inamovibles (no se les puede echar sin causa) y solo obedecen a la ley.' WHERE numero_articulo = 117;
UPDATE articulos SET explicacion_sencilla = 'La justicia es gratuita para quienes no tengan recursos económicos.' WHERE numero_articulo = 118; /* Tu texto 118 dice Ley Orgánica Poder Judicial. Ajusto a tu texto */
UPDATE articulos SET explicacion_sencilla = 'Una Ley Orgánica regulará cómo funcionan los juzgados y el estatus de los jueces.' WHERE numero_articulo = 118;
UPDATE articulos SET explicacion_sencilla = 'La justicia es gratuita en los casos que diga la ley y para quien no tenga dinero.' WHERE numero_articulo = 119; /* Tu texto 119 habla del CGPJ. Ajusto a tu texto */
UPDATE articulos SET explicacion_sencilla = 'El Consejo General del Poder Judicial (CGPJ) es el órgano que gobierna a los jueces (nombramientos, sanciones, etc.).' WHERE numero_articulo = 119;
UPDATE articulos SET explicacion_sencilla = 'Las sentencias deben ser motivadas (explicadas) y se pronuncian en audiencia pública.' WHERE numero_articulo = 120; /* Tu texto 120 habla de gratuidad. Ajusto a tu texto */
UPDATE articulos SET explicacion_sencilla = 'La justicia será gratuita para quienes acrediten insuficiencia de recursos.' WHERE numero_articulo = 120;
UPDATE articulos SET explicacion_sencilla = 'Los jueces solo tienen funciones de juzgar y hacer ejecutar lo juzgado. Se garantiza su imparcialidad.' WHERE numero_articulo = 121;
UPDATE articulos SET explicacion_sencilla = 'El Consejo General del Poder Judicial es el órgano de gobierno de los jueces.' WHERE numero_articulo = 122; /* Tu texto 122 habla de jurisdiccion penal unica. Ajusto a tu texto */
UPDATE articulos SET explicacion_sencilla = 'Hay una sola jurisdicción para todos. Se prohíben los tribunales de excepción (juzgados creados "ad hoc" para un caso).' WHERE numero_articulo = 122;
UPDATE articulos SET explicacion_sencilla = 'El Tribunal Supremo es el órgano judicial más alto de España (salvo en garantías constitucionales).' WHERE numero_articulo = 123;
UPDATE articulos SET explicacion_sencilla = 'El Ministerio Fiscal defiende la legalidad y los derechos de los ciudadanos. El Fiscal General es nombrado por el Rey a propuesta del Gobierno.' WHERE numero_articulo = 124;
UPDATE articulos SET explicacion_sencilla = 'El Jurado Popular: los ciudadanos podrán participar en la justicia en determinados procesos penales.' WHERE numero_articulo = 125;
UPDATE articulos SET explicacion_sencilla = 'La Policía Judicial depende de los jueces y fiscales para investigar delitos.' WHERE numero_articulo = 126;
UPDATE articulos SET explicacion_sencilla = 'Los jueces y fiscales no pueden pertenecer a partidos políticos ni sindicatos mientras estén en activo.' WHERE numero_articulo = 127; /* Tu texto 127 habla de acciones civiles e intereses difusos. Ajusto a tu texto */
UPDATE articulos SET explicacion_sencilla = 'Se fomentará la defensa de intereses colectivos (como consumidores) ante la justicia.' WHERE numero_articulo = 127;

-- ----------------------------------------------------------------------------
-- TÍTULO VII: ECONOMÍA Y HACIENDA (128-136)
-- ----------------------------------------------------------------------------
UPDATE articulos SET explicacion_sencilla = 'Toda la riqueza del país está al servicio del interés general. El Estado puede intervenir en la economía.' WHERE numero_articulo = 128;
UPDATE articulos SET explicacion_sencilla = 'Participación en la empresa y la Seguridad Social. Se permite que los trabajadores accedan a los medios de producción.' WHERE numero_articulo = 129; /* Tu texto 129 habla de uso del suelo. Ajusto a tu texto */
UPDATE articulos SET explicacion_sencilla = 'La ley regulará el uso del suelo para evitar la especulación inmobiliaria.' WHERE numero_articulo = 129;
UPDATE articulos SET explicacion_sencilla = 'Se reconoce la propiedad privada, pero puede ser expropiada por interés público pagando indemnización.' WHERE numero_articulo = 130;
UPDATE articulos SET explicacion_sencilla = 'El Estado puede planificar la actividad económica general para atender a necesidades colectivas.' WHERE numero_articulo = 131; /* Tu texto 131 dice expropiacion. Ajusto a tu texto */
UPDATE articulos SET explicacion_sencilla = 'El Estado puede expropiar bienes por utilidad pública pagando una indemnización.' WHERE numero_articulo = 131;
UPDATE articulos SET explicacion_sencilla = 'Régimen de bienes de dominio público (como las playas), que son inalienables (no se pueden vender).' WHERE numero_articulo = 132; /* Tu texto 132 habla de politica economica. Ajusto a tu texto */
UPDATE articulos SET explicacion_sencilla = 'El Gobierno dirige la política económica buscando estabilidad, eficiencia y justicia social.' WHERE numero_articulo = 132;
UPDATE articulos SET explicacion_sencilla = 'Potestad tributaria: solo el Estado puede establecer impuestos mediante ley.' WHERE numero_articulo = 133; /* Tu texto 133 habla de Hacienda de entes territoriales. Ajusto a tu texto */
UPDATE articulos SET explicacion_sencilla = 'La Hacienda de las regiones y ayuntamientos se regula por ley, buscando solidaridad entre territorios.' WHERE numero_articulo = 133;
UPDATE articulos SET explicacion_sencilla = 'Presupuestos Generales del Estado: controlan el gasto público y la asignación equitativa de recursos.' WHERE numero_articulo = 134;
UPDATE articulos SET explicacion_sencilla = 'Deuda Pública: El Estado debe pagar sus deudas prioritariamente. Límites al déficit.' WHERE numero_articulo = 135; /* Tu texto 135 habla de admon tributaria. Ajusto a tu texto */
UPDATE articulos SET explicacion_sencilla = 'Todos deben pagar impuestos según su capacidad. La administración tributaria seguirá la ley.' WHERE numero_articulo = 135;
UPDATE articulos SET explicacion_sencilla = 'El Tribunal de Cuentas es el supremo órgano fiscalizador de las cuentas del Estado.' WHERE numero_articulo = 136; /* Tu texto 136 habla del Banco de España. Ajusto a tu texto */
UPDATE articulos SET explicacion_sencilla = 'El Banco de España actúa según los intereses del Estado bajo su supervisión.' WHERE numero_articulo = 136;

-- ----------------------------------------------------------------------------
-- TÍTULO VIII: ORGANIZACIÓN TERRITORIAL (137-158)
-- ----------------------------------------------------------------------------
UPDATE articulos SET explicacion_sencilla = 'España se organiza en Municipios, Provincias y Comunidades Autónomas. Todas tienen autonomía para gestionar sus intereses.' WHERE numero_articulo = 137;
UPDATE articulos SET explicacion_sencilla = 'El Estado garantiza que la autonomía se ejerza con solidaridad entre todas las partes de España.' WHERE numero_articulo = 138;
UPDATE articulos SET explicacion_sencilla = 'Todos los españoles tienen los mismos derechos y obligaciones en cualquier parte del territorio nacional.' WHERE numero_articulo = 139;
UPDATE articulos SET explicacion_sencilla = 'Libertad de circulación: ninguna autoridad puede poner trabas al movimiento de personas o bienes por España.' WHERE numero_articulo = 140; /* Tu texto 140 dice "ninguna ley territorial sin previa autorizacion". Ajusto a tu texto */
UPDATE articulos SET explicacion_sencilla = 'No se pueden aprobar leyes territoriales que afecten a otros sin autorización previa.' WHERE numero_articulo = 140;
UPDATE articulos SET explicacion_sencilla = 'La administración local: Municipios y Provincias.' WHERE numero_articulo = 141;
UPDATE articulos SET explicacion_sencilla = 'Los Ayuntamientos tienen personalidad jurídica y son gobernados por Alcaldes y Concejales elegidos por los vecinos.' WHERE numero_articulo = 142;
UPDATE articulos SET explicacion_sencilla = 'Las Provincias son agrupaciones de municipios administradas por las Diputaciones.' WHERE numero_articulo = 143;
UPDATE articulos SET explicacion_sencilla = 'Iniciativa autonómica: derecho de las provincias limítrofes con características comunes a formar una Comunidad Autónoma.' WHERE numero_articulo = 144; /* Tu texto 144 dice "reconoce derecho autonomia nacionalidades". Ajusto a tu texto */
UPDATE articulos SET explicacion_sencilla = 'La Constitución garantiza el derecho a la autonomía de las nacionalidades y regiones de España.' WHERE numero_articulo = 144;
UPDATE articulos SET explicacion_sencilla = 'Las Cortes Generales pueden autorizar autonomías especiales (como Madrid o Ceuta y Melilla).' WHERE numero_articulo = 145; /* Tu texto 145 dice "denominacion en estatutos". Ajusto a tu texto */
UPDATE articulos SET explicacion_sencilla = 'Las Comunidades Autónomas elegirán su nombre en sus Estatutos, que son leyes orgánicas.' WHERE numero_articulo = 145;
UPDATE articulos SET explicacion_sencilla = 'Cómo se elaboran los Estatutos de Autonomía.' WHERE numero_articulo = 146;
UPDATE articulos SET explicacion_sencilla = 'Los Estatutos pueden reformarse según sus propias normas y con aprobación de las Cortes.' WHERE numero_articulo = 147; /* Tu texto 147 dice "aprobados por referendum". Ajusto a tu texto */
UPDATE articulos SET explicacion_sencilla = 'Los Estatutos se aprueban por referéndum de los ciudadanos y luego por las Cortes.' WHERE numero_articulo = 147;
UPDATE articulos SET explicacion_sencilla = 'Competencias de las Comunidades Autónomas: lista de cosas que pueden gestionar (urbanismo, obras públicas locales, etc.).' WHERE numero_articulo = 148;
UPDATE articulos SET explicacion_sencilla = 'Competencias exclusivas del Estado: lista de cosas que SOLO puede hacer el Gobierno central (Defensa, relaciones internacionales, legislación penal, etc.).' WHERE numero_articulo = 149;
UPDATE articulos SET explicacion_sencilla = 'Leyes marco y de transferencia: el Estado puede dar a las Comunidades facultades que en principio eran suyas.' WHERE numero_articulo = 150;
UPDATE articulos SET explicacion_sencilla = 'El proceso rápido de autonomía (vía del 151) para regiones históricas.' WHERE numero_articulo = 151;
UPDATE articulos SET explicacion_sencilla = 'Organización institucional de las Comunidades: Asamblea Legislativa, Consejo de Gobierno y Presidente.' WHERE numero_articulo = 152;
UPDATE articulos SET explicacion_sencilla = 'Control de las Comunidades Autónomas: Tribunal Constitucional (leyes), Gobierno (delegado), Tribunal de Cuentas (dinero) y Justicia ordinaria.' WHERE numero_articulo = 153; /* Tu texto 153 dice "no podran conciertarse entre si". Ajusto a tu texto */
UPDATE articulos SET explicacion_sencilla = 'Las Comunidades Autónomas no pueden federarse entre sí, pero pueden hacer convenios de colaboración.' WHERE numero_articulo = 153;
UPDATE articulos SET explicacion_sencilla = 'Delegado del Gobierno: dirige la administración del Estado en la Comunidad Autónoma.' WHERE numero_articulo = 154; /* Tu texto 154 dice "no podra actuar fuera territorio". Ajusto a tu texto */
UPDATE articulos SET explicacion_sencilla = 'La administración de una Comunidad Autónoma solo actúa dentro de su territorio.' WHERE numero_articulo = 154;
UPDATE articulos SET explicacion_sencilla = 'Si una Comunidad Autónoma incumple gravemente la Constitución, el Gobierno (con permiso del Senado) puede intervenirla para obligarla a cumplir.' WHERE numero_articulo = 155;
UPDATE articulos SET explicacion_sencilla = 'Autonomía financiera: las Comunidades tendrán sus propios recursos (impuestos propios y cedidos) para funcionar.' WHERE numero_articulo = 156;
UPDATE articulos SET explicacion_sencilla = 'Recursos de las Comunidades Autónomas (impuestos, transferencias del Estado, etc.).' WHERE numero_articulo = 157; /* Tu texto 157 dice "proyecto ley financiacion". Ajusto a tu texto */
UPDATE articulos SET explicacion_sencilla = 'El Senado regula y aprueba cómo se financian las Comunidades Autónomas.' WHERE numero_articulo = 157;
UPDATE articulos SET explicacion_sencilla = 'Fondo de Compensación Interterritorial: dinero del Estado para corregir desigualdades y ayudar a los territorios más pobres.' WHERE numero_articulo = 158;

-- ----------------------------------------------------------------------------
-- TÍTULO IX: TRIBUNAL CONSTITUCIONAL (159-165)
-- ----------------------------------------------------------------------------
UPDATE articulos SET explicacion_sencilla = 'El Tribunal Constitucional es el intérprete supremo de la Constitución y es independiente de los demás poderes.' WHERE numero_articulo = 159;
UPDATE articulos SET explicacion_sencilla = 'El Presidente del Tribunal Constitucional es nombrado por el Rey entre sus miembros.' WHERE numero_articulo = 160; /* Tu texto 160 dice "se compone de 12 miembros". Ajusto a tu texto */
UPDATE articulos SET explicacion_sencilla = 'El Tribunal Constitucional tiene 12 miembros elegidos por Congreso, Senado, Gobierno y jueces. Deben ser juristas expertos.' WHERE numero_articulo = 160;
UPDATE articulos SET explicacion_sencilla = 'Competencias: decide si las leyes son constitucionales, protege derechos fundamentales (amparo) y resuelve conflictos entre Estado y Comunidades.' WHERE numero_articulo = 161;
UPDATE articulos SET explicacion_sencilla = 'Quién puede acudir al Tribunal Constitucional: Presidente, Defensor del Pueblo, 50 diputados/senadores, gobiernos autonómicos y jueces.' WHERE numero_articulo = 162; /* Tu texto 162 dice "particulares recurso amparo". Ajusto a tu texto */
UPDATE articulos SET explicacion_sencilla = 'Los ciudadanos pueden pedir amparo al Tribunal Constitucional si se violan sus derechos fundamentales.' WHERE numero_articulo = 162;
UPDATE articulos SET explicacion_sencilla = 'Cuestión de inconstitucionalidad: un juez puede preguntar al Tribunal si una ley que tiene que aplicar es válida.' WHERE numero_articulo = 163; /* Tu texto 163 dice "conflictos competencia". Ajusto a tu texto */
UPDATE articulos SET explicacion_sencilla = 'El Tribunal Constitucional resuelve peleas sobre quién tiene la competencia (poder) entre el Estado y las Autonomías.' WHERE numero_articulo = 163;
UPDATE articulos SET explicacion_sencilla = 'Las sentencias del Tribunal Constitucional no se pueden recurrir y tienen efectos generales (anulan leyes).' WHERE numero_articulo = 164;
UPDATE articulos SET explicacion_sencilla = 'Una ley orgánica regulará el funcionamiento detallado del Tribunal Constitucional.' WHERE numero_articulo = 165;

-- ----------------------------------------------------------------------------
-- TÍTULO X: REFORMA CONSTITUCIONAL (166-169)
-- ----------------------------------------------------------------------------
UPDATE articulos SET explicacion_sencilla = 'Quién puede proponer cambiar la Constitución: Gobierno, Congreso, Senado y Parlamentos autonómicos.' WHERE numero_articulo = 166;
UPDATE articulos SET explicacion_sencilla = 'Reforma ordinaria: necesita aprobación de 3/5 de ambas cámaras. Si lo pide el 10% de diputados, se hace referéndum.' WHERE numero_articulo = 167;
UPDATE articulos SET explicacion_sencilla = 'Reforma agravada (cambio total o partes clave como derechos fundamentales o la Corona): disolución de Cortes, nuevas elecciones, aprobación por 2/3 y referéndum obligatorio.' WHERE numero_articulo = 168;
UPDATE articulos SET explicacion_sencilla = 'No se puede iniciar una reforma de la Constitución en tiempos de guerra o estados de alarma/excepción.' WHERE numero_articulo = 169;

-- ----------------------------------------------------------------------------
-- DISPOSICIONES
-- ----------------------------------------------------------------------------
UPDATE articulos SET explicacion_sencilla = 'Se respetan los derechos históricos de los territorios forales (como País Vasco y Navarra).' WHERE numero_articulo = 201;
UPDATE articulos SET explicacion_sencilla = 'Los órganos consultivos de las Autonomías también pueden iniciar acciones civiles en defensa de derechos humanos.' WHERE numero_articulo = 202;
UPDATE articulos SET explicacion_sencilla = 'Los Estatutos de autonomía de la vía rápida pueden ser reformados por sus propias asambleas.' WHERE numero_articulo = 203;
UPDATE articulos SET explicacion_sencilla = 'Las Comunidades Autónomas gestionarán sus impuestos según sus estatutos y la ley.' WHERE numero_articulo = 204;

UPDATE articulos SET explicacion_sencilla = 'Mientras se creaba el Tribunal Constitucional, el Supremo hacía sus funciones (temporal).' WHERE numero_articulo = 211;
UPDATE articulos SET explicacion_sencilla = 'Reglas para las primeras elecciones tras aprobarse la Constitución.' WHERE numero_articulo = 212;
UPDATE articulos SET explicacion_sencilla = 'En las primeras elecciones, el Congreso tuvo 350 diputados.' WHERE numero_articulo = 213;
UPDATE articulos SET explicacion_sencilla = 'Los defensores del pueblo autonómicos pueden actuar mientras se regula todo.' WHERE numero_articulo = 214;
UPDATE articulos SET explicacion_sencilla = 'Normas transitorias sobre funcionarios públicos.' WHERE numero_articulo = 215;
UPDATE articulos SET explicacion_sencilla = 'La administración militar sigue sus propias normas hasta que se regule por ley orgánica.' WHERE numero_articulo = 216;
UPDATE articulos SET explicacion_sencilla = 'Regulación provisional de las televisiones locales.' WHERE numero_articulo = 217;
UPDATE articulos SET explicacion_sencilla = 'Adaptación de las instituciones autonómicas preexistentes a la nueva Constitución.' WHERE numero_articulo = 218;
UPDATE articulos SET explicacion_sencilla = 'Las leyes de asociaciones antiguas siguen vigentes hasta que se haga una nueva.' WHERE numero_articulo = 219;

UPDATE articulos SET explicacion_sencilla = 'Quedan anuladas las Leyes Fundamentales del Reino (la legislación de la dictadura franquista) y cualquier norma que contradiga esta Constitución.' WHERE numero_articulo = 220;

UPDATE articulos SET explicacion_sencilla = 'La Constitución entra en vigor el día que se publica en el BOE.' WHERE numero_articulo = 221;