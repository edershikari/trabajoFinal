-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-05-2019 a las 11:19:53
-- Versión del servidor: 10.1.35-MariaDB
-- Versión de PHP: 7.1.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tiendaonline`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id_categoria` int(11) NOT NULL,
  `nombre` varchar(32) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id_categoria`, `nombre`) VALUES
(1, 'videojuegos'),
(2, 'sillas'),
(3, 'mandos'),
(4, 'perifericos'),
(5, 'eSports'),
(6, 'accesorios');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

CREATE TABLE `factura` (
  `id_factura` int(11) NOT NULL,
  `nombre` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `apellido` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `dni` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `correo` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `telefono` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `num_tarjeta` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `total_factura` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `linea_factura`
--

CREATE TABLE `linea_factura` (
  `id_linea_factura` int(11) NOT NULL,
  `id_factura` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id_producto` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` text COLLATE utf8_unicode_ci NOT NULL,
  `precio` double NOT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `imagen` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `id_categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id_producto`, `nombre`, `descripcion`, `precio`, `cantidad`, `imagen`, `id_categoria`) VALUES
(1, 'Newskill Kitsune Silla Gaming Azul', 'Aunque al principio no te des cuenta, las largas sesiones de juego delante de la pantalla pueden acabar pasándote factura. Espalda y cuello son, particularmente, dos de las partes del cuerpo que más se resienten debido a las malas postura que adoptamos frente al ordenador. Para evitar estas molestias, en Newskill hemos diseñado KITSUNE, la silla gaming profesional con la que podrás jugar durante horas sin que tu cuerpo ni tu rendimiento se vean afectados.', 139, 2000, 'https://img.pccomponentes.com/articles/13/132145/6.jpg', 2),
(2, 'Silla Gaming F36 Negra/Azul', 'Tienes el mejor ordenador, la pantalla más grande del mercado, los últimos juegos del momento... Y te falta un trono para que tus momentos gaming sean perfectos. Si eres un amante de los mundos virtuales y pasas largas horas delante de tu ordenador, aquí tienes la silla gaming F36. Además, si quiere hacer la experiencia de juego aún más cómoda, puede utilizar el reposapiés que trae esta fantástica silla gaming. ', 99, 2000, 'https://img.pccomponentes.com/articles/13/133074/dsc-5267-copia.jpg', 2),
(3, 'Newskill Kitsune Silla Gaming Roja', 'Aunque al principio no te des cuenta, las largas sesiones de juego delante de la pantalla pueden acabar pasándote factura. Espalda y cuello son, particularmente, dos de las partes del cuerpo que más se resienten debido a las malas postura que adoptamos frente al ordenador. Para evitar estas molestias, en Newskill hemos diseñado KITSUNE, la silla gaming profesional con la que podrás jugar durante horas sin que tu cuerpo ni tu rendimiento se vean afectados.', 139, 2000, 'https://thumb.pccomponentes.com/w-530-530/articles/13/132146/dpp-26492.jpg', 2),
(4, 'Silla Gaming F36 Negra/Gris', 'Tienes el mejor ordenador, la pantalla más grande del mercado, los últimos juegos del momento... Y te falta un trono para que tus momentos gaming sean perfectos. Si eres un amante de los mundos virtuales y pasas largas horas delante de tu ordenador, aquí tienes la silla gaming F36. Además, si quiere hacer la experiencia de juego aún más cómoda, puede utilizar el reposapiés que trae esta fantástica silla gaming. ', 79, 2000, 'https://img.pccomponentes.com/articles/13/133071/dsc-5220.jpg', 2),
(6, 'Aerocool Project 7 Pro RGB\r\n', 'El sistema RGB viene con cuatro efectos de iluminación. Configure el estado de su iluminación con un control remoto fácil de usar. Cuando su silla está trabajando en el modo de iluminación de color sólido, puede elegir entre cualquiera de los 16 colores preestablecidos disponibles el que mejor se adapte a su gusto y ambiente.\r\n\r\n', 339, 2000, 'https://img.pccomponentes.com/articles/15/150230/1.jpg', 2),
(7, 'Drift DR300 Silla Gaming Negra/Rosa\r\n', 'Te presentamos la Silla Gaming DR300 en color Negro y Rosa de Drift, estarás muy cómodo y agusto durante todas las horas que estés frente tu pc. Un buen acabado con materiales premium. Las sillas gaming de Drift cuentan con una estructura robusta recubierta de FOAM acolchado y tela de primera calidad.\r\n\r\n', 185, 2000, 'https://img.pccomponentes.com/articles/11/114408/51iqd1nq34l-sl1056.jpg', 2),
(8, 'Silla Gaming F83 Roja/Blanca\r\n', 'Su diseño ha sido meticulosamente pensado para obtener gran comodidad y flexibilidad en cada movimiento. Fabricada en una cómoda espuma dura y materiales de alta calidad muy resistentes, goza de tus videojuegos con poses naturales. Disfruta de unos apoyabrazos fijos confortables y un mecanismo novedoso de ajuste. Esta silla se soporta sobre unas ruedas de alta calidad prácticamente irrompibles, la durabilidad está garantizada. \r\n\r\n', 119, 2000, 'https://img.pccomponentes.com/articles/13/133056/dsc-8167.jpg', 2),
(9, 'The Division 2 PS4\r\n', 'Prosigue con la lucha por salvar a la ciudad de Nueva York en The Division 2 para PlayStation 4. Cada vez aumentan más el peligro, tú y tu equipo sois la última esperanza en este shooter/RPG. ¡Un hombre con coraje es una mayoría!\r\n\r\n', 59, 2000, 'https://thumb.pccomponentes.com/w-530-530/articles/18/187462/tom-clancys-the-division-2-standard-ps4-fisico-cuotas-d-nq-np-671897-mla29432508216-022019-f.jpg', 1),
(12, 'Fifa 19 PS4\r\n', 'Juega en la cima del fútbol a través de una gran variedad de modos de FIFA 19, con presentaciones oficiales de partidos y amplias y variadas experiencias de torneos, como la Champions League, la Europa League, la Supercopa de Europa y un nuevo equipo de comentaristas con Derek Roe y Lee Dixon.\r\n', 70.99, 2000, 'https://img.pccomponentes.com/articles/17/170088/o-1535392571-4e47968359d8a8a6bb6095237a292d48.jpg', 1),
(13, 'Grand Theft Auto V PS4\r\n', 'Vive la historia de Trevor, Michael y Franklin a través de Los Santos y el condado de Blaine. Juega la campaña principal o piérdete entre sus calles con las innumerables tareas y actividades opcionales a las que podrás acceder.\r\n\r\n', 17.95, 2000, 'https://img.pccomponentes.com/articles/7/71867/grand-theft-auto-v-ps4.jpg', 1),
(14, 'Marvel’s Spider-Man PS4\r\n', 'Protagonizado por uno de los superhéroes más emblemáticos del mundo, Marvel?s Spider-Man incluye las habilidades acrobáticas, la improvisación y el lanzamiento de redes por los que es conocido el trepamuros, al tiempo que introduce nuevos elementos nunca antes vistos en un juego de Spider-Man. Muévete haciendo parkour y utilizando el entorno o prueba el nuevo sistema de combate y escenas repletas de acción. Este es un juego de Spider-Man como nunca antes has visto.\r\n\r\n', 34.99, 2000, 'https://img.pccomponentes.com/articles/15/159008/01.jpg', 1),
(15, 'Sekiro Shadows Die Twice PS4\r\n', 'Tu muerte no será sencilla. Prepárate para Sekiro: Shadows Die Twice para PlayStation 4, Xbox One y PC. Adéntrate en el mundo de finales de 1500, la era Sengoku en Japón; un periodo brutal y sangriento en constante conflicto entre la vida y la muerte. A medida que aumentan las tensiones, se desarrolla una nueva historia que surge en medio del caos. Sekiro: Shadows Die Twice, es una nueva y oscura experiencia de juego desarrollada por el reconocido estudio FromSoftware y publicado por Activision. Dirigido por Hidetaka Miyazaki, Sekiro: Shadows Die Twice es un juego de acción y aventuras en tercera persona con elementos RPG. Esta propuesta single-player pone al jugador en el papel protagonista de un guerrero de noble corazón, cuya misión es rescatar a su amo, un joven señor, al tiempo que busca la venganza sobre su archienemigo. En el papel de “Sekiro” o “el lobo de un solo brazo”, los jugadores descubrirán las distintas formas de enfrentarse en combate a los enemigos de forma estratégica.\r\n\r\n', 59.99, 2000, 'https://img.pccomponentes.com/articles/18/185211/1.jpg', 1),
(16, 'God of War PS4\r\n', 'Adéntrate en una aventura compleja y desconocida en la que explorarás una impresionante versión alternativa de una historia clásica. Únete a Kratos en un profundo viaje de reflexión, crecimiento, violencia y el deseo de convertirse en un hombre mejor por su hijo. En un mundo de monstruos, dragones y dioses, el peso de la responsabilidad recae sobre tus hombros. Y cuando tu vida está marcada por la sangre y el caos, ¿cómo puedes evitar los errores del pasado para proteger tu futuro?\r\n\r\n', 34.99, 2000, 'https://img.pccomponentes.com/articles/15/150053/samago-god-of-war-ps4-1.jpg', 1),
(17, 'Days Gone PS4\r\n', 'La esperanza nunca muere. En esencia, Days Gone es un juego sobre supervivientes y aquello que los hace humanos: la desesperación, la pérdida, la locura, la traición, la amistad, la hermandad, el arrepentimiento, el amor y la esperanza. Trata sobre cómo estas personas encuentran una razón para vivir incluso al enfrentarse con esas enormes tragedias. La esperanza nunca muere.\r\n\r\n', 58.99, 2000, 'https://img.pccomponentes.com/articles/18/183105/daysgone-4.jpg', 1),
(18, 'Fallout 76 PS4\r\n', 'Bethesda Game Studios, los galardonados creadores de Skyrim y Fallout 4, te dan la bienvenida a Fallout 76, la precuela online donde cada humano superviviente es una persona real. Trabaja en equipo (o no) para sobrevivir. Bajo la amenaza de una aniquilación nuclear, encontrarás el mundo más grande y dinámico jamás creado en el legendario universo de Fallout.\r\n\r\n', 33.95, 2000, 'https://img.pccomponentes.com/articles/17/176205/fallout-76-box-front-01-ps4-us-21jun18.jpg', 1),
(19, 'Spyro Reignited Trilogy PS4\r\n', '¡El auténtico maestro de las llamas está de vuelta! Las mismas llamaradas, la misma actitud candente, pero ahora en impresionante HD. Spyro trae el calor como nunca antes a la colección de juegos Spyro ™ Reignited Trilogy. Reaviva la llama con los tres juegos originales, Spyro ™ the Dragon, Spyro ™ 2: En busca de los Talismanes. y Spyro ™: El año del dragón. Explora reinos inmensos, reencuéntrate con personalidades únicas y revive la aventura completamente remasterizada. Porque cuando hay un reino en apuros, solo hay un dragón con el que puedes contar.\r\n\r\n', 33.99, 2000, 'https://img.pccomponentes.com/articles/15/158286/spyro-presell-ps4-3d-front-packshot-es-v1.jpg', 1),
(20, 'Kingdom Hearts 3 PS4\r\n', 'Kingdom Hearts III para PlayStation 4 y Xbox One, es una historia de amistad y del conflicto entre la luz y la oscuridad en la que Sora y sus amigos se embarcan en una peligrosa aventura. Ambientado en una serie de mundos de Disney y Pixar, Kingdom Hearts narra el viaje de Sora, un joven que descubre inesperadamente que posee un poder espectacular.\r\n', 45.95, 2000, 'https://img.pccomponentes.com/articles/18/181418/5021290068629-1.jpg', 1),
(21, 'Sony DualShock 4 Negro V2\r\n', 'Una revolución en tus manos, llega el nuevo DualShock para PS4.\r\n\r\n', 55.9, 2000, 'https://img.pccomponentes.com/articles/10/105450/111.jpg', 3),
(22, 'Nacon Revolution Pro Controller 2 para PS4 Negro\r\n', 'El mando diseñado para Esports. Gana ventaja con el mando totalmente personalizable Revolution Pro Controller 2, que combina características y controles para eSports para mejorar y adaptarse a todos los estilos de juego competitivo. Lleva tu rendimiento en los videojuegos a un nuevo nivel, eleva tu habilidad y maximiza tu potencial con un mando tecnológicamente avanzado, diseñado para sistemas PS4™ y probado por auténticos jugadores de eSports. Personaliza tus ajustes para tener un control total en todos los juegos, y enfréntate a los rivales más duros con una precisión impresionante.\r\n\r\n', 89.99, 2000, 'https://img.pccomponentes.com/articles/14/147445/ps4ofpadrev2-02.jpg', 3),
(23, 'Razer Raiju Tournament Edition Mando Inalámbrico PS4\r\n', 'El mando Razer Raiju Ultimate es el mando inalámbrico para PS4 que te permite aplicar una personalización avanzada a través de nuestra aplicación para móviles. Para reasignar los botones multifunción o ajustar la sensibilidad, tienes el control completo de tu mando al alcance de la mano. Lleva tu Razer Raiju Ultimate más allá con los sticks intercambiables y elige entre el diseño inclinable o individual de los botones de la cruceta.\r\n\r\n', 129, 2000, 'https://img.pccomponentes.com/articles/18/181820/1.jpg', 3),
(24, 'Hori Horipad Mini para PS4 Negro\r\n', 'Creado por el fabricante de accesorios japonés HORI, el exclusivo minipadpad cuenta con un diseño altamente compacto, lo que lo convierte en un controlador de PS4 ideal para jugadores jóvenes. El diseño de inspiración retro incluye una gama de controles de fácil acceso, un botón táctil y un cable de 3 m para un uso seguro. Tanto adultos como niños podrán disfrutar de gamepad.\r\n\r\n', 19.99, 2000, 'https://img.pccomponentes.com/articles/14/144578/1.jpg', 3),
(25, 'Sony DualShock 4 Morado/Azul V2\r\n', 'Una revolución en tus manos, llega el nuevo DualShock para PS4 en color azul. Toma el control de una nueva generación de videojuegos con un mando inalámbrico Dualshock 4 rediseñado que pone en tus manos la mayor precisión en el juego. Con un panel táctil nuevo que revela desde arriba la barra luminosa y un elegante acabado mate, es la forma más ergonómicas e intuitiva de jugar que haya habido nunca.\r\n\r\n', 59.99, 2000, 'https://img.pccomponentes.com/articles/17/171780/1.jpg', 3),
(26, 'Ozone Giants Evo Alfombrilla Gaming\r\n', 'La alfombrilla Giants EVO es el resultado de la unión de la tecnología de Ozone Gaming con la experiencia de un equipo competitivo de la calidad de Giants Gaming. El tamaño de esta alfombrilla la hacen perfecta para aquellos que necesitan un extra de espacio y comodidad. \r\n\r\n', 21.99, 2000, 'https://img.pccomponentes.com/articles/17/178844/giants-evo-main.jpg', 5),
(27, 'Ozone Giants Pro Alfombrilla Gaming\r\n', 'La alfombrilla Giants PRO es el resultado de la unión de la tecnología de Ozone Gaming con la experiencia de un equipo competitivo de la calidad de Giants Gaming. Las especificaciones técnicas de esta alfombrilla la hacen perfecta tanto para tu setup, como para llevarla a tus LAN partys.\r\n\r\n', 19.9, 2000, 'https://img.pccomponentes.com/articles/17/178838/00.jpg', 5),
(33, 'Krom Movistar Riders XL Alfombrilla Gaming\r\n', 'Krom se ha unido a Movistar Riders para desarrollar una edición especial de alfombrillas gaming: las Movistar Riders series, creadas para ofrecer una experiencia de juego excelente tanto a jugadores ocasionales como profesionales. Un look & feel cuidado al detalle y extra grande: Krom Movistar Riders XL posee un diseño exclusivo para transformar tu escritorio en una superficie gaming lisa sin imperfecciones, gracias a sus 3mm de grosor.\r\n\r\n', 18.95, 2000, 'https://img.pccomponentes.com/articles/13/133253/b2.jpg', 5),
(34, 'Drift Movistar Riders Special Edition Silla Gaming\r\n', 'Movistar Riders es un club de eSports creado para contribuir al desarrollo de los deportes electrónicos. Cuentan con diferentes equipos compuestos por jugadores profesionales en los videojuegos más populares, listos para competir y llevar al club a lo más alto.\r\n\r\n', 279, 2000, 'https://img.pccomponentes.com/articles/15/159949/1.jpg', 5),
(35, 'Krom Movistar Riders Avago 3330 Ratón Óptico 7200 DPI\r\n', 'De la inspiración de uno de los clubs de eSports más potentes del panorama nacional, nace Krom Movistar Riders, el ratón oficial del club que aúna diseño y precisión para que lleves todas tus batallas a otro nivel.\r\n', 39.9, 2000, 'https://img.pccomponentes.com/articles/18/186877/01.jpg', 5),
(36, 'Mochila para Portátil hasta 15.6\" Krom Karry Movistar Riders\r\n', 'Krom Karry Movistar Riders es una mochila diseñada de la mano de los jugadores de Movistar Riders para jugadores que entienden la necesidad de jugar y competir siempre con sus propios periféricos.\r\n\r\n', 47.99, 2000, 'https://img.pccomponentes.com/articles/15/156704/krom-mochila-riders-main.jpg', 5),
(37, 'Nox KROM Movistar Riders Teclado Mecánico RGB\r\n', 'El teclado del club de eSport Movistar Riders ya es una realidad. Fruto de la unión del talento y el esfuerzo del club español y la precisión e innovación que desde Krom trabajamos en cada periférico, nace el Krom Movistar Riders con la misión de ofrecer rendimiento y precisión a los que nunca cesan en la batalla.\r\n\r\n', 73.99, 2000, 'https://img.pccomponentes.com/articles/18/186035/krom-riders-keyboard-top.jpg', 5),
(38, 'Nintendo Switch Pro Controller\r\n', 'Juega en los ambientes más competitivos o supera las situaciones más difíciles con el mando Nintendo Switch ProController, el mando para la nueva generación de Nintendo con el que conseguirás el control más profesional. El Nintendo Switch Pro Controller incluye cable USB de carga y cuenta con la nueva tecnología de vibración HD, punto NFC para compatibilidad con figuras amiibo y sensores de movimiento.\r\n\r\n', 61.99, 2000, 'https://img.pccomponentes.com/articles/11/117145/m3.jpg', 3),
(39, 'Microsoft Xbox One Gamepad Inalámbrico Negro\r\n', 'Siente el tacto y la comodidad mejorados del nuevo mando inalámbrico Xbox, con un diseño más elegante y ergonómico y un agarre en relieve. Disfruta del esquema de botones personalizado y hasta el doble de alcance inalámbrico. Conecta cualquier auricular compatible con jack estéreo de 3,5 mm. Además, disfruta de tus juegos preferidos en un PC y tablets con Windows 10 gracias a la tecnología Bluetooth.\r\n\r\n', 44.99, 2000, 'https://img.pccomponentes.com/articles/12/125553/1.jpg', 3),
(40, 'Microsoft Xbox One Controller Elite\r\n', 'La nueva bestia de Microsoft no es nada sin un fantástico gamepad como el Xbox One Controller. Este mando Xbox One atesora todas las cualidades de sus predecesores y los combina con los más novedosos avances de detención de movimiento y diseño.\r\n\r\n', 134, 2000, 'https://img.pccomponentes.com/articles/9/90719/microsoft-xbox-one-controller-elites.jpg', 3),
(41, 'PowerA Mando Inalámbrico Pro Nintendo Switch Negro/Rojo\r\n', 'Juega tus juegos favoritos de Nintendo Switch  como un profesional con este controlador inalámbrico mejorado PowerA con licencia oficial que presenta un diseño en negro mate con detalles en rojo.\r\n\r\n', 44.99, 2000, 'https://img.pccomponentes.com/articles/17/178710/1.jpg', 3),
(42, 'Nintendo Switch Joy-Con Set Izquierda/Derecha Gris\r\n', 'Un mando o dos, en vertical o en horizontal, control por movimiento o mediante botones… Con los nuevos mandos Joy-Con para Nintendo Switch tendrás flexibilidad total a la hora de jugar y descubrirás nuevas formas de interactuar que transformarán por completo tus experiencias de juego.\r\n', 74.99, 2000, 'https://img.pccomponentes.com/articles/11/117141/2.jpg', 3),
(43, 'Onaji Kodama Silla Gaming Naranja\r\n', 'Si eres un amante de los mundos virtuales y pasas largas horas delante de tu ordenador, aquí tienes la silla gaming Onaji Kodama. Una silla creada para que disfrutes al máximo de una experiencia envolvente y confortable en tus largas e intensas sesiones de juegos y también en tus jornadas de trabajo o estudios.\r\n\r\n', 89, 2000, 'https://img.pccomponentes.com/articles/18/182172/agampa0285-1-yh4a4vda7q.jpg', 2),
(44, 'Onaji Kodama Silla Gaming Roja\r\n', 'Si eres un amante de los mundos virtuales y pasas largas horas delante de tu ordenador, aquí tienes la silla gaming Onaji Kodama. Una silla creada para que disfrutes al máximo de una experiencia envolvente y confortable en tus largas e intensas sesiones de juegos y también en tus jornadas de trabajo o estudios.\r\n\r\n', 89, 2000, 'https://img.pccomponentes.com/articles/18/180845/c1.jpg', 2),
(47, 'GORRA OFICIAL E-SPORTS -GIANTS\r\n', 'Gorra de Giants Gaming con el logo bordado en color original en la parte frontal. Además cuenta con una pegatina brillante en colores plateados y negros en la visera.\r\n\r\n', 19.9, 2000, 'https://www.vsgamers.es/thumbnails/product_gallery_medium/uploads/products/giants/3.%20gorra/gorra-2017/galeria/gorra-giants-negra-2017-galeria-4.jpg', 5),
(48, 'BUFANDA GIANTS\r\n', 'Te damos un motivo más para sentir los colores de tu equipo con la bufanda oficial de Giants Gaming.\r\n\r\nFabricada en tonos azules clásicos del Club y el escudo en ambos extremos de la bufanda combinados con un color blanco y detalles en color negro.\r\n\r\n', 14.9, 2000, 'https://www.vsgamers.es/thumbnails/product_gallery_medium/uploads/products/giants/bufanda/bufanda-giants/galeria/bufanda-giants-2017-galeria.jpg', 5),
(49, 'GIANTS SPECIAL EDITION\r\nSILLAS GAMING DRIFT GIANTS', 'Giants Gaming representa la competición, la deportividad, las ganas y la superación, esta silla representa a Giants.\r\n\r\nHa sido diseñada para jugar largas partidas sin preocuparte de nada más: sus reposabrazos son ajustables en altura, posición, profundidad y rotación para ayudarte a ganar espacio y una máxima amplitud de movimientos.', 279.9, 2000, 'https://www.vsgamers.es/thumbnails/product_gallery_medium/uploads/products/drift/giants-edicion-especial/galeria/silla-gaming-drift-giants-edicion-especial-galeria-9.jpg', 5),
(50, 'PULSERA GIANTS BLUE', 'Siente los colores de tu equipo favorito con la pulsera oficial de Giants.\r\n\r\nFabricadas en silicona 100% con grabado en relieve. ', 2.9, 2000, 'https://www.vsgamers.es/thumbnails/product_gallery_medium/uploads/products/giants/pulseras/pulsera-azul-2017/galeria/pulsera-gianst-silicona-azul-galeria.jpg2.jpg', 5),
(51, 'VP228DE 21.5\"\r\nFULL HD / 5 MS\r\nMONITORES ASUS GAMING', 'El monitor VP228DE Full HD de 21,5\" ofrece una relación de contraste 100 000 000:1 y cuenta con las tecnologías de optimización de color e imagen SplendidPlus y VividPixel. A nivel de diseño, este monitor incorpora un perfil fino y una sólida peana que no compromete su estilo.\r\n', 87.89, 2000, 'https://www.vsgamers.es/thumbnails/product_gallery_medium/uploads/products/asus/monitores/asus-vp228de-monitor-215-led-fhd-169-5ms-vga/galeria/monitor-gaming-asus-vp228de-galeria.jpg', 4),
(52, 'GW2270 21.5\" LED\r\n1920 X 1080 PIXELES / FULL HD / LED / 5 MS\r\nMO', 'El sistema GW2270, que encarna el diseño minimalista de “menos es más”, complementa de forma exquisita cualquier espacio moderno. Todos los aspectos formales y funcionales se han reducido para unificar la sencillez y la estética. El sistema GW2270, que aumenta el placer visual y ofrece una comodidad para los ojos óptima gracias a la exclusiva tecnología eye care de BenQ, celebra el minimalismo y los estilos de vida modernos como puerta de entrada hacia el disfrute diario tanto en el trabajo como en el ocio.\r\n\r\n', 94.9, 2000, 'https://www.vsgamers.es/thumbnails/product_gallery_medium/uploads/products/benq/monitores/gw2270/galeria/gw2270-15.jpeg', 4),
(53, 'OPTIX MAG27CQ 27\" RESPAWN\r\nMONITORES MSI', 'El monitor MSI Optix MAG27CQ ofrece un panel VA de 27 pulgadas con un radio de curvatura 1800R para una mayor inmersión, mientras que la combinación de resolución de 2560 x 1440 píxeles (QHD) y una frecuencia de actualización de 144 Hz junto a un tiempo de respuesta de 1 ms va enfocandoa jugadores realmente exigentes.\r\n\r\n', 477.95, 2000, 'https://www.vsgamers.es/thumbnails/product_gallery_medium/uploads/products/msi/monitores/msi-optix-mag27cq-monitor-gaming-27/galeria/monitor-masi-optix-mag27cq-galeria.jpg', 4),
(54, 'XL2411P 24\"\r\n144 HZ / 1 MS\r\nMONITORES ZOWIE BY BENQ', 'La serie XL de BenQ ZOWIE cuenta con los nuevos monitores de PC para e-sports, afinados para garantizar la experiencia más suave y sensible, y las imágenes más claras: tus armas para la competición.\r\n\r\n', 199, 2000, 'https://www.vsgamers.es/thumbnails/product_gallery_medium/uploads/products/zowie-by-benq/monitores/monitor-zowie-xl2411p/monitor-zowie-xl2411p/galeria/monitor-zowie-xl2411p-galeria-1.png', 4),
(55, 'NITRO VG220Q 21.5\"\r\nLED IPS / FULLHD / FREESYNC\r\nMONITORES ACER', 'Demuestra tu finura con la velocidad de actualización rápida Radeon ™ FreeSync y la arquitectura ZeroFrame del monitor Nitro VG0 Series.', 129.91, 2000, 'https://www.vsgamers.es/thumbnails/product_gallery_medium/uploads/products/acer/monitores/monitor-acer-215-nitro-vg220qbmiix/galeria/monitor-acer-nitro-vg220q-21-5-fullhd-galeria.jpg', 4),
(56, 'KNOUT RGB\r\nALFOMBRILLAS KROM', 'La gran aliada de tu set up ha sido concebida por Krom con un doble objetivo: dotar a tus movimientos de precisión, seguridad y velocidad y al mismo tiempo ofrecerte una increíble atmósfera de juego gracias a sus efectos de iluminación y colores vivos.\r\n\r\n', 19.9, 2000, 'https://www.vsgamers.es/thumbnails/product_gallery_medium/uploads/products/krom/alfombrilas/knout-rgb/galeria/alfombrilla-gaming-rgb-krom-knout-rgb-galeria-6.jpg', 4),
(57, 'MM350 PREMIUM XL\r\nTELA ANTIDESGASTE\r\nALFOMBRILLAS CORSAIR\r\n', 'Haz grandes jugadas con un control superior gracias a la superficie textil tejida idónea para el deslizamiento y optimizada para ratones para juegos de alto rendimiento, con seguimiento de baja fricción que ofrece una precisión de píxeles. La superficie gráfica con impresión resistente al desgaste mantiene el escritorio con estilo.\r\n', 23.9, 2000, 'https://www.vsgamers.es/thumbnails/product_gallery_medium/uploads/products/corsair/alfombrillas/alfombrilla-corsair-mm350-premium-anti-fray-x-large-ch-9413561-ww/galeria/alfombrilla-corsair-mm350-premium-anti-fray-x-large-ch-9413561-ww-1.jpg', 4),
(58, 'MM800 RGB POLARIS CLOTH EDITION\r\nRGB\r\nALFOMBRILLAS CORSAIR', 'La alfombrilla gaming MM800 RGB POLARIS Cloth Edition se basa en los excelentes niveles de resistencia, seguimiento y precisión de las alfombrillas CORSAIR, y añade un nuevo nivel de inmersión LED.\r\n\r\n', 65.91, 2000, 'https://www.vsgamers.es/thumbnails/product_gallery_medium/uploads/products/corsair/alfombrillas/alfombrilla-corsair-mm800-rgb-polaris-cloth-edition/galeria/alfombrilla-gaming-corsair-mm800-rgb-polaris-cloth-edition-galeria.jpg', 4),
(59, 'MM200 EXTENDED\r\nTELA\r\nALFOMBRILLAS CORSAIR', 'La alfombrilla Corsair Gaming MM200 Extended Edition tiene unas dimensiones de 930 mm de ancho y 300 mm de largo, es lo suficientemente grande para utilizarla sobre grandes teclados de juego y que quede mucho espacio para el ratón.. La superficie de tela de la MM200 proporciona excelentes características de deslizamiento que le permiten ejecutar movimientos rápidos de alta precisión con confianza y consistencia. Está optimizado para los sensores de juego, con un material de superficie cuidadosamente proyectado que ofrece un excelente seguimiento.\r\n', 33.9, 2000, 'https://www.vsgamers.es/thumbnails/product_gallery_medium/uploads/products/corsair/alfombrillas/corsair-alfombrilla-mm200-extended-gaming/galeria/alfombrilla-gaming-corsair-mm200-extended-tela-galeria-10.jpg', 4),
(60, 'AGILITY GD70\r\n900 X 400 MM\r\nALFOMBRILLAS MSI', 'La superficie de la alfombrilla gaming MSI Agility GD70 está optimizada para un movimiento rápido que proporciona suavidad, precisión y respuesta rápida en las sesiones de juego.\r\n\r\n', 29.9, 2000, 'https://www.vsgamers.es/thumbnails/product_gallery_medium/uploads/products/msi/alfombrillas/gd70/galeria/alfo,brilla-gaming-agility-gd70-galeria.jpg', 4),
(61, 'GOLIATHUS SPEED COSMIC EXTENDED\r\nTELA\r\nALFOMBRILLAS RAZER\r\n', 'La nueva edición de las Razer Goliathus V2 Speed llegan a nuestra tienda. Con un diseño mejorado, además de mantener su resistencia y durabilidad. La edición SPEED es la mejor para obtener una respuesta rápida ante todo movimiento. Si llegar medio segundo tarde provoca tu muerte, elige este modelo.\r\n', 35.9, 2000, 'https://www.vsgamers.es/thumbnails/product_gallery_medium/uploads/products/razer/ALFOMBRILLAS/goliathus-speed-cosmic-small/galeria/alfombrilla-razer-goliathus-speed-cosmic-extended-galeria--3.jpg', 4),
(67, 'R.A.T. 5 NEGRO BRILLO RESPAWN\r\nLÁSER 5600DPI\r\n', 'El ratón Mad Catz R.A.T. 5 hace posible ajustar el dispositivo para crear una experiencia totalmente personalizada con un ratón que se adapta para cubrir todas tus necesidades. ¿Cómo te preparas para la batalla? Sea cual sea tu modo de sujetar el ratón, el Mad Catz R.A.T. 5 puede adaptarse rápidamente ajustando su longitud para que él tu y mano sean uno solo.\r\n', 46.59, 2000, 'https://www.vsgamers.es/thumbnails/product_gallery_medium/uploads/products/mad-catz/4.%20RATONES/raton-laser-gaming-5600dpi-mad-catz-rat-5-negro-second-life/galeria/raton-laser-gaming-5600dpi-mad-catz-rat-5-negro-second-life-2.jpg', 4),
(68, 'QI® DARK CORE RGB SE RESPAWN\r\nÓPTICO ', 'El ratón inalámbrico para juegos CORSAIR DARK CORE RGB SE usa una conexión inalámbrica ultrarrápida de 2,4 GHz y 1 ms, carga inalámbrica Qi® y un sensor óptico de 16.000 ppp para disfrutar de un auténtico juego inalámbrico.', 96.8, 2000, 'https://www.vsgamers.es/thumbnails/product_gallery_medium/uploads/products/corsair/ratones/raton-corsair-dark-core-rgb-se/galeria/raton-corsair-dark-core-rgb-se-15.jpg', 4),
(69, 'KAMMO RGB\r\nÓPTICO / MODULAR MMO / PIXART PMW 3325 / 10.000 DPI\r\n', 'El arma letal y fiel cómplice de batallas llega a Krom con sed de victoria:\r\n\r\nEl ratón gaming con infinitas posibilidades para adaptarlo a cada juego, movimiento y usuario que te ofrece las mejores prestaciones para que descargues toda la adrenalina sobre la alfombrilla.', 39.9, 2000, 'https://www.vsgamers.es/thumbnails/product_gallery_medium/uploads/products/krom/kammo/galeria/raton-gaming-modular-mmo-krom-kammo-galeria.jpg', 4),
(70, 'RIVAL 710 RGB\r\n12000 DPI / ÓPTICO / PANTALLA OLED\r\n', 'El l Rival 710 es el único ratón que cuenta con una pantalla OLED, retroalimentación táctil y el sensor más preciso que se haya creado.', 109.9, 2000, 'https://www.vsgamers.es/thumbnails/product_gallery_medium/uploads/products/steelseries/ratones/raton-steelseries-rival-710-62334/galeria/galeria/raton-gaming-steelseries-rival-710-galeria-1.jpg', 4),
(71, 'IRONCLAW RGB\r\nFPS/MOBA / 18000 DPI / ÓPTICO', 'El ratón Gaming IRONCLAW RGB tan solo pesa 105 g y su forma se ha construido específicamente para agarrar con la palma y con casi todo tipo de manos.', 57.9, 2000, 'https://www.vsgamers.es/thumbnails/product_gallery_medium/uploads/products/corsair/ratones/raton-corsair-ironclaw-rgb-18000-dpi-optical-negro-ch-9307011-eu/galeria/raton-corsair-ironclaw-rgb-18000-dpi-optical-negro-ch-9307011-eu-3.jpg', 4),
(72, 'LANCEHEAD TOURNAMENT QUARTZ ED. ROSA\r\nÓPTICO / 16000 DPI\r\n', 'Equipado con un sensor óptico para Esports que ofrece 16.000 ppp reales y una capacidad de rastreo de 450 pulgadas por segundo (IPS), el Razer Lancehead Tournament Edition te da la ventaja definitiva al disponer del sensor más rápido del mercado. Este increíble sensor de ratón deja muy atrás a la competencia con una exactitud de resolución del 99,4%, por lo que podrás disparar y acabar con los enemigos con una puntería fantástica. \r\n\r\n', 59.9, 2000, 'https://www.vsgamers.es/thumbnails/product_gallery_medium/uploads/products/razer/ratones/raton-razer-lancehead-tournament-quartz-ed/galeria/raton-razer-lancehead-tournament-quartz-ed-galeria-2.png', 4),
(73, 'NEON X20 RGB\r\n9 BOTONES / ÓPTICO PIXART PMW3325 / 10.000 DPI\r\n', 'El Neon X20 llega a Ozone, fruto de la evolución de una gama sujeta a constante examen por parte de los verdaderos expertos en videojuegos.\r\n\r\nConjuga un avanzado sensor óptico (Pixart PMW3325) con un diseño ambidiestro y versátil que alberga las más altas prestaciones para convertirse en el mejor aliado del competitivo.\r\n\r\n', 29.9, 2000, 'https://www.vsgamers.es/thumbnails/product_gallery_medium/uploads/products/ozone/2_RATONES/neon-x20/galeria/raton-gaming-ozone-neon-x20-optico-rgb-galeria.jpg', 4),
(74, 'K70 RGB MK.2\r\nCHERRY® MX RED\r\nTECLADOS GAMING CORSAIR', 'El CORSAIR K70 RGB MK.2 es un teclado mecánico premium Gaming diseñado para durar, con una estructura de aluminio, interruptores 100 % CHERRY MX y 8 MB de almacenamiento interno de perfiles.\r\n', 159.9, 2000, 'https://www.vsgamers.es/thumbnails/product_gallery_medium/uploads/products/corsair/teclados/teclado-corsair-k70-rgb-mk2-rapidfire-cherry-mx-speed-espanol-ch-9109014-es/k70-rg-mk2-rapidfire/galeria/teclado-corsair-k70-rgb-mk2-rapidfire-cherry-mx-speed-galeria-1.jpg', 4),
(75, 'K70 RGB MK.2 LOW PROFILE\r\nCHERRY® MX LOW PROFILE SPEED\r\nTECLADOS GAMING CORSAIR', 'El teclado mecánico para juegos K70 RGB MK.2 Low Profile RAPIDFIRE, combina la comodidad de las teclas de bajo perfil y reducido desplazamiento con el rendimiento de los interruptores de tecla mecánicos Cherry MX ultrarrápidos y la espectacular iluminación RGB.\r\n', 174.91, 2000, 'https://www.vsgamers.es/thumbnails/product_gallery_medium/uploads/products/corsair/teclados/teclado-corsair-k70-rgb-mk2-rapidfire-cherry-mx-speed-espanol-ch-9109014-es/k70-rgb-mk2-speed-cherry/galeria/teclado-mecanico-gaming-corsair-k70-rgb-mk2-low-profile-rapidfire-galeria.jpg', 4),
(76, 'VIGOR GK60 CR\r\nSWITCH MX RED\r\nTECLADOS GAMING MSI', 'Especialmente para Gaming. Usa interruptores Cherry MX Red,  especialmente adecuados para  jugadores preocupados por el sonido y la experiencia que precisa.  Son Interruptores de estilo lineal , proporcionan una retroalimentación excelente y más de 50 millones de ciclos de vida.\r\n', 99.9, 2000, 'https://www.vsgamers.es/thumbnails/product_gallery_medium/uploads/products/msi/teclados/vigor-gk60-cr/galeria/teclado-gaming-msi-gk60-red-cherry-galeria.jpg', 4),
(77, 'KEMPO RGB\r\nMECÁNICO OUTEMU RED\r\nTECLADOS GAMING KROM', 'Kempo es el teclado mecánico de Krom que ha sido concebido para ofrecerte rendimiento y comodidad durante largas partidas.\r\n\r\nPodrás adaptar tu técnica en el juego de manera fácil y rápida mediante simples atajos de teclado además de disfrutar de todas las opciones de iluminación sin necesidad de software.\r\n\r\n', 59.9, 2000, 'https://www.vsgamers.es/thumbnails/product_gallery_medium/uploads/products/krom/TECLADOS/kempo-switch-red/galeria/teclado-gaming-krom-kempo-rgb-switch-red-galeria.jpg', 4),
(78, 'HUNTSMAN ELITE RGB CHROMA\r\nSWITCHES OPTOMECÁNICOS™\r\nTECLADOS GAMING RAZER', 'El teclado Razer Huntsman Elite presenta los switches optomecánicos de Razer, que emplean tecnología óptica para ofrecer una velocidad y una barra estabilizadora de teclas para que cada pulsación sea precisa y exacta.  El teclado también cuenta con un dial digital para acceder rápidamente a las funciones. Personaliza los ajustes con memoria híbrida local y almacenamiento en la nube.\r\n\r\n', 189.9, 2000, 'https://www.vsgamers.es/thumbnails/product_gallery_medium/uploads/products/razer/TECLADOS/huntsman-elite/galeria/teclado-gaming-razer-huntsman-elite-galeria-3.jpg', 4),
(79, 'ONE 2 TKL RGB\r\nMECÁNICO MX RED\r\nTECLADOS GAMING DUCKY', 'Ducky One 2 TKL RGB ha sido diseñado con la misma carcasa elegante de sus predecesores pero incorporando un diseño bisel , en blanco y negro. \r\n\r\nSe ha reducido el tamaño del teclado sin afectar al diseño general introduciendo iluminación RGB bajo los interruptores Cherry MX.\r\n\r\nEl teclado One 2 TKL RGB con este cambio es más moderno, sencillo  y minimalista.\r\n\r\n', 117.9, 2000, 'https://www.vsgamers.es/thumbnails/product_gallery_medium/uploads/products/ducky/one-2-tkl-rgb/galeria/teclado-gaming-ducky-one-2-tkl-rgb-galeria.jpg', 4),
(80, 'ROG CLAYMORE CORE\r\nTKL / CHERRY MX RED RGB\r\nTECLADOS GAMING ASUS GAMING', 'Asus ROG Claymore, teclado mecánico, que incorpora los interruptores Cherry MX Red dotados de un sistema de iluminación RGB que permite iluminar sus teclas con un total de 16.8 millones de combinaciones de colores.\r\n\r\nCuenta con un tamaño muy compacto al no ofrecer un keypad numérico a lo que se le suma un sistema Anti-Ghosting y la conectividad USB 3.1 .\r\n\r\n', 174.9, 2000, 'https://www.vsgamers.es/thumbnails/product_gallery_medium/uploads/products/asus-rog/claymore-cherry-red/galeria/teclado-asus-rog-claymore-core-cherry-red-galeria-66.jpg', 4),
(81, 'STRIKE BATTLE ROJO\r\nMECÁNICO CHERRY MX BROWN\r\nTECLADOS GAMING OZONE\r\n', 'El teclado Strike Battle posee la mejor selección de cherry mx switches, un menor tamaño y un diseño ergonómico que permite un uso muy confortable. Su capa de aluminio de alta calidad ofrece un producto con el mejor rendimiento para llevar tu técnica de juego a un nivel superior. El diseño minimalista unido con el estilo compacto lo convierte en un periférico ideal para el entorno competitivo; gamers que viajan con toda su equipación para jugar en torneos o cualquiera que necesite de un mayor tamaño en su espacio de trabajo. Llévalo al campo de batalla.\r\n', 89.9, 2000, 'https://www.vsgamers.es/thumbnails/product_gallery_medium/uploads/products/ozone/4_TECLADOS/strike-battle-red-mx-brown/galeria/teclado-gaming-ozone-strike-battle-red-cherry-mx-brown-galeria-2.jpg', 4),
(82, 'GORRO FNATIC NARANJA\r\nPRODUCTO OFICIAL\r\nE-SPORTS FNATIC\r\n', 'Gorro de alta calidad de Fnatic en Naranja que lleva el logo del club; para no pasar frio en  largas sesiones de juegos.\r\n\r\nCuando compras este gorro, estás ayudando a Fnatic.', 9.98, 2000, 'https://www.vsgamers.es/thumbnails/product_gallery_medium/uploads/products/fnatic/GORRAS/gorro-fnatic-naranja/orange-beanie-1-shop_1024x1024.jpg', 5),
(83, 'PACK BRAZALETES FNATIC\r\nPRODUCTO OFICIAL\r\nE-SPORTS FNATIC\r\n', 'Muestra tu apoyo a Fnatic con este pack de tres pulseras oficiales del club.\r\nFabricado con materiales de alta calidad, troqueladas, de silicona y grabado con tinta.\r\nSe vende en un pack de tres pulseras, una de cada color.\r\n', 7.49, 2000, 'https://www.vsgamers.es/thumbnails/product_gallery_medium/uploads/products/fnatic/PULSERAS/pack-brazalete-oficial-fnatic-2015/pulsera-gummy-wristband-main.jpg', 5),
(84, 'Scuf Infinity 4PS Giants Controller', 'Since its foundation in 2008, Giants Gaming has been the leading Spanish representative of the esports. Throughout its history, Giants has positioned itself as the team to beat for all Spanish contenders interested in winning the Champions League title, a trophy the Giants have won no less than eight times between its divisions of Call of Duty and League of Legends.', 159.95, 2000, 'https://scufgaming.com/s/wp-content/uploads/2016/08/infinity4ps_controller-giants.png', 5);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`id_factura`);

--
-- Indices de la tabla `linea_factura`
--
ALTER TABLE `linea_factura`
  ADD PRIMARY KEY (`id_linea_factura`),
  ADD KEY `id_factura` (`id_factura`),
  ADD KEY `id_producto` (`id_producto`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id_producto`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `factura`
--
ALTER TABLE `factura`
  MODIFY `id_factura` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `linea_factura`
--
ALTER TABLE `linea_factura`
  MODIFY `id_linea_factura` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `linea_factura`
--
ALTER TABLE `linea_factura`
  ADD CONSTRAINT `linea_factura_ibfk_1` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id_producto`),
  ADD CONSTRAINT `linea_factura_ibfk_2` FOREIGN KEY (`id_factura`) REFERENCES `factura` (`id_factura`);

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categoria` (`id_categoria`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
