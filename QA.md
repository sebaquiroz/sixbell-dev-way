
Sí, totalmente. Te propongo un cuestionario de definición de estándar corporativo pensado específicamente para que, cuando tú y tu equipo lo respondan, yo pueda devolverte un manual operativo completo con:

Steering global y por proyecto para Kiro (~/.kiro/steering/ y plantillas de workspace), aprovechando que Kiro soporta steering global, por workspace y hasta “team steering” distribuido centralmente. 1 
Hooks estándar para seguridad, testing, documentación y calidad, usando la capacidad de Kiro de ejecutar automatizaciones por eventos del IDE. 23 
Powers recomendados o a crear para stacks/dominios concretos, aprovechando que Kiro los activa bajo demanda y evita sobrecargar contexto con MCP innecesarios. 45 
OpenSpec como capa de proceso/artefactos portable entre herramientas, ya que soporta Kiro y múltiples asistentes instalando skills y prompts por herramienta. 67 
Context7 en modo CLI + Skills o MCP, con guía de uso/configuración según su nivel de control y políticas internas. 8 
Skills de skills.sh con criterio de allowlist corporativa, considerando que el ecosistema existe y es útil, pero su propia documentación aclara que no garantiza la calidad/seguridad de cada skill listado. 9 
Principios de AI-DLC para gobernanza, aprobación humana, gates por riesgo y trazabilidad, sin necesidad de convertir AI-DLC en el único orquestador del equipo. 101112 
Servidores MCP y reglas de adopción, minimizando sobrecarga de contexto y reduciendo superficie de riesgo. 48 


Cómo usar este cuestionario
Recomendación práctica

Respóndanlo como equipo, idealmente en una sesión de 60–90 minutos. 
Si no tienen una respuesta definitiva, pueden poner: Pendiente 
No aplica 
Tenemos 2 opciones: ...   
Mientras más concretas sean las respuestas, más preciso será el manual que te devuelva. 
Qué haré yo después de recibir sus respuestas
Con sus respuestas te devolveré un documento tipo “Baseline Corporativo de Desarrollo Asistido por IA”, con:

Arquitectura del estándar 
Estructura de carpetas globales y de proyecto 
Steering global recomendado 
Hooks obligatorios / opcionales 
Powers aprobados / a crear 
Manual Context7 (CLI, skill, MCP, reglas de uso) 
Catálogo curado de skills.sh 
Principios AI-DLC adoptados 
Catálogo MCP aprobado + criterios de instalación 
Plan de rollout y onboarding del equipo 


Cuestionario de definición del estándar corporativo
Te lo dejo en un formato que puedes copiar/pegar y responder.


0) Identidad del estándar
0.1. Nombre interno del estándar
R//: The Sixbell-Dev Way.
0.2. Objetivo principal del estándar
¿Qué quieren lograr prioritariamente?

[X] Homogeneidad entre desarrolladores 
[X] Seguridad por defecto 
[ ] Acelerar entrega a clientes 
[ ] Mejorar calidad técnica 
[X] Trazabilidad/auditoría 
[ ] Reducir dependencia de prompts ad-hoc 
[ ] Mejor onboarding 
[X] Reutilización entre proyectos 
[ ] Otro(s): 
0.3. ¿Qué duele hoy más?
Nuestros principales problemas, y que nos llevan a querer definir un estándar de desarrollo son: Primero, la llegada de la IA ha revolucionado el mercado tecnológico, y necesitamos subirnos a la ola o quedaremos obsoletos. Segundo, todo nuestro equipo de desarrollo utiliza herramientas de IA como Claude, GitHub Copilot, etc., sin ningún estándar ni estructura, lo que conlleva a la creación de soluciones muy diferentes entre sí, dificultando la mantenibilidad cruzada. Finalmente, la alta gerencia necesita que se creen nuevos "productos Sixbell", ya que las ventas no han estado buenas, por lo que necesitamos un estándar para poder crear productos homogéneos entre si, y así poder mantenerlos a todos adecuadamente.
0.4. ¿Qué significa “éxito” en 6 meses?

