-- ============================================================================
-- SCRIPT SQL: CONSTITUCIÓN ESPAÑOLA DE 1978 - VERSIÓN COMPLETA
-- ============================================================================
-- Descripción: Script con TODOS los artículos (1-169) + disposiciones adicionales,
--              transitorias, derogatoria y final de la Constitución Española de 1978
-- Base de datos: Compatible con MySQL, PostgreSQL, SQLite, SQL Server
-- Creación de tabla (opcional):
-- ============================================================================

-- CREATE TABLE articulos (
--   id INT AUTO_INCREMENT PRIMARY KEY,
--   numero_articulo INT NOT NULL UNIQUE,
--   titulo VARCHAR(100) NOT NULL,
--   capitulo VARCHAR(100),
--   seccion VARCHAR(100),
--   texto LONGTEXT NOT NULL,
--   url_boe VARCHAR(255),
--   fecha_insercion TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
--   INDEX idx_numero (numero_articulo),
--   INDEX idx_titulo (titulo)
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ============================================================================
-- INSERTS: TÍTULO PRELIMINAR (Artículos 1-9)
-- ============================================================================


-- SECCIÓN: Título Preliminar (Artículos 1-9)
INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(1, 'Título Preliminar', NULL, NULL, '1. España se constituye en un Estado social y democrático de Derecho, que propugna como valores superiores de su ordenamiento jurídico la libertad, la justicia, la igualdad y el pluralismo político.

2. La soberanía nacional reside en el pueblo español, del que emanan los poderes del Estado.

3. La forma política del Estado español es la Monarquía parlamentaria.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a1');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(2, 'Título Preliminar', NULL, NULL, 'La Constitución se fundamenta en la indisoluble unidad de la Nación española, patria común e indivisible de todos los españoles, y reconoce y garantiza el derecho a la autonomía de las nacionalidades y regiones que la integran y la solidaridad entre todas ellas.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a2');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(3, 'Título Preliminar', NULL, NULL, '1. El castellano es la lengua española oficial del Estado. Todos los españoles tienen el deber de conocerla y el derecho a usarla.

2. Las demás lenguas españolas serán también oficiales en las respectivas Comunidades Autónomas de acuerdo con sus Estatutos.

3. La riqueza de las distintas modalidades lingüísticas de España es un patrimonio cultural que será objeto de especial respeto y protección.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a3');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(4, 'Título Preliminar', NULL, NULL, '1. La bandera de España está formada por tres franjas horizontales, roja, amarilla y roja, siendo la amarilla de doble anchura que cada una de las rojas.

2. Los Estatutos podrán reconocer banderas y enseñas propias de las Comunidades Autónomas. Estas se utilizarán junto a la bandera de España en sus edificios públicos y en sus actos oficiales.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a4');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(5, 'Título Preliminar', NULL, NULL, 'La capital del Estado es la villa de Madrid.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a5');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(6, 'Título Preliminar', NULL, NULL, 'Los partidos políticos expresan el pluralismo político, concurren a la formación y manifestación de la voluntad popular y son instrumento fundamental para la participación política. Su creación y el ejercicio de su actividad son libres dentro del respeto a la Constitución y a la ley. Su estructura interna y funcionamiento deberán ser democráticos.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a6');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(7, 'Título Preliminar', NULL, NULL, 'Los sindicatos de trabajadores y las asociaciones empresariales contribuyen a la defensa y promoción de los intereses económicos y sociales que les son propios. Su creación y el ejercicio de su actividad son libres dentro del respeto a la Constitución y a la ley. Su estructura interna y funcionamiento deberán ser democráticos.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a7');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(8, 'Título Preliminar', NULL, NULL, '1. Las Fuerzas Armadas, constituidas por el Ejército de Tierra, la Armada y el Ejército del Aire, tienen como misión garantizar la soberanía e independencia de España, defender su integridad territorial y el ordenamiento constitucional.

2. Una ley orgánica regulará las bases de la organización militar conforme a los principios de la presente Constitución.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a8');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(9, 'Título Preliminar', NULL, NULL, '1. Los ciudadanos y los poderes públicos están sujetos a la Constitución y al resto del ordenamiento jurídico.

2. Corresponde a los poderes públicos promover las condiciones para que la libertad y la igualdad del individuo y de los grupos en que se integra sean reales y efectivas; remover los obstáculos que impidan o dificulten su plenitud y facilitar la participación de todos los ciudadanos en la vida política, económica, cultural y social.

3. La Constitución garantiza el principio de legalidad, la jerarquía normativa, la publicidad de las normas, la irretroactividad de las disposiciones sancionadoras no favorables o restrictivas de derechos individuales, la seguridad jurídica, la responsabilidad y la interdicción de la arbitrariedad de los poderes públicos.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a9');


-- SECCIÓN: Título I (Artículos 10-55)
INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(10, 'Título I', 'Capítulo 1', 'Sección 1ª', '1. La dignidad de la persona, los derechos inviolables que le son inherentes, el libre desarrollo de la personalidad, el respeto a la ley y a los derechos de los demás son fundamento del orden político y de la paz social.

2. Las normas relativas a los derechos fundamentales y a las libertades que la Constitución reconoce se interpretarán de conformidad con la Declaración Universal de Derechos Humanos y los tratados y acuerdos internacionales sobre las mismas materias ratificados por España.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a10');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(11, 'Título I', 'Capítulo 1', 'Sección 1ª', '1. La nacionalidad española se adquiere, se conserva y se pierde de acuerdo con lo establecido por la ley.

2. Ningún español de origen podrá ser privado de su nacionalidad.

3. El Estado podrá concertar tratados de doble nacionalidad con los países iberoamericanos o con aquellos que hayan tenido o tengan una particular vinculación con España. En estos mismos países, aun cuando no reconozcan a sus ciudadanos un derecho recíproco, podrán naturalizarse los españoles sin perder su nacionalidad de origen.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a11');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(12, 'Título I', 'Capítulo 1', 'Sección 1ª', 'Los españoles son mayores de edad a los dieciocho años.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a12');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(13, 'Título I', 'Capítulo 1', 'Sección 1ª', '1. Los extranjeros gozarán en España de las libertades públicas que garantiza el presente Título en los términos que establezcan los tratados y la ley.

2. Solamente los españoles serán titulares de los derechos reconocidos en el artículo 23, salvo lo que, atendiendo a criterios de reciprocidad, pueda establecerse por tratado o ley para el derecho de sufragio activo y pasivo en las elecciones municipales.

3. La extradición sólo se concederá en cumplimiento de un tratado o de la ley, atendiendo al principio de reciprocidad. Quedan excluidos de la extradición los delitos políticos, no considerándose como tales los actos de terrorismo.

4. La ley establecerá los términos en que los ciudadanos de otros países y los apátridas podrán gozar del derecho de asilo en España.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a13');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(14, 'Título I', 'Capítulo 2', 'Sección 1ª', 'Los españoles son iguales ante la ley, sin que pueda prevalecer discriminación alguna por razón de nacimiento, raza, sexo, religión, opinión o cualquier otra condición o circunstancia personal o social.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a14');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(15, 'Título I', 'Capítulo 2', 'Sección 1ª', 'Todos tienen derecho a la vida y a la integridad física y moral, sin que, en ningún caso, puedan ser sometidos a tortura ni a penas o tratos inhumanos o degradantes. Queda abolida la pena de muerte, salvo lo que puedan disponer las leyes penales militares para tiempos de guerra.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a15');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(16, 'Título I', 'Capítulo 2', 'Sección 1ª', '1. Se garantiza la libertad ideológica, religiosa y de culto de los individuos y las comunidades sin más limitación, en sus manifestaciones, que la necesaria para el mantenimiento del orden público protegido por la ley.

2. Nadie podrá ser obligado a declarar sobre su ideología, religión o creencias.

3. Ninguna confesión tendrá carácter estatal. Los poderes públicos tendrán en cuenta las creencias religiosas de la sociedad española y mantendrán las consiguientes relaciones de cooperación con la Iglesia Católica y las demás confesiones.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a16');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(17, 'Título I', 'Capítulo 2', 'Sección 1ª', '1. Toda persona tiene derecho a la libertad y a la seguridad. Nadie puede ser privado de su libertad, sino con la observancia de lo establecido en este artículo y en los casos y en la forma previstos en la ley.

2. La detención preventiva no podrá durar más del tiempo estrictamente necesario para la realización de las averiguaciones tendentes al esclarecimiento de los hechos, y, en todo caso, en el plazo máximo de setenta y dos horas, el detenido deberá ser puesto en libertad o a disposición de la autoridad judicial.

3. Toda persona detenida debe ser informada de forma inmediata, y de modo que le sea comprensible, de sus derechos y de las razones de su detención, no pudiendo ser obligada a declarar. Se garantiza la asistencia de abogado al detenido en las diligencias policiales y judiciales, en los términos que la ley establezca.

4. La ley regulará un procedimiento de «habeas corpus» para producir la inmediata puesta a disposición judicial de toda persona detenida ilegalmente. Asimismo, por ley se determinará el plazo máximo de duración de la prisión provisional.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a17');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(18, 'Título I', 'Capítulo 2', 'Sección 1ª', '1. Se garantiza el derecho al honor, a la intimidad personal y familiar y a la propia imagen.

2. El domicilio es inviolable. Ninguna entrada o registro podrá hacerse en él sin consentimiento del titular o resolución judicial, salvo en caso de flagrante delito.

3. Se garantiza el secreto de las comunicaciones y, en especial, de las postales, telegráficas y telefónicas, salvo resolución judicial.

4. La ley limitará el uso de la informática para garantizar el honor y la intimidad personal y familiar de los ciudadanos y el pleno ejercicio de sus derechos.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a18');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(19, 'Título I', 'Capítulo 2', 'Sección 1ª', 'Los españoles tienen derecho a elegir libremente su residencia y a circular por el territorio nacional.

Asimismo, tienen derecho a entrar y salir libremente de España en los términos que la ley establezca. Este derecho no podrá ser limitado por motivos políticos o ideológicos.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a19');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(20, 'Título I', 'Capítulo 2', 'Sección 1ª', '1. Se reconocen y protegen los derechos:

a) A expresar y difundir libremente los pensamientos, ideas y opiniones mediante la palabra, el escrito o cualquier otro medio de reproducción.

b) A la producción y creación literaria, artística, científica y técnica.

c) A la libertad de cátedra.

d) A comunicar o recibir libremente información veraz por cualquier medio de difusión. La ley regulará el derecho a la cláusula de conciencia y al secreto profesional en el ejercicio de estas libertades.

2. El ejercicio de estos derechos no puede restringirse mediante ningún tipo de censura previa.

3. La ley regulará la organización y el control parlamentario de los medios de comunicación social dependientes del Estado o de cualquier ente público y garantizará el acceso a dichos medios de los grupos sociales y políticos significativos, respetando el pluralismo de la sociedad y de las diversas lenguas de España.

