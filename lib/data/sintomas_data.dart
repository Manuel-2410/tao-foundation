import '../models/sintoma.dart';

final sintomas = [
  Sintoma(
    nombre: 'Dolor estomacal',
    categoria: 'Digestivo',
    imagen: 'assets/images/digestivo.png',
    descripcion:
        'Molestia, ardor o presión en la parte superior del abdomen. Puede relacionarse con la alimentación, el estrés u otras condiciones digestivas, por lo que un dolor intenso, persistente o acompañado de vómito o sangrado requiere valoración médica.',
    comoayuda:
        'Como complemento de la atención médica, la acupuntura puede ayudar a modular el dolor, favorecer la relajación y disminuir el estrés que agrava algunas molestias digestivas. El resultado depende de la causa y no sustituye el diagnóstico médico.',
    objetivos:
        'Disminuir la intensidad y frecuencia de la molestia, reducir la tensión asociada al estrés y favorecer una digestión más cómoda junto con el manejo médico y alimentario indicado.',
    resultados:
        'Se espera una reducción gradual del dolor o ardor y mayor comodidad después de comer. La evolución se valora registrando intensidad, duración y frecuencia de los episodios.',
    complementos:
        'Auriculoterapia y masaje relajante pueden apoyar el manejo del estrés relacionado con la molestia digestiva. Un diagnóstico nutricional ayuda a identificar hábitos, alimentos y horarios asociados, como complemento de la valoración médica.',
    situacion:
        '¿En qué parte del abdomen siente el dolor y desde cuándo comenzó?\n¿Aparece antes o después de comer, durante la noche o en momentos de estrés?\n¿Ya recibió un diagnóstico o tratamiento para esta molestia?',
    problema:
        '¿El dolor le obliga a evitar alimentos o interrumpe sus actividades?\n¿Presenta además acidez, náusea, inflamación o cambios en las evacuaciones?\n¿El alivio que obtiene actualmente es insuficiente o dura poco?',
    implicacion:
        '¿Cómo afectaría su alimentación y energía si el dolor continuara?\n¿La preocupación por una nueva crisis limita su trabajo, descanso o vida social?\n¿Qué consecuencias tendría posponer la valoración de una molestia recurrente?',
    necesidad:
        '¿Qué cambiaría en su día si pudiera comer y realizar sus actividades con menos molestias?\n¿Le interesaría complementar su atención médica con acupuntura para trabajar dolor y estrés?\n¿Estaría dispuesto a dar seguimiento a sus síntomas para evaluar si el apoyo le funciona?',
  ),
  Sintoma(
    nombre: 'Ciática',
    categoria: 'Dolor',
    imagen: 'assets/images/ciatica.jpeg',
    descripcion:
        'Dolor que suele iniciar en la zona lumbar o el glúteo y recorrer una pierna; puede acompañarse de hormigueo, entumecimiento o debilidad. La pérdida de fuerza, alteraciones para orinar o adormecimiento en la entrepierna requieren atención médica urgente.',
    comoayuda:
        'La acupuntura puede utilizarse como apoyo para reducir la intensidad del dolor y la tensión muscular, y facilitar el movimiento. Debe complementar la valoración médica o fisioterapéutica, especialmente cuando existen síntomas neurológicos.',
    objetivos:
        'Reducir el dolor irradiado y la tensión lumbar o glútea, facilitar la movilidad y apoyar el regreso progresivo a las actividades indicadas en el plan médico o de rehabilitación.',
    resultados:
        'Puede lograrse menos dolor al caminar, sentarse o dormir y una movilidad más cómoda. El progreso se mide por intensidad del dolor, distancia caminada y actividades recuperadas.',
    complementos:
        'Fisioterapia para movilidad, fuerza y postura; terapia de ventosas o masaje relajante para la tensión muscular. Un diagnóstico nutricional puede detectar factores que influyan en inflamación, peso y recuperación, tras descartar signos de alarma.',
    situacion:
        '¿Desde cuándo siente el dolor y por qué zona de la pierna se extiende?\n¿Tiene hormigueo, entumecimiento o pérdida de fuerza?\n¿Qué diagnóstico, estudios o tratamientos ha recibido hasta ahora?',
    problema:
        '¿Qué movimientos, posturas o actividades aumentan el dolor?\n¿Le cuesta caminar, sentarse, trabajar o dormir?\n¿El tratamiento actual le proporciona alivio suficiente y duradero?',
    implicacion:
        '¿Cómo cambiaría su movilidad si el dolor continuara o aumentara?\n¿De qué manera afectaría su independencia, descanso o desempeño laboral?\n¿Qué actividades importantes podría dejar de realizar?',
    necesidad:
        '¿Qué valor tendría recuperar movilidad y dormir con menos dolor?\n¿Le interesaría integrar la acupuntura a su plan médico o de rehabilitación?\n¿Qué actividad le gustaría retomar primero si disminuyeran las molestias?',
  ),
  Sintoma(
    nombre: 'Dolor muscular',
    categoria: 'Dolor',
    imagen: 'assets/images/dolormuscular.jpeg',
    descripcion:
        'Dolor, rigidez o sensibilidad en uno o varios músculos, con frecuencia asociado a sobrecarga, postura, ejercicio, tensión o lesión. Si aparece debilidad marcada, fiebre, inflamación intensa o dolor después de un traumatismo, se recomienda valoración médica.',
    comoayuda:
        'La acupuntura puede complementar el manejo del dolor muscular al ayudar a disminuir la percepción del dolor y la tensión, favoreciendo la relajación y el movimiento. No reemplaza el reposo, la rehabilitación ni la evaluación de una lesión.',
    objetivos:
        'Disminuir dolor, rigidez y contractura; recuperar el rango de movimiento y complementar los ejercicios, el descanso o la rehabilitación necesarios para evitar nuevas sobrecargas.',
    resultados:
        'Se busca movimiento más libre, menor sensibilidad muscular y mejor tolerancia al trabajo o ejercicio. Los cambios suelen evaluarse por dolor, flexibilidad y función cotidiana.',
    complementos:
        'Masaje relajante y terapia de ventosas para descargar tensión; fisioterapia ante lesión o limitación. Un diagnóstico nutricional puede revisar hidratación, energía y nutrientes relacionados con la recuperación muscular.',
    situacion:
        '¿En qué músculos siente dolor y desde cuándo?\n¿Comenzó después de ejercicio, una lesión, una postura prolongada o estrés?\n¿Qué ha probado para aliviarlo y qué resultado obtuvo?',
    problema:
        '¿Siente rigidez, contracturas o limitación de movimiento?\n¿El dolor interfiere con su trabajo, ejercicio o descanso?\n¿Las molestias regresan aunque use masaje, calor o analgésicos?',
    implicacion:
        '¿Qué pasaría con su movilidad si la tensión se mantuviera?\n¿Podría compensar con otras partes del cuerpo y generar nuevas molestias?\n¿Cómo afectaría dejar de hacer las actividades que necesita o disfruta?',
    necesidad:
        '¿Qué actividad recuperaría si tuviera menos dolor y rigidez?\n¿Le interesaría usar acupuntura como complemento de estiramiento o rehabilitación?\n¿Qué mejoría concreta le indicaría que el tratamiento está funcionando?',
  ),
  Sintoma(
    nombre: 'Parálisis facial o de Bell',
    categoria: 'Neurológico',
    imagen: 'assets/images/paralisis.jpeg',
    descripcion:
        'Debilidad o pérdida repentina del movimiento en un lado del rostro, que puede dificultar cerrar el ojo, sonreír, hablar o comer. Requiere valoración médica inmediata para descartar otras causas y comenzar el tratamiento indicado a tiempo.',
    comoayuda:
        'Una vez valorada por el médico, la acupuntura puede considerarse como apoyo durante la recuperación para trabajar tensión, molestias y función muscular facial. No sustituye los medicamentos, el cuidado ocular ni la rehabilitación prescrita.',
    objetivos:
        'Acompañar la recuperación de la movilidad facial, disminuir tensión o espasmos y apoyar funciones como parpadear, sonreír, hablar y comer dentro del tratamiento médico indicado.',
    resultados:
        'La evolución esperada es gradual y puede reflejarse en mayor simetría y control muscular. Se compara periódicamente el cierre del ojo, la sonrisa y otras funciones faciales.',
    complementos:
        'Fisioterapia facial para apoyar el control y la coordinación muscular, solo después de la valoración médica. El masaje suave puede considerarse si se autoriza, y un diagnóstico nutricional puede apoyar una alimentación adecuada durante la recuperación.',
    situacion:
        '¿Cuándo comenzó la debilidad facial y apareció de forma repentina?\n¿Puede cerrar por completo el ojo y mover la frente del lado afectado?\n¿Ya fue valorado por un médico y qué tratamiento le indicó?',
    problema:
        '¿Tiene dificultad para hablar, comer, beber o proteger el ojo?\n¿Presenta dolor, espasmos o rigidez en el rostro?\n¿Qué aspecto de la recuperación le preocupa más?',
    implicacion:
        '¿Cómo afecta la falta de movimiento su comunicación y seguridad personal?\n¿Qué riesgos habría si no pudiera proteger adecuadamente el ojo?\n¿Cómo impactaría una recuperación lenta en su trabajo y relaciones?',
    necesidad:
        '¿Qué significaría recuperar mejor el parpadeo, la sonrisa o el habla?\n¿Le interesaría complementar el manejo médico y la rehabilitación con acupuntura?\n¿Qué función facial sería más importante mejorar primero?',
  ),
  Sintoma(
    nombre: 'Fertilidad',
    categoria: 'Reproductivo',
    imagen: 'assets/images/fertilidad.jpeg',
    descripcion:
        'Dificultad para lograr un embarazo después de un periodo de intentarlo. Puede involucrar factores femeninos, masculinos o de ambos, por lo que requiere evaluación especializada de la pareja.',
    comoayuda:
        'La acupuntura puede ofrecer apoyo complementario para relajación, estrés y bienestar durante un proceso de fertilidad. No corrige por sí sola las causas de infertilidad ni reemplaza los estudios o tratamientos indicados por especialistas.',
    objetivos:
        'Reducir el estrés y la tensión del proceso, favorecer descanso y bienestar general, y brindar acompañamiento complementario coordinado con el equipo de reproducción o fertilidad.',
    resultados:
        'Los resultados esperados se centran en bienestar: mayor relajación, mejor sueño y mejor tolerancia emocional al tratamiento. No se garantiza embarazo ni se reemplaza la atención especializada.',
    complementos:
        'Auriculoterapia y masaje relajante pueden favorecer calma y bienestar. Un diagnóstico nutricional permite valorar el estado nutricional y crear recomendaciones individualizadas, todo coordinado con el especialista en fertilidad.',
    situacion:
        '¿Desde hace cuánto intentan lograr un embarazo?\n¿Ambos miembros de la pareja ya recibieron una evaluación de fertilidad?\n¿Actualmente siguen algún tratamiento o procedimiento de reproducción asistida?',
    problema:
        '¿Qué parte del proceso le genera mayor desgaste físico o emocional?\n¿El estrés afecta su sueño, relación de pareja o continuidad del tratamiento?\n¿Tiene dudas o molestias que aún no ha comentado con su especialista?',
    implicacion:
        '¿Cómo impactaría prolongar el proceso sin el acompañamiento adecuado?\n¿Qué efecto tendría mantener niveles altos de estrés en su bienestar y relación?\n¿Podría dificultarse seguir las indicaciones médicas si el desgaste continúa?',
    necesidad:
        '¿Qué valor tendría sentirse más acompañado y con herramientas para manejar el estrés?\n¿Le interesaría usar acupuntura solo como complemento coordinado con su especialista?\n¿Qué cambio en su bienestar haría más llevadero el proceso?',
  ),
  Sintoma(
    nombre: 'Gastritis',
    categoria: 'Digestivo',
    imagen: 'assets/images/gastritis.jpeg',
    descripcion:
        'Inflamación o irritación del revestimiento del estómago que puede causar ardor, dolor, náusea o sensación de llenura. El diagnóstico y la causa deben ser confirmados por un profesional de salud.',
    comoayuda:
        'Como complemento del tratamiento médico y los cambios de alimentación, la acupuntura puede ayudar con la percepción del dolor, la náusea y el estrés asociado. No elimina infecciones ni reemplaza protectores gástricos u otros medicamentos indicados.',
    objetivos:
        'Ayudar a controlar ardor, dolor o náusea, disminuir la respuesta al estrés y facilitar que la persona mantenga su alimentación y el tratamiento indicado con mayor comodidad.',
    resultados:
        'Se espera menor intensidad o frecuencia de las molestias y mejor tolerancia a las comidas. El avance se mide sin suspender medicamentos ni controles médicos.',
    complementos:
        'Auriculoterapia y masaje relajante pueden acompañar el manejo del estrés. Un diagnóstico nutricional ayuda a reconocer alimentos, porciones y horarios desencadenantes sin reemplazar el diagnóstico médico ni los medicamentos.',
    situacion:
        '¿Qué síntomas presenta y desde cuándo?\n¿Las molestias cambian con la comida, el ayuno, el café, alcohol o medicamentos?\n¿Cuenta con diagnóstico y sabe qué causa está tratando su médico?',
    problema:
        '¿El ardor o la náusea dificultan comer o dormir?\n¿Los síntomas reaparecen a pesar del tratamiento o los cambios de dieta?\n¿El estrés coincide con los periodos de mayor molestia?',
    implicacion:
        '¿Cómo afectaría su nutrición y energía si continuara evitando alimentos?\n¿De qué manera las molestias repetidas impactan su concentración y descanso?\n¿Qué riesgo implicaría ignorar signos como vómito persistente o sangrado?',
    necesidad:
        '¿Qué mejoraría si pudiera comer y descansar con menos ardor o náusea?\n¿Le interesaría añadir acupuntura sin suspender el manejo indicado por su médico?\n¿Qué síntoma le gustaría monitorear para valorar el progreso?',
  ),
  Sintoma(
    nombre: 'Colitis',
    categoria: 'Digestivo',
    imagen: 'assets/images/colitis.jpeg',
    descripcion:
        'Término usado para molestias del colon como dolor, inflamación y cambios en las evacuaciones; distintas causas pueden producir síntomas similares. Es importante contar con un diagnóstico, sobre todo si hay sangre, fiebre o pérdida de peso.',
    comoayuda:
        'La acupuntura puede emplearse como complemento para ayudar a manejar dolor abdominal, tensión y estrés, aunque la evidencia varía según la causa. No sustituye el tratamiento gastroenterológico ni los ajustes de dieta indicados.',
    objetivos:
        'Reducir dolor, inflamación percibida y tensión asociada al estrés, mejorar la comodidad cotidiana y complementar el plan gastroenterológico y nutricional según la causa diagnosticada.',
    resultados:
        'Puede observarse menor intensidad o frecuencia de episodios y más libertad para realizar actividades. Conviene registrar dolor, evacuaciones y desencadenantes para valorar cambios.',
    complementos:
        'Auriculoterapia y masaje relajante pueden apoyar la regulación del estrés. Un diagnóstico nutricional permite revisar tolerancias, fibra, hidratación y patrones de evacuación, integrado al seguimiento gastroenterológico.',
    situacion:
        '¿Desde cuándo presenta dolor, inflamación o cambios en las evacuaciones?\n¿Tiene un diagnóstico específico y ha identificado alimentos o situaciones desencadenantes?\n¿Con qué frecuencia ocurren los episodios?',
    problema:
        '¿La urgencia o inflamación limita sus salidas, trabajo o alimentación?\n¿El estrés empeora los síntomas intestinales?\n¿El manejo actual controla suficientemente los episodios?',
    implicacion:
        '¿Cómo afectaría su vida social y laboral seguir pendiente de una crisis?\n¿Podrían las restricciones alimentarias afectar su nutrición o energía?\n¿Qué consecuencias tendría no investigar síntomas de alarma?',
    necesidad:
        '¿Qué actividades retomaría si los episodios fueran menos intensos?\n¿Le interesaría complementar su atención digestiva con acupuntura para dolor y estrés?\n¿Qué cambio en frecuencia o intensidad consideraría una mejoría útil?',
  ),
  Sintoma(
    nombre: 'Control de peso',
    categoria: 'Metabolismo',
    imagen: 'assets/images/controlpeso.jpeg',
    descripcion:
        'Dificultad para alcanzar o mantener un peso saludable, influida por alimentación, actividad, sueño, medicamentos, emociones o condiciones metabólicas. Requiere objetivos realistas y, cuando corresponde, valoración médica y nutricional.',
    comoayuda:
        'La acupuntura no sustituye la alimentación, la actividad física ni el tratamiento metabólico. Puede utilizarse como apoyo para relajación, manejo del estrés y adherencia a hábitos saludables, sin prometer una pérdida de peso específica.',
    objetivos:
        'Apoyar el manejo del estrés, el descanso y la constancia con hábitos sostenibles, siempre como complemento de un plan nutricional, de movimiento y de atención médica cuando corresponda.',
    resultados:
        'Se esperan mejoras en adherencia, bienestar y energía más que una cifra específica en la báscula. El progreso debe evaluarse con hábitos y metas de salud acordadas con profesionales.',
    complementos:
        'El diagnóstico nutricional es la base para definir necesidades y hábitos sostenibles. Puede acompañarse de Auriculoterapia para ansiedad o antojos y Fisioterapia si el dolor limita la actividad; ningún complemento aislado garantiza bajar de peso.',
    situacion:
        '¿Qué objetivo de salud desea alcanzar y desde cuándo trabaja en él?\n¿Qué hábitos, programas o tratamientos ha probado?\n¿Tiene alguna condición médica o medicamento que influya en su peso?',
    problema:
        '¿Qué obstáculo dificulta más mantener sus hábitos: hambre, ansiedad, sueño, horarios o dolor?\n¿Ha experimentado ciclos de pérdida y recuperación de peso?\n¿Cómo afecta esta situación su energía o movilidad?',
    implicacion:
        '¿Qué impacto tendría mantener los mismos hábitos en su salud y articulaciones?\n¿Cómo afecta la frustración su motivación para continuar?\n¿Podría abandonar objetivos importantes si no cuenta con un plan sostenible?',
    necesidad:
        '¿Qué beneficio tendría mejorar energía y hábitos aunque el cambio de peso fuera gradual?\n¿Le interesaría sumar acupuntura como apoyo para estrés y adherencia a su plan?\n¿Qué hábito pequeño y medible estaría dispuesto a trabajar primero?',
  ),
  Sintoma(
    nombre: 'Insomnio',
    categoria: 'Clínico',
    imagen: 'assets/images/insomnio.jpeg',
    descripcion:
        'Dificultad frecuente para conciliar el sueño, mantenerlo o despertar descansado, aun cuando existe oportunidad de dormir. Puede afectar energía, concentración, ánimo y seguridad durante el día.',
    comoayuda:
        'Algunos estudios sugieren que la acupuntura puede apoyar la calidad del sueño, aunque la evidencia todavía es limitada. Puede combinarse con higiene del sueño y atención médica o psicológica, sin suspender tratamientos prescritos.',
    objetivos:
        'Favorecer la relajación antes de dormir, reducir la tensión que dificulta el descanso y complementar hábitos de sueño y el tratamiento de las causas médicas o emocionales identificadas.',
    resultados:
        'Puede disminuir el tiempo para conciliar el sueño o los despertares y mejorar la sensación de descanso. Se valora con un registro de sueño y energía durante el día.',
    complementos:
        'Auriculoterapia y masaje relajante pueden favorecer la relajación antes de dormir. Un diagnóstico nutricional ayuda a revisar cafeína, alcohol, horarios y cenas que afectan el sueño, junto con la atención de causas persistentes.',
    situacion:
        '¿Desde cuándo tiene problemas de sueño y cuántas noches por semana ocurren?\n¿Le cuesta dormir, se despierta durante la noche o demasiado temprano?\n¿Qué rutinas, medicamentos o tratamientos ha probado?',
    problema:
        '¿Cómo afecta la falta de sueño su energía, memoria o estado de ánimo?\n¿El estrés, dolor o uso de pantallas empeora el problema?\n¿Siente que las soluciones actuales dejaron de funcionar?',
    implicacion:
        '¿Qué podría ocurrir con su trabajo o seguridad si continúa con somnolencia?\n¿Cómo impactaría el cansancio prolongado en sus relaciones y salud emocional?\n¿Qué actividades está dejando de realizar por falta de energía?',
    necesidad:
        '¿Qué cambiaría si lograra un descanso más continuo y reparador?\n¿Le interesaría combinar hábitos de sueño con acupuntura como apoyo complementario?\n¿Qué indicador le gustaría mejorar primero: tiempo para dormir, despertares o energía matutina?',
  ),
  Sintoma(
    nombre: 'Ansiedad',
    categoria: 'Emocional',
    imagen: 'assets/images/ansiedad.jpeg',
    descripcion:
        'Preocupación, miedo o tensión difíciles de controlar que pueden acompañarse de inquietud, palpitaciones, respiración rápida o problemas de sueño. Si existe una crisis intensa o riesgo de hacerse daño, se requiere ayuda profesional inmediata.',
    comoayuda:
        'La acupuntura puede brindar un espacio complementario de relajación y ayudar a reducir tensión percibida en algunas personas. No reemplaza la psicoterapia, la evaluación médica ni los medicamentos indicados para un trastorno de ansiedad.',
    objetivos:
        'Disminuir tensión física y sensación de alerta, favorecer momentos de calma y complementar las herramientas de psicoterapia, autocuidado y atención médica indicadas para la ansiedad.',
    resultados:
        'Se busca menor intensidad de la tensión, mejor descanso y mayor capacidad para realizar actividades cotidianas. El avance debe revisarse junto con el tratamiento de salud mental.',
    complementos:
        'Auriculoterapia y masaje relajante pueden disminuir la tensión física. Un diagnóstico nutricional puede revisar patrones de comida, estimulantes y deficiencias que influyen en el bienestar; no sustituyen psicoterapia, evaluación médica ni medicamentos.',
    situacion:
        '¿Desde cuándo siente ansiedad y en qué situaciones aparece con mayor intensidad?\n¿Qué síntomas físicos o pensamientos nota durante un episodio?\n¿Ha recibido apoyo psicológico o médico y qué le ha funcionado?',
    problema:
        '¿La preocupación interfiere con su sueño, concentración o decisiones?\n¿Evita lugares o actividades por temor a sentir ansiedad?\n¿Las estrategias que usa actualmente son insuficientes?',
    implicacion:
        '¿Cómo afectaría su trabajo y relaciones si la ansiedad siguiera limitándolo?\n¿Podrían el aislamiento o la falta de sueño intensificar los síntomas?\n¿Qué oportunidades podría perder al continuar evitando ciertas situaciones?',
    necesidad:
        '¿Qué actividad retomaría si pudiera manejar mejor la tensión?\n¿Le interesaría complementar su atención psicológica o médica con acupuntura para relajación?\n¿Qué señal concreta le mostraría que está recuperando calma y control?',
  ),
  Sintoma(
    nombre: 'Bienestar emocional',
    categoria: 'Emocional',
    imagen: 'assets/images/acuemocional.png',
    descripcion:
        'Cambios persistentes de ánimo, irritabilidad, tristeza o dificultad para regular las emociones que afectan el bienestar cotidiano. Estos cambios merecen atención profesional cuando son intensos, prolongados o interfieren con la vida diaria.',
    comoayuda:
        'La acupuntura puede utilizarse como complemento para promover relajación y disminuir tensión física asociada al estrés. No trata por sí sola una depresión u otro trastorno del ánimo ni sustituye el acompañamiento psicológico o psiquiátrico.',
    objetivos:
        'Promover relajación, aliviar manifestaciones físicas del estrés y apoyar rutinas de descanso y autocuidado dentro de un plan profesional de salud emocional cuando sea necesario.',
    resultados:
        'Puede percibirse menor tensión, mejor descanso y mayor disposición para las actividades diarias. Los cambios emocionales persistentes deben seguirse con el profesional correspondiente.',
    complementos:
        'Auriculoterapia y masaje relajante pueden integrarse como espacios de autocuidado. Un diagnóstico nutricional ayuda a revisar regularidad, calidad y suficiencia de la alimentación; los cambios de ánimo persistentes corresponden a profesionales de salud mental.',
    situacion:
        '¿Qué cambios emocionales ha notado y desde cuándo?\n¿Hay situaciones, horarios o síntomas físicos relacionados?\n¿Cuenta actualmente con apoyo psicológico, médico o de personas cercanas?',
    problema:
        '¿Estos cambios afectan su sueño, motivación o concentración?\n¿Le cuesta comunicarse o realizar actividades que antes disfrutaba?\n¿Las herramientas que ha utilizado le brindan alivio suficiente?',
    implicacion:
        '¿Cómo cambiarían sus relaciones si el malestar emocional continuara?\n¿Podría aumentar el aislamiento o dificultar sus responsabilidades?\n¿Qué aspectos importantes de su vida están quedando en pausa?',
    necesidad:
        '¿Qué significaría recuperar motivación y mayor estabilidad emocional?\n¿Le interesaría sumar acupuntura para relajación a un plan profesional de salud mental?\n¿Qué cambio pequeño indicaría que está avanzando?',
  ),
  Sintoma(
    nombre: 'Fascitis plantar',
    categoria: 'Dolor',
    imagen: 'assets/images/plantar.jpeg',
    descripcion:
        'Dolor en el talón o la planta del pie, a menudo más intenso en los primeros pasos de la mañana o después de descansar. Puede dificultar caminar, permanecer de pie y hacer ejercicio.',
    comoayuda:
        'La acupuntura puede complementar ejercicios, ajustes de carga y fisioterapia para ayudar a disminuir el dolor y la tensión del pie. No reemplaza la valoración de la pisada, el calzado ni una lesión persistente.',
    objetivos:
        'Reducir el dolor del talón y la tensión de la planta del pie, facilitar una pisada más cómoda y apoyar los estiramientos, ajustes de carga, calzado y fisioterapia.',
    resultados:
        'Se espera menor dolor en los primeros pasos y mayor tolerancia al caminar o permanecer de pie. El progreso se mide por dolor matutino y tiempo de actividad.',
    complementos:
        'Fisioterapia para estiramiento, fuerza y ajuste de cargas; masaje relajante o terapia de ventosas para tensión de pantorrilla. Un diagnóstico nutricional puede apoyar el control de peso, la recuperación y la salud musculoesquelética.',
    situacion:
        '¿Desde cuándo siente dolor y en qué punto del pie se concentra?\n¿Es más intenso al levantarse, caminar o permanecer de pie?\n¿Qué calzado, ejercicios o tratamientos ha utilizado?',
    problema:
        '¿Cuánto limita su capacidad para caminar, trabajar o hacer ejercicio?\n¿El dolor reaparece después de descansar o al aumentar la actividad?\n¿Las plantillas, estiramientos o medicamentos han sido insuficientes?',
    implicacion:
        '¿Qué ocurriría con su movilidad si siguiera modificando su forma de caminar?\n¿Podrían aparecer molestias en rodilla, cadera o espalda por compensación?\n¿Cómo afectaría dejar de hacer ejercicio o trabajar de pie?',
    necesidad:
        '¿Qué actividad retomaría si pudiera apoyar el pie con menos dolor?\n¿Le interesaría añadir acupuntura a sus ejercicios o rehabilitación?\n¿Qué cambio al caminar consideraría una mejoría importante?',
  ),
  Sintoma(
    nombre: 'Migraña',
    categoria: 'Neurológico',
    imagen: 'assets/images/migrana.jpeg',
    descripcion:
        'Crisis recurrentes de dolor de cabeza, con frecuencia pulsátil, que pueden acompañarse de náusea y sensibilidad a la luz o al sonido. Un dolor súbito e intensísimo o con nuevos síntomas neurológicos requiere atención urgente.',
    comoayuda:
        'La evidencia indica que la acupuntura puede ayudar a reducir la frecuencia de las migrañas en algunas personas cuando se usa como prevención complementaria. No sustituye la evaluación neurológica ni el tratamiento de una crisis o de signos de alarma.',
    objetivos:
        'Reducir la frecuencia, intensidad o duración de las crisis, apoyar la prevención y disminuir su impacto cotidiano sin sustituir medicamentos ni el seguimiento neurológico indicado.',
    resultados:
        'Algunas personas presentan menos días de migraña o crisis más manejables. Un diario de cefalea permite comparar frecuencia, duración, intensidad y uso de medicación.',
    complementos:
        'Auriculoterapia y masaje relajante pueden apoyar la relajación. Un diagnóstico nutricional ayuda a reconocer desencadenantes, hidratación y regularidad de comidas; deben integrarse al plan preventivo indicado por el profesional.',
    situacion:
        '¿Con qué frecuencia aparecen las crisis, cuánto duran y dónde siente el dolor?\n¿Tiene aura, náusea o sensibilidad a la luz y al sonido?\n¿Qué desencadenantes y tratamientos ha identificado hasta ahora?',
    problema:
        '¿Las crisis le obligan a faltar al trabajo o suspender actividades?\n¿El medicamento controla el dolor y con qué frecuencia necesita usarlo?\n¿Vive con preocupación constante por la siguiente migraña?',
    implicacion:
        '¿Cómo afectaría mantener la misma frecuencia de crisis durante los próximos meses?\n¿Qué impacto tendría en su productividad, descanso y vida familiar?\n¿Podría limitar planes importantes por miedo a un episodio?',
    necesidad:
        '¿Qué valor tendría reducir los días de migraña al mes?\n¿Le interesaría incorporar acupuntura a su plan preventivo médico?\n¿Qué resultado mediría primero: frecuencia, intensidad o duración de las crisis?',
  ),
  Sintoma(
    nombre: 'Alteraciones de la tiroides',
    categoria: 'Clínico',
    imagen: 'assets/images/tiroides.jpeg',
    descripcion:
        'Condiciones como hipotiroidismo, hipertiroidismo, Hashimoto o tiroiditis alteran la producción de hormonas y pueden afectar energía, peso, temperatura, ritmo cardiaco y ánimo. Requieren diagnóstico, análisis y seguimiento médico.',
    comoayuda:
        'La acupuntura no normaliza por sí sola las hormonas ni sustituye la medicación tiroidea. Puede considerarse únicamente como apoyo para relajación, estrés o algunas molestias, coordinada con el especialista que controla la enfermedad.',
    objetivos:
        'Apoyar la relajación, el descanso y el manejo de molestias asociadas sin modificar la medicación ni intentar sustituir el control hormonal y los análisis indicados por el especialista.',
    resultados:
        'Los resultados se limitan a bienestar, estrés o síntomas acompañantes; no se promete normalizar hormonas. Los valores tiroideos y ajustes de tratamiento corresponden al seguimiento médico.',
    complementos:
        'Auriculoterapia y masaje relajante pueden apoyar el manejo del estrés. Un diagnóstico nutricional permite adaptar la alimentación al diagnóstico y tratamiento; no regula hormonas ni reemplaza medicación, análisis o endocrinología.',
    situacion:
        '¿Cuál es su diagnóstico tiroideo y cuándo fue su último control médico?\n¿Qué síntomas persisten y cómo han cambiado sus análisis?\n¿Toma su medicamento de forma regular y ha comentado estas molestias con su especialista?',
    problema:
        '¿La fatiga, cambios de peso, temperatura o ánimo afectan su rutina?\n¿Tiene dificultad para mantener estable el seguimiento o la medicación?\n¿Qué síntoma continúa a pesar del manejo médico?',
    implicacion:
        '¿Qué podría ocurrir si modifica o suspende el tratamiento sin supervisión?\n¿Cómo impactarían los síntomas persistentes en su trabajo y bienestar?\n¿Podría retrasarse un ajuste necesario si no realiza controles?',
    necesidad:
        '¿Qué síntoma le gustaría manejar mejor sin alterar su tratamiento médico?\n¿Le interesaría usar acupuntura solo como apoyo para estrés o bienestar?\n¿Qué resultado revisaría junto con su médico para mantener un manejo seguro?',
  ),
  Sintoma(
    nombre: 'Fibromialgia',
    categoria: 'Clínico',
    imagen: 'assets/images/fibromialgia.jpeg',
    descripcion:
        'Condición crónica caracterizada por dolor generalizado, sensibilidad, fatiga, sueño no reparador y, en ocasiones, dificultad de concentración. Su manejo suele combinar varias estrategias médicas y de autocuidado.',
    comoayuda:
        'La evidencia disponible sugiere que la acupuntura puede ayudar a algunas personas a disminuir dolor y rigidez, aunque la respuesta varía. Debe integrarse al plan médico, actividad gradual, sueño y demás tratamientos recomendados.',
    objetivos:
        'Disminuir dolor y rigidez, favorecer descanso y movilidad, y apoyar una participación gradual en actividades dentro del manejo integral indicado para la fibromialgia.',
    resultados:
        'Puede haber menor intensidad del dolor, mejor sueño o mayor tolerancia a la actividad. La respuesta varía y debe medirse con metas funcionales realistas a lo largo de varias sesiones.',
    complementos:
        'Fisioterapia con actividad gradual para conservar movilidad, además de masaje relajante o auriculoterapia para tensión y descanso. Un diagnóstico nutricional apoya energía y salud general; las ventosas requieren valorar sensibilidad y tolerancia.',
    situacion:
        '¿Desde cuándo tiene dolor generalizado y qué diagnóstico recibió?\n¿Qué zonas, horarios o actividades agravan sus síntomas?\n¿Qué tratamientos y rutinas utiliza actualmente?',
    problema:
        '¿Cómo afectan el dolor y la fatiga su sueño y energía diaria?\n¿Tiene periodos de crisis que le impiden trabajar o cuidarse?\n¿Qué síntoma ha sido más difícil de controlar con su plan actual?',
    implicacion:
        '¿Cómo impactaría continuar con crisis frecuentes en su independencia?\n¿Podría disminuir aún más su actividad por miedo al dolor?\n¿Qué efecto tendría el sueño no reparador en su ánimo y concentración?',
    necesidad:
        '¿Qué actividad recuperaría si el dolor o la rigidez disminuyeran?\n¿Le interesaría probar acupuntura como parte de un manejo integral y medible?\n¿Qué objetivo sería más útil primero: dolor, sueño, movilidad o energía?',
  ),
];