Confección de "The Sixbell Dev Way" y sociabilización al equipo.
Primeras demos utilizando "The Sixbell Dev Way" exitosas, sirviendo para retroalimentar y depurar nuestra nueva metodología.
Primeros pasos hacia la refactorización de productos antiguos, para aplicar "The Sixbell Dev Way" en ellos.


1) Tipo de proyectos y portafolio
1.1. ¿Qué tipo de soluciones construyen con más frecuencia?

[X] Web frontend 
[X] Backend / APIs 
[X] Full-stack 
[X] Integraciones 
[ ] Datos / ETL 
[ ] IA / ML 
[ ] Geomática / GIS 
[ ] Automatización / scripts 
[ ] Infraestructura / DevOps 
[ ] Aplicaciones móviles 
[X] Otro(s): Agentes de IA Generativa estilo voicebots o chatbots, utilizando SIP Trunks y WebRTC.
1.2. Proporción de proyectos greenfield vs brownfield

Greenfield (%): 80
Brownfield (%): 20
1.3. ¿Qué tan repetibles son sus soluciones?

[ ] Muy repetibles (patrones casi iguales) 
[X] Medianamente repetibles. Usualmente tienen parte común, y algunos módulos activables según necesidades del cliente, aunque intentamos minimizar las personalizaciones. 
[ ] Muy personalizadas por cliente 
1.4. ¿Hay una arquitectura típica?
Con respecto a la arquitectura en la nube, la mayoría de nuestras soluciones suelen estar en AWS (Amplify, S3, Lambdas, API Gatway, etc.). Sobre el stack de tecnología, usamos mucho React, Python, NodeJS, API REST. Sobre frameworks de desarrollo, no estamos casados con ninguno, aunque hemos tenido buenas experiencias con Next.js, pero estamos abiertos a propuestas de frameworks que más funcionen en la actualidad; los más usados por la industria tecnológica moderna.
1.5. ¿Tienen plantillas/base repos que quieran preservar?

[ ] Sí 
[X] No
Si sí, describir: 


2) Herramientas e IDEs que quieren soportar
2.1. ¿Cuál será el entorno principal del equipo?

[X] Kiro IDE 
[ ] VS Code + Copilot 
[ ] Cursor 
[ ] Claude Code 
[ ] Mixto 
[ ] Otro: 
2.2. ¿Quieren un estándar portable entre herramientas o centrado en Kiro?

[X] Portable / multi-herramienta 
[ ] Centrado en Kiro 
[ ] Kiro principal, pero con fallback portable 
2.3. ¿Todos usarán la misma herramienta o habrá excepciones?
Idealmente todos deberíamos usar las mismas herramientas, aunque quizás en un futuro las tareas de cada desarrollador cambien, y algunos estén más enfocados en CI/CD, otros en QA, y otros en desarrollo puro, así que quizás sea bueno indicar qué herramientas servirán para tales enfoques (si es que va al caso), pero en principio todos deberíamos usar lo mismo.
2.4. ¿Quieren estandarizar comandos/prompts por herramienta?
OpenSpec puede instalar prompts/skills para múltiples tools, incluido Kiro. 6

[X] Sí 
[ ] No 
[ ] Solo en algunas herramientas 


3) Nivel de gobernanza y control del proceso
3.1. ¿Qué tan estricto debe ser el proceso?

[ ] Ligero 
[ ] Intermedio 
[X] Estricto / auditable 
3.2. ¿Qué cambios deben requerir aprobación humana explícita antes de implementar?
Marcar todo lo que aplique:

[X] Todos los cambios 
[ ] Solo cambios de arquitectura 
[ ] Solo cambios en seguridad 
[ ] Solo cambios en datos / migraciones 
[ ] Solo cambios en producción 
[ ] Solo cambios de alto impacto 
[ ] Ninguno 
[ ] Otro: 
3.3. ¿Quieren gates por nivel de riesgo?
Esto calza con principios de AI-DLC, que adapta el flujo según complejidad/riesgo y exige aprobación humana en hitos. 1011