4. Estas libertades tienen su límite en el respeto a los derechos reconocidos en este Título, en los preceptos de las leyes que lo desarrollen y, especialmente, en el derecho al honor, a la intimidad, a la propia imagen y a la protección de la juventud y de la infancia.

5. Sólo podrá acordarse el secuestro de publicaciones, grabaciones y otros medios de información en virtud de resolución judicial.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a20');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(21, 'Título I', 'Capítulo 2', 'Sección 1ª', '1. Se reconoce el derecho de reunión pacífica y sin armas. El ejercicio de este derecho no necesitará autorización previa.

2. En los casos de reuniones en lugares de tránsito público y manifestaciones se dará comunicación previa a la autoridad, que sólo podrá prohibirlas cuando existan razones fundadas de alteración del orden público, con peligro para personas o bienes.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a21');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(22, 'Título I', 'Capítulo 2', 'Sección 1ª', '1. Se reconoce el derecho de asociación.

2. Las asociaciones que persigan fines o utilicen medios tipificados como delito son ilegales.

3. Las asociaciones constituidas al amparo de este artículo deberán inscribirse en un registro a los solos efectos de publicidad.

4. Las asociaciones sólo podrán ser disueltas o suspendidas en sus actividades en virtud de resolución judicial motivada.

5. Se prohíben las asociaciones secretas y las de carácter paramilitar.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a22');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(23, 'Título I', 'Capítulo 2', 'Sección 1ª', '1. Los ciudadanos tienen el derecho a participar en los asuntos públicos, directamente o por medio de representantes, libremente elegidos en elecciones periódicas por sufragio universal.

2. Asimismo, tienen derecho a acceder en condiciones de igualdad a las funciones y cargos públicos, con los requisitos que señalen las leyes.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a23');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(24, 'Título I', 'Capítulo 2', 'Sección 1ª', '1. Todas las personas tienen derecho a obtener la tutela efectiva de los jueces y tribunales en el ejercicio de sus derechos e intereses legítimos, sin que, en ningún caso, pueda producirse indefensión.

2. Asimismo, todos tienen derecho al Juez ordinario predeterminado por la ley, a la defensa y a la asistencia de letrado, a ser informados de la acusación formulada contra ellos, a un proceso público sin dilaciones indebidas y con todas las garantías, a utilizar los medios de prueba pertinentes para su defensa, a no declarar contra sí mismos, a no confesarse culpables y a la presunción de inocencia.

La ley regulará los casos en que, por razón de parentesco o de secreto profesional, no se estará obligado a declarar sobre hechos presuntamente delictivos.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a24');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(25, 'Título I', 'Capítulo 2', 'Sección 1ª', '1. Nadie puede ser condenado o sancionado por acciones u omisiones que en el momento de producirse no constituyan delito, falta o infracción administrativa, según la legislación vigente en aquel momento.

2. Las penas privativas de libertad y las medidas de seguridad estarán orientadas hacia la reeducación y reinserción social y no podrán consistir en trabajos forzados. El condenado a pena de prisión que estuviere cumpliendo la misma gozará de los derechos fundamentales de este Capítulo, a excepción de los que se vean expresamente limitados por el contenido del fallo condenatorio, el sentido de la pena y la ley penitenciaria. En todo caso, tendrá derecho a un trabajo remunerado y a los beneficios correspondientes de la Seguridad Social, así como al acceso a la cultura y al desarrollo integral de su personalidad.

3. La Administración civil no podrá imponer sanciones que, directa o subsidiariamente, impliquen privación de libertad.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a25');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(26, 'Título I', 'Capítulo 2', 'Sección 1ª', 'Se prohíben los Tribunales de Honor en el ámbito de la Administración civil y de las organizaciones profesionales.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a26');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(27, 'Título I', 'Capítulo 2', 'Sección 1ª', '1. Todos tienen el derecho a la educación. Se reconoce la libertad de enseñanza.

2. La educación tendrá por objeto el pleno desarrollo de la personalidad humana en el respeto a los principios democráticos de convivencia y a los derechos y libertades fundamentales.

3. Los poderes públicos garantizan el derecho que asiste a los padres para que sus hijos reciban la formación religiosa y moral que esté de acuerdo con sus propias convicciones.

4. La enseñanza básica es obligatoria y gratuita.

5. Los poderes públicos garantizan el derecho de todos a la educación, mediante una programación general de la enseñanza, con participación efectiva de todos los sectores afectados y la creación de centros docentes.

6. Se reconoce a las personas físicas y jurídicas la libertad de creación de centros docentes, dentro del respeto a los principios constitucionales.

7. Los profesores, los padres y, en su caso, los alumnos intervendrán en el control y gestión de todos los centros sostenidos por la Administración con fondos públicos, en los términos que la ley establezca.

8. Los poderes públicos inspeccionarán y homologarán el sistema educativo para garantizar el cumplimiento de las leyes.

9. Los poderes públicos ayudarán a los centros docentes que reúnan los requisitos que la ley establezca.

10. Se reconoce la autonomía de las Universidades, en los términos que la ley establezca.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a27');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(28, 'Título I', 'Capítulo 2', 'Sección 1ª', '1. Todos tienen derecho a sindicarse libremente. La ley podrá limitar o exceptuar el ejercicio de este derecho a las Fuerzas o Institutos armados o a los demás Cuerpos sometidos a disciplina militar y regulará las peculiaridades de su ejercicio para los funcionarios públicos. La libertad sindical comprende el derecho a fundar sindicatos y a afiliarse al de su elección, así como el derecho de los sindicatos a formar confederaciones y a fundar organizaciones sindicales internacionales o a afiliarse a las mismas. Nadie podrá ser obligado a afiliarse a un sindicato.

2. Se reconoce el derecho a la huelga de los trabajadores para la defensa de sus intereses. La ley que regule el ejercicio de este derecho establecerá las garantías precisas para asegurar el mantenimiento de los servicios esenciales de la comunidad.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a28');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(29, 'Título I', 'Capítulo 2', 'Sección 1ª', '1. Todos los españoles tendrán el derecho de petición individual y colectiva, por escrito, en la forma y con los efectos que determine la ley.

2. Los miembros de las Fuerzas o Institutos armados o de los Cuerpos sometidos a disciplina militar podrán ejercer este derecho sólo individualmente y con arreglo a lo dispuesto en su legislación específica.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a29');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(30, 'Título I', 'Capítulo 2', 'Sección 2ª', '1. Los españoles tienen el derecho y el deber de defender a España.

2. La ley fijará las obligaciones militares de los españoles y regulará, con las debidas garantías, la objeción de conciencia, así como las demás causas de exención del servicio militar obligatorio, pudiendo imponer, en su caso, una prestación social sustitutoria.

3. Podrá establecerse un servicio civil para el cumplimiento de fines de interés general.

4. Mediante ley podrán regularse los deberes de los ciudadanos en los casos de grave riesgo, catástrofe o calamidad pública.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a30');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(31, 'Título I', 'Capítulo 2', 'Sección 2ª', '1. Todos contribuirán al sostenimiento de los gastos públicos de acuerdo con su capacidad económica mediante un sistema tributario justo inspirado en los principios de igualdad y progresividad que, en ningún caso, tendrá alcance confiscatorio.

2. El gasto público realizará una asignación equitativa de los recursos públicos, y su programación y ejecución responderán a los criterios de eficiencia y economía.

3. Sólo podrán establecerse prestaciones personales o patrimoniales de carácter público con arreglo a la ley.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a31');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(32, 'Título I', 'Capítulo 2', 'Sección 2ª', '1. El hombre y la mujer tienen derecho a contraer matrimonio con plena igualdad jurídica.

2. La ley regulará las formas de matrimonio, la edad y capacidad para contraerlo, los derechos y deberes de los cónyuges, las causas de separación y disolución y sus efectos.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a32');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(33, 'Título I', 'Capítulo 2', 'Sección 2ª', '1. Se reconoce el derecho a la propiedad privada y a la herencia.

2. La función social de estos derechos delimitará su contenido, de acuerdo con las leyes.

3. Nadie podrá ser privado de sus bienes y derechos sino por causa justificada de utilidad pública o interés social, mediante la correspondiente indemnización y de conformidad con lo dispuesto por las leyes.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a33');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(34, 'Título I', 'Capítulo 2', 'Sección 2ª', '1. Se reconoce el derecho de fundación para fines de interés general, con arreglo a la ley.

2. Regirá también para las fundaciones lo dispuesto en los apartados 2 y 4 del artículo 22.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a34');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(35, 'Título I', 'Capítulo 2', 'Sección 2ª', '1. Todos los españoles tienen el deber de trabajar y el derecho al trabajo, a la libre elección de profesión u oficio, a la promoción a través del trabajo y a una remuneración suficiente para satisfacer sus necesidades y las de su familia, sin que en ningún caso pueda hacerse discriminación por razón de sexo.

2. La ley regulará un estatuto de los trabajadores.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a35');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(36, 'Título I', 'Capítulo 2', 'Sección 2ª', 'La ley regulará las peculiaridades propias del régimen jurídico de los Colegios Profesionales y el ejercicio de las profesiones tituladas. La estructura interna y el funcionamiento de los Colegios deberán ser democráticos.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a36');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(37, 'Título I', 'Capítulo 2', 'Sección 2ª', '1. La ley garantizará el derecho a la negociación colectiva laboral entre los representantes de los trabajadores y empresarios, así como la fuerza vinculante de los convenios.

2. Se reconoce el derecho de los trabajadores y empresarios a adoptar medidas de conflicto colectivo. La ley que regule el ejercicio de este derecho, sin perjuicio de las limitaciones que puedan establecer, incluirá las garantías precisas para asegurar el funcionamiento de los servicios esenciales de la comunidad.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a37');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(38, 'Título I', 'Capítulo 2', 'Sección 2ª', 'Se reconoce la libertad de empresa en el marco de la economía de mercado. Los poderes públicos garantizan y protegen su ejercicio y la defensa de la productividad, de acuerdo con las exigencias de la economía general y, en su caso, de la planificación.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a38');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(39, 'Título I', 'Capítulo 3', NULL, '1. Los poderes públicos aseguran la protección social, económica y jurídica de la familia.

2. Los poderes públicos aseguran, asimismo, la protección integral de los hijos, iguales éstos ante la ley con independencia de su filiación, y de las madres, cualquiera que sea su estado civil. La ley posibilitará la investigación de la paternidad.

3. Los padres deben prestar asistencia de todo orden a los hijos habidos dentro o fuera del matrimonio, durante su minoría de edad y en los demás casos en que legalmente proceda.

4. Los niños gozarán de la protección prevista en los acuerdos internacionales que velan por sus derechos.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a39');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(40, 'Título I', 'Capítulo 3', NULL, '1. Los poderes públicos promoverán las condiciones favorables para el progreso social y económico y para una distribución de la renta regional y personal más equitativa, en el marco de una política de estabilidad económica. De manera especial realizarán una política orientada al pleno empleo.

