USE PTU

CREATE TABLE [dbo].[PTUSecciones]
(SeccionId int NOT NULL IDENTITY(1,1) PRIMARY KEY,
SeccionTitulo VARCHAR(20) NOT NULL,
FechaCrea DATETIME NULL,
UsuarioCre VARCHAR(50) NULL,
FechaMod DATETIME NULL,
UsuarioMod VARCHAR(50) NULL)
GO

INSERT INTO [dbo].[PTUSecciones] (SeccionTitulo, FechaCrea, UsuarioCre, FechaMod, UsuarioMod) VALUES ('Seccion 1', GETDATE(), 'Joel', GETDATE(), 'Joel')
INSERT INTO [dbo].[PTUSecciones] (SeccionTitulo, FechaCrea, UsuarioCre, FechaMod, UsuarioMod) VALUES ('Seccion 2', GETDATE(), 'Joel', GETDATE(), 'Joel')
INSERT INTO [dbo].[PTUSecciones] (SeccionTitulo, FechaCrea, UsuarioCre, FechaMod, UsuarioMod) VALUES ('Seccion 3', GETDATE(), 'Joel', GETDATE(), 'Joel')
GO

CREATE TABLE [dbo].[PTUTipoPregunta]
(Id int NOT NULL IDENTITY(1,1) PRIMARY KEY,
TipoPregunraDesc VARCHAR(50) NOT NULL,
FechaCrea DATETIME NULL,
UsuarioCre VARCHAR(50) NULL,
FechaMod DATETIME NULL,
UsuarioMod VARCHAR(50) NULL)
GO

INSERT INTO [dbo].[PTUTipoPregunta] (TipoPregunraDesc, FechaCrea, UsuarioCre, FechaMod, UsuarioMod) VALUES ('Abierta', GETDATE(), 'Joel', GETDATE(), 'Joel')
INSERT INTO [dbo].[PTUTipoPregunta] (TipoPregunraDesc, FechaCrea, UsuarioCre, FechaMod, UsuarioMod) VALUES ('Única', GETDATE(), 'Joel', GETDATE(), 'Joel')
INSERT INTO [dbo].[PTUTipoPregunta] (TipoPregunraDesc, FechaCrea, UsuarioCre, FechaMod, UsuarioMod) VALUES ('Múltiple', GETDATE(), 'Joel', GETDATE(), 'Joel')
GO

CREATE TABLE [dbo].[PTUPreguntas]
(PreguntaId int NOT NULL IDENTITY(1,1) PRIMARY KEY,
SeccionId int NOT NULL,
TipoPregunta int NOT NULL,
TituloPregunta VARCHAR(MAX) NOT NULL,
FechaCrea DATETIME NULL,
UsuarioCre VARCHAR(50) NULL,
FechaMod DATETIME NULL,
UsuarioMod VARCHAR(50) NULL)
GO

