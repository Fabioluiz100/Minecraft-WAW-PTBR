Nas versões anteriores, não precisávamos ter tanto cuidado com a rotação dos suportes de armadura, pois eles se ajustavam automaticamente aos incrementos de ângulo quando próximos o suficiente. Na versão 1.15, os suportes de armadura são renderizados de acordo com a direção para a qual estão apontados, então muitos dos suportes de armadura no mundo precisam ser ajustados à rotação correta.


execute as @e[tag=noticeBoard] run function hp:1_15_rotation_snap
execute as @e[tag=turningPillar] run function hp:1_15_rotation_snap