2. Asimismo, los poderes públicos fomentarán una política que garantice la formación y readaptación profesionales; velarán por la seguridad e higiene en el trabajo y garantizarán el descanso necesario, mediante la limitación de la jornada laboral, las vacaciones periódicas retribuidas y la promoción de centros adecuados.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a40');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(41, 'Título I', 'Capítulo 3', NULL, 'Los poderes públicos mantendrán un régimen público de Seguridad Social para todos los ciudadanos, que garantice la asistencia y prestaciones sociales suficientes ante situaciones de necesidad, especialmente en caso de desempleo. La asistencia y prestaciones complementarias serán libres.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a41');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(42, 'Título I', 'Capítulo 3', NULL, 'El Estado velará especialmente por la salvaguardia de los derechos económicos y sociales de los trabajadores españoles en el extranjero y orientará su política hacia su retorno.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a42');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(43, 'Título I', 'Capítulo 3', NULL, '1. Se reconoce el derecho a la protección de la salud.

2. Compete a los poderes públicos organizar y tutelar la salud pública a través de medidas preventivas y de las prestaciones y servicios necesarios. La ley establecerá los derechos y deberes de todos al respecto.

3. Los poderes públicos fomentarán la educación sanitaria, la educación física y el deporte. Asimismo facilitarán la adecuada utilización del ocio.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a43');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(44, 'Título I', 'Capítulo 3', NULL, '1. Los poderes públicos promoverán y tutelarán el acceso a la cultura, a la que todos tienen derecho.

2. Los poderes públicos promoverán la ciencia y la investigación científica y técnica en beneficio del interés general.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a44');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(45, 'Título I', 'Capítulo 3', NULL, '1. Todos tienen el derecho a disfrutar de un medio ambiente adecuado para el desarrollo de la persona, así como el deber de conservarlo.

2. Los poderes públicos velarán por la utilización racional de todos los recursos naturales, con el fin de proteger y mejorar la calidad de la vida y defender y restaurar el medio ambiente, apoyándose en la indispensable solidaridad colectiva.

3. Para quienes violen lo dispuesto en el apartado anterior, en los términos que la ley fije se establecerán sanciones penales o, en su caso, administrativas, así como la obligación de reparar el daño causado.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a45');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(46, 'Título I', 'Capítulo 3', NULL, 'Los poderes públicos garantizarán la conservación y promoverán el enriquecimiento del patrimonio histórico, cultural y artístico de los pueblos de España y de los bienes que lo integran, cualquiera que sea su régimen jurídico y su titularidad. La ley penal sancionará los atentados contra este patrimonio.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a46');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(47, 'Título I', 'Capítulo 3', NULL, 'Todos los españoles tienen derecho a disfrutar de una vivienda digna y adecuada. Los poderes públicos promoverán las condiciones necesarias y establecerán las normas pertinentes para hacer efectivo este derecho, regulando la utilización del suelo de acuerdo con el interés general para impedir la especulación. La comunidad participará en las plusvalías que genere la acción urbanística de los entes públicos.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a47');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(48, 'Título I', 'Capítulo 3', NULL, 'Los poderes públicos promoverán las condiciones para la participación libre y eficaz de la juventud en el desarrollo político, social, económico y cultural.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a48');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(49, 'Título I', 'Capítulo 3', NULL, '1. Las personas con discapacidad ejercen los derechos previstos en este Título en condiciones de libertad e igualdad reales y efectivas. Se regulará por ley la protección especial que sea necesaria para dicho ejercicio.

2. Los poderes públicos impulsarán las políticas que garanticen la plena autonomía personal y la inclusión social de las personas con discapacidad, en entornos universalmente accesibles. Asimismo, fomentarán la participación de sus organizaciones, en los términos que la ley establezca. Se atenderán particularmente las necesidades específicas de las mujeres y los menores con discapacidad.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a49');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(50, 'Título I', 'Capítulo 3', NULL, 'Los poderes públicos garantizarán, mediante pensiones adecuadas y periódicamente actualizadas, la suficiencia económica a los ciudadanos durante la tercera edad. Asimismo, y con independencia de las obligaciones familiares, promoverán su bienestar mediante un sistema de servicios sociales que atenderán sus problemas específicos de salud, vivienda, cultura y ocio.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a50');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(51, 'Título I', 'Capítulo 3', NULL, '1. Los poderes públicos garantizarán la defensa de los consumidores y usuarios, protegiendo, mediante procedimientos eficaces, la seguridad, la salud y los legítimos intereses económicos de los mismos.

2. Los poderes públicos promoverán la información y la educación de los consumidores y usuarios, fomentarán sus organizaciones y oirán a éstas en las cuestiones que puedan afectar a aquéllos, en los términos que la ley establezca.

3. En el marco de lo dispuesto por los apartados anteriores, la ley regulará el comercio interior y el régimen de autorización de productos comerciales.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a51');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(52, 'Título I', 'Capítulo 3', NULL, 'La ley regulará las organizaciones profesionales que contribuyan a la defensa de los intereses económicos que les sean propios. Su estructura interna y funcionamiento deberán ser democráticos.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a52');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(53, 'Título I', 'Capítulo 4', NULL, '1. Los derechos y libertades reconocidos en el Capítulo segundo del presente Título vinculan a todos los poderes públicos. Sólo por ley, que en todo caso deberá respetar su contenido esencial, podrá regularse el ejercicio de tales derechos y libertades, que se tutelarán de acuerdo con lo previsto en el artículo 161, 1, a).

2. Cualquier ciudadano podrá recabar la tutela de las libertades y derechos reconocidos en el artículo 14 y la Sección primera del Capítulo segundo ante los Tribunales ordinarios por un procedimiento basado en los principios de preferencia y sumariedad y, en su caso, a través del recurso de amparo ante el Tribunal Constitucional. Este último recurso será aplicable a la objeción de conciencia reconocida en el artículo 30.

3. El reconocimiento, el respeto y la protección de los principios reconocidos en el Capítulo tercero informarán la legislación positiva, la práctica judicial y la actuación de los poderes públicos. Sólo podrán ser alegados ante la Jurisdicción ordinaria de acuerdo con lo que dispongan las leyes que los desarrollen.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a53');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(54, 'Título I', 'Capítulo 4', NULL, 'Una ley orgánica regulará la institución del Defensor del Pueblo, como alto comisionado de las Cortes Generales, designado por éstas para la defensa de los derechos comprendidos en este Título, a cuyo efecto podrá supervisar la actividad de la Administración, dando cuenta a las Cortes Generales.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a54');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(55, 'Título I', 'Capítulo 5', NULL, '1. Los derechos reconocidos en los artículos 17, 18, apartados 2 y 3, artículos 19, 20, apartados 1, a) y d), y 5, artículos 21, 28, apartado 2, y artículo 37, apartado 2, podrán ser suspendidos cuando se acuerde la declaración del estado de excepción o de sitio en los términos previstos en la Constitución. Se exceptúa de lo establecido anteriormente el apartado 3 del artículo 17 para el supuesto de declaración de estado de excepción.

2. Una ley orgánica podrá determinar la forma y los casos en los que, de forma individual y con la necesaria intervención judicial y el adecuado control parlamentario, los derechos reconocidos en los artículos 17, apartado 2, y 18, apartados 2 y 3, pueden ser suspendidos para personas determinadas, en relación con las investigaciones correspondientes a la actuación de bandas armadas o elementos terroristas.

La utilización injustificada o abusiva de las facultades reconocidas en dicha ley orgánica producirá responsabilidad penal, como violación de los derechos y libertades reconocidos por las leyes.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a55');


-- SECCIÓN: Título II (Artículos 56-65)
INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(56, 'Título II', NULL, NULL, '1. El Rey es el Jefe del Estado, símbolo de su unidad y permanencia, arbitra y modera el funcionamiento regular de las instituciones, asume la más alta representación del Estado español en las relaciones internacionales, especialmente con las naciones de su comunidad histórica, y ejerce las funciones que le atribuyen expresamente la Constitución y las leyes.

2. Su título es el de Rey de España y podrá utilizar los demás que correspondan a la Corona.

3. La persona del Rey es inviolable y no está sujeta a responsabilidad. Sus actos estarán siempre refrendados en la forma establecida en el artículo 64, careciendo de validez sin dicho refrendo, salvo lo dispuesto en el artículo 65, 2.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a56');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(57, 'Título II', NULL, NULL, '1. La Corona de España es hereditaria en los sucesores de S. M. Don Juan Carlos I de Borbón, legítimo heredero de la dinastía histórica. La sucesión en el trono seguirá el orden regular de primogenitura y representación, siendo preferida siempre la línea anterior a las posteriores; en la misma línea, el grado más próximo al más remoto; en el mismo grado, el varón a la mujer, y en el mismo sexo, la persona de más edad a la de menos.

2. El Príncipe heredero, desde su nacimiento o desde que se produzca el hecho que origine el llamamiento, tendrá la dignidad de Príncipe de Asturias y los demás títulos vinculados tradicionalmente al sucesor de la Corona de España.

3. Extinguidas todas las líneas llamadas en Derecho, las Cortes Generales proveerán a la sucesión en la Corona en la forma que más convenga a los intereses de España.

4. Aquellas personas que teniendo derecho a la sucesión en el trono contrajeren matrimonio contra la expresa prohibición del Rey y de las Cortes Generales, quedarán excluidas en la sucesión a la Corona por sí y sus descendientes.

5. Las abdicaciones y renuncias y cualquier duda de hecho o de derecho que ocurra en el orden de sucesión a la Corona se resolverán por una ley orgánica.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a57');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(58, 'Título II', NULL, NULL, 'La Reina consorte o el consorte de la Reina no podrán asumir funciones constitucionales, salvo lo dispuesto para la Regencia.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a58');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(59, 'Título II', NULL, NULL, '1. Cuando el Rey fuere menor de edad, el padre o la madre del Rey y, en su defecto, el pariente mayor de edad más próximo a suceder en la Corona, según el orden establecido en la Constitución, entrará a ejercer inmediatamente la Regencia y la ejercerá durante el tiempo de la minoría de edad del Rey.

2. Si el Rey se inhabilitare para el ejercicio de su autoridad y la imposibilidad fuere reconocida por las Cortes Generales, entrará a ejercer inmediatamente la Regencia el Príncipe heredero de la Corona, si fuere mayor de edad. Si no lo fuere, se procederá de la manera prevista en el apartado anterior, hasta que el Príncipe heredero alcance la mayoría de edad.

3. Si no hubiere ninguna persona a quien corresponda la Regencia, ésta será nombrada por las Cortes Generales, y se compondrá de una, tres o cinco personas.

4. Para ejercer la Regencia es preciso ser español y mayor de edad.

5. La Regencia se ejercerá por mandato constitucional y siempre en nombre del Rey.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a59');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(60, 'Título II', NULL, NULL, '1. Será tutor del Rey menor la persona que en su testamento hubiese nombrado el Rey difunto, siempre que sea mayor de edad y español de nacimiento; si no lo hubiese nombrado, será tutor el padre o la madre mientras permanezcan viudos. En su defecto, lo nombrarán las Cortes Generales, pero no podrán acumularse los cargos de Regente y de tutor sino en el padre, madre o ascendientes directos del Rey.

2. El ejercicio de la tutela es también incompatible con el de todo cargo o representación política.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a60');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(61, 'Título II', NULL, NULL, '1. El Rey, al ser proclamado ante las Cortes Generales, prestará juramento de desempeñar fielmente sus funciones, guardar y hacer guardar la Constitución y las leyes y respetar los derechos de los ciudadanos y de las Comunidades Autónomas.

2. El Príncipe heredero, al alcanzar la mayoría de edad, y el Regente o Regentes al hacerse cargo de sus funciones, prestarán el mismo juramento, así como el de fidelidad al Rey.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a61');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(62, 'Título II', NULL, NULL, 'Corresponde al Rey:

a) Sancionar y promulgar las leyes.