[X] Sí 
[ ] No
Si sí, definan: 

Riesgo bajo: Componente(s) a refactorizar aislado, no interfiere(n) con el resto de la plataforma/solución.
Riesgo medio: Componentes(s) a refactorizar impacta algunas otras áreas de la solución general, por lo que podría ser necesaria una revisión de esas otras áreas, pero no impactan en el funcionamiento general de la plataforma.
Riesgo alto: Componente(s) a refactorizar impactan varias secciones de la solución, lo que podría generar incompatibilidad y mal funcionamiento de la plataforma. Requiere revisión completa.
3.4. ¿Quieren trazabilidad formal del “por qué” de cada cambio?

[X] Sí, siempre 
[ ] Solo en proyectos críticos 
[ ] No es prioridad 
3.5. ¿Quieren que las especificaciones queden versionadas en el repo?

[X] Sí 
[ ] No 
[ ] Solo en ciertos proyectos 


4) Metodología deseada: especificaciones, diseño y tareas
4.1. Antes de escribir código, ¿qué quieren dejar explícito siempre?

[X] Objetivo del cambio 
[X] Requisitos funcionales 
[X] Criterios de aceptación 
[X] Diseño técnico 
[X] Riesgos 
[X] NFRs 
[X] Tareas desglosadas 
[X] Estrategia de pruebas 
[X] Impacto en seguridad 
[X] Impacto en costos 
[ ] Otro: 
4.2. ¿Qué tan detalladas deben ser las specs?

[ ] Muy ligeras 
[ ] Moderadas 
[X] Muy detalladas 
4.3. ¿Quieren una metodología de cambio permanente tipo OpenSpec?
OpenSpec organiza cada cambio con propuesta, specs, diseño y tareas, y luego archiva/actualiza specs como fuente viva. 713

[X] Sí, para todos los proyectos 
[ ] Sí, solo para proyectos cliente 
[ ] Solo para cambios grandes 
[ ] No 
4.4. ¿Quieren usar también specs nativas de Kiro en algunos casos?
Kiro genera requirements, design y tasks para features/bugs. 14

[ ] Sí 
[ ] No 
[X] Solo para exploración/prototipos 
4.5. ¿Qué prefieren como “fuente de verdad” del cambio?

[X] OpenSpec 
[ ] Kiro Specs 
[ ] Documentación propia 
[ ] Depende del proyecto 
[ ] No definido 


5) Seguridad, cumplimiento y riesgo
5.1. ¿Qué nivel de seguridad necesitan por defecto?

[ ] Básico 
[ ] Medio 
[ ] Alto 
[X] Muy alto / regulado 
5.2. ¿Qué controles quieren que estén siempre activos?

[X] Detección de secretos 
[X] Revisión de dependencias 
[ ] Validación de input/output 
[X] Revisión de auth/authz 
[X] Revisión de manejo de datos sensibles 
[ ] Revisión de logs seguros 
[X] Revisión de configuraciones cloud 
[ ] Revisión de IaC 
[ ] Otro:
5.3. ¿Manejan datos sensibles o regulados?

[ ] No 
[ ] Datos personales 
[ ] Datos financieros 
[ ] Datos de salud 
[ ] Datos geoespaciales sensibles 
[ ] Información interna de clientes 
[X] Otro: Somos una empresa B2B, por lo que la información sensible que manejamos varía dependiendo del cliente.
5.4. ¿Existen normativas/políticas que debamos reflejar en steering/hooks? La ISO 27001 es obligatoria, y deseable son estándares internacionales como OWASP ASVS, hardening cloud, etc.
5.5. ¿Quieren reglas bloqueantes o solo advertencias?

[ ] Bloqueantes 
[ ] Advertencias 
[X] Mixto 


6) Calidad, testing y Definition of Done
6.1. ¿Qué pruebas deben ser obligatorias?