INSERT INTO [dbo].[PTUPreguntas] (SeccionId, TipoPregunta, TituloPregunta, FechaCrea, UsuarioCre, FechaMod, UsuarioMod) VALUES (1, 2, 'Contestaré esta encuesta respecto a la experiencia de la empresa que represento', GETDATE(), 'Joel', GETDATE(), 'Joel')
INSERT INTO [dbo].[PTUPreguntas] (SeccionId, TipoPregunta, TituloPregunta, FechaCrea, UsuarioCre, FechaMod, UsuarioMod) VALUES (1, 2, '¿A qué sector se dedica la empresa?', GETDATE(), 'Joel', GETDATE(), 'Joel')
INSERT INTO [dbo].[PTUPreguntas] (SeccionId, TipoPregunta, TituloPregunta, FechaCrea, UsuarioCre, FechaMod, UsuarioMod) VALUES (1, 2, 'Número de empleados', GETDATE(), 'Joel', GETDATE(), 'Joel')
INSERT INTO [dbo].[PTUPreguntas] (SeccionId, TipoPregunta, TituloPregunta, FechaCrea, UsuarioCre, FechaMod, UsuarioMod) VALUES (1, 2, '¿Este año habrá entrega de reparto de utilidades?', GETDATE(), 'Joel', GETDATE(), 'Joel')
INSERT INTO [dbo].[PTUPreguntas] (SeccionId, TipoPregunta, TituloPregunta, FechaCrea, UsuarioCre, FechaMod, UsuarioMod) VALUES (2, 2, 'En comparación con el año anterior ¿Cómo será el monto repartido de PTU?', GETDATE(), 'Joel', GETDATE(), 'Joel')
INSERT INTO [dbo].[PTUPreguntas] (SeccionId, TipoPregunta, TituloPregunta, FechaCrea, UsuarioCre, FechaMod, UsuarioMod) VALUES (2, 3, '¿Cuáles fueron las razones por las que el monto de reparto de utilidades fue mayor?', GETDATE(), 'Joel', GETDATE(), 'Joel')
INSERT INTO [dbo].[PTUPreguntas] (SeccionId, TipoPregunta, TituloPregunta, FechaCrea, UsuarioCre, FechaMod, UsuarioMod) VALUES (2, 3, '¿Cuáles fueron las razones por las que habrá menor reparto de utilidades?', GETDATE(), 'Joel', GETDATE(), 'Joel')
INSERT INTO [dbo].[PTUPreguntas] (SeccionId, TipoPregunta, TituloPregunta, FechaCrea, UsuarioCre, FechaMod, UsuarioMod) VALUES (2, 1, 'Días de salario estimado a pagar por PTU ejercicio 2021', GETDATE(), 'Joel', GETDATE(), 'Joel')
INSERT INTO [dbo].[PTUPreguntas] (SeccionId, TipoPregunta, TituloPregunta, FechaCrea, UsuarioCre, FechaMod, UsuarioMod) VALUES (3, 3, '¿Cuáles fueron las razones por las que no hubo reparto de utilidades?', GETDATE(), 'Joel', GETDATE(), 'Joel')
INSERT INTO [dbo].[PTUPreguntas] (SeccionId, TipoPregunta, TituloPregunta, FechaCrea, UsuarioCre, FechaMod, UsuarioMod) VALUES (3, 2, 'El año anterior, ¿hubo reparto de PTU?', GETDATE(), 'Joel', GETDATE(), 'Joel')
GO

CREATE TABLE [dbo].[PTUOpcionesPreguntas]
(OpcionPreguntaId int NOT NULL IDENTITY(1,1) PRIMARY KEY,
PreguntaId int NOT NULL,
Descripcion VARCHAR(MAX) NOT NULL,
FechaCrea DATETIME NULL,
UsuarioCre VARCHAR(50) NULL,
FechaMod DATETIME NULL,
UsuarioMod VARCHAR(50) NULL,
NavegarA int NULL,
EsSeccion bit null)
GO

INSERT INTO [dbo].[PTUOpcionesPreguntas] (PreguntaId, Descripcion, FechaCrea, UsuarioCre, FechaMod, UsuarioMod, NavegarA, EsSeccion) VALUES (1, 'Acepto', GETDATE(), 'Joel', GETDATE(), 'Joel', 2, 0)
INSERT INTO [dbo].[PTUOpcionesPreguntas] (PreguntaId, Descripcion, FechaCrea, UsuarioCre, FechaMod, UsuarioMod, NavegarA, EsSeccion) VALUES (1, 'No acepto', GETDATE(), 'Joel', GETDATE(), 'Joel')