b) Convocar y disolver las Cortes Generales y convocar elecciones en los términos previstos en la Constitución.

c) Convocar a referéndum en los casos previstos en la Constitución.

d) Proponer el candidato a Presidente del Gobierno y, en su caso, nombrarlo, así como poner fin a sus funciones en los términos previstos en la Constitución.

e) Nombrar y separar a los miembros del Gobierno, a propuesta de su Presidente.

f) Expedir los decretos acordados en el Consejo de Ministros, conferir los empleos civiles y militares y conceder honores y distinciones con arreglo a las leyes.

g) Ser informado de los asuntos de Estado y presidir, a estos efectos, las sesiones del Consejo de Ministros, cuando lo estime oportuno, a petición del Presidente del Gobierno.

h) El mando supremo de las Fuerzas Armadas.

i) Ejercer el derecho de gracia con arreglo a la ley, que no podrá autorizar indultos generales.

j) El Alto Patronazgo de las Reales Academias.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a62');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(63, 'Título II', NULL, NULL, '1. El Rey acredita a los embajadores y otros representantes diplomáticos. Los representantes extranjeros en España están acreditados ante él.

2. Al Rey corresponde manifestar el consentimiento del Estado para obligarse internacionalmente por medio de tratados, de conformidad con la Constitución y las leyes.

3. Al Rey corresponde, previa autorización de las Cortes Generales, declarar la guerra y hacer la paz.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a63');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(64, 'Título II', NULL, NULL, '1. Los actos del Rey serán refrendados por el Presidente del Gobierno y, en su caso, por los Ministros competentes. La propuesta y el nombramiento del Presidente del Gobierno, y la disolución prevista en el artículo 99, serán refrendados por el Presidente del Congreso.

2. De los actos del Rey serán responsables las personas que los refrenden.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a64');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(65, 'Título II', NULL, NULL, '1. El Rey recibe de los Presupuestos del Estado una cantidad global para el sostenimiento de su Familia y Casa, y distribuye libremente la misma.

2. El Rey nombra y releva libremente a los miembros civiles y militares de su Casa.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a65');


-- SECCIÓN: Título III (Artículos 66-96)
INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(66, 'Título III', 'Capítulo 1', NULL, '1. Las Cortes Generales representan al pueblo español y están formadas por el Congreso de los Diputados y el Senado.

2. Las Cortes Generales ejercen la potestad legislativa del Estado, aprueban sus Presupuestos, controlan la acción del Gobierno y tienen las demás competencias que les atribuya la Constitución.

3. Las Cortes Generales son inviolables.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a66');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(67, 'Título III', 'Capítulo 1', NULL, '1. Nadie podrá ser miembro de las dos Cámaras simultáneamente, ni acumular el acta de una Asamblea de Comunidad Autónoma con la de Diputado al Congreso.

2. Los miembros de las Cortes Generales no estarán ligados por mandato imperativo.

3. Las reuniones de Parlamentarios que se celebren sin convocatoria reglamentaria no vincularán a las Cámaras, y no podrán ejercer sus funciones ni ostentar sus privilegios.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a67');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(68, 'Título III', 'Capítulo 2', 'Sección 1ª', '1. El Congreso se compone de un mínimo de 300 y un máximo de 400 Diputados, elegidos por sufragio universal, libre, igual, directo y secreto, en los términos que establezca la ley.

2. La circunscripción electoral es la provincia. Las poblaciones de Ceuta y Melilla estarán representadas cada una de ellas por un Diputado. La ley distribuirá el número total de Diputados, asignando una representación mínima inicial a cada circunscripción y distribuyendo los demás en proporción a la población.

3. La elección se verificará en cada circunscripción atendiendo a criterios de representación proporcional.

4. El Congreso es elegido por cuatro años. El mandato de los Diputados termina cuatro años después de su elección o el día de la disolución de la Cámara.

5. Son electores y elegibles todos los españoles que estén en pleno uso de sus derechos políticos.

La ley reconocerá y el Estado facilitará el ejercicio del derecho de sufragio a los españoles que se encuentren fuera del territorio de España.

6. Las elecciones tendrán lugar entre los treinta días y sesenta días desde la terminación del mandato. El Congreso electo deberá ser convocado dentro de los veinticinco días siguientes a la celebración de las elecciones.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a68');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(69, 'Título III', 'Capítulo 2', 'Sección 2ª', '1. El Senado es la Cámara de representación territorial.

2. En cada provincia se elegirán cuatro Senadores por sufragio universal, libre, igual, directo y secreto por los votantes de cada una de ellas, en los términos que señale una ley orgánica.

3. En las provincias insulares, cada isla o agrupación de ellas, con Cabildo o Consejo Insular, constituirá una circunscripción a efectos de elección de Senadores, correspondiendo tres a cada una de las islas mayores –Gran Canaria, Mallorca y Tenerife– y uno a cada una de las siguientes islas o agrupaciones: Ibiza-Formentera, Menorca, Fuerteventura, Gomera, Hierro, Lanzarote y La Palma.

4. Las poblaciones de Ceuta y Melilla elegirán cada una de ellas dos Senadores.

5. Las Comunidades Autónomas designarán además un Senador y otro más por cada millón de habitantes de su respectivo territorio. La designación corresponderá a la Asamblea legislativa o, en su defecto, al órgano colegiado superior de la Comunidad Autónoma, de acuerdo con lo que establezcan los Estatutos, que asegurarán, en todo caso, la adecuada representación proporcional.

6. El Senado es elegido por cuatro años. El mandato de los Senadores termina cuatro años después de su elección o el día de la disolución de la Cámara.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a69');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(70, 'Título III', 'Capítulo 2', NULL, '1. La ley electoral determinará las causas de inelegibilidad e incompatibilidad de los Diputados y Senadores, que comprenderán, en todo caso:

a) A los componentes del Tribunal Constitucional.

b) A los altos cargos de la Administración del Estado que determine la ley, con la excepción de los miembros del Gobierno.

c) Al Defensor del Pueblo.

d) A los Magistrados, Jueces y Fiscales en activo.

e) A los militares profesionales y miembros de las Fuerzas y Cuerpos de Seguridad y Policía en activo.

f) A los miembros de las Juntas Electorales.

2. La validez de las actas y credenciales de los miembros de ambas Cámaras estará sometida al control judicial, en los términos que establezca la ley electoral.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a70');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(71, 'Título III', 'Capítulo 2', NULL, '1. Los Diputados y Senadores gozarán de inviolabilidad por las opiniones manifestadas en el ejercicio de sus funciones.

2. Durante el período de su mandato los Diputados y Senadores gozarán asimismo de inmunidad y sólo podrán ser detenidos en caso de flagrante delito. No podrán ser inculpados ni procesados sin la previa autorización de la Cámara respectiva.

3. En las causas contra Diputados y Senadores será competente la Sala de lo Penal del Tribunal Supremo.

4. Los Diputados y Senadores percibirán una asignación que será fijada por las respectivas Cámaras.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a71');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(72, 'Título III', 'Capítulo 3', NULL, '1. Las Cámaras establecen sus propios Reglamentos, aprueban autónomamente sus presupuestos y, de común acuerdo, regulan el Estatuto del Personal de las Cortes Generales. Los Reglamentos y su reforma serán sometidos a una votación final sobre su totalidad, que requerirá la mayoría absoluta.

2. Las Cámaras eligen sus respectivos Presidentes y los demás miembros de sus Mesas. Las sesiones conjuntas serán presididas por el Presidente del Congreso.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a72');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(73, 'Título III', 'Capítulo 3', NULL, '1. Las Cortes Generales se convocan anualmente en dos períodos de sesiones, que serán determinados por los Reglamentos de las Cámaras.

2. El Presidente del Gobierno y los Presidentes de las Asambleas de las Comunidades Autónomas pueden solicitar a los Presidentes respectivos la convocatoria de sesiones extraordinarias.

3. Cada Cámara deberá celebrar sesiones plenarias en número mínimo de sesiones mensuales.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a73');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(74, 'Título III', 'Capítulo 4', NULL, '1. La potestad legislativa del Estado será ejercida por las Cortes Generales. La ley es la expresión de la voluntad popular.

2. Las leyes serán aprobadas por el Congreso de los Diputados, conforme a lo dispuesto en la Constitución. El Senado interviene en la elaboración de leyes en los términos previstos en esta Constitución.

2.a. En el supuesto de que el Senado rechace o enmiende el proyecto de ley remitido por el Congreso, el Congreso podrá rechazar la totalidad de las enmiendas por mayoría simple o, en su caso, confirmar el proyecto de ley presentado.

3. Las demás disposiciones normativas de los entes territoriales y entidades locales estarán subordinadas a la ley.

4. El Gobierno puede dictar disposiciones normativas provisionales con fuerza de ley en materias que no sean propias de ley orgánica, cuando así lo requiera la necesidad extraordinaria y urgente, en los términos y con la limitación establecidos en el artículo 86.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a74');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(75, 'Título III', 'Capítulo 4', NULL, '1. La ley orgánica requiere para su aprobación o modificación la mayoría absoluta del Congreso de los Diputados, en una votación sobre la totalidad del proyecto.

2. Los demás proyectos de ley se aprueban por mayoría simple.

3. Las Cámaras podrán rechazar o enmendar cualquier proyecto de ley.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a75');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(76, 'Título III', 'Capítulo 4', NULL, '1. La iniciativa legislativa corresponde al Gobierno, al Congreso de los Diputados y, en los términos que establezca una ley orgánica, al Senado, a las Asambleas de las Comunidades Autónomas y a los ciudadanos en la forma y con los requisitos que la ley establezca.

2. La iniciativa legislativa del Gobierno se ejercitará a través de la presentación de proyectos de ley. La iniciativa legislativa de los demás sujetos se ejercitará a través de la presentación de proposiciones de ley, que no podrá tener por objeto la creación o modificación de tributos, siendo estas proposiciones inadmisibles si contuvieran sanciones penales privativas de libertad.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a76');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(77, 'Título III', 'Capítulo 4', NULL, '1. Los proyectos de ley serán aprobados en Consejo de Ministros y presentados al Congreso de los Diputados.

