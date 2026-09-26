#include <stdio.h>
#include <stdlib.h>
#include <math.h>
// #define M_PI 3.14159265358979323846

void f1(int n)
{
  int *tab = malloc(n * sizeof(int));
  for (int i = 0; i < n; i++)
  {
    tab[i] = i;
  }
  for (int i = 0; i < n; i++)
  {
    //printf("%d\n", tab[i]);
  }
  free(tab);
}

struct point
{
  float x;
  float y;
};
typedef struct point point;

point init_point(float norme, float angle_radians)
{
  point p = {.x = norme * cos(angle_radians),
             .y = norme * sin(angle_radians)};
  return p;
}

void f2(int n, float l)
{
  point *p = malloc(n*sizeof(point));
  float angle = 2.0 * M_PI / n;
  for (int i = 0; i < n; i++)
  {
    p[i] = init_point(l, i * angle);
  }
  free(p);
}

int f3(int n)
{
  int *tab = malloc(n * sizeof(int));
  for (int i = 0; i < n; i++)
  {
    tab[i] = i;
  }
  free(tab);
}

void f4(int n)
{
  int *tab = malloc(n * sizeof(int));
  for (int i = 0; i < n; i++)
  {
    tab[i] = i;
  }
  free(tab);
}

point *return_same(point *p)
{
  return p;
}

void f5()
{
  point p = init_point(4., M_PI / 4);
  return_same(&p);
}

void f6()
{
  int n = 10;
  int t[10];
  for (int i = 0; i < n; i++)
  {
    t[i] = i;
  }
  for (int i = 0; i < n; i++)
  {
    printf("%d\n", t[i]);
  }
}

int main()
{
  f1(10);
  f2(10, 4.0);
  f3(10);
  f4(10);
  f5();
  f6();
  return 0;
}