INSERT INTO [dbo].[PTUOpcionesPreguntas] (PreguntaId, Descripcion, FechaCrea, UsuarioCre, FechaMod, UsuarioMod, NavegarA, EsSeccion) VALUES (2, 'Agricultura, cría y explotación de animales, aprovechamiento forestal, pesca y caza', GETDATE(), 'Joel', GETDATE(), 'Joel', 3, 0)
INSERT INTO [dbo].[PTUOpcionesPreguntas] (PreguntaId, Descripcion, FechaCrea, UsuarioCre, FechaMod, UsuarioMod, NavegarA, EsSeccion) VALUES (2, 'Minería', GETDATE(), 'Joel', GETDATE(), 'Joel' , 3, 0)
INSERT INTO [dbo].[PTUOpcionesPreguntas] (PreguntaId, Descripcion, FechaCrea, UsuarioCre, FechaMod, UsuarioMod, NavegarA, EsSeccion) VALUES (2, 'Generación, transmisión, distribución y comercialización de energía eléctrica, suministro de agua y de gas natural por ductos al consumidor final', GETDATE(), 'Joel', GETDATE(), 'Joel' , 3, 0)
INSERT INTO [dbo].[PTUOpcionesPreguntas] (PreguntaId, Descripcion, FechaCrea, UsuarioCre, FechaMod, UsuarioMod, NavegarA, EsSeccion) VALUES (2, 'Construcción', GETDATE(), 'Joel', GETDATE(), 'Joel' , 3, 0)
INSERT INTO [dbo].[PTUOpcionesPreguntas] (PreguntaId, Descripcion, FechaCrea, UsuarioCre, FechaMod, UsuarioMod, NavegarA, EsSeccion) VALUES (2, 'Industrias manufactureras', GETDATE(), 'Joel', GETDATE(), 'Joel', 3, 0)
INSERT INTO [dbo].[PTUOpcionesPreguntas] (PreguntaId, Descripcion, FechaCrea, UsuarioCre, FechaMod, UsuarioMod, NavegarA, EsSeccion) VALUES (2, 'Comercio al por mayor', GETDATE(), 'Joel', GETDATE(), 'Joel', 3, 0)
INSERT INTO [dbo].[PTUOpcionesPreguntas] (PreguntaId, Descripcion, FechaCrea, UsuarioCre, FechaMod, UsuarioMod, NavegarA, EsSeccion) VALUES (2, 'Comercio al por menor', GETDATE(), 'Joel', GETDATE(), 'Joel', 3, 0)
INSERT INTO [dbo].[PTUOpcionesPreguntas] (PreguntaId, Descripcion, FechaCrea, UsuarioCre, FechaMod, UsuarioMod, NavegarA, EsSeccion) VALUES (2, 'Transportes, correos y almacenamiento', GETDATE(), 'Joel', GETDATE(), 'Joel', 3, 0)
INSERT INTO [dbo].[PTUOpcionesPreguntas] (PreguntaId, Descripcion, FechaCrea, UsuarioCre, FechaMod, UsuarioMod, NavegarA, EsSeccion) VALUES (2, 'Información en medios masivos', GETDATE(), 'Joel', GETDATE(), 'Joel', 3, 0)
INSERT INTO [dbo].[PTUOpcionesPreguntas] (PreguntaId, Descripcion, FechaCrea, UsuarioCre, FechaMod, UsuarioMod, NavegarA, EsSeccion) VALUES (2, 'Servicios financieros y de seguros', GETDATE(), 'Joel', GETDATE(), 'Joel', 3, 0)
INSERT INTO [dbo].[PTUOpcionesPreguntas] (PreguntaId, Descripcion, FechaCrea, UsuarioCre, FechaMod, UsuarioMod, NavegarA, EsSeccion) VALUES (2, 'Servicios inmobiliarios y de alquiler de bienes muebles e intangibles', GETDATE(), 'Joel', GETDATE(), 'Joel', 3, 0)
INSERT INTO [dbo].[PTUOpcionesPreguntas] (PreguntaId, Descripcion, FechaCrea, UsuarioCre, FechaMod, UsuarioMod, NavegarA, EsSeccion) VALUES (2, 'Servicios profesionales, científicos y técnicos', GETDATE(), 'Joel', GETDATE(), 'Joel', 3, 0)
INSERT INTO [dbo].[PTUOpcionesPreguntas] (PreguntaId, Descripcion, FechaCrea, UsuarioCre, FechaMod, UsuarioMod, NavegarA, EsSeccion) VALUES (2, 'Corporativos', GETDATE(), 'Joel', GETDATE(), 'Joel', 3, 0)
INSERT INTO [dbo].[PTUOpcionesPreguntas] (PreguntaId, Descripcion, FechaCrea, UsuarioCre, FechaMod, UsuarioMod, NavegarA, EsSeccion) VALUES (2, 'Servicios de apoyo a los negocios y manejo de residuos, y servicios de remediación', GETDATE(), 'Joel', GETDATE(), 'Joel', 3, 0)
INSERT INTO [dbo].[PTUOpcionesPreguntas] (PreguntaId, Descripcion, FechaCrea, UsuarioCre, FechaMod, UsuarioMod, NavegarA, EsSeccion) VALUES (2, 'Servicios educativos', GETDATE(), 'Joel', GETDATE(), 'Joel', 3, 0)
INSERT INTO [dbo].[PTUOpcionesPreguntas] (PreguntaId, Descripcion, FechaCrea, UsuarioCre, FechaMod, UsuarioMod, NavegarA, EsSeccion) VALUES (2, 'Servicios de salud y de asistencia social', GETDATE(), 'Joel', GETDATE(), 'Joel', 3, 0)
INSERT INTO [dbo].[PTUOpcionesPreguntas] (PreguntaId, Descripcion, FechaCrea, UsuarioCre, FechaMod, UsuarioMod, NavegarA, EsSeccion) VALUES (2, 'Servicios de esparcimiento culturales y deportivos, y otros servicios recreativos', GETDATE(), 'Joel', GETDATE(), 'Joel', 3, 0)
INSERT INTO [dbo].[PTUOpcionesPreguntas] (PreguntaId, Descripcion, FechaCrea, UsuarioCre, FechaMod, UsuarioMod, NavegarA, EsSeccion) VALUES (2, 'Servicios de alojamiento temporal y de preparación de alimentos y bebidas', GETDATE(), 'Joel', GETDATE(), 'Joel', 3, 0)
INSERT INTO [dbo].[PTUOpcionesPreguntas] (PreguntaId, Descripcion, FechaCrea, UsuarioCre, FechaMod, UsuarioMod, NavegarA, EsSeccion) VALUES (2, 'Otros servicios excepto actividades gubernamentales', GETDATE(), 'Joel', GETDATE(), 'Joel', 3, 0)
										   