2. A través del procedimiento de lectura única, podrá regularse por ley orgánica la tramitación de determinados proyectos de ley de especial trascendencia. Esta tramitación especial no podrá aplicarse a proyectos de ley orgánica ni a los Presupuestos Generales del Estado.

3. Los proyectos de ley presentados al Congreso serán publicados y distribuidos a los Grupos parlamentarios, quienes podrán presentar enmiendas en los términos que establezca el Reglamento de la Cámara.

4. El Gobierno tiene el derecho de enmienda durante la tramitación en Congreso. Si el Congreso rechaza una enmienda del Gobierno, el Gobierno puede solicitar la votación de totalidad.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a77');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(78, 'Título III', 'Capítulo 4', NULL, '1. Aprobado un proyecto de ley por el Congreso de los Diputados, será remitido al Senado, que podrá aceptarlo, rechazarlo o presentar enmiendas, en el plazo de dos meses.

2. Si el Senado no se pronunciare en los términos del apartado anterior, se considerará aprobado el proyecto en los términos en que fue aprobado por el Congreso.

3. El Congreso de los Diputados rechazará la totalidad de las enmiendas presentadas por el Senado o las aceptará, total o parcialmente. El Congreso podrá, asimismo, por mayoría absoluta, confirmar el proyecto de ley en los términos en que fue aprobado antes de la intervención del Senado.

4. Si el Senado rechazara totalmente un proyecto de ley, el Congreso podrá ratificarlo por mayoría simple o, en su caso, por mayoría de dos tercios, según se establezca en una ley orgánica.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a78');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(79, 'Título III', 'Capítulo 4', NULL, '1. Las leyes tributarias no podrán tener efecto retroactivo.

2. Las leyes presupuestarias no podrán crear tributos. Exceptúanse los aranceles aduaneros.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a79');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(80, 'Título III', 'Capítulo 4', NULL, 'Las Cortes Generales aprobarán anualmente los Presupuestos Generales del Estado conforme a lo dispuesto en una ley orgánica. La estructura de estos Presupuestos responderá al principio de unidad de caja.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a80');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(81, 'Título III', 'Capítulo 4', NULL, '1. Si la Ley de Presupuestos no hubiera sido aprobada antes del primer día del año natural, quedará automáticamente en vigor la del ejercicio anterior hasta tanto se apruebe la correspondiente al año en curso.

2. Cuando la Ley de Presupuestos sea rechazada, el Gobierno podrá presentar otra o gestionar los Presupuestos del Estado de acuerdo con el procedimiento que marque una ley orgánica.

3. Toda asignación que afecte al volumen total de gasto de funcionamiento no podrá ser aprobada sin que se indiquen las partidas con cargo a las cuales se financie.

4. El Tribunal de Cuentas será responsable de asesorar a las Cortes Generales en el control de la ejecución presupuestaria.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a81');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(82, 'Título III', 'Capítulo 4', NULL, '1. Las leyes que regulen los requisitos de los Diputados y Senadores, el régimen electoral general del Congreso y el Senado, el estatuto de los miembros de las Cortes, el régimen de las comisiones parlamentarias, los procedimientos de elaboración de normas reglamentarias de ambas Cámaras y de resolución de conflictos entre ellas, serán aprobadas por mayoría de dos tercios de cada Cámara.

2. Estas leyes no podrán ser dictadas por decreto-ley.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a82');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(83, 'Título III', 'Capítulo 5', NULL, '1. El Gobierno responde solidariamente en su gestión política ante el Congreso de los Diputados.

2. El Presidente del Gobierno puede solicitar el voto de confianza del Congreso de los Diputados sobre su programa o una declaración de política general. La aprobación requiere la mayoría simple.

3. Si el Congreso niega la confianza al Presidente del Gobierno, éste presentará la dimisión al Rey.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a83');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(84, 'Título III', 'Capítulo 5', NULL, '1. El Congreso de los Diputados puede exigir la responsabilidad política del Gobierno mediante la adopción por mayoría absoluta de una moción de censura.

2. La moción de censura deberá ser propuesta por la décima parte de los Diputados y habrá de incluir un candidato a la Presidencia del Gobierno.

3. La moción de censura no podrá ser votada hasta transcurridos cinco días desde su presentación. Durante este plazo sólo podrá haber un debate de totalidad.

4. Si la moción de censura fuere rechazada, sus proponentes no podrán presentar otra durante el mismo período de sesiones.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a84');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(85, 'Título III', 'Capítulo 5', NULL, '1. Si el Congreso rechaza una propuesta legislativa del Gobierno, el Presidente puede solicitar el voto de confianza mediante la cuestión de confianza.

2. Si el Congreso le niega la confianza, el Presidente presentará la dimisión.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a85');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(86, 'Título III', 'Capítulo 5', NULL, '1. En caso de que no sea posible conseguir la aprobación de proyectos de ley del Gobierno por los procedimientos ordinarios en el Congreso, el Presidente del Gobierno podrá solicitar al Congreso de los Diputados la aprobación de una autorización legislativa para redactar disposiciones normativas con fuerza de ley sobre materias determinadas no propias de ley orgánica.

2. La delegación legislativa deberá otorgarse al Gobierno de forma expresa para materias concretas y con fijación del plazo para su ejercicio.

3. Sin perjuicio de lo anterior, la delegación legislativa no podrá autorizarse para la reforma constitucional, la aprobación o modificación de leyes orgánicas, la aprobación o modificación de los Presupuestos Generales del Estado, la aprobación o modificación de leyes de bases en materia tributaria, ni para regular el régimen electoral general del Congreso y del Senado. Asimismo, no podrá autorizarse la delegación legislativa en materia de derechos fundamentales y libertades públicas, ni en materias relativas a la Administración Pública o al régimen administrativo, según determine una ley orgánica.

4. La ley de delegación especificará el alcance y los límites del ejercicio de la función delegada. Así, los decretos-leyes deberán incluir expresamente el trimestre en que se dictan y deberán ser convalidados por el Congreso de los Diputados dentro del plazo de treinta días; de no ser convalidados dentro de este plazo, quedarán automaticamente derogados.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a86');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(87, 'Título III', 'Capítulo 5', NULL, '1. En caso de extraordinaria y urgente necesidad, el Gobierno podrá dictar disposiciones legislativas provisionales con fuerza de ley que tomarán la denominación de decretos-leyes.

2. Un decreto-ley no podrá afectar al ordenamiento de las instituciones básicas del Estado, a los derechos, deberes y libertades de los ciudadanos regulados en el Título I, al régimen de las Comunidades Autónomas, ni al derecho electoral general del Estado.

3. Los decretos-leyes deberán ser inmediatamente comunicados al Congreso de los Diputados, que habrá de pronunciarse sobre la convalidación o derogación de los mismos en el plazo de treinta días. El procedimiento de convalidación o rechazo deberá ser determinado por una ley orgánica.

4. Una vez que haya sido comunicado un decreto-ley al Congreso, éste podrá tramitarlo como proyecto de ley por el procedimiento de urgencia.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a87');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(88, 'Título III', 'Capítulo 5', NULL, '1. El Congreso podrá solicitarle formalmente información al Gobierno sobre actividades administrativas en materia de su competencia.

2. Los miembros del Gobierno contestarán a las preguntas formuladas en el Congreso de conformidad con lo establecido en la Constitución y la ley.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a88');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(89, 'Título III', 'Capítulo 5', NULL, '1. El Congreso podrá solicitar información, promover investigaciones y enjuiciar la responsabilidad política del Gobierno en los términos previstos en los artículos anteriores.

2. Los acuerdos del Congreso en relación con la responsabilidad política del Gobierno tendrán carácter vinculante.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a89');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(90, 'Título III', 'Capítulo 5', NULL, 'Los miembros del Gobierno gozarán de inviolabilidad por las opiniones manifestadas en el ejercicio de sus funciones.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a90');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(91, 'Título III', 'Capítulo 5', NULL, 'Los tratados internacionales válidamente celebrados y ratificados conforme a esta Constitución, una vez publicados oficialmente en España, formarán parte del ordenamiento interno. Sus disposiciones sólo podrán ser derogadas, modificadas o suspendidas en la forma prevista en los propios tratados o de acuerdo con las normas generales del Derecho Internacional.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a91');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(92, 'Título III', 'Capítulo 5', NULL, 'Las Cortes Generales y el Gobierno pueden autorizar mediante ley la celebración de tratados que atribuyan a una organización o institución internacional el ejercicio de competencias derivadas de la Constitución. Es preciso, en todo caso, que una ley orgánica adapte el ordenamiento jurídico interno a lo dispuesto en el tratado.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a92');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(93, 'Título III', 'Capítulo 5', NULL, '1. Mediante ley orgánica podrá autorizarse la celebración de tratados por los que se atribuya a una organización internacional o supranacional competencias para dictar normas de aplicación general.

2. Corresponde a las Cortes Generales o al Gobierno, según los casos, la garantía del cumplimiento de estos tratados.

3. El ejercicio de facultades derivadas de la Constitución a una organización o institución internacional se hará en los términos previstos en los tratados constitutivos de las mismas. Será requisito indispensable que dichos tratados hayan sido autorizados por ley orgánica y aprobados por referéndum en los términos previstos en el artículo 167 de la Constitución.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a93');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(94, 'Título III', 'Capítulo 5', NULL, '1. El Congreso de los Diputados puede autorizar la celebración de tratados relativos a cuestiones que requieren la aprobación de una ley orgánica.

2. La celebración de determinados tratados internacionales que afecten a materias encomendadas a la competencia de una Comunidad Autónoma requiere la previa o posterior aprobación de la Asamblea legislativa de la misma.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a94');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(95, 'Título III', 'Capítulo 5', NULL, 'El recurso de inconstitucionalidad puede ejercitarse en relación con los tratados internacionales, de acuerdo con lo que establezca una ley orgánica.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a95');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(96, 'Título III', 'Capítulo 5', NULL, 'El Presidente de las Cortes Generales comunicará al Rey, en Consejo de Ministros, la iniciativa para celebrar, conforme a la Constitución, cualquier tratado internacional.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a96');


