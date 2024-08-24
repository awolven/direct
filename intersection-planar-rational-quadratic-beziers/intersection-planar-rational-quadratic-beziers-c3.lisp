(in-package :direct)

(defun planar-rational-quadratic-bezier/planar-rational-quadratic-bezier-c3
    (xa0 ya0 wa0 xa1 ya1 wa1 xa2 ya2 wa2 xb0 yb0 wb0 xb1 yb1 wb1 xb2 yb2 wb2)
  (LET* ((G983 (EXPT WA0 2))
	 (G984 (EXPT WA2 2))
	 (G985 (EXPT WB0 2))
	 (G987 (* 12 G983 G984 WB0 WB1))
	 (G988 (EXPT WB1 2))
	 (G992 (+ (* -4 G983 G984 WB0) (* 4 G983 G984 WB1)))
	 (G994
           (+ (* -4 G983 G984 G985) G987 (* -8 G983 G984 G988)
              (* G992 WB2)))
	 (G995 (EXPT XA2 2))
	 (G997 (* 8 G983 G984 G985))
	 (G998 (* -12 G983 G984 WB0 WB1))
	 (G1000 (+ G997 G998 (* 4 G983 G984 WB0 WB2)))
	 (G1002 (EXPT XB0 2))
	 (G1003 (* -4 G983 G984 G985 G1002))
	 (G1004 (* 16 G983 G984 G988))
	 (G1006 (+ G998 G1004 (* -4 G983 G984 WB1 WB2)))
	 (G1008 (* 12 G983 G984 WB0 WB1 XB0))
	 (G1011 (EXPT XB1 2))
	 (G1012 (* -8 G983 G984 G988 G1011))
	 (G1015 (+ (* 4 G983 G984 WB0) (* -4 G983 G984 WB1)))
	 (G1017 (* -4 G983 G984 WB0 WB2 XB0))
	 (G1018 (* 4 G983 G984 WB1 WB2 XB1))
	 (G1024 (EXPT WA1 2))
	 (G1025 (* 16 WA0 G1024 WA2 G985))
	 (G1026 (* -48 WA0 G1024 WA2 WB0 WB1))
	 (G1027 (* 32 WA0 G1024 WA2 G988))
	 (G1030 (+ (* 16 WA0 G1024 WA2 WB0) (* -16 WA0 G1024 WA2 WB1)))
	 (G1032 (+ G1025 G1026 G1027 (* G1030 WB2)))
	 (G1034 (* -16 WA0 G1024 WA2 G985))
	 (G1035 (* 24 WA0 G1024 WA2 WB0 WB1))
	 (G1037 (+ G1034 G1035 (* -8 WA0 G1024 WA2 WB0 WB2)))
	 (G1038 (* G1037 XA1))
	 (G1042 (* 16 WA0 G1024 WA2 G985 G1002))
	 (G1043 (* -32 WA0 G1024 WA2 G988))
	 (G1045 (+ G1035 G1043 (* 8 WA0 G1024 WA2 WB1 WB2)))
	 (G1046 (* G1045 XA1))
	 (G1048 (* -48 WA0 G1024 WA2 WB0 WB1 XB0))
	 (G1051 (* 32 WA0 G1024 WA2 G988 G1011))
	 (G1054 (+ (* -8 WA0 G1024 WA2 WB0) (* 8 WA0 G1024 WA2 WB1)))
	 (G1055 (* G1054 WB2 XA1))
	 (G1057 (* 16 WA0 G1024 WA2 WB0 WB2 XB0))
	 (G1058 (* -16 WA0 G1024 WA2 WB1 WB2 XB1))
	 (G1068
           (+ G1034 (* 48 WA0 G1024 WA2 WB0 WB1) G1043
              (* (+ (* -16 WA0 G1024 WA2 WB0) (* 16 WA0 G1024 WA2 WB1)) WB2)))
	 (G1070 (* -24 WA0 G1024 WA2 WB0 WB1))
	 (G1072 (+ G1025 G1070 (* 8 WA0 G1024 WA2 WB0 WB2)))
	 (G1079 (+ G1070 G1027 (* -8 WA0 G1024 WA2 WB1 WB2)))
	 (G1088 (+ (* 8 WA0 G1024 WA2 WB0) (* -8 WA0 G1024 WA2 WB1)))
	 (G1098 (EXPT XA1 2))
	 (G1109
           (+ (* -8 G983 G984 G985) G987 (* -4 G983 G984 WB0 WB2)))
	 (G1110 (* G1109 XA0))
	 (G1113
           (+ (* 32 WA0 G1024 WA2 G985) G1026
              (* 16 WA0 G1024 WA2 WB0 WB2)))
	 (G1120 (+ (* -16 WA0 G1024 WA2) (* 8 G983 G984)))
	 (G1124
           (+ G987 (* -16 G983 G984 G988) (* 4 G983 G984 WB1 WB2)))
	 (G1125 (* G1124 XA0))
	 (G1128
           (+ G1026 (* 64 WA0 G1024 WA2 G988)
              (* -16 WA0 G1024 WA2 WB1 WB2)))
	 (G1133 (+ (* 48 WA0 G1024 WA2) (* -24 G983 G984)))
	 (G1139 (+ (* -32 WA0 G1024 WA2) (* 16 G983 G984)))
	 (G1141 (* G992 WB2 XA0))
	 (G1147 (+ (* 16 WA0 G1024 WA2) (* -8 G983 G984)))
	 (G1167 (EXPT XA0 2))
	 (G1179 (* G1072 G1098))
	 (G1184 (* -16 WA0 G1024 WA2 G985 XA1))
	 (G1189 (* 24 WA0 G1024 WA2 WB0 WB1 XA1))
	 (G1192 (+ (* -24 WA0 G1024 WA2) (* 12 G983 G984)))
	 (G1194
           (+ (* -12 G983 G984 WB0 WB1 XA0) G1189 (* G1192 WB0 WB1 XA2)))
	 (G1197 (* -8 WA0 G1024 WA2 WB0 WB2 XA1))
	 (G1200 (+ (* 8 WA0 G1024 WA2) (* -4 G983 G984)))
	 (G1202
           (+ (* 4 G983 G984 WB0 WB2 XA0) G1197 (* G1200 WB0 WB2 XA2)))
	 (G1206 (* G1037 XA0 XA1))
	 (G1216 (* -48 WA0 G1024 WA2 WB0 WB1 XA1))
	 (G1218
           (+ (* 24 WA0 G1024 WA2 WB0 WB1 XA0) G1216
              (* 24 WA0 G1024 WA2 WB0 WB1 XA2)))
	 (G1221 (* 16 WA0 G1024 WA2 WB0 WB2 XA1))
	 (G1223
           (+ (* -8 WA0 G1024 WA2 WB0 WB2 XA0) G1221
              (* -8 WA0 G1024 WA2 WB0 WB2 XA2)))
	 (G1235
           (+ (* G1192 WB0 WB1 XA0) G1189 (* -12 G983 G984 WB0 WB1 XA2)))
	 (G1239
           (+ (* G1200 WB0 WB2 XA0) G1197 (* 4 G983 G984 WB0 WB2 XA2)))
	 (G1256 (* G1079 G1098))
	 (G1262 (* -32 WA0 G1024 WA2 G988 XA1))
	 (G1265 (+ (* 32 WA0 G1024 WA2) (* -16 G983 G984)))
	 (G1270 (* 8 WA0 G1024 WA2 WB1 WB2 XA1))
	 (G1273 (+ (* -8 WA0 G1024 WA2) (* 4 G983 G984)))
	 (G1275
           (+ (* -4 G983 G984 WB1 WB2 XA0) G1270 (* G1273 WB1 WB2 XA2)))
	 (G1279 (* G1045 XA0 XA1))
	 (G1290 (* -16 WA0 G1024 WA2 WB1 WB2 XA1))
	 (G1292
           (+ (* 8 WA0 G1024 WA2 WB1 WB2 XA0) G1290
              (* 8 WA0 G1024 WA2 WB1 WB2 XA2)))
	 (G1305
           (+ (* G1273 WB1 WB2 XA0) G1270 (* -4 G983 G984 WB1 WB2 XA2)))
	 (G1331 (* G1088 WB2 G1098))
	 (G1339 (* G1054 WB2 XA0 XA1)))
    (+
     (*
      (+ (* G994 G995) (* G1000 XA2 XB0) G1003
	 (* (+ (* G1006 XA2) G1008) XB1) G1012
	 (* (+ (* G1015 WB2 XA2) G1017 G1018) XB2))
      (EXPT YA0 2))
     (*
      (+ (* G1032 XA1 XA2) (* (+ G1038 (* G1037 XA2)) XB0) G1042
	 (* (+ G1046 (* G1045 XA2) G1048) XB1) G1051
	 (* (+ G1055 (* G1054 WB2 XA2) G1057 G1058) XB2))
      YA0 YA1)
     (*
      (+ (* G1068 XA0 XA2) (* (+ (* G1072 XA0) (* G1072 XA2)) XB0)
	 (* -16 WA0 G1024 WA2 G985 G1002)
	 (*
          (+ (* G1079 XA0) (* G1079 XA2) (* 48 WA0 G1024 WA2 WB0 WB1 XB0))
          XB1)
	 (* -32 WA0 G1024 WA2 G988 G1011)
	 (*
          (+ (* G1088 WB2 XA0) (* G1088 WB2 XA2)
             (* -16 WA0 G1024 WA2 WB0 WB2 XB0)
             (* 16 WA0 G1024 WA2 WB1 WB2 XB1))
          XB2))
      (EXPT YA1 2))
     (*
      (+
       (*
	(+ (* G1068 G1098)
           (*
            (+ G997 (* -24 G983 G984 WB0 WB1) G1004
               (* (+ (* 8 G983 G984 WB0) (* -8 G983 G984 WB1)) WB2))
            XA0 XA2)
           (* (+ G1110 (* G1113 XA1) (* G1109 XA2)) XB0)
           (* G1120 G985 G1002)
           (* (+ G1125 (* G1128 XA1) (* G1124 XA2) (* G1133 WB0 WB1 XB0))
              XB1)
           (* G1139 G988 G1011)
           (*
            (+ G1141 (* G1030 WB2 XA1) (* G992 WB2 XA2)
               (* G1120 WB0 WB2 XB0) (* G1147 WB1 WB2 XB1))
            XB2))
	YA0)
       (*
	(+ (* G1032 XA0 XA1) (* (+ (* G1037 XA0) G1038) XB0) G1042
           (* (+ (* G1045 XA0) G1046 G1048) XB1) G1051
           (* (+ (* G1054 WB2 XA0) G1055 G1057 G1058) XB2))
	YA1))
      YA2)
     (*
      (+ (* G994 G1167) (* G1000 XA0 XB0) G1003
	 (* (+ (* G1006 XA0) G1008) XB1) G1012
	 (* (+ (* G1015 WB2 XA0) G1017 G1018) XB2))
      (EXPT YA2 2))
     (*
      (+
       (*
	(+ G1179 (* (+ G1110 G1038) XA2) (* G1000 G995)
           (* (+ (* 8 G983 G984 G985 XA0) G1184 (* G1147 G985 XA2))
              XB0)
           (* G1194 XB1) (* G1202 XB2))
	YA0)
       (*
	(+ G1206 (* (+ (* G1113 XA0) G1038) XA2)
           (*
            (+ (* -16 WA0 G1024 WA2 G985 XA0)
               (* 32 WA0 G1024 WA2 G985 XA1)
               (* -16 WA0 G1024 WA2 G985 XA2))
            XB0)
           (* G1218 XB1) (* G1223 XB2))
	YA1)
       (*
	(+ (* G1000 G1167) G1206 G1179 (* G1109 XA0 XA2)
           (* (+ (* G1147 G985 XA0) G1184 (* 8 G983 G984 G985 XA2))
              XB0)
           (* G1235 XB1) (* G1239 XB2))
	YA2))
      YB0)
     (*
      (+ (* -4 G983 G984 G985 G1167)
	 (* 16 WA0 G1024 WA2 G985 XA0 XA1)
	 (* -16 WA0 G1024 WA2 G985 G1098)
	 (* (+ (* G1120 G985 XA0) (* 16 WA0 G1024 WA2 G985 XA1)) XA2)
	 (* -4 G983 G984 G985 G995))
      (EXPT YB0 2))
     (*
      (+
       (*
	(+ G1256 (* (+ G1125 G1046) XA2) (* G1006 G995) (* G1194 XB0)
           (* (+ (* 16 G983 G984 G988 XA0) G1262 (* G1265 G988 XA2))
              XB1)
           (* G1275 XB2))
	YA0)
       (*
	(+ G1279 (* (+ (* G1128 XA0) G1046) XA2) (* G1218 XB0)
           (*
            (+ (* -32 WA0 G1024 WA2 G988 XA0)
               (* 64 WA0 G1024 WA2 G988 XA1)
               (* -32 WA0 G1024 WA2 G988 XA2))
            XB1)
           (* G1292 XB2))
	YA1)
       (*
	(+ (* G1006 G1167) G1279 G1256 (* G1124 XA0 XA2)
           (* G1235 XB0)
           (* (+ (* G1265 G988 XA0) G1262 (* 16 G983 G984 G988 XA2))
              XB1)
           (* G1305 XB2))
	YA2)
       (*
	(+ (* 12 G983 G984 WB0 WB1 G1167)
           (* -48 WA0 G1024 WA2 WB0 WB1 XA0 XA1)
           (* 48 WA0 G1024 WA2 WB0 WB1 G1098)
           (* (+ (* G1133 WB0 WB1 XA0) G1216) XA2)
           (* 12 G983 G984 WB0 WB1 G995))
	YB0))
      YB1)
     (*
      (+ (* -8 G983 G984 G988 G1167)
	 (* 32 WA0 G1024 WA2 G988 XA0 XA1)
	 (* -32 WA0 G1024 WA2 G988 G1098)
	 (* (+ (* G1139 G988 XA0) (* 32 WA0 G1024 WA2 G988 XA1)) XA2)
	 (* -8 G983 G984 G988 G995))
      (EXPT YB1 2))
     (*
      (+
       (*
	(+ G1331 (* (+ G1141 G1055) XA2) (* G1015 WB2 G995)
           (* G1202 XB0) (* G1275 XB1))
	YA0)
       (*
	(+ G1339 (* (+ (* G1030 WB2 XA0) G1055) XA2) (* G1223 XB0)
           (* G1292 XB1))
	YA1)
       (*
	(+ (* G1015 WB2 G1167) G1339 G1331 (* G992 WB2 XA0 XA2)
           (* G1239 XB0) (* G1305 XB1))
	YA2)
       (*
	(+ (* -4 G983 G984 WB0 WB2 G1167)
           (* 16 WA0 G1024 WA2 WB0 WB2 XA0 XA1)
           (* -16 WA0 G1024 WA2 WB0 WB2 G1098)
           (* (+ (* G1120 WB0 WB2 XA0) G1221) XA2)
           (* -4 G983 G984 WB0 WB2 G995))
	YB0)
       (*
	(+ (* 4 G983 G984 WB1 WB2 G1167)
           (* -16 WA0 G1024 WA2 WB1 WB2 XA0 XA1)
           (* 16 WA0 G1024 WA2 WB1 WB2 G1098)
           (* (+ (* G1147 WB1 WB2 XA0) G1290) XA2)
           (* 4 G983 G984 WB1 WB2 G995))
	YB1))
      YB2))))