[X] Unitarias 
[X] Integración 
[X] E2E 
[ ] Contrato / API 
[X] Seguridad 
[ ] Performance 
[ ] Accesibilidad 
[ ] Smoke 
[ ] Otro: 
6.2. ¿Esperan generación automática de tests al crear/modificar archivos?
Kiro Hooks se usa justamente para automatizar tests, documentación y revisiones por evento. 32

[X] Sí 
[ ] No 
[ ] Solo en ciertos proyectos 
6.3. ¿Quieren cobertura mínima?

[X] Sí 
[ ] No
Si sí: 

Unit: 80%
Integration: 80% 
E2E: 75%
6.4. ¿Qué debe ocurrir antes de mergear?

[X] Lint 
[X] Build 
[X] Tests 
[X] Review de seguridad 
[X] Review de arquitectura 
[X] Actualización documental 
[ ] Validación OpenAPI 
[ ] Otro: 
6.5. ¿Cómo definen “Definition of Done”?

El código pasó por todos los filtros de "The Sixbell Dev Way".
Todas las pruebas unitarias y criterios de aceptación fueron superados.


7) Arquitectura, stack y patrones técnicos
7.1. Stack(s) principal(es)
Ejemplo:

Frontend: Usualmente React. Hemos usado frameworks como nextjs y nos han funcionado bien, pero estamos abierto a propuestas.
Backend: Python y nodejs
Base de datos: SQL principalmente, usando alguna solución de AWS en la nube como AuroraDB
Infraestructura: únicamente servicios de AWS, como S3, API Gateway, funciones Lambada, Amplify, y en algunos proyectos Bedrock para agentes de IA.
CI/CD: No tenemos un proceso específico de CI/CD, pero nuestros códigos viven en github, por lo que algunos códigos tienen revisión de CI/CD automático en cada push validando lint, Build, tests, etc. Pero no tenemos algo estándar.
Testing: Usualmente solo usamos vitest, estamos abiertos a propuestas.
Observabilidad: Usualmente solo revisamos los y en ocasiones Cloudwatch. Estamos abiertos a propuestas.
Cloud: 100% AWS
GIS / Datos: No tenemos nada de esta área, diría que no aplica a nuestro rubro.
Otro: 
7.2. ¿Quieren imponer stack preferido por steering global?
Kiro Steering permite documentar stack, estructura y convenciones para que el agente lo siga consistentemente. 1

[X] Sí 
[ ] No 
[ ] Solo como preferencia 
7.3. ¿Qué decisiones arquitectónicas son “no negociables”? 
Yo creo que lo único no negociable es usar otra nube que no sea AWS.
7.4. ¿Qué anti-patrones quieren prohibir explícitamente?

Código Espagueti y Acoplamiento
Complejidad innecesaria
Error Hiding
Copy-Paste Programming
God Object
7.5. ¿Quieren guías específicas por dominio/archivo?
Kiro Steering soporta inclusión condicional por patrón de archivos. 1

[ ] Sí 
[X] No
Si sí, listar dominios: 

frontend: 
backend: 
tests: 
infra: 
docs: 
data: 
security: 


8) Documentación y conocimiento vivo
8.1. ¿Qué documentación quieren mantener automáticamente sincronizada?

[X] README 
[X] OpenAPI / Swagger 
[X] ADRs 
[X] CHANGELOG 
[ ] Manual técnico 
[X] Diagrama de arquitectura 
[ ] Wiki corporativa 
[ ] Otro: 
8.2. ¿La documentación vive en el repo, en wiki externa o en ambos?
Por el momento en el repo, pero eventualmente queremos desarrollar una wiki externa para que vivan en ambos.
8.3. ¿Quieren documentación “mínima necesaria” o “trazabilidad fuerte”?

[ ] Mínima 
[X] Balanceada 
[ ] Fuerte 
8.4. ¿Qué documentos son obligatorios por proyecto nuevo? No lo hemos discutido, pero sería bueno un README.md, un ADR de la primera decisión, CONTRIBUTING.md, especificaciones de API (OpenAPI/Swagger), CHANGELOG.md y el diagrama de arquitectura.