INSERT INTO [dbo].[PTUOpcionesPreguntas] (PreguntaId, Descripcion, FechaCrea, UsuarioCre, FechaMod, UsuarioMod, NavegarA, EsSeccion) VALUES (3, '1 a 10', GETDATE(), 'Joel', GETDATE(), 'Joel', 4, 0)
INSERT INTO [dbo].[PTUOpcionesPreguntas] (PreguntaId, Descripcion, FechaCrea, UsuarioCre, FechaMod, UsuarioMod, NavegarA, EsSeccion) VALUES (3, '11 a 50', GETDATE(), 'Joel', GETDATE(), 'Joel', 4, 0)
INSERT INTO [dbo].[PTUOpcionesPreguntas] (PreguntaId, Descripcion, FechaCrea, UsuarioCre, FechaMod, UsuarioMod, NavegarA, EsSeccion) VALUES (3, '51 a 250', GETDATE(), 'Joel', GETDATE(), 'Joel', 4, 0)
INSERT INTO [dbo].[PTUOpcionesPreguntas] (PreguntaId, Descripcion, FechaCrea, UsuarioCre, FechaMod, UsuarioMod, NavegarA, EsSeccion) VALUES (3, '251 o más', GETDATE(), 'Joel', GETDATE(), 'Joel', 4, 0)
										   
INSERT INTO [dbo].[PTUOpcionesPreguntas] (PreguntaId, Descripcion, FechaCrea, UsuarioCre, FechaMod, UsuarioMod, NavegarA, EsSeccion) VALUES (4, 'Sí', GETDATE(), 'Joel', GETDATE(), 'Joel', 2, 1)
INSERT INTO [dbo].[PTUOpcionesPreguntas] (PreguntaId, Descripcion, FechaCrea, UsuarioCre, FechaMod, UsuarioMod, NavegarA, EsSeccion) VALUES (4, 'No', GETDATE(), 'Joel', GETDATE(), 'Joel', 3, 1)
										  
INSERT INTO [dbo].[PTUOpcionesPreguntas] (PreguntaId, Descripcion, FechaCrea, UsuarioCre, FechaMod, UsuarioMod, NavegarA, EsSeccion) VALUES (5, 'Mayor', GETDATE(), 'Joel', GETDATE(), 'Joel', 6, 0)
INSERT INTO [dbo].[PTUOpcionesPreguntas] (PreguntaId, Descripcion, FechaCrea, UsuarioCre, FechaMod, UsuarioMod, NavegarA, EsSeccion) VALUES (5, 'Igual', GETDATE(), 'Joel', GETDATE(), 'Joel', 8, 0)
INSERT INTO [dbo].[PTUOpcionesPreguntas] (PreguntaId, Descripcion, FechaCrea, UsuarioCre, FechaMod, UsuarioMod, NavegarA, EsSeccion) VALUES (5, 'Menor', GETDATE(), 'Joel', GETDATE(), 'Joel', 7, 0)
										   