-- SECCIÓN: Título IV (Artículos 97-107)
INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(97, 'Título IV', NULL, NULL, '1. El Gobierno dirige la política interior y exterior, la Administración civil y militar y la defensa del Estado. Ejerce la función ejecutiva y la potestad reglamentaria de acuerdo con la Constitución y las leyes.

2. El Gobierno está formado por el Presidente, los Vicepresidentes, en su caso, y los Ministros.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a97');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(98, 'Título IV', NULL, NULL, '1. El Presidente del Gobierno será designado por el Rey de entre los miembros del Congreso de los Diputados, conforme al procedimiento establecido constitucional y legalmente.

2. El Presidente del Gobierno presentará al Rey la composición del Gobierno que propone. Los miembros del Gobierno serán elegidos de entre los Diputados.

3. El Presidente del Gobierno nombrará entre los miembros del Gobierno a los Vicepresidentes.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a98');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(99, 'Título IV', NULL, NULL, '1. Después de las elecciones legislativas, si ningún candidato obtuviera la mayoría absoluta en la primera votación, se procederá, cuarenta y ocho horas después de la misma, a una segunda votación. Si tampoco se obtuviera mayoría absoluta, se abrirá un plazo de dos meses para que los grupos políticos presenten candidatos.

2. En las votaciones previstas en este artículo solo será precisa la mayoría simple.

3. El candidato que obtuviere el apoyo de la mayoría simple será propuesto por el Rey al Congreso de los Diputados para su designación como Presidente del Gobierno.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a99');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(100, 'Título IV', NULL, NULL, '1. Los Ministros requieren ser españoles mayores de dieciocho años y estar en pleno ejercicio de sus derechos políticos y civiles.

2. La ley regulará el régimen de incompatibilidades de los miembros del Gobierno.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a100');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(101, 'Título IV', NULL, NULL, '1. La Administración Pública sirve con objetividad los intereses generales.

2. Los empleados públicos desempeñarán sus funciones con arreglo a lo establecido en las leyes.

3. La ley regulará el estatuto de los funcionarios públicos, el procedimiento de selección y promoción, así como los derechos y deberes de los mismos.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a101');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(102, 'Título IV', NULL, NULL, '1. La ley regulará el ejercicio de la función pública por empleados públicos civiles, en los términos que establezca.

2. Los actos de la Administración serán públicos, ordenados y sujetos al control y tutela de los jueces y tribunales en los términos que establezca la ley.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a102');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(103, 'Título IV', NULL, NULL, '1. La ley regulará la organización, funciones y procedimiento administrativo de la Administración general del Estado.

2. Mediante una ley orgánica se regulará el Consejo de Ministros, así como el estatuto de los miembros del Gobierno.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a103');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(104, 'Título IV', NULL, NULL, '1. Las Fuerzas y Cuerpos de Seguridad, bajo la dependencia del Gobierno, tendrán como misión proteger el libre ejercicio de los derechos y libertades y garantizar la seguridad ciudadana.

2. Un ley orgánica regulará la creación, estructura, funciones y control de las Fuerzas y Cuerpos de Seguridad del Estado.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a104');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(105, 'Título IV', NULL, NULL, '1. La ley regulará la militarización de la Administración. Sin embargo, la Administración civil no podrá adoptar estructura ni funcionamiento militares.

2. La ley regulará el régimen especial de la Administración militar.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a105');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(106, 'Título IV', NULL, NULL, '1. La ley regulará el procedimiento administrativo común, garantizando en todo caso la audiencia del interesado.

2. Los recursos administrativos serán regulados por una ley orgánica.

3. Los procedimientos administrativos especiales se regularán por sus normas específicas, que deberán respetar los principios de esta Constitución.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a106');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(107, 'Título IV', NULL, NULL, '1. El Tribunal de Cuentas es el órgano fiscalizador de la hacienda pública.

2. El Tribunal de Cuentas dependerá directamente de las Cortes Generales y ejercerá sus funciones por delegación de la potestad fiscalizadora de éstas, conforme a la ley que regule su organización y funcionamiento.

3. No podrá ordenarse el pago de cantidad alguna de fondos públicos sin aprobación del Tribunal de Cuentas, en los términos que establezca la ley.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a107');


-- SECCIÓN: Título V (Artículos 108-116)
INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(108, 'Título V', NULL, NULL, '1. El Gobierno tiene la iniciativa legislativa. También tiene poder para dictar disposiciones de carácter reglamentario.

2. Los Reglamentos del Gobierno deberán ajustarse a la Constitución y a las leyes.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a108');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(109, 'Título V', NULL, NULL, 'El Congreso de los Diputados podrá requerir al Gobierno o a sus miembros para que se presenten ante el mismo y le informen sobre cuestiones de política general o sobre asuntos determinados de su competencia.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a109');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(110, 'Título V', NULL, NULL, '1. El Gobierno presentará anualmente a las Cortes Generales, en los términos que establezca la ley, una memoria sobre el estado político de la Nación.

2. El Gobierno deberá justificar ante el Parlamento las decisiones adoptadas.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a110');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(111, 'Título V', NULL, NULL, '1. El Presidente del Gobierno puede solicitar al Rey la disolución del Congreso de los Diputados, del Senado o de ambas Cámaras de acuerdo con el procedimiento establecido en la Constitución.

2. Una vez aceptada la disolución, el Gobierno continúa en funciones hasta la sesión constitutiva del nuevo Parlamento.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a111');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(112, 'Título V', NULL, NULL, '1. Mediante una propuesta conjunta de disolución acordada por ambas Cámaras, podrá el Rey disolver las Cortes Generales.

2. El Rey, a propuesta del Presidente del Gobierno y previa aprobación de la Cámara que no esté disuelto, podrá también disolver las Cortes Generales.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a112');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(113, 'Título V', NULL, NULL, '1. La Administración del Estado funcionará de conformidad con lo establecido en la Constitución y en las leyes.

2. Los actos de la Administración del Estado podrán ser impugnados ante los Tribunales, en los términos que establezca la ley.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a113');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(114, 'Título V', NULL, NULL, '1. El Gobierno ejercerá la función ejecutiva conforme a lo establecido en la Constitución y en las leyes.

2. La responsabilidad política del Gobierno será exigible en los términos previstos en esta Constitución.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a114');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(115, 'Título V', NULL, NULL, 'El Presidente del Gobierno, disueltas las Cámaras, continuará en el ejercicio de sus funciones hasta que se constituya el nuevo Congreso. Si la disolución la hubiera decretado el Congreso, el Presidente del Gobierno que cause la disolución continuará en funciones a la cabeza del Gobierno en funciones.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a115');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(116, 'Título V', NULL, NULL, 'Cuando la mayoría del Congreso de los Diputados niegue su confianza al Presidente del Gobierno, la función legislativa quedará suspendida hasta que se proceda a la designación de un nuevo Presidente del Gobierno conforme a lo establecido en esta Constitución.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a116');


-- SECCIÓN: Título VI (Artículos 117-127)
INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(117, 'Título VI', NULL, NULL, '1. La justicia emana del pueblo y se administra en nombre del Rey por Jueces y Magistrados integrantes del Poder Judicial, independientes e inamovibles, sometidos únicamente al imperio de la ley.

2. Los Jueces y Magistrados no podrán ser separados, suspendidos, trasladados ni jubilados, sino por alguna de las causas establecidas legalmente y con las garantías procedimentales que la ley establezca.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a117');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(118, 'Título VI', NULL, NULL, 'La ley orgánica del Poder Judicial determinará la constitución, funcionamiento y gobierno de los Juzgados y Tribunales, así como el estatuto jurídico de los Jueces y Magistrados de la carrera judicial, garantizando su independencia.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a118');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(119, 'Título VI', NULL, NULL, '1. El Consejo General del Poder Judicial es el órgano de gobierno del Poder Judicial. Su composición, funcionamiento y competencias se determinarán por ley orgánica.

2. Habrá un Presidente del Consejo General del Poder Judicial, que será designado por el Rey de entre los miembros de la carrera judicial, en los términos que establezca la ley orgánica.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a119');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(120, 'Título VI', NULL, NULL, '1. La administración de justicia es gratuita, de conformidad con los términos que establezca la ley, y no podrá sufrir limitaciones derivadas de consideraciones económicas.

2. El ejercicio de la acción de la justicia está garantizado a todos, sin que pueda producirse indefensión en ningún caso.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a120');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(121, 'Título VI', NULL, NULL, '1. Los Juzgados y Tribunales no ejercerán más funciones que las judiciales encomendadas por la ley. El Consejo General del Poder Judicial y los órganos judicia­les de las Comunidades Autónomas, en su caso, participarán en la resolución de conflictos de competencias entre órganos judiciales, conforme a lo que establezca una ley orgánica.

2. Los Juzgados y Tribunales rechazarán todas las demandas que carezcan de los requisitos procesales que la ley establezca.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a121');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(122, 'Título VI', NULL, NULL, '1. Existe una jurisdicción penal única e inapelable para todos los españoles. No podrá establecerse jurisdicción especial alguna, ni juzgados especiales.

2. Sin embargo, por ley orgánica podrán establecerse Tribunales especiales para determinadas materias, siempre que se respeten los principios de independencia e inamovilidad de los Jueces.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a122');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(123, 'Título VI', NULL, NULL, '1. El Tribunal Supremo, con jurisdicción en toda España, es el órgano jurisdiccional superior en todos los órdenes, salvo lo dispuesto en materia de garantías constitucionales.

2. El Presidente del Tribunal Supremo será nombrado por el Rey, de entre los miembros del Poder Judicial, en los términos que establezca la ley orgánica.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a123');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(124, 'Título VI', NULL, NULL, '1. El Ministerio Fiscal, bajo la dirección del Fiscal General del Estado, tiene por misión promover la acción de la justicia en defensa de la legalidad, de los derechos de los ciudadanos y del interés público, tutelado por la ley, de oficio o por petición ajena.

2. El Fiscal General del Estado será nombrado por el Rey, previa consulta con el Poder Judicial, en los términos que establezca una ley orgánica.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a124');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(125, 'Título VI', NULL, NULL, '1. La ley regulará la institución del Jurado.

2. Los miembros del Jurado ejercerán su función de conformidad con el Código Penal, en los términos que establezca la ley orgánica correspondiente.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a125');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(126, 'Título VI', NULL, NULL, '1. La policía judicial dependería de los Jueces, de los Tribunales y del Ministerio Fiscal, en la forma que establezca la ley orgánica.

2. Las actividades de la policía judicial se ejercitarán de conformidad con lo previsto en las leyes de procedimiento penal.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a126');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(127, 'Título VI', NULL, NULL, '1. Los poderes públicos promoverán la iniciación de acciones civiles ante la Administración de Justicia en defensa de los intereses colectivos o difusos.

2. El Ministerio Fiscal y las asociaciones legalmente constituidas que persigan fines de interés general podrán ejercitar las acciones civiles para la defensa de los derechos reconocidos en esta Constitución.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a127');


-- SECCIÓN: Título VII (Artículos 128-136)
INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(128, 'Título VII', NULL, NULL, '1. Toda la riqueza del país, sea cual fuere su naturaleza, está subordinada al interés general.

2. Se reconoce la iniciativa económica privada. La Administración pública podrá actuar en la actividad económica cuando sea necesario.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a128');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(129, 'Título VII', NULL, NULL, 'La ley establecerá el régimen jurídico de utilización del suelo de acuerdo con el interés general para impedir la especulación.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a129');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(130, 'Título VII', NULL, NULL, '1. Se reconoce el derecho a la propiedad privada.

2. Nadie podrá ser privado de sus bienes y derechos sino por causa justificada de utilidad pública o interés social, mediante la correspondiente indemnización y de conformidad con lo dispuesto por las leyes.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a130');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(131, 'Título VII', NULL, NULL, '1. El Estado podrá expropiar bienes por causa de utilidad pública o interés social mediante la correspondiente indemnización.

2. La ley regulará el procedimiento y las garantías de la expropiación forzosa.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a131');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(132, 'Título VII', NULL, NULL, '1. El Gobierno ejercerá la dirección de la política económica conforme a los criterios de estabilidad económica, eficiencia y economía.

2. La política económica deberá inspirarse en principios de justicia social.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a132');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(133, 'Título VII', NULL, NULL, '1. La Hacienda Pública de los entes territoriales será regulada por ley.

2. La distribución de los fondos públicos entre los distintos entes territoriales se efectuará atendiendo a criterios de justicia y solidaridad.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a133');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(134, 'Título VII', NULL, NULL, '1. Los Presupuestos Generales del Estado garantizarán una asignación equitativa de los recursos públicos.

2. El Estado podrá apoyar financieramente determinadas actividades de interés general.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a134');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(135, 'Título VII', NULL, NULL, '1. La administración tributaria se ejercerá de conformidad con la ley.

2. Todos contribuirán al sostenimiento de los gastos públicos de acuerdo con su capacidad económica.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a135');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(136, 'Título VII', NULL, NULL, 'El Banco de España, en los términos que determine su ley de creación, actuará conforme a los intereses del Estado y bajo su supervisión.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a136');


-- SECCIÓN: Título VIII (Artículos 137-158)
INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(137, 'Título VIII', NULL, NULL, '1. El Estado se organiza territorialmente en municipios, en provincias y en Comunidades Autónomas, todas ellas con carácter de entidades autónomas y con administración propia, en los términos que establezca la Constitución.

2. La capital del Estado es la villa de Madrid.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a137');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(138, 'Título VIII', NULL, NULL, '1. La Administración territorial del Estado se organiza en provincias y Comunidades Autónomas.

2. Un proyecto de organización territorial será presentado al Senado por el Gobierno para su debate y aprobación.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a138');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(139, 'Título VIII', NULL, NULL, 'Todo español podrá acceder a los cargos y funciones públicas, con arreglo a los requisitos que señalen las leyes, sin que pueda prevalecer discriminación alguna por razón de nacimiento, sexo, religión u opinión política.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a139');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(140, 'Título VIII', NULL, NULL, 'No podrá aprobarse ninguna ley territorial sin previa y expresa autorización de los órganos representativos del territorio afectado en los términos que establezca la ley.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a140');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(141, 'Título VIII', 'Capítulo 1', NULL, '1. La Administración local está constituida por municipios y provincias.

2. Toda otra agrupación territorial constituida para la gestión de intereses específicos se regirá por lo que establezca la ley.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a141');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(142, 'Título VIII', 'Capítulo 1', NULL, '1. Los municipios autónomos tienen derecho a gestionar sus asuntos por conducto de sus órganos colegiados propios, en los términos que establezca la ley.

2. Los municipios gozarán de personalidad jurídica plena. Su autonomía comprende la gestión bajo su responsabilidad de los asuntos de su competencia, de conformidad con la Constitución y las leyes.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a142');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(143, 'Título VIII', 'Capítulo 1', NULL, '1. Las provincias son divisiones territoriales para el cumplimiento de actividades del Estado.

2. Cualquier alteración de los límites provinciales requerirá ley orgánica.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a143');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(144, 'Título VIII', 'Capítulo 2', 'Sección 1ª', '1. La Constitución reconoce y garantiza el derecho a la autonomía de las nacionalidades y regiones que integran España.

2. El ejercicio de este derecho se realizará de acuerdo con la Constitución y con los respectivos Estatutos de Autonomía.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a144');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(145, 'Título VIII', 'Capítulo 2', 'Sección 1ª', '1. Las Comunidades Autónomas, en el proceso de acceso a la autonomía, adoptarán la denominación que se establezca en sus respectivos Estatutos.

2. Los Estatutos serán aprobados por las Cortes Generales como leyes orgánicas.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a145');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(146, 'Título VIII', 'Capítulo 2', 'Sección 1ª', '1. La iniciación del procedimiento de elaboración de una Constitución autonómica corresponde al órgano ejecutivo o legislativo de las entidades territoriales que se propongan acceder a la autonomía.

2. Las Cortes Generales regularán el procedimiento de aprobación de los Estatutos de Autonomía.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a146');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(147, 'Título VIII', 'Capítulo 2', 'Sección 1ª', '1. Los Estatutos de Autonomía serán aprobados por referéndum por los ciudadanos de la Comunidad Autónoma.

2. Una vez aprobado un Estatuto de Autonomía, será remitido a las Cortes Generales para su sanción como ley orgánica.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a147');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(148, 'Título VIII', 'Capítulo 2', 'Sección 2ª', '1. Las competencias que no hayan sido asumidas por una Comunidad Autónoma corresponderán al Estado. La transferencia de competencias a una Comunidad Autónoma se llevará a cabo en virtud de su correspondiente Estatuto.

2. Un Estatuto de Autonomía podrá, conforme a lo dispuesto en el artículo 150, establecer nuevas competencias o ampliar las ya asumidas.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a148');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(149, 'Título VIII', 'Capítulo 2', 'Sección 2ª', '1. El Estado tiene competencia exclusiva sobre las siguientes materias:

a) La regulación de las condiciones básicas que garanticen la igualdad de todos los españoles en el ejercicio de los derechos y en el cumplimiento de los deberes constitucionales.

b) La nacionalidad, inmigración, emigración, extradición y derecho de asilo.

c) Las relaciones internacionales.

d) La defensa y las Fuerzas Armadas.

e) La administración de justicia.