9) Onboarding y experiencia del desarrollador
9.1. ¿Qué tan rápido debe quedar operativo un nuevo desarrollador?

[ ] Menos de 1 día 
[ ] 2–3 días 
[X] 1 semana 
[ ] No definido 
9.2. ¿Quieren un “kit de arranque” global para todos los equipos?

[X] Sí 
[ ] No 
9.3. ¿Qué cosas quieren que se instalen/configuren automáticamente?

[X] Steering global 
[X] Skills aprobadas 
[X] Powers aprobados 
[X] MCPs aprobados 
[X] Hooks base 
[ ] Plantillas de proyecto 
[X] Reglas de Context7 
[ ] Otro: 
9.4. ¿Quién podrá modificar el baseline global?

[ ] Cualquiera 
[ ] Tech leads 
[ ] Equipo plataforma 
[ ] Arquitectura 
[X] Otro: No tenemos ninguna definición en este aspecto, pero cualquier cambio tiene que pasar si o si por la decisión completa del equipo por el momento.


10) Contexto externo, documentación viva y uso de Context7
10.1. ¿Quieren que el agente use documentación actualizada de librerías/frameworks por defecto?
Context7 puede instalarse en modo skill/CLI o MCP, y su setup oficial ofrece ambas opciones. 8

[X] Sí, por defecto 
[ ] Sí, solo bajo demanda 
[ ] No 
10.2. ¿Qué prefieren para Context7?

[ ] CLI + Skills 
[ ] MCP 
[ ] Depende de la herramienta 
[X] No sabemos / recomiéndalo tú 
10.3. ¿Qué stacks requieren documentación siempre fresca?

[X] React / Next 
[X] Node 
[X] Python 
[X] AWS 
[ ] Azure 
[ ] Terraform 
[ ] Postgres / Supabase 
[ ] GIS / geo libs 
[ ] Otro: 
10.4. ¿Quieren una regla corporativa del tipo “usar Context7 siempre que se toque una librería externa”?
El repo oficial incluso muestra una regla ejemplo para eso. 8

[X] Sí 
[ ] No 
[ ] Solo en cambios complejos 
10.5. ¿Tienen restricciones respecto a servicios comunitarios / externos?
El repo de Context7 incluye disclaimers sobre calidad/seguridad del contenido comunitario. 8
No tenemos ninguna restricción explícita, pero idealmente validar que la información que proporcione context7 sea fiable.


11) Skills de skills.sh
11.1. ¿Quieren usar skills de skills.sh como parte del baseline?

[X] Sí 
[ ] No 
[ ] Solo allowlist curada 
11.2. ¿Qué tipo de skills les interesan?

[X] React / frontend best practices 
[X] UI/UX / accesibilidad 
[X] Cloud / Azure / AWS 
[X] Testing 
[X] Seguridad 
[ ] DevOps 
[X] Diseño / documentación 
[ ] Datos / analítica 
[ ] Otro: 
11.3. ¿Quieren que las skills se instalen globalmente o por proyecto?

[X] Global 
[ ] Proyecto 
[ ] Mixto 
11.4. ¿Aceptan skills comunitarias o solo de publishers confiables?
La documentación de skills.sh recomienda revisar skills antes de usar porque no garantiza calidad/seguridad de todas. 9

[X] Solo publishers confiables 
[ ] Mixto con revisión 
[ ] Cualquiera 
11.5. ¿Quién aprueba nuevas skills para el catálogo interno? No lo tenemos definido. Por el momento es consenso del equipo de desarrollo.


12) Powers de Kiro
12.1. ¿Quieren usar Powers en el baseline?

[X] Sí 
[ ] No 
[ ] Solo para ciertos dominios 
12.2. ¿Para qué dominios/stacks serían útiles?

[X] AWS 
[ ] Stripe / pagos 
[X] Observabilidad 
[ ] DB / Supabase / Postgres 
[ ] Infra / IaC 
[X] SaaS boilerplates 
[X] Integraciones API 
[ ] Otro: 
12.3. ¿Quieren usar powers existentes o crear powers propios?