INSERT INTO [dbo].[PTUOpcionesPreguntas] (PreguntaId, Descripcion, FechaCrea, UsuarioCre, FechaMod, UsuarioMod, NavegarA, EsSeccion) VALUES (6, 'Aumento en la productividad de las y los colaboradores', GETDATE(), 'Joel', GETDATE(), 'Joel', 8, 0)
INSERT INTO [dbo].[PTUOpcionesPreguntas] (PreguntaId, Descripcion, FechaCrea, UsuarioCre, FechaMod, UsuarioMod, NavegarA, EsSeccion) VALUES (6, 'Aumento de ventas', GETDATE(), 'Joel', GETDATE(), 'Joel', 8, 0)
INSERT INTO [dbo].[PTUOpcionesPreguntas] (PreguntaId, Descripcion, FechaCrea, UsuarioCre, FechaMod, UsuarioMod, NavegarA, EsSeccion) VALUES (6, 'Entorno económico favorable', GETDATE(), 'Joel', GETDATE(), 'Joel', 8, 0)
INSERT INTO [dbo].[PTUOpcionesPreguntas] (PreguntaId, Descripcion, FechaCrea, UsuarioCre, FechaMod, UsuarioMod, NavegarA, EsSeccion) VALUES (6, 'Nuevas oportunidades de negocio', GETDATE(), 'Joel', GETDATE(), 'Joel', 8, 0)
										   
INSERT INTO [dbo].[PTUOpcionesPreguntas] (PreguntaId, Descripcion, FechaCrea, UsuarioCre, FechaMod, UsuarioMod, NavegarA, EsSeccion) VALUES (7, 'Disminución en la productividad de las y los colaboradores', GETDATE(), 'Joel', GETDATE(), 'Joel', 8, 0)
INSERT INTO [dbo].[PTUOpcionesPreguntas] (PreguntaId, Descripcion, FechaCrea, UsuarioCre, FechaMod, UsuarioMod, NavegarA, EsSeccion) VALUES (7, 'Afectaciones por inseguridad', GETDATE(), 'Joel', GETDATE(), 'Joel', 8, 0)
INSERT INTO [dbo].[PTUOpcionesPreguntas] (PreguntaId, Descripcion, FechaCrea, UsuarioCre, FechaMod, UsuarioMod, NavegarA, EsSeccion) VALUES (7, 'Afectaciones por el entorno político y económico', GETDATE(), 'Joel', GETDATE(), 'Joel', 8, 0)
INSERT INTO [dbo].[PTUOpcionesPreguntas] (PreguntaId, Descripcion, FechaCrea, UsuarioCre, FechaMod, UsuarioMod, NavegarA, EsSeccion) VALUES (7, 'Continuación de la pandemia COVID-19', GETDATE(), 'Joel', GETDATE(), 'Joel', 8, 0)
INSERT INTO [dbo].[PTUOpcionesPreguntas] (PreguntaId, Descripcion, FechaCrea, UsuarioCre, FechaMod, UsuarioMod, NavegarA, EsSeccion) VALUES (7, 'Problemas para mejorar la innovación y los procesos al interior de la empresa', GETDATE(), 'Joel', GETDATE(), 'Joel', 8, 0)
INSERT INTO [dbo].[PTUOpcionesPreguntas] (PreguntaId, Descripcion, FechaCrea, UsuarioCre, FechaMod, UsuarioMod, NavegarA, EsSeccion) VALUES (7, 'Complicaciones por la inflación', GETDATE(), 'Joel', GETDATE(), 'Joel', 8, 0)
--INSERT INTO [dbo].[PTUOpcionesPreguntas] (PreguntaId, Descripcion, FechaCrea, UsuarioCre, FechaMod, UsuarioMod, NavegarA, EsSeccion) VALUES (7, 'Pregunta abierta', GETDATE(), 'Joel', GETDATE(), 'Joel') <--- preguntar
										  
