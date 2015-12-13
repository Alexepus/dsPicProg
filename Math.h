/* 
 * Математика и расчетные функции
 */
#ifndef MATH_H
#define	MATH_H

// Линейная интерполяция
// A - аргумент, для которого нужно найти приближенное значение
// ALeft - аргумент, которому соответствует значение BLeft
// ARight - аргумент, которому соответствует значение BRight
// ALeft < ARight
int linterp(int A, int ALeft, int ARight, int BLeft, int BRight);

#endif	/* MATH_H */