[ ] Solo existentes 
[ ] Solo propios 
[X] Mixto 
12.4. ¿Qué capacidades debería tener un power corporativo propio? Ejemplo: Somos nuevos en el tema de los Powers de Kiro, pero me imagino que guiar el workflow del despliegue sería útil. Aceptamos sugerencias.
12.5. ¿Quieren powers solo para tecnología o también para procesos internos?
Kiro Powers empaqueta contexto, herramientas y opcionalmente steering/hooks, y los activa dinámicamente por keywords. 45

[ ] Solo tecnología 
[ ] También procesos internos 
[X] No definido 


13) Servidores MCP
13.1. ¿Quieren adoptar MCP como parte oficial del estándar?

[X] Sí 
[ ] No 
[ ] Solo en ciertos roles/proyectos 
13.2. ¿Qué categorías de MCP les interesan?

[ ] Documentación 
[ ] Cloud 
[ ] Observabilidad 
[ ] Diseño 
[X] Testing / browser automation 
[ ] Datos / DB 
[X] Git / GitHub 
[X] Costos / pricing 
[X] Seguridad 
[ ] Otro: 
13.3. ¿Qué riesgos quieren minimizar al usar MCP?

[X] Exposición de secretos 
[X] Demasiadas tolos cargadas 
[ ] Dependencia de servicios externos 
[X] Inconsistencia entre proyectos 
[ ] Pérdida de control 
[X] Costos 
[ ] Otro: 
13.4. ¿Quieren un catálogo MCP corporativo aprobado?

[X] Sí 
[ ] No 
13.5. ¿Quieren reglas de activación por contexto para evitar sobrecarga?
Kiro Powers existe precisamente para cargar contexto/MCP solo cuando corresponde, en vez de meter todo siempre. 4

[X] Sí 
[ ] No 


14) Principios de AI-DLC a adoptar (sin necesariamente adoptar todo AI-DLC)
14.1. ¿Qué principios les interesan más?

[X] Flujo adaptativo según complejidad/riesgo 
[ ] Preguntas estructuradas 
[X] Approval gates 
[ ] Artefactos por fase 
[ ] Validación de contenido 
[X] Audit Trail 
[X] Extensiones de seguridad/compliance 
[ ] Otro: 
14.2. ¿Quieren un enfoque de 3 niveles de rigor? Ejemplo:

bajo: cambio pequeño, flujo liviano 
medio: requiere diseño + tareas 
alto: requiere revisión formal, seguridad y trazabilidad 
[X] Sí 
[ ] No 
14.3. ¿Qué situaciones deben elevar automáticamente el rigor?

[X] Migraciones 
[ ] Nuevos servicios 
[X] Cambios de arquitectura 
[X] Datos sensibles 
[ ] Integraciones con terceros 
[ ] Infraestructura 
[ ] Otro: 
14.4. ¿Quieren conservar evidencia del proceso para clientes o auditoría interna?

[X] Sí 
[ ] No 
[ ] Solo en ciertos proyectos 


15) Reglas de repositorio y estructura base
15.1. ¿Todos los proyectos deben arrancar desde una misma estructura base?

[X] Sí 
[ ] No 
[ ] Solo por familia de proyecto 
15.2. ¿Qué carpetas/archivos consideran obligatorios al iniciar un proyecto? Ejemplo:

.kiro/steering/ 
.kiro/hooks/ 
openspec/ 
.github/ 
docs/ 
adr/ 
tests/ 
api/ 
infra/ 
Aceptamos propuestas
15.3. ¿Quieren separar baseline global vs baseline por proyecto?

[ ] Sí 
[X] No
Kiro permite steering global y steering de workspace, con precedencia del workspace sobre el global. 1 
15.4. ¿Quieren plantillas distintas según tipo de proyecto?

