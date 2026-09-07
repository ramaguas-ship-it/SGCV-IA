"""
Calcula el coeficiente kappa de Cohen entre dos codificadores independientes
(Marcillo Ponce Alberto Jeanpool y Mesias Quijije Jhon Alexander) sobre el
mismo subconjunto del corpus (P02, P07, P13, P16 — 25% de las 16 entrevistas).
Unidad de comparación: presencia/ausencia de cada una de las 7 categorías
finales por participante (4 participantes x 7 categorías = 28 observaciones).
Se usa este nivel de comparación, y no el fragmento individual, porque los
dos codificadores segmentaron el texto de forma distinta (distinta cantidad
y límites de fragmentos por transcripción); comparar presencia de categoría
por participante es la unidad más fina que ambas codificaciones permiten
comparar sin forzar un alineamiento subjetivo fragmento por fragmento.
Entradas:
  - hoja_codificador1_Marcillo.csv   (codificación original de Marcillo Ponce Alberto Jeanpool)
  - hoja_codificador2_Mesias.csv     (codificación independiente de Mesias Quijije Jhon Alexander)
Salida:
  - resultado_kappa.csv
"""
import csv
import math
from collections import defaultdict
MERGE = {
    "Historia clínica": "Historia clínica y gestión de pacientes",
    "Gestión de pacientes": "Historia clínica y gestión de pacientes",
    "Facturación": "Gestión administrativa y financiera",
    "Administración": "Gestión administrativa y financiera",
    "Inventario": "Inventario",
    "Citas": "Citas y comunicación con propietarios",
    "Comunicación": "Citas y comunicación con propietarios",
    "Inteligencia Artificial": "Inteligencia Artificial",
    "Usabilidad": "Usabilidad y desempeño",
    "Rendimiento": "Usabilidad y desempeño",
    "Seguridad": "Seguridad",
}
CATS = [
    "Historia clínica y gestión de pacientes",
    "Gestión administrativa y financiera",
    "Inventario",
    "Citas y comunicación con propietarios",
    "Inteligencia Artificial",
    "Usabilidad y desempeño",
    "Seguridad",
]
PARTS = ["P02", "P07", "P13", "P16"]
def load_presence(path, cat_col, part_col, needs_merge):
    presence = {p: set() for p in PARTS}
    with open(path, encoding="utf-8-sig") as f:
        for row in csv.DictReader(f):
            p = row[part_col].strip()
            if p not in PARTS:
                continue