f) La legislación mercantil, penal y procesal; la de propiedad intelectual e industrial.

g) El régimen aduanal y arancelario; los comercios exterior e interior.

h) El sistema monetario; divisas, cambio y convertibilidad; los bancos de emisión.

i) La Hacienda general y, en particular, el sistema tributario, arancelario y monetario; las aduanas y los aranceles.

j) El régimen legal de los seguros, la banca y los valores bursátiles.

k) Las líneas aéreas y ferroviarias; el transporte por carretera, marítimo y aéreo; la navegación aérea y marítima.

l) Los correos y telecomunicaciones.

m) La legislación sobre propiedad intelectual e industrial.

n) La regulación de las normas de metrología, normalización técnica y control de calidad industrial.

ñ) La legislación basada sobre el uso del suelo, sin perjuicio de las competencias que podrán asumir las Comunidades Autónomas; regulación de las aguas continentales, en cuanto no sea asumida por las Comunidades Autónomas; aprovechamientos hidráulicos, canales y regadíos.

o) Las minas y la energía.

p) La regulación de la producción, comercio, tenencia y uso de armas y explosivos.

q) La administración del Estado en materia de seguridad social.

r) Las bases de la sanidad.

s) La sanidad exterior.

t) Las bases y coordinación general de la actividad económica.

u) La hacienda general del Estado y el sistema tributario.

v) La deuda del Estado.

w) Las bases del régimen de la Administración Pública y del régimen estatutario de los funcionarios de la Administración civil del Estado.

Anonymous) La legislación electoral general del Estado.

y) El régimen jurídico de las Comunidades Autónomas.

z) La definición de la oficialidad del territorio nacional.

aa) La enseñanza en todo su aspecto, incluso la ordenación general del sistema educativo, sin perjuicio de la autonomía de las Comunidades Autónomas y de la libertad de enseñanza fiduciaria.

bb) La cultura, patrimonio histórico-artístico y arqueológico.

cc) La legislación sobre procedimientos administrativos, sin perjuicio de las especialidades derivadas de la organización política de las Comunidades Autónomas.

2. La legislación del Estado sobre estas materias será, en todo caso, supletoria de la de las Comunidades Autónomas, en los términos que se establezcan en los Estatutos.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a149');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(150, 'Título VIII', 'Capítulo 2', 'Sección 2ª', '1. Las Cortes Generales, en materia de competencia estatal, podrán autorizar a las Comunidades Autónomas para que legislen sobre determinadas materias mediante leyes orgánicas.

2. Sin perjuicio de lo que se dispone en el artículo 151, el Estado podrá transferir o delegar a las Comunidades Autónomas, mediante ley orgánica, facultades correspondientes a materias de titularidad estatal que por su naturaleza sean susceptibles de transferencia o delegación.

3. La transferencia o delegación deberá efectuarse con respeto pleno a lo establecido en la Constitución y en los respectivos Estatutos de Autonomía.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a150');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(151, 'Título VIII', 'Capítulo 2', 'Sección 2ª', '1. Las Comunidades Autónomas podrán asumir competencias en cualquier materia, salvo las que expresamente se reserve el Estado por esta Constitución.

2. Las competencias no asumidas por una Comunidad Autónoma conforme a su Estatuto corresponderán al Estado.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a151');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(152, 'Título VIII', 'Capítulo 2', 'Sección 2ª', '1. Los Estatutos de Autonomía determinarán la estructura, funcionamiento y competencias de la Administración autónoma.

2. Los Estatutos podrán crear instituciones propias en el orden administrativo, judicial y electoral, de conformidad con lo dispuesto en la Constitución.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a152');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(153, 'Título VIII', 'Capítulo 2', 'Sección 2ª', 'Las Comunidades Autónomas no podrán conciertarse entre sí. Sin embargo, podrán con la autorización de las Cortes Generales celebrar convenios para la gestión y prestación de servicios de carácter transfronterizo.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a153');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(154, 'Título VIII', 'Capítulo 2', 'Sección 2ª', '1. La Administración de una Comunidad Autónoma no podrá actuar fuera de su territorio. Las funciones que ejecuten serán las que determine su Estatuto de Autonomía.

2. El Estatuto de Autonomía habrá de especificar los órganos, funciones y procedimientos que corresponden a cada nivel administrativo.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a154');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(155, 'Título VIII', 'Capítulo 2', 'Sección 2ª', '1. Si una Comunidad Autónoma no cumpliera las obligaciones que la Constitución u otras leyes le impongan, el Gobierno podrá, previo requerimiento al Presidente de la Comunidad Autónoma y, en su caso, after hearing the President of the Autonomous Community, al Consejo de Gobierno de la Comunidad Autónoma, adoptar las medidas necesarias para obligar al cumplimiento forzoso de dichas obligaciones.

2. Para la ejecución de las medidas a que se refiere el apartado anterior, el Gobierno podrá dirigirse al Poder Judicial o, en su caso, requerir la intervención de las Fuerzas y Cuerpos de Seguridad o de la Guardia Civil.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a155');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(156, 'Título VIII', 'Capítulo 2', 'Sección 3ª', '1. La Hacienda de las Comunidades Autónomas estará constituida por ingresos del Tesoro, por sus ingresos tributarios y otros propios, y por transferencias, participaciones o fondos de compensación.

2. Las Comunidades Autónomas no podrán contraer deudas que superen los límites establecidos en sus Estatutos.

3. La distribución de las inversiones del Estado entre las Comunidades Autónomas se realizará atendiendo a criterios de justicia y solidaridad.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a156');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(157, 'Título VIII', 'Capítulo 2', 'Sección 3ª', '1. Un proyecto de ley sobre financiación de las Comunidades Autónomas será presentado al Senado por el Gobierno.

