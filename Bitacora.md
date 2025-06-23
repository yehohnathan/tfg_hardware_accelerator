Validaciones del proyecto: 🗹 🗷 ☐
1. Paso de datos positivos y negativos 						🗹
2. Binarización de datos positivos y negativos 				🗹
3. Pasada positiva por la capa oculta y capa de salida 		☐
4. Pasada negativa por la capa oculta y capa de salida		☐

### Problemas que hay que arreglar antes de continuar:
1. En el estado actual de los pesos no pueden discriminar entre los digitos de 0 al 9 (10 clases). Esto es algo que Hinton sugiera, que sin supervisión explícita, las capas sólo aprenderan a distinguir datos reales de negativos.

	Si bien estructuralmente hablando los pesos W1 y W2 tienen las dimenciones para la clasificación son correctas, no se aprovecha porque unicamente esta clasificando entre datos reales y gatos negativos.
	
### Solución al problema:
