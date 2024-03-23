-- PROYECTO ALKE WALLET EVALUACION INTEGRADORA 3 --

CREATE SCHEMA IF NOT EXISTS alke_wallet DEFAULT CHARACTER SET utf8mb4;
USE alke_wallet;

-- Creacion de Atributo Usuario --
CREATE TABLE `alke_wallet`.`usuario` (
  `user_id` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(50) NOT NULL,
  `correo_electronico` VARCHAR(50) NOT NULL,
  `contrasegna` VARCHAR(50) NOT NULL,
  `saldo` INT NOT NULL,
  `fecha_de_creacion` DATE NOT NULL,
  PRIMARY KEY (`user_id`));

-- Creacion de Atributo Moneda --

CREATE TABLE IF NOT EXISTS `alke_wallet`.`moneda` (
  `currency_id` INT NOT NULL,
  `currency_name` VARCHAR(45) NULL,
  `currency_symbol` VARCHAR(45) NULL,
  PRIMARY KEY (`currency_id`))
ENGINE = InnoDB;

-- Creacion de Atributo Transaccion --

CREATE TABLE IF NOT EXISTS `alke_wallet`.`transaccion` (
  `transaccion_id` INT NOT NULL,
  `sender_user_id` INT NOT NULL,
  `Moneda_idMoneda` INT NOT NULL,
  `receiver_user_id` INT NOT NULL,
  `valor` DECIMAL(10) NULL,
  `transaccion_date` DATE NULL,
  PRIMARY KEY (`transaccion_id`),
  INDEX `fk_Transaccion_Usuario_idx` (`sender_user_id` ASC) VISIBLE,
  INDEX `fk_Transaccion_Moneda1_idx` (`Moneda_idMoneda` ASC) VISIBLE,
  INDEX `fk_Transaccion_Usuario1_idx` (`receiver_user_id` ASC) VISIBLE,
  CONSTRAINT `fk_Transacción_Usuario`
    FOREIGN KEY (`sender_user_id`)
    REFERENCES `alke_wallet`.`Usuario` (`user_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Transacción_Moneda1`
    FOREIGN KEY (`Moneda_idMoneda`)
    REFERENCES `alke_wallet`.`moneda` (`currency_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Transacción_Usuario1`
    FOREIGN KEY (`receiver_user_id`)
    REFERENCES `alke_wallet`.`usuario` (`user_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- insert into values usuario --

INSERT INTO `alke_wallet`.`usuario` (`user_id`, `nombre`, `correo_electronico`, `contrasegna`, `saldo`, `fecha_de_creacion`) VALUES ('1', 'gabriel atencio', 'gabo@example.com', '1233456', '50000.00', '2024-03-08');
INSERT INTO `alke_wallet`.`usuario` (`user_id`, `nombre`, `correo_electronico`, `contrasegna`, `saldo`, `fecha_de_creacion`) VALUES ('2', 'jesus torres', 'jtorres@example.com', '456789', '8500.00', '2024-02-10');
INSERT INTO `alke_wallet`.`usuario` (`user_id`, `nombre`, `correo_electronico`, `contrasegna`, `saldo`, `fecha_de_creacion`) VALUES ('3', 'juanita perez', 'jperez@example.com', '5448878', '10000.00', '2021-01-03');
INSERT INTO `alke_wallet`.`usuario` (`user_id`, `nombre`, `correo_electronico`, `contrasegna`, `saldo`, `fecha_de_creacion`) VALUES ('4', 'fonseca petro', 'fpetro@example.com', 'como852', '500000.50', '2024-12-05');
INSERT INTO `alke_wallet`.`usuario` (`user_id`, `nombre`, `correo_electronico`, `contrasegna`, `saldo`, `fecha_de_creacion`) VALUES ('5', 'glemis atencio', 'gatencio@example.com', 'avc4562', '3500.00', '2023-01-01');
INSERT INTO `alke_wallet`.`usuario` (`user_id`, `nombre`, `correo_electronico`, `contrasegna`, `saldo`, `fecha_de_creacion`) VALUES ('6', 'susana villegas', 'susi@example.com', 'erty.2356', '1150.00', '2010-05-08');
INSERT INTO `alke_wallet`.`usuario` (`user_id`, `nombre`, `correo_electronico`, `contrasegna`, `saldo`, `fecha_de_creacion`) VALUES ('7', 'juan castro', 'jcastro@example.com', '123786', '4500.00', '2024-02-12');


-- insert values moneda --
INSERT INTO `alke_wallet`.`moneda` (`currency_id`, `currency_name`, `currency_symbol`) VALUES ('1', 'dolar estadounidense', '$');
INSERT INTO `alke_wallet`.`moneda` (`currency_id`, `currency_name`, `currency_symbol`) VALUES ('2', 'euro', '€');
INSERT INTO `alke_wallet`.`moneda` (`currency_id`, `currency_name`, `currency_symbol`) VALUES ('3', 'libra esterlina', '£');
INSERT INTO `alke_wallet`.`moneda` (`currency_id`, `currency_name`, `currency_symbol`) VALUES ('4', 'yen japones', '¥');
INSERT INTO `alke_wallet`.`moneda` (`currency_id`, `currency_name`, `currency_symbol`) VALUES ('5', 'peso chileno', 'clp');

-- insert values transaccion --
INSERT INTO `alke_wallet`.`transaccion` (`transaccion_id`, `sender_user_id`, `Moneda_idMoneda`, `receiver_user_id`, `valor`, `transaccion_date`) VALUES ('1', '1', '1', '1', '2000.00', '2024-03-04');
INSERT INTO `alke_wallet`.`transaccion` (`transaccion_id`, `sender_user_id`, `Moneda_idMoneda`, `receiver_user_id`, `valor`, `transaccion_date`) VALUES ('2', '2', '2', '1', '50052.00', '2023-02-01');
INSERT INTO `alke_wallet`.`transaccion` (`transaccion_id`, `sender_user_id`, `Moneda_idMoneda`, `receiver_user_id`, `valor`, `transaccion_date`) VALUES ('3', '2', '3', '4', '40000.00', '2024-12-05');
INSERT INTO `alke_wallet`.`transaccion` (`transaccion_id`, `sender_user_id`, `Moneda_idMoneda`, `receiver_user_id`, `valor`, `transaccion_date`) VALUES ('4', '3', '5', '2', '20570.00', '2024-10-03');
INSERT INTO `alke_wallet`.`transaccion` (`transaccion_id`, `sender_user_id`, `Moneda_idMoneda`, `receiver_user_id`, `valor`, `transaccion_date`) VALUES ('5', '5', '4', '7', '78000.00', '2023-02-17');
INSERT INTO `alke_wallet`.`transaccion` (`transaccion_id`, `sender_user_id`, `Moneda_idMoneda`, `receiver_user_id`, `valor`, `transaccion_date`) VALUES ('6', '4', '1', '3', '50550.00', '2022-08-28');
INSERT INTO `alke_wallet`.`transaccion` (`transaccion_id`, `sender_user_id`, `Moneda_idMoneda`, `receiver_user_id`, `valor`, `transaccion_date`) VALUES ('7', '6', '5', '5', '454000.00', '2024-01-15');


-- Consulta para obtener el nombre de la moneda elegida por un usuario específico--

SELECT nombre, user_id, transaccion_id, moneda.currency_name
FROM alke_wallet.usuario 
INNER JOIN transaccion
ON transaccion.sender_user_id = usuario.user_id
INNER JOIN moneda
ON moneda.currency_id = transaccion.Moneda_idMoneda
WHERE user_id = '4';

-- Consulta para obtener todas las transacciones registradas
SELECT transaccion_id, sender_user_id AS sender_user, receiver.nombre AS receiver_user_id, currency_symbol, valor, transaccion_date
FROM transaccion
INNER JOIN usuario AS sender ON sender.user_id = transaccion.sender_user_id
INNER JOIN usuario AS receiver ON receiver.user_id = transaccion.receiver_user_id
INNER JOIN moneda ON currency_id = moneda.currency_id
ORDER BY transaccion_id ASC;

--  Consulta para obtener todas las transacciones realizadas por un usuario específico

SELECT user_id,  transaccion_id, nombre, saldo, sender_user_id, receiver_user_id, transaccion_date, valor, correo_electronico, moneda.currency_name
FROM alke_wallet.usuario 
INNER JOIN transaccion
ON transaccion.sender_user_id = usuario.user_id
INNER JOIN moneda
ON moneda.currency_id = transaccion.Moneda_idMoneda
WHERE user_id = '5';

-- Sentencia DML para modificar el campo correo electrónico de un usuario específico

UPDATE `alke_wallet`.`usuario`
SET `correo_electronico` = 'jesus.torres@example.com'
WHERE `user_id` = 2;

-- Sentencia para eliminar los datos de una transacción (eliminado de la fila completa)

DELETE FROM transaccion
WHERE transaccion_id = 3;

-- consulta cada tabla--

SELECT * FROM alke_wallet.usuario;
SELECT * FROM alke_wallet.transaccion;
SELECT * FROM alke_wallet.moneda;