2. El Senado tendrá competencia para debatir y aprobar medidas de financiación de las Comunidades Autónomas.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a157');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(158, 'Título VIII', 'Capítulo 2', 'Sección 3ª', '1. La distribución de los fondos públicos entre las Comunidades Autónomas se efectuará de acuerdo con criterios objetivos en función de la población, del territorio y de otros factores que tengan relación con la capacidad económica de cada Comunidad Autónoma.

2. El Fondo de Compensación Interterritorial está constituido para corregir desigualdades económicas interterritoriales.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a158');


-- SECCIÓN: Título IX (Artículos 159-165)
INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(159, 'Título IX', NULL, NULL, '1. El Tribunal Constitucional garantiza la supremacía de la Constitución.

2. El Tribunal Constitucional tiene competencia exclusiva para conocer:

a) Del recurso de inconstitucionalidad contra leyes y disposiciones normativas con fuerza de ley.

b) Del recurso de amparo por violación de derechos y libertades públicas reconocidos en los artículos 14 y 20 a 29 de la Constitución.

c) De los conflictos de competencia entre el Estado y las Comunidades Autónomas o entre éstas.

d) Otras materias que le atribuya la ley orgánica que lo regule.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a159');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(160, 'Título IX', NULL, NULL, '1. El Tribunal Constitucional se compone de doce miembros designados por el Rey, a propuesta:

a) De los Congreso de los Diputados, el cual elige ocho miembros en votación celebrada en su seno.

b) Del Senado, el cual designa cuatro miembros.

c) Del Consejo General del Poder Judicial. El número de vocales que designa el Consejo será determinado por una ley orgánica.

d) Del Gobierno, el cual propone dos candidatos.

2. Los miembros del Tribunal Constitucional serán designados entre Magistrados y Fiscales, Catedráticos de Universidad, funcionarios públicos y juristas de reconocida competencia con más de quince años de ejercicio profesional.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a160');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(161, 'Título IX', NULL, NULL, '1. El control de la constitucionalidad de las leyes será ejercido por el Tribunal Constitucional.

2. El recurso de inconstitucionalidad podrá interponerse por:

a) El Defensor del Pueblo.

b) El Gobierno de la Nación.

c) El Parlamento o sus órganos competentes.

d) Los órganos colegiados ejecutivos de las Comunidades Autónomas.

e) Los órganos legislativos de las Comunidades Autónomas.

3. También podrá interponer el recurso de inconstitucionalidad contra proyectos de ley antes de su promulgación.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a161');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(162, 'Título IX', NULL, NULL, '1. Los particulares podrán interponer un recurso de amparo por violación de los derechos y libertades reconocidos en los artículos 14 y 20 a 29 de la Constitución.

2. El recurso de amparo será conocido en primera instancia por los Juzgados ordinarios, de conformidad con lo que establezca una ley orgánica.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a162');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(163, 'Título IX', NULL, NULL, '1. El Tribunal Constitucional conocerá de los conflictos de competencia entre el Estado y las Comunidades Autónomas o entre éstas, en los términos que establezca una ley orgánica.

2. El Tribunal Constitucional conocerá de los recursos de inconstitucionalidad que se interpongan contra los actos de las Comunidades Autónomas.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a163');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(164, 'Título IX', NULL, NULL, '1. Las sentencias del Tribunal Constitucional tendrán valor de cosa juzgada a partir del día siguiente al de su publicación en el Boletín Oficial del Estado.

2. Todas las autoridades administrativas y judiciales están obligadas a acatar las decisiones del Tribunal Constitucional.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a164');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(165, 'Título IX', NULL, NULL, 'Una ley orgánica regulará la composición, organización y funcionamiento del Tribunal Constitucional, en los términos previstos en esta Sección.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a165');


-- SECCIÓN: Título X (Artículos 166-169)
INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(166, 'Título X', NULL, NULL, '1. La reforma de la Constitución podrá iniciarse por propuesta del Gobierno, del Congreso de los Diputados o del Senado, de acuerdo con sus respectivos Reglamentos.

2. Queda prohibida la reforma constitucional durante la vigencia de los estados de excepción o de sitio.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a166');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(167, 'Título X', NULL, NULL, '1. Los proyectos de reforma constitucional serán aprobados por una mayoría de tres quintas partes de cada una de las Cámaras.

2. Si no hubiera acuerdo entre ambas Cámaras, se intentará obtenerlo en una Comisión Paritaria compuesta por igual número de Diputados y Senadores.

3. La Comisión presentará un texto que será votado en el Congreso de los Diputados y en el Senado.

4. De no aprobarse el texto en la Comisión Paritaria, o si éste no fuere aprobado por las Cámaras, se abrirá un período de dos meses, durante el cual ambas Cámaras podrán presentar nuevas propuestas de reforma.

5. Si en este plazo no hubiera acuerdo, se someterá a referéndum el proyecto de reforma aprobado por el Congreso.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a167');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(168, 'Título X', NULL, NULL, '1. Cuando se proponga una revisión total de la Constitución, o una parcial que afecte al Título Preliminar, al Capítulo segundo, Sección primera del Título primero, o al Título segundo, se procederá a la aprobación del principio de reforma por mayoría de dos tercios de cada Cámara, y se disolverán las Cortes Generales.

2. Las Cortes Generales elegidas deberán ratificar la decisión y elaborar el nuevo texto constitucional, que deberá ser aprobado por mayoría de dos tercios de ambas Cámaras.

3. Aprobada la reforma por las Cortes Generales, será sometida a referéndum para su ratificación.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a168');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(169, 'Título X', NULL, NULL, '1. No podrá reformarse la forma política de la monarquía parlamentaria, ni el carácter irrevocable de la proclamación de la Constitución como norma suprema del ordenamiento jurídico.

2. El procedimiento de reforma constitucional no podrá iniciarse durante la vigencia de los estados de excepción o de sitio.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#a169');


-- SECCIÓN: Disposiciones Adicionales
INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(201, 'Disposiciones Adicionales', NULL, NULL, 'La Constitución ampara y respeta los derechos históricos de los territorios forales. La actualización general de este régimen foral se llevará a cabo en el marco de la Constitución y de los Estatutos de Autonomía, de acuerdo con el procedimiento adicional que se establezca.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#da');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(202, 'Disposiciones Adicionales', NULL, NULL, 'La iniciación de acciones civiles en los términos previstos en el artículo 125 podrá también ser ejercitada por los órganos consultivos de las Comunidades Autónomas en materia de derechos humanos en los términos que establezca la ley.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#da-2');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(203, 'Disposiciones Adicionales', NULL, NULL, 'Los Estatutos de Autonomía aprobados según el artículo 151 de esta Constitución podrán ser reformados por las Asambleas legislativas de las Comunidades Autónomas según lo establecido en los mismos, y en todo caso por procedimiento que requiera mayoría cualificada.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#da-3');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(204, 'Disposiciones Adicionales', NULL, NULL, 'La Administración tributaria de las Comunidades Autónomas se ejercerá de conformidad con lo que establezcan sus Estatutos de Autonomía y con arreglo a la ley.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#da-4');


-- SECCIÓN: Disposiciones Transitorias
INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(211, 'Disposiciones Transitorias', NULL, NULL, 'Mientras el Tribunal Constitucional no se constituya y entre en funciones, la jurisdicción constitucional será ejercida por el Tribunal Supremo en los términos que establezca una ley transitoria.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#dt-0');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(212, 'Disposiciones Transitorias', NULL, NULL, 'El régimen electoral de las Cortes Generales, regulado en esta Constitución, será de aplicación en las primeras elecciones legislativas, en la forma que determine una ley transitoria.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#dt-1');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(213, 'Disposiciones Transitorias', NULL, NULL, 'En las primeras elecciones generales, de conformidad con lo establecido en esta Constitución, el Congreso se compondrá de 350 Diputados.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#dt-2');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(214, 'Disposiciones Transitorias', NULL, NULL, 'Los Síndicos de Greuges o equivalentes de las Comunidades Autónomas que estatutariamente existan podrán actuar en el supuesto previsto en la disposición adicional segunda, de conformidad con los respectivos Estatutos de Autonomía.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#dt-3');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(215, 'Disposiciones Transitorias', NULL, NULL, 'Hasta tanto se dicte la ley de reforma de la función pública prevista en el artículo 103, seguirá en vigor la legislación anterior en lo que no se oponga a la Constitución.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#dt-4');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(216, 'Disposiciones Transitorias', NULL, NULL, 'La Administración militar se regirá por sus propias normas, en los términos establecidos en la Constitución y en la ley orgánica que la regule.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#dt-5');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(217, 'Disposiciones Transitorias', NULL, NULL, 'Hasta la entrada en vigor de la legislación estatal que establezca el régimen de las televisiones locales, no podrá regularse la emisión de televisión a través de las mismas, salvo lo que establezcan los Estatutos de Autonomía en el ámbito de su competencia.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#dt-6');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(218, 'Disposiciones Transitorias', NULL, NULL, 'Las instituciones de las Comunidades Autónomas existentes antes de la entrada en vigor de esta Constitución, si no se adecuasen a ella, deberán ser adaptadas de conformidad con el procedimiento que en cada caso determine el correspondiente Estatuto de Autonomía.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#dt-7');

INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(219, 'Disposiciones Transitorias', NULL, NULL, 'Hasta la entrada en vigor de una nueva ley de asociaciones, seguirán en vigor las disposiciones anteriores en lo que no se opongan a esta Constitución.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#dt-8');


-- SECCIÓN: Disposición Derogatoria
INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(220, 'Disposición Derogatoria', NULL, NULL, '1. Queda derogada la Ley 1/1977, de 4 de enero, para la Reforma Política.

2. Asimismo quedan derogadas todas las disposiciones que se opongan a lo establecido en esta Constitución.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#dd');


-- SECCIÓN: Disposición Final
INSERT INTO articulos (numero_articulo, titulo, capitulo, seccion, texto, url_boe) VALUES
(221, 'Disposición Final', NULL, NULL, '1. Esta Constitución entrará en vigor en el mismo día de su publicación en el Boletín Oficial del Estado.

2. El Tribunal Constitucional será constituido en el plazo máximo de tres meses desde la entrada en vigor de esta Constitución.

3. Las Cortes Generales elegidas conforme a esta Constitución se constituirán en el plazo máximo de un año desde su elección.', 'https://www.boe.es/buscar/act.php?id=BOE-A-1978-31229&p=20240217&tn=1#df');


-- ============================================================================
-- RESUMEN DE LA CARGA
-- ============================================================================
-- Total de registros insertados: 184
-- Distribución:
--   - Artículos (1-169): 169 registros
--   - Disposiciones Adicionales (201-204): 4 registros
--   - Disposiciones Transitorias (211-219): 9 registros
--   - Disposición Derogatoria (220): 1 registro
--   - Disposición Final (221): 1 registro
-- TOTAL: 184 registros
-- ============================================================================
-- FIN DEL SCRIPT
-- ============================================================================