[X] frontend 
[X] backend 
[X] fullstack 
[ ] data 
[ ] infra 
[ ] GIS 
[ ] otro 


16) CI/CD, revisión y merge
16.1. ¿Qué validaciones deben correr en CI sí o sí? No lo tenemos definido, pero lint, Build, tests y smoke serían buenos puntos iniciales. Aceptamos sugerencias.
16.2. ¿Qué validaciones prefieren que ocurran antes, dentro del IDE, vía hooks? Tampoco lo tenemos definido, pero validaciones de lint, Build, formato, tests unitarios, ese y smoke, y seguridad como base serían útiles. Aceptamos sugerencias.
16.3. ¿Qué cosas requieren revisión humana sí o sí? Aprobacion de requerimientos (historias de usuario, criterios de aceptación, etc), diseño de infraestructura y de la solución, definición de tareas a ejecutar, entre otros que propongas.
16.4. ¿Quieren plantillas de PR alineadas al estándar?

[X] Sí 
[ ] No 
16.5. ¿Quieren que el estándar incluya checklist de revisión técnica?

[X] Sí 
[ ] No 


17) Costos, performance y límites operativos
17.1. ¿Qué pesa más para ustedes?

[ ] Calidad máxima 
[X] Balance calidad/costo 
[X] Costo mínimo 
[ ] Velocidad máxima 
17.2. ¿Quieren limitar herramientas que consuman demasiado contexto o créditos?
Kiro documenta explícitamente el problema de sobrecarga de contexto cuando se conectan muchos MCP/tools a la vez. 4

[X] Sí 
[ ] No 
17.3. ¿Quieren perfiles distintos por tipo de tarea? Ejemplo:

exploración 
implementación 
revisión 
hotfix 
onboarding 
[X] Sí 
[ ] No 


18) Modelo organizacional y ownership
18.1. ¿Quién será dueño del estándar?

[ ] CTO / Dirección técnica 
[ ] Arquitectura 
[X] Equipo plataforma 
[ ] Leads 
[ ] Comité mixto 
18.2. ¿Quién aprobará cambios al baseline?
No lo tenemos claro, pero por el momento pasa por consenso del equipo.
18.3. ¿Cada cuánto quieren revisar el estándar?

[ ] Mensual 
[ ] Trimestral 
[X] Semestral 
[ ] Anual 
18.4. ¿Quieren versionar formalmente el estándar?

[X] Sí 
[ ] No 


19) Casos límite y excepciones
19.1. ¿Qué tipos de proyectos NO deberían usar el baseline completo? Probablemente las demos y PoCs podrían usar una versión más lite del estándar.
19.2. ¿Qué componentes del baseline podrían ser opcionales?

[ ] OpenSpec 
[X] Kiro Specs 
[ ] Hooks 
[X] Powers 
[ ] Context7 
[X] Skills 
[ ] MCP 
[ ] Otro: 
19.3. ¿Qué nunca debería automatizarse sin supervisión humana? Merge a main, aprobación de PRs, despliegues en la nube y cambios de alto riesgo.


20) Información que necesito para devolverte la configuración exacta
20.1. Sistema operativo predominante del equipo

[X] Windows 
[ ] macOS 
[X] Linux 
[ ] Mixto 
20.2. ¿Quieren configuración global por usuario o administrada centralmente?
Kiro admite steering global y hasta despliegue de team steering vía MDM/políticas. 1

[ ] Global por usuario 
[X] Distribuida centralmente 
[ ] Mixto 
20.3. ¿Tienen restricciones para instalar herramientas por CLI?

[ ] Sí 
[X] No
Si sí, describir. 
20.4. ¿Tienen repositorio o portal central para distribuir baseline/plantillas?

[X] Sí 
[ ] No
Tenemos una organización en github donde planeamos subir todo nuestro estándar global, para que los desarrolladores puedan descargar de ahí el estándar "The Sixbell Dev Way" antes de iniciar cada proyecto.
20.5. ¿Quieren que el manual final incluya también estrategia de rollout?

[X] Sí 
[ ] No 