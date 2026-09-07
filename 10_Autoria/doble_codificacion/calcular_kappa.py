"""
Calcula el coeficiente kappa de Cohen entre dos codificadores independientes
(Marcillo Ponce y un segundo integrante del equipo) sobre el mismo subconjunto
del corpus (P02, P07, P13, P16 — 25% de las 16 entrevistas).

Unidad de comparación: presencia/ausencia de cada una de las 7 categorías
finales por participante (4 participantes x 7 categorías = 28 observaciones).
Se usa este nivel de comparación, y no el fragmento individual, porque los
dos codificadores segmentaron el texto de forma distinta (distinta cantidad
y límites de fragmentos por transcripción); comparar presencia de categoría
por participante es la unidad más fina que ambas codificaciones permiten
comparar sin forzar un alineamiento subjetivo fragmento por fragmento.

Entradas:
  - hoja_codificador1_Marcillo.csv
  - hoja_codificador2_Mesias.csv

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
            cat = row[cat_col].strip()
            if needs_merge:
                cat = MERGE.get(cat, cat)
            presence[p].add(cat)
    return presence


def main():
    p1 = load_presence("hoja_codificador1_Marcillo.csv", "Categoria", "ID_evidencia", needs_merge=True)
    p2 = load_presence("hoja_codificador2_Mesias.csv", "Categoria", "Participante", needs_merge=False)

    rows = []
    rater1, rater2 = [], []
    for p in PARTS:
        for c in CATS:
            a = 1 if c in p1[p] else 0
            b = 1 if c in p2[p] else 0
            rater1.append(a)
            rater2.append(b)
            rows.append((p, c, a, b))

    n = len(rater1)
    po = sum(1 for a, b in zip(rater1, rater2) if a == b) / n
    p1_yes = sum(rater1) / n
    p2_yes = sum(rater2) / n
    pe = p1_yes * p2_yes + (1 - p1_yes) * (1 - p2_yes)
    kappa = (po - pe) / (1 - pe)

    se = math.sqrt(po * (1 - po) / (n * (1 - pe) ** 2))
    z = 1.96
    ci_low, ci_high = kappa - z * se, kappa + z * se

    with open("resultado_kappa.csv", "w", newline="", encoding="utf-8") as f:
        w = csv.writer(f)
        w.writerow(["Participante", "Categoria", "Codificador1_Marcillo", "Codificador2_independiente"])
        for r in rows:
            w.writerow(r)
        w.writerow([])
        w.writerow(["N_observaciones", n])
        w.writerow(["Acuerdo_observado_po", round(po, 4)])
        w.writerow(["Acuerdo_esperado_azar_pe", round(pe, 4)])
        w.writerow(["Kappa_Cohen", round(kappa, 4)])
        w.writerow(["Error_estandar_aprox", round(se, 4)])
        w.writerow(["IC_95_inferior", round(ci_low, 4)])
        w.writerow(["IC_95_superior", round(ci_high, 4)])

    print(f"N={n}  po={po:.4f}  pe={pe:.4f}  kappa={kappa:.4f}  IC95=[{ci_low:.4f}, {ci_high:.4f}]")


if __name__ == "__main__":
    main()