INSERT INTO [dbo].[PTUOpcionesPreguntas] (PreguntaId, Descripcion, FechaCrea, UsuarioCre, FechaMod, UsuarioMod, NavegarA, EsSeccion) VALUES (9, 'Disminución en la productividad de las y los colaboradores', GETDATE(), 'Joel', GETDATE(), 'Joel', 10, 0)
INSERT INTO [dbo].[PTUOpcionesPreguntas] (PreguntaId, Descripcion, FechaCrea, UsuarioCre, FechaMod, UsuarioMod, NavegarA, EsSeccion) VALUES (9, 'Afectaciones por inseguridad', GETDATE(), 'Joel', GETDATE(), 'Joel', 10, 0)
INSERT INTO [dbo].[PTUOpcionesPreguntas] (PreguntaId, Descripcion, FechaCrea, UsuarioCre, FechaMod, UsuarioMod, NavegarA, EsSeccion) VALUES (9, 'Afectaciones por el entorno político y económico', GETDATE(), 'Joel', GETDATE(), 'Joel', 10, 0)
INSERT INTO [dbo].[PTUOpcionesPreguntas] (PreguntaId, Descripcion, FechaCrea, UsuarioCre, FechaMod, UsuarioMod, NavegarA, EsSeccion) VALUES (9, 'Continuación de la pandemia COVID-19', GETDATE(), 'Joel', GETDATE(), 'Joel', 10, 0)
INSERT INTO [dbo].[PTUOpcionesPreguntas] (PreguntaId, Descripcion, FechaCrea, UsuarioCre, FechaMod, UsuarioMod, NavegarA, EsSeccion) VALUES (9, 'Problemas para mejorar la innovación y los procesos al interior de la empresa', GETDATE(), 'Joel', GETDATE(), 'Joel', 10, 0)
INSERT INTO [dbo].[PTUOpcionesPreguntas] (PreguntaId, Descripcion, FechaCrea, UsuarioCre, FechaMod, UsuarioMod, NavegarA, EsSeccion) VALUES (9, 'Complicaciones por la inflación', GETDATE(), 'Joel', GETDATE(), 'Joel', 10, 0)

INSERT INTO [dbo].[PTUOpcionesPreguntas] (PreguntaId, Descripcion, FechaCrea, UsuarioCre, FechaMod, UsuarioMod, NavegarA, EsSeccion) VALUES (10, 'Sí', GETDATE(), 'Joel', GETDATE(), 'Joel', null, 0)
INSERT INTO [dbo].[PTUOpcionesPreguntas] (PreguntaId, Descripcion, FechaCrea, UsuarioCre, FechaMod, UsuarioMod, NavegarA, EsSeccion) VALUES (10, 'No', GETDATE(), 'Joel', GETDATE(), 'Joel', null, 0)
GO

CREATE TABLE [dbo].[PTURespuestas]
(PreguntaId int NOT NULL IDENTITY(1,1) PRIMARY KEY,
EncuestadoId int NOT NULL,
OpcionPreguntaId VARCHAR(MAX) NULL,
FechaCrea DATETIME NULL,
UsuarioCre VARCHAR(50) NULL,
FechaMod DATETIME NULL,
UsuarioMod VARCHAR(50) NULL)
GO


ALTER TABLE [dbo].[PTUPreguntas] ADD CONSTRAINT FK_PTUPreguntas_PTUSecciones FOREIGN KEY ([SeccionId]) 
REFERENCES [dbo].[PTUSecciones] ([SeccionId])
GO
ALTER TABLE [dbo].[PTUPreguntas] CHECK CONSTRAINT FK_PTUPreguntas_PTUSecciones
GO

ALTER TABLE [dbo].[PTUPreguntas] ADD CONSTRAINT FK_PTUPreguntas_PTUTipoPregunta FOREIGN KEY ([TipoPregunta]) 
REFERENCES [dbo].[PTUTipoPregunta] ([Id])
GO
ALTER TABLE [dbo].[PTUPreguntas] CHECK CONSTRAINT FK_PTUPreguntas_PTUTipoPregunta
GO


ALTER TABLE [dbo].[PTUOpcionesPreguntas] ADD CONSTRAINT FK_PTUOpcionesPreguntas_PTUPreguntas FOREIGN KEY ([PreguntaId]) 
REFERENCES [dbo].[PTUPreguntas] ([PreguntaId])
GO
ALTER TABLE [dbo].[PTUOpcionesPreguntas] CHECK CONSTRAINT FK_PTUOpcionesPreguntas_PTUPreguntas
GO

ALTER TABLE [dbo].[PTURespuestas] ADD CONSTRAINT FK_PTURespuestas_PTUPreguntas FOREIGN KEY ([PreguntaId]) 
REFERENCES [dbo].[PTUPreguntas] ([PreguntaId])
GO
ALTER TABLE [dbo].[PTURespuestas] CHECK CONSTRAINT FK_PTURespuestas_PTUPreguntas
GO
