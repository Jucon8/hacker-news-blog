-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Apr 23, 2020 at 07:39 AM
-- Server version: 5.7.26
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `posteos`
--

CREATE TABLE `posteos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titulo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comentario` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `cuerpo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `usuario` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Juconbo',
  `added_on` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posteos`
--

INSERT INTO `posteos` (`id`, `titulo`, `comentario`, `cuerpo`, `usuario`, `added_on`, `created_at`, `updated_at`) VALUES
(1, 'Coronavirus: Los cartoneros podrán ingresar a la Ciudad a recolectar residuos ', 'La recolección se realizará en los grandes supermercados. Las cooperativas bonaerenses deberán gestionar un permiso para ingresar a CABA. El acuerdo se anunciará en los próximos días.', 'El Gobierno nacional y el porteño llegaron a un acuerdo por el que se permitirá que las cooperativas bonaerenses de cartoneros ingresen a la Ciudad exclusivamente para retirar material reciclable de las grandes cadenas de supermercados. <br> Para esto, tendrán que tramitar un permiso de ingreso y seguir un protocolo para el tratamiento de los residuos. <br> El visto bueno llegó luego de arduas tratativas. Por un lado, el Ministerio de Espacio Público porteño se oponía a dejar entrar a los cartoneros por la pandemia mientras que el Ministerio de Ambiente nacional remarcaba que se debía buscar una respuesta a la situación social de los cartoneros que no podían trabajar y era necesario darles una alternativa antes de que la situación se desmadre. \r\nFinalmente, se elaborará un protocolo para que la circulación sea ordenada y la manipulación de los reciclables tenga plazos que impidan la difusión del virus.\r\n\r\nLa tensión entre el parate económico, que golpea con más fuerza a los sectores pobres, y la necesidad de mantener el aislamiento para que no se descontrole la velocidad de las transmisiones del coronavirus se viene viviendo en cada decisión del Estado. Como detalló este diario , para las clases populares, las condiciones para el aislamiento son muchos peores y la crisis económica se vuelve igual o más acuciante que no enfermarse.  En particular, para los que trabajan como cartoneros o recicladores el aislamiento representó un freno completo a sus ingresos. \r\nLas cooperativas porteñas que forman parte del circuito formal del Gobierno de la Ciudad continuaron cobrando el salario complementario, que representa algo así como el 50 por ciento de sus ingresos. \r\nPero las cooperativas bonaerenses no tenían posibilidad de ingresar a la Ciudad.\r\n\r\nDesde distintos sectores, entre ellos los dirigidos por Juan Grabois, comenzaron a reclamar para que existiera un protocolo que les permitiera seguir trabajando, dado que se trata de una actividad de subsistencia que no puede permanecer frenada por meses. En diálogo con este diario, Grabois planteó que se trata de más que eso: \"La covid visibiliza que los cartoneros y recicladores prestan un servicio esencial en términos ecológicos e industriales, brindando insumos básicos para los sectores de alimentos y medicación\". \"Esto refuerza la necesidad de garantizar un salario social y derechos laborales para los 200 mil cartoneros y recicladores que hay en el país. No sólo recuperan el descarte para ganarse el pan diganmente sino que representan una alternativa ecológica para el tratamiento de residuos y un eslabón fundamental para la economía circular\", remarcó el dirigente de la CTEP.\r\n\r\nNegociaciones\r\nDesde el Ministerio de Ambiente, que conduce Juan Cabandié, comenzaron las tratativas para buscar un acuerdo entre las cooperativas y los grandes generadores de residuos, que son -sobre todo- las cadenas de supermercados. Pero se toparon con un obstáculo: el Gobierno porteño no habilitaba el paso por los accesos a la Ciudad. La ministra de Espacio Público, Clara Muzzio, tuvo numerosas llamadas en las que planteaba que la crisis sanitaria era prioritaria y argumentaba que desde el Ministerio de Salud porteño no recomendaban la circulación de cartoneros. \"Esto es un tema sanitario, no de higiene urbana\", advertía. Remarcaba que no era posible reabrir los puntos verdes, donde se manipula basura, porque las condiciones eran aún más peligrosas de lo que ya son habitualmente. Sí había planteado que continuara la recolección mecánica, que no implica manipular directamente los residuos.\r\n\r\nDesde el Gobierno nacional, en tanto, insistían en que si no se les daba una solución organizada, el peligro era que las familias salieran por la suya, con un mayor peligro para sí mismas. Las negociaciones continuaron en esa tensión entre la necesidad de las economías informales y la crisis de la pandemia.\r\n\r\nEn el interin, mientras las cooperativas insistían con la necesidad de volver a trabajar, las papeleras presionaban para importar más papel de rezago. De hecho, Cabandié visitó hace poco una cooperativa en Luján y se encontró con que tenía sobreestock, pese a los reclamos de duplicar la cuota de importaciones que hacían las papeleras. Y los grandes supermercados, mientras tanto, buscaban mandar todo al CEAMSE a enterrar sin tratamiento. \r\n\r\nAcuerdo\r\nFinalmente, el lunes llegaron a un acuerdo entre Nación y Ciudad -que se anunciará formalmente en los próximos días- para que ingresen las cooperativas de cartoneros y retiren los materiales de los supermercados. \"Desde el Ministerio de Ambiente de Nación, y desde la secretaría de Control y Monitoreo ambiental, veníamos impulsando dentro del marco de la cuarentena darle espacio a los recolectores urbanos para que puedan recuperar material potencialmente reciclable, sin que ello suponga circular por las calles sin protección alguna\", destalló a este diario el viceministro de Ambiente, Sergio Federovisky.\r\n\r\n\"Por eso, finalmente, con el Gobierno de la Ciudad acordamos que se va a habilitar, tal como veníamos pidiendo, que los grandes generadores -fundamentalmente, las grandes cadenas de supermercados- dispongan de esos residuos potencialmente reciclables y que no los envíen al relleno sanitario de manera directa. Y que el Gobierno de la Ciudad permita circular con una autorización previa para ir a buscar esos residuos a los grandes generadores y de ahí a los puntos verdes, que empezarían a estar abiertos. Se cumpliría allí el protocolo de 72 horas de no manipulación del material previo a ponerlo a disposición para la comercialización\", indicó el secretario de Control y Monitoreo Ambiental.\r\n\r\n\"Para nosotros es un logro, porque implica no solo respectar el aspecto sanitario de la emergencia sino también el aspecto socioeconómico. Y al mismo tiempo supone tener oferta de material reciclable, principalmente cartón, de modo que las empresas papeleras no deban seguir recurriendo a importación desmedida de material, siendo que hay un stock local. Eso apoya la economía circular y permite reducir el costo de las importaciones y la fuga de dólares\", remarcó el funcionario nacional.\r\n\r\n', 'Juconbo', '2020-04-22 05:46:46', '2020-04-22 05:46:46', '2020-04-22 05:46:46'),
(2, 'Cuarentena: qué cambia y qué sigue igual a partir del lunes', 'Está decidido que seguirá después del domingo. Pero se aflojarán restricciones en las zonas del interior donde no circula el virus. Ginés dijo que el pico se espera para junio.', 'El ministro del Interior, Wado de Pedro, adelantó que los gobernadores están de acuerdo con el presidente Alberto Fernández en mantener la cuarentena más allá de las 0 hora del próximo lunes 27, cuando vence la prórroga establecida. Claro que se avanzará en la idea de una cuarentena \"administrada\" en la que se seguirán habilitando áreas y actividades que no representen riesgo de contagios, principalmente en zonas del interior del país donde no el virus no circula. En el inicio de los meses más fríos, la idea de una vuelta a la vida normal con los chicos en clases y adultos mayores caminando por las calles parece todavía lejana. El ministro de Salud, Ginés González García, reveló que ahora el pico de contagiados se aguarda para junio y que espera que sea \"muy chatito\", pero que ese dato dependerá de lo que se haga durante mayo.\r\n\r\n\"El concepto cuarentena sigue: la protección, las medidas, el distanciamiento, la protección a nuestros adultos mayores que son las personas que más tenemos que cuidar, ese concepto sigue. Lo que vamos a hacer es ir definiendo día a día, qué actividades van a ir comenzando a funcionar\", precisó De Pedro al recorrer junto al ministro de Transporte, Mario Meoni, la flamante instalación de cámaras térmicas en la estación Retiro. Los gobernadores remiten periódicamente a Santiago Cafiero las actividades que entienden pueden ser exceptuadas en sus territorios sin riesgo para que sean analizadas por la Unidad de Coordinación que el jefe de Gabinete integra junto a otros ministros y los especialistas en salud. \r\n\r\nAsí se elaboró la lista con once rubros que fueron permitidos a partir del lunes pasado y prepararán una nueva para el próximo fin de semana. En la resolución con las últimas excepciones se detallaron algunas pautas -por ejemplo, que el comercio debe ser online, las consultas médicas y ondontológicas únicamente con turno previo, lo mismo que la atención en ópticas- que luego cada provincia adapta según su propio protocolo. La Ciudad de Buenos Aires, por ejemplo, dará a conocer este miércoles la manera en que se implementará esta apertura con horarios y especificaciones acerca de cómo debe ser la atención al público.\r\n\r\n\"Vamos a empezar por geografía, charlando con cada una de las provincias por nivel epidemiológico, es decir por cantidad de casos que tengan y la circulación o no del virus. No será igual lo que vaya pasando en cada jurisdicción\", detalló Ginés González García. Hizo hincapié en la extensión territorial argentina, con situaciones muy diferentes en una región u otra. El cuadro más complicado se da en el centro del país, principalmente en la región metropolitana y los grandes centros urbanos. Pero después está el caso de provincias como Formosa y Catamarca que no tienen casos mientras que Jujuy, Salta, Misiones, La Pampa y San Juan registran cinco casos o menos. Mantener las mismas pautas en esos sitios que en la región del AMBA que registra más de la mitad de los contagios que todo el país no tendría sentido, pero en Gobierno tampoco quieren que una salida desordenada que retroceda lo alcanzado hasta ahora.\r\n\r\nLos gobernadores coinciden. Pero así como están alineados con la idea del Presidente de mantener el aislamiento dados los buenos resultados, también están preocupados porque las economías regionales -que ya venían golpeadas- vayan saliendo del parate. Un pedido común es que así como se habilitó la obra pública también se le de luz verde a la construcción privada, siguiendo las pautas que marquen las autoridades sanitarias. Hasta ahora el pedido no caminó porque en el Gobierno entienden que eso podría incrementar el uso del transporte público -el dato que más temen-, pero el reclamo sería tenido en cuenta para las próximas excepciones que comenzarán a discutirse este miércoles en la Casa Rosada en la reunión que por la tarde mantendrá la Unidad de Coordinación. \r\n\r\nEn el encuentro se comenzará a preparar un mapa en el que se cruzarán datos como población, contagios, transporte y actividad comercial. Las grandes industrias seguirán vedadas pero algunas pymes del interior con una dotación acotada podrían funcionar. Lo mismo que pequeños comercios con atención restringida.  \r\n\r\nDe última, son los gobernadores quienes transmiten sus pedidos por escrito y quienes luego se hacen responsables de la implementación de cada excepción a través de los protocolos que elaboran las autoridades sanitarias de acuerdo a la situación provincial. En la Casa Rosada se preocupan de marcar ese dato porque no quieren cargar con la responsabilidad de algún rebrote por culpa de la apertura. Incluso hay gobernadores que se sienten con libertad de mover a su gusto los límites del aislamiento. Un caso es el del gobernador de Jujuy, el radical Gerardo Morales, que estableció a partir de este martes la posibilidad de que los jujeños salgan a hacer actividad física según el número de terminación de su documento. Fue algo que la semana pasada Alberto Fernández mencionó como hipótesis, pero luego no quedó establecido en ninguna de las resoluciones oficiales.\r\n\r\n\"Va a ser más largo de lo que creyeron algunos\", comentó el ministro González García respecto al aislamiento obligatorio, cuya duración dijo que dependerá de variables como qué tan duro será el invierno o si el virus se hace menos complicado. Pero que no se iba a abandonar la estrategia que le permitió a Argentina transitar un camino \"menos trágico\" que otros países en la pelea con la enfermedad. Poco después se difundieron los números oficiales con seis nuevas muertes, lo que llevó el total de fallecidos desde el inicio de la pandemia a 151. Brasil, por poner una comparación, sumó sólo ayer 166 muertos.', 'Juconbo', '2020-04-22 05:52:01', '2020-04-22 05:52:01', '2020-04-22 05:52:01'),
(3, 'Coronavirus en Argentina: hoy fueron confirmados 112 nuevos casos de covid-19', 'De los 3144 casos registrados en el país, 866 (27,6%) son importados, 1.346 (42,8%) son contactos estrechos de casos confirmados, 618 (19,7%) son casos de circulación comunitaria y el resto se encuentra en investigación epidemiológica. El total de muertos es 151.', 'El Ministerio de Salud confirmó 112 nuevos casos de covid-19 en el país, por lo que el total de positivos asciende a 3.144 desde el inicio de la pandemia. En las últimas 24 horas, se registraron también 9 fallecimientos, seis de ellos fueron hombres y un solo caso de una persona menor de 60 años.  Al momento la cantidad de personas fallecidas es 151.\r\n\r\nEl reporte vespertino precisó que, del total de casos positivos, 1.346 (42,8%) son contactos estrechos de casos confirmados, 866 (27,6%) son importados, 618 (19,7%) son casos de circulación comunitaria y el resto se encuentra en investigación epidemiológica. \r\n\r\nEl reporte ministerial ya había anunciado tres nuevas víctimas mortales por la mañana, mientras que el informe vespertino registró 6 nuevas muertes. Se trata de 2 mujeres, una de 76 años, residente en la provincia de la Rioja y otra de 62 años, residente en la provincia de Buenos Aires. Y cuatro hombres, tres de 76, 77 y 83 años residentes en la Ciudad de Buenos Aires (CABA); y uno de 86 años residente en la Rioja.\r\n\r\nLa secretaria de Acceso a la Salud de la Nación, Carla Vizzotti, había adelantado que Argentina afrontará el próximo período con \"dos situaciones\" que diferencian al país de las experiencias de los países del hemisferio norte: el inicio del invierno y el inicio temprano de las medidas de aislamiento social.\r\n\r\n\"Tenemos por delante temperaturas más frías y la circulación de los virus respiratorios, por lo tanto nuestra estrategia de administración del aislamiento deberá tener en cuenta esa situación\", destacó Vizzotti.\r\n\r\nPor otra parte, la decisión del aislamiento se tomó cuando se observaba \"un número reducido de casos y fallecidos\", lo que implica que la salida de la cuarentena tendrá que ser \"muy escalonada y monitoreada\".\r\n\r\nDetalle por provincia (Nº de confirmados | Nº de acumulados):\r\n\r\nBuenos Aires 60 | 975\r\n\r\nCiudad de Buenos Aires 33 | 761\r\n\r\nCatamarca 0 | 0\r\n\r\nChaco 5 | 263\r\n\r\nChubut 0 | 2\r\n\r\nCórdoba 0 | 260\r\n\r\nCorrientes 0 | 34\r\n\r\nEntre Ríos 0 | 22\r\n\r\nFormosa 0 | 0\r\n\r\nJujuy 0 | 5\r\n\r\nLa Pampa 0 | 5\r\n\r\nLa Rioja 1 | 40\r\n\r\nMendoza 0 | 73\r\n\r\nMisiones 0 | 5\r\n\r\nNeuquén 0 | 102\r\n\r\nRío Negro 11 | 148\r\n\r\nSalta 0 | 3\r\n\r\nSan Juan 0 | 2\r\n\r\nSan Luis 0 | 11\r\n\r\nSanta Cruz 0 | 41\r\n\r\nSanta Fe 1 | 225\r\n\r\nSantiago del Estero 0 | 12\r\n\r\nTierra del Fuego 1 | 124\r\n\r\nTucumán 0 | 31', 'Juconbo', '2020-04-22 05:53:10', '2020-04-22 05:53:10', '2020-04-22 05:53:10'),
(4, 'Coronavirus: los curados como estrategia de tratamiento de los enfermos', 'Los médicos recuerdan que las personas recuperadas de la infección pueden ayudar a otros pacientes en estado grave gracias a esta terapia, ya empleada en epidemias históricas. Hay Servicios que realizan estudios para demostrar su efectividad para Covid-19.', '\"El que se cura le brinda algunas de sus defensas al que está contagiado”, explica Juan Carlos Dupont, Jefe de Hematología de Cemic. ¿De qué manera sucede? El plasma (\"la porción líquida de la sangre donde se encuentran suspendidos los glóbulos rojos, los blancos y las plaquetas\") de los pacientes que estuvieron infectados y se recuperaron contiene anticuerpos que pueden transferirse a otras personas en estado grave por covid-19, detalla el especialista. Por eso, cuenta Dupont, Cemic lanzó una convocatoria para que aquellos ciudadanos que tengan entre 18 y 65 años y que se hayan repuesto del virus (previa demostración viral negativa por hisopado nasal) puedan donar plasma. \r\n\r\n-¿Qué es el plasma?\r\n\r\n-Es la porción líquida de la sangre donde se encuentran suspendidos los glóbulos rojos, los blancos y las plaquetas. Posee una cantidad de proteínas muy importantes: algunas de corte alimentario como la albúmina (mantiene el líquido dentro del torrente sanguíneo), otras portan grasas como las lipoproteínas y, finalmente, están las gammaglobulinas. Éstas últimas se vinculan con las defensas y los anticuerpos de nuestros organismos y, en efecto, constituyen la fracción que nosotros deseamos manejar para este proyecto.\r\n\r\n-¿En qué consiste la terapia de infusión de plasma?\r\n\r\n-La gammaglobulina, empleada para la covid-19, lleva la inmunidad activa del individuo curado y se la transfiere de manera pasiva al paciente que se halla con una infección aguda. Para resumirlo: el que se cura le brinda algunas de sus defensas al que está contagiado. Se suministrará a gente que está muy grave y cuyas defensas no responden de manera adecuada para combatir al coronavirus. Las propias proteínas inmunes que contiene el plasma despliegan un efecto neutralizante sobre el virus.\r\n\r\n-¿De qué manera lo neutraliza?\r\n\r\n-Actúa sobre las proteínas de la cápsula del virus. Sus picos y corazas son neutralizados y eliminados por el sistema inmunológico. En el mundo ya se ha comprobado que, al menos en muy pequeñas series, la terapia de plasma funciona con éxito. Los primeros experimentos se desarrollaron en Wuhan (epicentro y origen de la pandemia) y en el presente se desarrolla de forma irrestricta en Estados Unidos. Las investigaciones publicadas en revistas de prestigio (como The Lancet) por especialistas de todo el planeta indican que el procedimiento es satisfactorio en la gran mayoría de los casos.\r\n\r\n-La donación de sangre de pacientes recuperados ya se usó en otras epidemias históricas.\r\n\r\n-Sí, la gente donaba sangre en forma completa (es decir, no solo plasma) durante la gripe española de 1918 que, quizás, constituya el antecedente más importante del que tenemos recuerdo. No obstante, también ocurrió en otros casos más patentes para nosotros. Con la fiebre hemorrágica argentina, producida por el virus Junín, también fue utilizada. Esa fue la contribución histórica de Julio Maiztegui, que tuvo la brillante idea de aprovechar el plasma del convaleciente reciente para disminuir –en 10 veces– la mortalidad para este tipo de infecciones. El plasma da origen a una cantidad de subproductos que pueden ser aprovechados en diferentes sentidos. Las personas que nacen sin gammaglobulina, por ejemplo, requieren inyectarse la proteína durante toda su vida. También es útil para la hemofilia, una enfermedad caracterizada por una mala coagulación sanguínea.\r\n\r\n-¿En Argentina los pacientes con covid-19 ya reciben plasma?\r\n\r\n-Desde el CEMIC ya pusimos en marcha el proceso con infectados pero no podemos revelar ningún dato aún. Cuando podamos extraer alguna conclusión significativa en el corto plazo, de seguro, tendremos noticias para compartir. Sabemos que hay evidencia de que el plasma ha sido central para la recuperación de pacientes con otras enfermedades infecciosas y consideramos que podría ayudar a salvar vidas por covid-19. Pero todavía no sabemos cuán efectivo será hasta que se completen más estudios.\r\n\r\n-¿Cómo es el proceso de donación? \r\n\r\n-Es como el de donación de sangre pero con una diferencia. En este caso, nosotros extraemos todos los componentes de la sangre, se centrifugan y se devuelven los glóbulos rojos, que son los que tardan más en reconstituirse. El individuo que se acerca al Centro retorna a su casa casi con los mismos componentes que tenía cuando vino. Por lo general, las personas deben esperar entre dos o tres meses para poder volver a donar; aquí solo tienen que aguardar dos semanas. Ese plasma luego es trasladado a pacientes con enfermedades respiratorias severas, por lo cual se aplicará en aquella porción de infectados con covid-19 que se encuentra en las peores condiciones. Neumonías que comprometen la llegada de oxígeno al cuerpo, de tal manera que los internados deben ser asistidos mediante respiradores. La terapia proporciona un impulso al sistema inmunitario del paciente enfermo y puede ayudar a acelerar el proceso de recuperación.\r\n\r\n-El Ministerio de Salud está detrás de un proyecto similar.\r\n\r\n-Sí, un plan similar lidera el Ministerio de Salud de la Nación y los ensayos incorporarán a algún otro hospital, probablemente al Italiano. Existe un consenso entre las instituciones públicas y privadas para concentrar los esfuerzos en la misma dirección. El Conicet, por ejemplo, está haciendo un aporte muy importante también.\r\n\r\n-¿Todas las personas recuperadas de coronavirus pueden donar?\r\n\r\n-Puede donar cualquiera que haya tenido la enfermedad y que haya pasado por un proceso de, al menos, tres semanas sin síntomas y un test de PCR negativo. La donación es solidaria, espontánea, gratuita para el donante y también para el receptor. No hay costo alguno. Lo único que toda la población debe concebir es que un banco necesita contar con depósitos para seguir donando. Decía Ramón Carrillo que “no existe avance en la medicina si no es bueno para el pueblo”. En eso pienso todos los días al levantarme.\r\n\r\npablo.esteban@pagina12.com.ar', 'Juconbo', '2020-04-22 05:53:43', '2020-04-22 05:53:43', '2020-04-22 05:53:43'),
(5, '\"No va a haber baja en los combustibles\"', 'Lo aseguró el titular de Fecra, la entidad de los expendedores, quien recordó que el acuerdo por el precio del \"barril criollo\" congeló el crudo en valores muy superiores a los actuales del mercado internacional.', '\"La caída del precio del petróleo a nivel internacional no puede tener incidencia en los  combustibles internamente, porque el gobierno hizo un acuerdo con las petroleras para fijarle el precio al crudo para refinación en 50 dólares, para lo que se denominó barril criollo\", explicó Julio Alonso, presidente de la Federación de Entidades de Combustibles de la República Argentina (Fecra), ante la consulta de Página 12. De ese modo, el precio en surtidores quedó desvinculado de las oscilaciones del precio internacional, que hoy están en un piso histórico. \r\n\r\n\"De todos modos, un barril de petroleo que salga 17 dólares en el mundo (fue el valor mínimo que llegó a tocar el crudo Brent en las operaciones de este martes) es la peor noticia para el país, porque Vaca Muerta termina de morir\", sentenció, en referencia a la muy rica, potencialmente, formación en el subsuelo de Neuquén cuyos crudos deben extraerse por métodos no convencionales. \"Nadie puede perforar para extraer a estos valores del petróleo, porque el costo de llevar a superficie un crudo que se encuentra entre las piedras es varias veces superior al precio actual en el mundo\", justificó su definición anterior Alonso, para quien la situación del sector está reclamando pensar, post pandemia, una redefinición profunda de los precios y la distribución de recursos en el sector. \"Hay que barajar y dar de nuevo\", se sinceró el titular de Fecra. \r\n\r\n\"No se puede seguir manejando el criterio de que un litro de combustible debe valer un dólar; no es posible que el sector siga funcionando con estaciones de servicio con un margen tan estrecho de utilidades, ni se puede pensar que los sueldos de los trabajadores del expendio de combustibles sean la variable de ajuste para que una estacion de servicio funcione\", disparó Julio Alonso, que además desmintió las versiones que indican que haya suspensiones de personal en el sector. \r\n\r\n\"Hoy no se puede suspender a nadie, existe un decreto del gobierno que impide las suspensiones y despidos y lo vamos a respetar, porque es lo que corresponde pero, además, por una cuestión ética no se puede dejar a nadie sin trabajo en un momento como éste\", señaló el titular de Fecra. \"Nosotros estamos en todo el país y le aseguro que, aunque estemos a un 30 por ciento del volumen de ventas que podríamos considerar normal, no hay ninguna situación de suspensiones ni despidos\". \r\n\r\nApuntó que el sector de expendedores logró, por una gestión que tuvo el acompañamiento del gremio de trabajadores del rubro (que encabeza Carlos Acuña, co-secretario general de la CGT), ser incluidos entre las actividades afectadas por las medidas de aislamiento social obligatorio. \"Logramos los beneficios que se dieron por decreto a todas las actividades afectadas: pago de parte de los salarios con un subsidio del Estado, prórroga de las cargas sociales y una línea de crédito de hasta un 25% de la última facturación anual, hasta marzo de este año\", repasó Alonso.\r\n\r\nEl dirigente empresario de los expendedores reiteró que \"no hay ni habrá despidos ni suspensiones en el sector\", recordando además que existe una cláusula en la ley de contrato de trabajo (artículo 263 bis) por la cual empresarios y sindicatos podrían, ante una situación de emergencia, acordar una baja salarial temporaria (por 90 días) para evitar las suspensiones. Conforme a la ayuda que obtuvo el sector de las medidas de emergencia y de acuerdo a lo conversado con el gremio, hasta aquí no se plantea siquiera recurrir a esa cláusula. El futuro del sector pospandemia, en cambio, requerirá un tratamiento más profundo, volvió a recordar Alonso al finalizar el diálogo. ', 'Juconbo', '2020-04-22 05:54:55', '2020-04-22 05:54:55', '2020-04-22 05:54:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posteos`
--
ALTER TABLE `posteos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posteos`
--
ALTER TABLE `posteos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
