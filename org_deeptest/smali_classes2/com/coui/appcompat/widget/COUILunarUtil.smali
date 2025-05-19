.class public Lcom/coui/appcompat/widget/COUILunarUtil;
.super Ljava/lang/Object;
.source "COUILunarUtil.java"


# static fields
.field private static final ALL_SC_SOLAR_TERM_NAMES:[Ljava/lang/String;

.field private static final ALL_TC_SOLAR_TERM_NAMES:[Ljava/lang/String;

.field private static final CHINESE_NUMBER:[Ljava/lang/String;

.field public static final DECREATE_A_LUANR_YEAR:I = -0x1

.field private static final DEFAULT_END_YEAR:I = 0x834

.field private static final DEFAULT_START_YEAR:I = 0x76c

.field private static final HIGH_BIT_VALUE:I = 0x8000

.field public static final INCREASE_A_LUANR_YEAR:I = 0x1

.field private static final LAUN_LEAP_MONTH_DAYS:I = 0x1d

.field private static final LAUN_MONTH_DAYS:I = 0x1e

.field private static final LEAPMONTH_BIT_FLAG:I = 0xf

.field private static final LEAPMONTH_BIT_MASK:I = 0x10000

.field public static final LEAP_MONTH:I = 0x0

.field private static final LOW_BIT_VALUE:I = 0x8

.field private static final LUNAR_INFO:[J

.field private static final MAX_YEAR:I = 0x801

.field private static final MIN_YEAR:I = 0x76c

.field public static final NORMAL_MONTH:I = 0x1

.field private static final SOLAR_TERM_DAYS:[[I

.field private static final START_DATE:Ljava/lang/String; = "19000130"

.field private static final TAG:Ljava/lang/String; = "COUILunar"

.field private static final YEAR_OF_MONTH:I = 0xc

.field private static sChineseDateFormat:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 25

    .line 67
    const-string v0, "\u4e00"

    const-string v1, "\u4e8c"

    const-string v2, "\u4e09"

    const-string v3, "\u56db"

    const-string v4, "\u4e94"

    const-string v5, "\u516d"

    const-string v6, "\u4e03"

    const-string v7, "\u516b"

    const-string v8, "\u4e5d"

    const-string v9, "\u5341"

    const-string v10, "\u5341\u4e00"

    const-string v11, "\u5341\u4e8c"

    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coui/appcompat/widget/COUILunarUtil;->CHINESE_NUMBER:[Ljava/lang/String;

    .line 72
    const-string v1, "\u5c0f\u5bd2"

    const-string v2, "\u5927\u5bd2"

    const-string v3, "\u7acb\u6625"

    const-string v4, "\u96e8\u6c34"

    const-string v5, "\u60ca\u86f0"

    const-string v6, "\u6625\u5206"

    const-string v7, "\u6e05\u660e"

    const-string v8, "\u8c37\u96e8"

    const-string v9, "\u7acb\u590f"

    const-string v10, "\u5c0f\u6ee1"

    const-string v11, "\u8292\u79cd"

    const-string v12, "\u590f\u81f3"

    const-string v13, "\u5c0f\u6691"

    const-string v14, "\u5927\u6691"

    const-string v15, "\u7acb\u79cb"

    const-string v16, "\u5904\u6691"

    const-string v17, "\u767d\u9732"

    const-string v18, "\u79cb\u5206"

    const-string v19, "\u5bd2\u9732"

    const-string v20, "\u971c\u964d"

    const-string v21, "\u7acb\u51ac"

    const-string v22, "\u5c0f\u96ea"

    const-string v23, "\u5927\u96ea"

    const-string v24, "\u51ac\u81f3"

    filled-new-array/range {v1 .. v24}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coui/appcompat/widget/COUILunarUtil;->ALL_SC_SOLAR_TERM_NAMES:[Ljava/lang/String;

    .line 75
    const-string v1, "\u5c0f\u5bd2"

    const-string v2, "\u5927\u5bd2"

    const-string v3, "\u7acb\u6625"

    const-string v4, "\u96e8\u6c34"

    const-string v5, "\u9a5a\u87c4"

    const-string v6, "\u6625\u5206"

    const-string v7, "\u6e05\u660e"

    const-string v8, "\u7a40\u96e8"

    const-string v9, "\u7acb\u590f"

    const-string v10, "\u5c0f\u6eff"

    const-string v11, "\u8292\u7a2e"

    const-string v12, "\u590f\u81f3"

    const-string v13, "\u5c0f\u6691"

    const-string v14, "\u5927\u6691"

    const-string v15, "\u7acb\u79cb"

    const-string v16, "\u8655\u6691"

    const-string v17, "\u767d\u9732"

    const-string v18, "\u79cb\u5206"

    const-string v19, "\u5bd2\u9732"

    const-string v20, "\u971c\u964d"

    const-string v21, "\u7acb\u51ac"

    const-string v22, "\u5c0f\u96ea"

    const-string v23, "\u5927\u96ea"

    const-string v24, "\u51ac\u81f3"

    filled-new-array/range {v1 .. v24}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coui/appcompat/widget/COUILunarUtil;->ALL_TC_SOLAR_TERM_NAMES:[Ljava/lang/String;

    .line 79
    const/16 v0, 0x96

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/coui/appcompat/widget/COUILunarUtil;->LUNAR_INFO:[J

    .line 100
    const/16 v0, 0x43

    new-array v0, v0, [[I

    const/16 v1, 0x18

    new-array v2, v1, [I

    fill-array-data v2, :array_1

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_2

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_3

    const/4 v3, 0x2

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_4

    const/4 v3, 0x3

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_5

    const/4 v3, 0x4

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_6

    const/4 v3, 0x5

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_7

    const/4 v3, 0x6

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_8

    const/4 v3, 0x7

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_9

    const/16 v3, 0x8

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_a

    const/16 v3, 0x9

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_b

    const/16 v3, 0xa

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_c

    const/16 v3, 0xb

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_d

    const/16 v3, 0xc

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_e

    const/16 v3, 0xd

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_f

    const/16 v3, 0xe

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_10

    const/16 v3, 0xf

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_11

    const/16 v3, 0x10

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_12

    const/16 v3, 0x11

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_13

    const/16 v3, 0x12

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_14

    const/16 v3, 0x13

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_15

    const/16 v3, 0x14

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_16

    const/16 v3, 0x15

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_17

    const/16 v3, 0x16

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_18

    const/16 v3, 0x17

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_19

    aput-object v2, v0, v1

    new-array v2, v1, [I

    fill-array-data v2, :array_1a

    const/16 v3, 0x19

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_1b

    const/16 v3, 0x1a

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_1c

    const/16 v3, 0x1b

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_1d

    const/16 v3, 0x1c

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_1e

    const/16 v3, 0x1d

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_1f

    const/16 v3, 0x1e

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_20

    const/16 v3, 0x1f

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_21

    const/16 v3, 0x20

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_22

    const/16 v3, 0x21

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_23

    const/16 v3, 0x22

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_24

    const/16 v3, 0x23

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_25

    const/16 v3, 0x24

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_26

    const/16 v3, 0x25

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_27

    const/16 v3, 0x26

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_28

    const/16 v3, 0x27

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_29

    const/16 v3, 0x28

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_2a

    const/16 v3, 0x29

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_2b

    const/16 v3, 0x2a

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_2c

    const/16 v3, 0x2b

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_2d

    const/16 v3, 0x2c

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_2e

    const/16 v3, 0x2d

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_2f

    const/16 v3, 0x2e

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_30

    const/16 v3, 0x2f

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_31

    const/16 v3, 0x30

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_32

    const/16 v3, 0x31

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_33

    const/16 v3, 0x32

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_34

    const/16 v3, 0x33

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_35

    const/16 v3, 0x34

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_36

    const/16 v3, 0x35

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_37

    const/16 v3, 0x36

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_38

    const/16 v3, 0x37

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_39

    const/16 v3, 0x38

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_3a

    const/16 v3, 0x39

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_3b

    const/16 v3, 0x3a

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_3c

    const/16 v3, 0x3b

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_3d

    const/16 v3, 0x3c

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_3e

    const/16 v3, 0x3d

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_3f

    const/16 v3, 0x3e

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_40

    const/16 v3, 0x3f

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_41

    const/16 v3, 0x40

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_42

    const/16 v3, 0x41

    aput-object v2, v0, v3

    new-array v1, v1, [I

    fill-array-data v1, :array_43

    const/16 v2, 0x42

    aput-object v1, v0, v2

    sput-object v0, Lcom/coui/appcompat/widget/COUILunarUtil;->SOLAR_TERM_DAYS:[[I

    .line 169
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy\u5e74MM\u6708dd\u65e5"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/coui/appcompat/widget/COUILunarUtil;->sChineseDateFormat:Ljava/text/SimpleDateFormat;

    return-void

    :array_0
    .array-data 8
        0x4bd8
        0x4ae0
        0xa570
        0x54d5
        0xd260
        0xd950
        0x16554
        0x56a0
        0x9ad0
        0x55d2
        0x4ae0
        0xa5b6
        0xa4d0
        0xd250
        0x1d255
        0xb540
        0xd6a0
        0xada2
        0x95b0
        0x14977
        0x4970
        0xa4b0
        0xb4b5
        0x6a50
        0x6d40
        0x1ab54
        0x2b60
        0x9570
        0x52f2
        0x4970
        0x6566
        0xd4a0
        0xea50
        0x16a95
        0x5ad0
        0x2b60
        0x186e3
        0x92e0
        0x1c8d7
        0xc950
        0xd4a0
        0x1d8a6
        0xb550
        0x56a0
        0x1a5b4
        0x25d0
        0x92d0
        0xd2b2
        0xa950
        0xb557
        0x6ca0
        0xb550
        0x15355
        0x4da0
        0xa5b0
        0x14573
        0x52b0
        0xa9a8
        0xe950
        0x6aa0
        0xaea6
        0xab50
        0x4b60
        0xaae4
        0xa570
        0x5260
        0xf263
        0xd950
        0x5b57
        0x56a0
        0x96d0
        0x4dd5
        0x4ad0
        0xa4d0
        0xd4d4
        0xd250
        0xd558
        0xb540
        0xb6a0
        0x195a6
        0x95b0
        0x49b0
        0xa974
        0xa4b0
        0xb27a
        0x6a50
        0x6d40
        0xaf46
        0xab60
        0x9570
        0x4af5
        0x4970
        0x64b0
        0x74a3
        0xea50
        0x6b58
        0x5ac0
        0xab60
        0x96d5
        0x92e0
        0xc960
        0xd954
        0xd4a0
        0xda50
        0x7552
        0x56a0
        0xabb7
        0x25d0
        0x92d0
        0xcab5
        0xa950
        0xb4a0
        0xbaa4
        0xad50
        0x55d9
        0x4ba0
        0xa5b0
        0x15176
        0x52b0
        0xa930
        0x7954
        0x6aa0
        0xad50
        0x5b52
        0x4b60
        0xa6e6
        0xa4e0
        0xd260
        0xea65
        0xd530
        0x5aa0
        0x76a3
        0x96d0
        0x4afb
        0x4ad0
        0xa4d0
        0x1d0b6
        0xd250
        0xd520
        0xdd45
        0xb5a0
        0x56d0
        0x55b2
        0x49b0
        0xa577
        0xa4b0
        0xaa50
        0x1b255
        0x6d20
        0xada0
    .end array-data

    :array_1
    .array-data 4
        0x6
        0x14
        0x4
        0x13
        0x6
        0x15
        0x5
        0x14
        0x6
        0x15
        0x6
        0x16
        0x7
        0x17
        0x8
        0x17
        0x8
        0x17
        0x9
        0x18
        0x8
        0x17
        0x7
        0x16
    .end array-data

    :array_2
    .array-data 4
        0x6
        0x15
        0x4
        0x13
        0x6
        0x15
        0x5
        0x15
        0x6
        0x16
        0x6
        0x16
        0x8
        0x17
        0x8
        0x18
        0x8
        0x18
        0x9
        0x18
        0x8
        0x17
        0x8
        0x16
    .end array-data

    :array_3
    .array-data 4
        0x6
        0x15
        0x5
        0x13
        0x5
        0x14
        0x5
        0x14
        0x5
        0x15
        0x5
        0x15
        0x7
        0x17
        0x7
        0x17
        0x7
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x16
    .end array-data

    :array_4
    .array-data 4
        0x5
        0x14
        0x4
        0x13
        0x6
        0x15
        0x5
        0x14
        0x6
        0x15
        0x6
        0x15
        0x7
        0x17
        0x8
        0x17
        0x8
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x16
    .end array-data

    :array_5
    .array-data 4
        0x6
        0x14
        0x4
        0x13
        0x6
        0x15
        0x5
        0x14
        0x6
        0x15
        0x6
        0x16
        0x7
        0x17
        0x8
        0x17
        0x8
        0x17
        0x9
        0x18
        0x8
        0x16
        0x7
        0x16
    .end array-data

    :array_6
    .array-data 4
        0x6
        0x14
        0x4
        0x13
        0x6
        0x15
        0x5
        0x15
        0x6
        0x16
        0x6
        0x16
        0x8
        0x17
        0x8
        0x18
        0x8
        0x18
        0x9
        0x18
        0x8
        0x17
        0x8
        0x16
    .end array-data

    :array_7
    .array-data 4
        0x6
        0x15
        0x4
        0x13
        0x5
        0x14
        0x4
        0x14
        0x5
        0x15
        0x5
        0x15
        0x7
        0x17
        0x7
        0x17
        0x7
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x16
    .end array-data

    :array_8
    .array-data 4
        0x5
        0x14
        0x4
        0x13
        0x5
        0x15
        0x5
        0x14
        0x5
        0x15
        0x6
        0x15
        0x7
        0x17
        0x7
        0x17
        0x8
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x16
    .end array-data

    :array_9
    .array-data 4
        0x5
        0x14
        0x4
        0x13
        0x6
        0x15
        0x5
        0x14
        0x6
        0x15
        0x6
        0x16
        0x7
        0x17
        0x8
        0x17
        0x8
        0x17
        0x8
        0x18
        0x8
        0x17
        0x7
        0x16
    .end array-data

    :array_a
    .array-data 4
        0x6
        0x14
        0x4
        0x13
        0x6
        0x15
        0x5
        0x15
        0x6
        0x16
        0x6
        0x16
        0x8
        0x17
        0x8
        0x18
        0x8
        0x17
        0x9
        0x18
        0x8
        0x17
        0x8
        0x16
    .end array-data

    :array_b
    .array-data 4
        0x6
        0x15
        0x4
        0x13
        0x5
        0x14
        0x4
        0x14
        0x5
        0x15
        0x5
        0x15
        0x7
        0x17
        0x7
        0x17
        0x7
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x15
    .end array-data

    :array_c
    .array-data 4
        0x5
        0x14
        0x4
        0x13
        0x5
        0x15
        0x5
        0x14
        0x5
        0x15
        0x6
        0x15
        0x7
        0x17
        0x7
        0x17
        0x8
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x16
    .end array-data

    :array_d
    .array-data 4
        0x5
        0x14
        0x4
        0x13
        0x6
        0x15
        0x5
        0x14
        0x6
        0x15
        0x6
        0x16
        0x7
        0x17
        0x8
        0x17
        0x8
        0x17
        0x8
        0x18
        0x8
        0x16
        0x7
        0x16
    .end array-data

    :array_e
    .array-data 4
        0x6
        0x14
        0x4
        0x13
        0x6
        0x15
        0x5
        0x14
        0x6
        0x15
        0x6
        0x16
        0x8
        0x17
        0x8
        0x18
        0x8
        0x17
        0x9
        0x18
        0x8
        0x17
        0x8
        0x16
    .end array-data

    :array_f
    .array-data 4
        0x6
        0x15
        0x4
        0x13
        0x5
        0x14
        0x4
        0x14
        0x5
        0x15
        0x5
        0x15
        0x7
        0x17
        0x7
        0x17
        0x7
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x15
    .end array-data

    :array_10
    .array-data 4
        0x5
        0x14
        0x4
        0x13
        0x5
        0x14
        0x5
        0x14
        0x5
        0x15
        0x6
        0x15
        0x7
        0x17
        0x7
        0x17
        0x8
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x16
    .end array-data

    :array_11
    .array-data 4
        0x5
        0x14
        0x4
        0x13
        0x6
        0x15
        0x5
        0x14
        0x6
        0x15
        0x6
        0x16
        0x7
        0x17
        0x8
        0x17
        0x8
        0x17
        0x8
        0x18
        0x8
        0x16
        0x7
        0x16
    .end array-data

    :array_12
    .array-data 4
        0x6
        0x14
        0x4
        0x13
        0x6
        0x15
        0x5
        0x14
        0x6
        0x15
        0x6
        0x16
        0x8
        0x17
        0x8
        0x18
        0x8
        0x17
        0x9
        0x18
        0x8
        0x17
        0x7
        0x16
    .end array-data

    :array_13
    .array-data 4
        0x6
        0x15
        0x4
        0x13
        0x5
        0x14
        0x4
        0x14
        0x5
        0x15
        0x5
        0x15
        0x7
        0x17
        0x7
        0x17
        0x7
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x15
    .end array-data

    :array_14
    .array-data 4
        0x5
        0x14
        0x4
        0x12
        0x5
        0x14
        0x5
        0x14
        0x5
        0x15
        0x6
        0x15
        0x7
        0x17
        0x7
        0x17
        0x8
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x16
    .end array-data

    :array_15
    .array-data 4
        0x5
        0x14
        0x4
        0x13
        0x6
        0x15
        0x5
        0x14
        0x6
        0x15
        0x6
        0x15
        0x7
        0x17
        0x8
        0x17
        0x8
        0x17
        0x8
        0x18
        0x8
        0x16
        0x7
        0x16
    .end array-data

    :array_16
    .array-data 4
        0x6
        0x14
        0x4
        0x13
        0x6
        0x15
        0x5
        0x14
        0x6
        0x15
        0x6
        0x16
        0x7
        0x17
        0x8
        0x17
        0x8
        0x17
        0x9
        0x18
        0x8
        0x17
        0x7
        0x16
    .end array-data

    :array_17
    .array-data 4
        0x6
        0x15
        0x4
        0x13
        0x5
        0x14
        0x4
        0x14
        0x5
        0x15
        0x5
        0x15
        0x7
        0x16
        0x7
        0x17
        0x7
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x15
    .end array-data

    :array_18
    .array-data 4
        0x5
        0x14
        0x4
        0x12
        0x5
        0x14
        0x5
        0x14
        0x5
        0x15
        0x6
        0x15
        0x7
        0x17
        0x7
        0x17
        0x7
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x16
    .end array-data

    :array_19
    .array-data 4
        0x5
        0x14
        0x4
        0x13
        0x6
        0x15
        0x5
        0x14
        0x6
        0x15
        0x6
        0x16
        0x7
        0x17
        0x8
        0x17
        0x8
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x16
    .end array-data

    :array_1a
    .array-data 4
        0x6
        0x14
        0x4
        0x13
        0x6
        0x15
        0x5
        0x14
        0x6
        0x15
        0x6
        0x16
        0x7
        0x17
        0x8
        0x17
        0x8
        0x17
        0x9
        0x18
        0x8
        0x17
        0x7
        0x16
    .end array-data

    :array_1b
    .array-data 4
        0x6
        0x15
        0x4
        0x13
        0x5
        0x14
        0x4
        0x14
        0x5
        0x15
        0x5
        0x15
        0x7
        0x16
        0x7
        0x17
        0x7
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x15
    .end array-data

    :array_1c
    .array-data 4
        0x5
        0x14
        0x4
        0x12
        0x5
        0x14
        0x5
        0x14
        0x5
        0x15
        0x6
        0x15
        0x7
        0x17
        0x7
        0x17
        0x7
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x16
    .end array-data

    :array_1d
    .array-data 4
        0x5
        0x14
        0x4
        0x13
        0x6
        0x15
        0x5
        0x14
        0x6
        0x15
        0x6
        0x15
        0x7
        0x17
        0x8
        0x17
        0x8
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x16
    .end array-data

    :array_1e
    .array-data 4
        0x6
        0x14
        0x4
        0x13
        0x6
        0x15
        0x5
        0x14
        0x6
        0x15
        0x6
        0x16
        0x7
        0x17
        0x8
        0x17
        0x8
        0x17
        0x9
        0x18
        0x8
        0x17
        0x7
        0x16
    .end array-data

    :array_1f
    .array-data 4
        0x6
        0x15
        0x4
        0x13
        0x5
        0x14
        0x4
        0x14
        0x5
        0x15
        0x5
        0x15
        0x7
        0x16
        0x7
        0x17
        0x7
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x15
    .end array-data

    :array_20
    .array-data 4
        0x5
        0x14
        0x4
        0x12
        0x5
        0x14
        0x5
        0x14
        0x5
        0x15
        0x5
        0x15
        0x7
        0x17
        0x7
        0x17
        0x7
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x16
    .end array-data

    :array_21
    .array-data 4
        0x5
        0x14
        0x4
        0x13
        0x6
        0x15
        0x5
        0x14
        0x6
        0x15
        0x6
        0x15
        0x7
        0x17
        0x8
        0x17
        0x8
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x16
    .end array-data

    :array_22
    .array-data 4
        0x6
        0x14
        0x4
        0x13
        0x6
        0x15
        0x5
        0x14
        0x6
        0x15
        0x6
        0x16
        0x7
        0x17
        0x8
        0x17
        0x8
        0x17
        0x9
        0x18
        0x8
        0x17
        0x7
        0x16
    .end array-data

    :array_23
    .array-data 4
        0x6
        0x15
        0x4
        0x13
        0x5
        0x14
        0x4
        0x14
        0x5
        0x15
        0x5
        0x15
        0x7
        0x16
        0x7
        0x17
        0x7
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x15
    .end array-data

    :array_24
    .array-data 4
        0x5
        0x14
        0x4
        0x12
        0x5
        0x14
        0x5
        0x14
        0x5
        0x15
        0x5
        0x15
        0x7
        0x17
        0x7
        0x17
        0x7
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x16
    .end array-data

    :array_25
    .array-data 4
        0x5
        0x14
        0x4
        0x13
        0x6
        0x15
        0x5
        0x14
        0x6
        0x15
        0x6
        0x15
        0x7
        0x17
        0x8
        0x17
        0x8
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x16
    .end array-data

    :array_26
    .array-data 4
        0x6
        0x14
        0x4
        0x13
        0x6
        0x15
        0x5
        0x14
        0x6
        0x15
        0x6
        0x16
        0x7
        0x17
        0x8
        0x17
        0x8
        0x17
        0x9
        0x18
        0x8
        0x16
        0x7
        0x16
    .end array-data

    :array_27
    .array-data 4
        0x6
        0x14
        0x4
        0x13
        0x5
        0x14
        0x4
        0x14
        0x5
        0x15
        0x5
        0x15
        0x7
        0x16
        0x7
        0x17
        0x7
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x15
    .end array-data

    :array_28
    .array-data 4
        0x5
        0x14
        0x3
        0x12
        0x5
        0x14
        0x4
        0x14
        0x5
        0x15
        0x5
        0x15
        0x7
        0x17
        0x7
        0x17
        0x7
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x16
    .end array-data

    :array_29
    .array-data 4
        0x5
        0x14
        0x4
        0x13
        0x6
        0x15
        0x5
        0x14
        0x5
        0x15
        0x6
        0x15
        0x7
        0x17
        0x7
        0x17
        0x8
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x16
    .end array-data

    :array_2a
    .array-data 4
        0x6
        0x14
        0x4
        0x13
        0x6
        0x15
        0x5
        0x14
        0x6
        0x15
        0x6
        0x16
        0x7
        0x17
        0x8
        0x17
        0x8
        0x17
        0x8
        0x18
        0x8
        0x17
        0x7
        0x16
    .end array-data

    :array_2b
    .array-data 4
        0x6
        0x15
        0x4
        0x13
        0x5
        0x14
        0x4
        0x14
        0x5
        0x14
        0x5
        0x15
        0x7
        0x16
        0x7
        0x17
        0x7
        0x16
        0x8
        0x17
        0x7
        0x16
        0x7
        0x15
    .end array-data

    :array_2c
    .array-data 4
        0x5
        0x14
        0x4
        0x12
        0x5
        0x14
        0x4
        0x14
        0x5
        0x15
        0x5
        0x15
        0x7
        0x16
        0x7
        0x17
        0x7
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x16
    .end array-data

    :array_2d
    .array-data 4
        0x5
        0x14
        0x4
        0x13
        0x5
        0x15
        0x5
        0x14
        0x5
        0x15
        0x6
        0x15
        0x7
        0x17
        0x7
        0x17
        0x8
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x16
    .end array-data

    :array_2e
    .array-data 4
        0x5
        0x14
        0x4
        0x13
        0x6
        0x15
        0x5
        0x14
        0x6
        0x15
        0x6
        0x16
        0x7
        0x17
        0x8
        0x17
        0x8
        0x17
        0x8
        0x18
        0x8
        0x16
        0x7
        0x16
    .end array-data

    :array_2f
    .array-data 4
        0x6
        0x14
        0x4
        0x13
        0x5
        0x14
        0x4
        0x13
        0x5
        0x14
        0x5
        0x15
        0x7
        0x16
        0x7
        0x17
        0x7
        0x16
        0x8
        0x17
        0x7
        0x16
        0x6
        0x15
    .end array-data

    :array_30
    .array-data 4
        0x5
        0x14
        0x3
        0x12
        0x5
        0x14
        0x4
        0x14
        0x5
        0x15
        0x5
        0x15
        0x7
        0x17
        0x7
        0x17
        0x7
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x15
    .end array-data

    :array_31
    .array-data 4
        0x5
        0x14
        0x4
        0x12
        0x5
        0x14
        0x5
        0x14
        0x5
        0x15
        0x6
        0x15
        0x7
        0x17
        0x7
        0x17
        0x8
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x16
    .end array-data

    :array_32
    .array-data 4
        0x5
        0x14
        0x4
        0x13
        0x6
        0x15
        0x5
        0x14
        0x6
        0x15
        0x6
        0x15
        0x7
        0x17
        0x8
        0x17
        0x8
        0x17
        0x8
        0x18
        0x8
        0x16
        0x7
        0x16
    .end array-data

    :array_33
    .array-data 4
        0x6
        0x14
        0x4
        0x13
        0x5
        0x14
        0x4
        0x13
        0x5
        0x14
        0x5
        0x15
        0x7
        0x16
        0x7
        0x17
        0x7
        0x16
        0x8
        0x17
        0x7
        0x16
        0x6
        0x15
    .end array-data

    :array_34
    .array-data 4
        0x5
        0x14
        0x3
        0x12
        0x5
        0x14
        0x4
        0x14
        0x5
        0x15
        0x5
        0x15
        0x7
        0x16
        0x7
        0x17
        0x7
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x15
    .end array-data

    :array_35
    .array-data 4
        0x5
        0x14
        0x4
        0x12
        0x5
        0x14
        0x5
        0x14
        0x5
        0x15
        0x6
        0x15
        0x7
        0x17
        0x7
        0x17
        0x8
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x16
    .end array-data

    :array_36
    .array-data 4
        0x5
        0x14
        0x4
        0x13
        0x6
        0x15
        0x5
        0x14
        0x6
        0x15
        0x6
        0x16
        0x7
        0x17
        0x8
        0x17
        0x8
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x16
    .end array-data

    :array_37
    .array-data 4
        0x6
        0x14
        0x4
        0x13
        0x5
        0x14
        0x4
        0x13
        0x5
        0x14
        0x5
        0x15
        0x6
        0x16
        0x7
        0x17
        0x7
        0x16
        0x8
        0x17
        0x7
        0x16
        0x6
        0x15
    .end array-data

    :array_38
    .array-data 4
        0x5
        0x14
        0x3
        0x12
        0x5
        0x14
        0x4
        0x14
        0x5
        0x15
        0x5
        0x15
        0x7
        0x16
        0x7
        0x17
        0x7
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x15
    .end array-data

    :array_39
    .array-data 4
        0x5
        0x14
        0x4
        0x12
        0x5
        0x14
        0x5
        0x14
        0x5
        0x15
        0x6
        0x15
        0x7
        0x17
        0x7
        0x17
        0x7
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x16
    .end array-data

    :array_3a
    .array-data 4
        0x5
        0x14
        0x4
        0x13
        0x6
        0x15
        0x5
        0x14
        0x6
        0x15
        0x6
        0x15
        0x7
        0x17
        0x8
        0x17
        0x8
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x16
    .end array-data

    :array_3b
    .array-data 4
        0x6
        0x14
        0x4
        0x13
        0x5
        0x14
        0x4
        0x13
        0x5
        0x14
        0x5
        0x15
        0x6
        0x16
        0x7
        0x16
        0x7
        0x16
        0x8
        0x17
        0x7
        0x16
        0x6
        0x15
    .end array-data

    :array_3c
    .array-data 4
        0x5
        0x14
        0x3
        0x12
        0x5
        0x14
        0x4
        0x14
        0x5
        0x15
        0x5
        0x15
        0x7
        0x16
        0x7
        0x17
        0x7
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x15
    .end array-data

    :array_3d
    .array-data 4
        0x5
        0x14
        0x4
        0x12
        0x5
        0x14
        0x5
        0x14
        0x5
        0x15
        0x6
        0x15
        0x7
        0x17
        0x7
        0x17
        0x7
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x16
    .end array-data

    :array_3e
    .array-data 4
        0x5
        0x14
        0x4
        0x13
        0x6
        0x15
        0x5
        0x14
        0x6
        0x15
        0x6
        0x15
        0x7
        0x17
        0x8
        0x17
        0x8
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x16
    .end array-data

    :array_3f
    .array-data 4
        0x6
        0x14
        0x4
        0x13
        0x5
        0x14
        0x4
        0x13
        0x5
        0x14
        0x5
        0x15
        0x6
        0x16
        0x7
        0x16
        0x7
        0x16
        0x8
        0x17
        0x7
        0x16
        0x6
        0x15
    .end array-data

    :array_40
    .array-data 4
        0x5
        0x14
        0x3
        0x12
        0x5
        0x14
        0x4
        0x14
        0x5
        0x15
        0x5
        0x15
        0x7
        0x16
        0x7
        0x17
        0x7
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x15
    .end array-data

    :array_41
    .array-data 4
        0x5
        0x14
        0x4
        0x12
        0x5
        0x14
        0x5
        0x14
        0x5
        0x15
        0x5
        0x15
        0x7
        0x17
        0x7
        0x17
        0x7
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x16
    .end array-data

    :array_42
    .array-data 4
        0x5
        0x14
        0x4
        0x13
        0x6
        0x15
        0x5
        0x14
        0x5
        0x15
        0x6
        0x15
        0x7
        0x17
        0x7
        0x17
        0x8
        0x17
        0x8
        0x17
        0x7
        0x16
        0x7
        0x16
    .end array-data

    :array_43
    .array-data 4
        0x6
        0x14
        0x4
        0x13
        0x5
        0x14
        0x4
        0x13
        0x5
        0x14
        0x5
        0x15
        0x6
        0x16
        0x7
        0x16
        0x7
        0x16
        0x8
        0x17
        0x7
        0x16
        0x6
        0x15
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateLunarByGregorian(III)[I
    .locals 27
    .param p0, "gregorianYear"    # I
    .param p1, "gregorianMonth"    # I
    .param p2, "gregorianDay"    # I

    .line 289
    move/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    const/16 v4, 0x7d0

    .line 290
    .local v4, "defaultYear":I
    const/4 v5, 0x1

    .line 291
    .local v5, "defaultMonth":I
    const/4 v6, 0x1

    .line 292
    .local v6, "defaultDay":I
    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v7, 0x0

    aput v4, v0, v7

    const/4 v8, 0x1

    aput v5, v0, v8

    const/4 v9, 0x2

    aput v6, v0, v9

    const/4 v10, 0x3

    aput v8, v0, v10

    move-object v11, v0

    .line 293
    .local v11, "lunar":[I
    const/4 v12, 0x0

    .line 294
    .local v12, "lunarYear":I
    const/4 v13, 0x0

    .line 295
    .local v13, "lunarMonth":I
    const/4 v14, 0x0

    .line 297
    .local v14, "lunarDay":I
    const/high16 v0, -0x80000000

    if-ne v1, v0, :cond_1

    .line 298
    aput v1, v11, v7

    .line 299
    add-int/lit8 v0, v2, -0x1

    rem-int/lit8 v0, v0, 0xc

    add-int/2addr v0, v8

    aput v0, v11, v8

    .line 300
    aput v3, v11, v9

    .line 301
    add-int/lit8 v0, v2, -0x1

    div-int/lit8 v0, v0, 0xc

    if-gtz v0, :cond_0

    move v7, v8

    nop

    :cond_0
    aput v7, v11, v10

    .line 302
    return-object v11

    .line 306
    :cond_1
    const/4 v15, 0x0

    .line 308
    .local v15, "baseDate":Ljava/util/Date;
    const/4 v0, 0x0

    move-object/from16 v16, v0

    .line 312
    .local v16, "currentDate":Ljava/util/Date;
    :try_start_0
    sget-object v0, Lcom/coui/appcompat/widget/COUILunarUtil;->sChineseDateFormat:Ljava/text/SimpleDateFormat;

    const-string v10, "1900\u5e741\u670831\u65e5"

    invoke-virtual {v0, v10}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v15, v0

    .line 316
    goto :goto_0

    .line 313
    :catch_0
    move-exception v0

    .line 314
    .local v0, "e":Ljava/text/ParseException;
    const-string v10, "COUILunar"

    const-string v9, "calculateLunarByGregorian(),parse baseDate error."

    invoke-static {v10, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 317
    .end local v0    # "e":Ljava/text/ParseException;
    :goto_0
    if-nez v15, :cond_2

    .line 318
    const-string v0, "COUILunar"

    const-string v7, "baseDate is null,return lunar date:2000.1.1"

    invoke-static {v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    return-object v11

    .line 323
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "\u5e74"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "\u6708"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "\u65e5"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    .line 325
    .local v9, "currentDateString":Ljava/lang/String;
    :try_start_1
    sget-object v0, Lcom/coui/appcompat/widget/COUILunarUtil;->sChineseDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, v9}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v16, v0

    .line 329
    goto :goto_1

    .line 326
    :catch_1
    move-exception v0

    .line 327
    .restart local v0    # "e":Ljava/text/ParseException;
    const-string v10, "COUILunar"

    const-string v8, "calculateLunarByGregorian(),parse currentDate error."

    invoke-static {v10, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 330
    .end local v0    # "e":Ljava/text/ParseException;
    :goto_1
    if-nez v16, :cond_3

    .line 331
    const-string v0, "COUILunar"

    const-string v7, "currentDate is null,return lunar date:2000.1.1"

    invoke-static {v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    return-object v11

    .line 336
    :cond_3
    const v0, 0x4ca4cb80    # 8.64E7f

    .line 337
    .local v0, "msOfDay":F
    nop

    .line 338
    invoke-virtual/range {v16 .. v16}, Ljava/util/Date;->getTime()J

    move-result-wide v19

    invoke-virtual {v15}, Ljava/util/Date;->getTime()J

    move-result-wide v21

    sub-long v7, v19, v21

    long-to-float v7, v7

    div-float/2addr v7, v0

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 342
    .local v7, "offsetDaysFromBaseDate":I
    const/4 v8, 0x0

    .line 343
    .local v8, "tempLunaryear":I
    const/4 v10, 0x0

    .line 351
    .local v10, "daysOfTempLunaryear":I
    move/from16 v24, v0

    .end local v0    # "msOfDay":F
    .local v24, "msOfDay":F
    const/16 v0, 0x2710

    .line 352
    .local v0, "maxLunaryear":I
    const/16 v8, 0x76c

    :goto_2
    if-ge v8, v0, :cond_4

    if-lez v7, :cond_4

    .line 353
    invoke-static {v8}, Lcom/coui/appcompat/widget/COUILunarUtil;->daysOfLunarYear(I)I

    move-result v10

    .line 354
    sub-int/2addr v7, v10

    .line 352
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 357
    :cond_4
    if-gez v7, :cond_5

    .line 358
    add-int/2addr v7, v10

    .line 359
    add-int/lit8 v8, v8, -0x1

    .line 361
    :cond_5
    move v12, v8

    .line 364
    invoke-static {v8}, Lcom/coui/appcompat/widget/COUILunarUtil;->leapMonth(I)I

    move-result v19

    .line 366
    .local v19, "leapMonth":I
    const/16 v20, 0x0

    .line 368
    .local v20, "isMinusLeapMonthDays":Z
    const/16 v21, 0x0

    .line 369
    .local v21, "tempLunarMonth":I
    const/16 v22, 0x0

    .line 375
    .local v22, "daysOfTempLunarMonth":I
    const/16 v21, 0x1

    move/from16 v26, v20

    move/from16 v20, v7

    move/from16 v7, v21

    move/from16 v21, v26

    .local v7, "tempLunarMonth":I
    .local v20, "offsetDaysFromBaseDate":I
    .local v21, "isMinusLeapMonthDays":Z
    :goto_3
    move/from16 v25, v0

    .end local v0    # "maxLunaryear":I
    .local v25, "maxLunaryear":I
    const/16 v0, 0xd

    if-ge v7, v0, :cond_8

    if-lez v20, :cond_8

    .line 377
    if-lez v19, :cond_6

    add-int/lit8 v0, v19, 0x1

    if-ne v7, v0, :cond_6

    if-nez v21, :cond_6

    .line 378
    add-int/lit8 v7, v7, -0x1

    .line 379
    const/16 v21, 0x1

    .line 380
    invoke-static {v12}, Lcom/coui/appcompat/widget/COUILunarUtil;->daysOfLeapMonthInLunarYear(I)I

    move-result v0

    goto :goto_4

    .line 382
    :cond_6
    invoke-static {v12, v7}, Lcom/coui/appcompat/widget/COUILunarUtil;->daysOfALunarMonth(II)I

    move-result v0

    .line 385
    :goto_4
    move/from16 v22, v0

    sub-int v20, v20, v22

    .line 388
    if-eqz v21, :cond_7

    add-int/lit8 v0, v19, 0x1

    if-ne v7, v0, :cond_7

    .line 389
    const/4 v0, 0x0

    .line 375
    move/from16 v21, v0

    :cond_7
    add-int/lit8 v7, v7, 0x1

    move/from16 v0, v25

    goto :goto_3

    .line 394
    :cond_8
    if-nez v20, :cond_a

    if-lez v19, :cond_a

    add-int/lit8 v0, v19, 0x1

    if-ne v7, v0, :cond_a

    .line 395
    if-eqz v21, :cond_9

    .line 396
    const/16 v21, 0x0

    goto :goto_5

    .line 398
    :cond_9
    const/16 v21, 0x1

    .line 399
    add-int/lit8 v7, v7, -0x1

    .line 403
    :cond_a
    :goto_5
    if-gez v20, :cond_b

    .line 404
    add-int v20, v20, v22

    .line 405
    add-int/lit8 v7, v7, -0x1

    .line 407
    :cond_b
    move v0, v7

    .line 412
    .end local v13    # "lunarMonth":I
    .local v0, "lunarMonth":I
    add-int/lit8 v13, v20, 0x1

    .line 414
    .end local v14    # "lunarDay":I
    .local v13, "lunarDay":I
    const/4 v14, 0x0

    aput v12, v11, v14

    .line 415
    const/16 v23, 0x1

    aput v0, v11, v23

    .line 416
    const/16 v18, 0x2

    aput v13, v11, v18

    .line 417
    if-eqz v21, :cond_c

    goto :goto_6

    :cond_c
    move/from16 v14, v23

    :goto_6
    const/16 v17, 0x3

    aput v14, v11, v17

    .line 418
    return-object v11
.end method

.method public static changeALunarYear(IIII)Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;
    .locals 5
    .param p0, "newYear"    # I
    .param p1, "lunarMonth"    # I
    .param p2, "lunarDay"    # I
    .param p3, "isLeap"    # I

    .line 561
    invoke-static {p0, p1, p3}, Lcom/coui/appcompat/widget/COUILunarUtil;->clampMonth(III)[I

    move-result-object v0

    .line 562
    .local v0, "newMonthWithFlag":[I
    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    aget v4, v0, v3

    if-nez v4, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    invoke-static {p0, v2, p2, v4}, Lcom/coui/appcompat/widget/COUILunarUtil;->clampDay(IIIZ)I

    move-result p2

    .line 564
    aget v2, v0, v1

    aget v4, v0, v3

    if-nez v4, :cond_1

    move v1, v3

    nop

    :cond_1
    invoke-static {p0, v2, p2, v1}, Lcom/coui/appcompat/widget/COUILunarUtil;->lunarToSolar(IIIZ)Ljava/util/Date;

    move-result-object v1

    .line 566
    .local v1, "newDate":Ljava/util/Date;
    new-instance v2, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;

    invoke-direct {v2}, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;-><init>()V

    .line 567
    .local v2, "newCalendar":Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;
    if-eqz v1, :cond_2

    .line 568
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/coui/appcompat/widget/COUILunarDatePicker$IncompleteDate;->setTimeInMillis(J)V

    .line 571
    :cond_2
    return-object v2
.end method

.method public static changeALunarYearByOne(Ljava/util/Calendar;IIIII)Ljava/util/Calendar;
    .locals 6
    .param p0, "calendar"    # Ljava/util/Calendar;
    .param p1, "lunarMonth"    # I
    .param p2, "lunarDay"    # I
    .param p3, "isLeap"    # I
    .param p4, "oldYear"    # I
    .param p5, "newYear"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 530
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 531
    .local v0, "newCalendar":Ljava/util/Calendar;
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 533
    invoke-static {p4, p1, p2, p3}, Lcom/coui/appcompat/widget/COUILunarUtil;->getDays(IIII)I

    move-result v1

    .line 534
    .local v1, "oldDays":I
    invoke-static {p5, p1, p2, p3}, Lcom/coui/appcompat/widget/COUILunarUtil;->getDays(IIII)I

    move-result v2

    .line 536
    .local v2, "newDays":I
    const/4 v3, 0x0

    .line 537
    .local v3, "days":I
    const/4 v4, 0x5

    if-le p4, p5, :cond_0

    .line 538
    invoke-static {p5}, Lcom/coui/appcompat/widget/COUILunarUtil;->daysOfLunarYear(I)I

    move-result v5

    sub-int/2addr v5, v2

    add-int/2addr v5, v1

    .line 539
    .end local v3    # "days":I
    .local v5, "days":I
    neg-int v3, v5

    invoke-virtual {v0, v4, v3}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 540
    .end local v5    # "days":I
    .restart local v3    # "days":I
    :cond_0
    if-ge p4, p5, :cond_1

    .line 541
    invoke-static {p4}, Lcom/coui/appcompat/widget/COUILunarUtil;->daysOfLunarYear(I)I

    move-result v5

    add-int/2addr v5, v2

    sub-int/2addr v5, v1

    .line 542
    .end local v3    # "days":I
    .restart local v5    # "days":I
    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->add(II)V

    .line 546
    :goto_0
    return-object v0

    .line 544
    .end local v5    # "days":I
    .restart local v3    # "days":I
    :cond_1
    return-object v0
.end method

.method public static chineseStringOfALunarDay(I)Ljava/lang/String;
    .locals 7
    .param p0, "lunarDay"    # I

    .line 252
    const-string v0, "\u521d"

    const-string v1, "\u5341"

    const-string v2, "\u5eff"

    const-string v3, "\u5345"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    .line 253
    .local v0, "chineseTen":[Ljava/lang/String;
    const/16 v1, 0xa

    .line 254
    .local v1, "monthOfTen":I
    const/16 v2, 0x14

    .line 255
    .local v2, "monthOfTwenty":I
    const/16 v3, 0x1e

    .line 256
    .local v3, "monthOfThirty":I
    rem-int v4, p0, v1

    if-nez v4, :cond_0

    add-int/lit8 v4, v1, -0x1

    goto :goto_0

    :cond_0
    rem-int v4, p0, v1

    add-int/lit8 v4, v4, -0x1

    .line 257
    .local v4, "n":I
    :goto_0
    if-le p0, v3, :cond_1

    .line 258
    const-string v5, ""

    return-object v5

    .line 261
    :cond_1
    if-ne p0, v1, :cond_2

    .line 262
    const-string v5, "\u521d\u5341"

    return-object v5

    .line 265
    :cond_2
    if-ne p0, v2, :cond_3

    .line 266
    const-string v5, "\u4e8c\u5341"

    return-object v5

    .line 269
    :cond_3
    if-ne p0, v3, :cond_4

    .line 270
    const-string v5, "\u4e09\u5341"

    return-object v5

    .line 273
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    div-int v6, p0, v1

    aget-object v6, v0, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/coui/appcompat/widget/COUILunarUtil;->CHINESE_NUMBER:[Ljava/lang/String;

    aget-object v6, v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method static clampDay(IIIZ)I
    .locals 1
    .param p0, "lunarYear"    # I
    .param p1, "lunarMonth"    # I
    .param p2, "lunarDay"    # I
    .param p3, "leapMonthFlag"    # Z

    .line 913
    if-nez p3, :cond_0

    .line 914
    invoke-static {p0, p1}, Lcom/coui/appcompat/widget/COUILunarUtil;->daysOfALunarMonth(II)I

    move-result v0

    goto :goto_0

    .line 916
    :cond_0
    invoke-static {p0}, Lcom/coui/appcompat/widget/COUILunarUtil;->daysOfLeapMonthInLunarYear(I)I

    move-result v0

    .line 918
    .local v0, "days":I
    :goto_0
    if-le p2, v0, :cond_1

    .line 919
    return v0

    .line 921
    :cond_1
    return p2
.end method

.method private static clampMonth(III)[I
    .locals 5
    .param p0, "lunarYear"    # I
    .param p1, "lunarMonth"    # I
    .param p2, "isLeap"    # I

    .line 905
    invoke-static {p0}, Lcom/coui/appcompat/widget/COUILunarUtil;->leapMonth(I)I

    move-result v0

    .line 906
    .local v0, "leapMonth":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p2, :cond_0

    if-ne v0, p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 908
    .local v3, "newIsLeapBool":Z
    :goto_0
    const/4 v4, 0x2

    new-array v4, v4, [I

    aput p1, v4, v2

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    aput v2, v4, v1

    return-object v4
.end method

.method public static daysOfALunarMonth(II)I
    .locals 5
    .param p0, "lunarYear"    # I
    .param p1, "lunarMonth"    # I

    .line 234
    const/16 v0, 0x1e

    const/high16 v1, -0x80000000

    if-eq p0, v1, :cond_1

    .line 235
    sget-object v1, Lcom/coui/appcompat/widget/COUILunarUtil;->LUNAR_INFO:[J

    add-int/lit16 v2, p0, -0x76c

    aget-wide v1, v1, v2

    const/high16 v3, 0x10000

    shr-int/2addr v3, p1

    int-to-long v3, v3

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 236
    const/16 v0, 0x1d

    return v0

    .line 238
    :cond_0
    return v0

    .line 241
    :cond_1
    return v0
.end method

.method public static daysOfLeapMonthInLunarYear(I)I
    .locals 4
    .param p0, "lunarYear"    # I

    .line 201
    invoke-static {p0}, Lcom/coui/appcompat/widget/COUILunarUtil;->leapMonth(I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 202
    sget-object v0, Lcom/coui/appcompat/widget/COUILunarUtil;->LUNAR_INFO:[J

    add-int/lit16 v1, p0, -0x76c

    aget-wide v0, v0, v1

    const-wide/32 v2, 0x10000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 203
    const/16 v0, 0x1e

    return v0

    .line 205
    :cond_0
    const/16 v0, 0x1d

    return v0

    .line 208
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static daysOfLunarYear(I)I
    .locals 6
    .param p0, "lunarYear"    # I

    .line 179
    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_0

    .line 180
    const/4 v0, 0x0

    return v0

    .line 183
    :cond_0
    const/4 v0, 0x0

    .line 184
    .local v0, "i":I
    const/16 v1, 0x15c

    .line 185
    .local v1, "sum":I
    const v0, 0x8000

    :goto_0
    const/16 v2, 0x8

    if-le v0, v2, :cond_2

    .line 186
    sget-object v2, Lcom/coui/appcompat/widget/COUILunarUtil;->LUNAR_INFO:[J

    add-int/lit16 v3, p0, -0x76c

    aget-wide v2, v2, v3

    int-to-long v4, v0

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 187
    add-int/lit8 v1, v1, 0x1

    .line 185
    :cond_1
    shr-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 190
    :cond_2
    invoke-static {p0}, Lcom/coui/appcompat/widget/COUILunarUtil;->daysOfLeapMonthInLunarYear(I)I

    move-result v2

    add-int/2addr v2, v1

    return v2
.end method

.method private static getAMonthSolarTermDays(II)[I
    .locals 7
    .param p0, "gregorianYear"    # I
    .param p1, "gregorianMonth"    # I

    .line 634
    add-int/lit8 v0, p1, -0x1

    const/4 v1, 0x2

    mul-int/2addr v0, v1

    .line 635
    .local v0, "firstSolarTermIndex":I
    new-array v1, v1, [I

    fill-array-data v1, :array_0

    .line 636
    .local v1, "days":[I
    const/16 v2, 0x7b2

    .line 637
    .local v2, "startYear":I
    const/16 v3, 0x7f5

    .line 638
    .local v3, "endYear":I
    add-int/lit8 v4, v2, -0x1

    if-le p0, v4, :cond_0

    if-ge p0, v3, :cond_0

    .line 639
    sget-object v4, Lcom/coui/appcompat/widget/COUILunarUtil;->SOLAR_TERM_DAYS:[[I

    sub-int v5, p0, v2

    aget-object v4, v4, v5

    aget v4, v4, v0

    .line 640
    .local v4, "firstSolarTermDay":I
    sget-object v5, Lcom/coui/appcompat/widget/COUILunarUtil;->SOLAR_TERM_DAYS:[[I

    sub-int v6, p0, v2

    aget-object v5, v5, v6

    add-int/lit8 v6, v0, 0x1

    aget v5, v5, v6

    .line 641
    .local v5, "secondSolarTermDay":I
    const/4 v6, 0x0

    aput v4, v1, v6

    .line 642
    const/4 v6, 0x1

    aput v5, v1, v6

    .line 644
    .end local v4    # "firstSolarTermDay":I
    .end local v5    # "secondSolarTermDay":I
    :cond_0
    return-object v1

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private static getAMonthSolarTermNames(I)[Ljava/lang/String;
    .locals 7
    .param p0, "gregorianMonth"    # I

    .line 652
    const/4 v0, 0x1

    if-lt p0, v0, :cond_1

    const/16 v1, 0xc

    if-le p0, v1, :cond_0

    goto :goto_0

    .line 658
    :cond_0
    add-int/lit8 v1, p0, -0x1

    const/4 v2, 0x2

    mul-int/2addr v1, v2

    .line 659
    .local v1, "firstSolarTermIndex":I
    const/4 v3, 0x1

    .line 660
    .local v3, "isTCLunarCalendarEnabled":Z
    sget-object v4, Lcom/coui/appcompat/widget/COUILunarUtil;->ALL_TC_SOLAR_TERM_NAMES:[Ljava/lang/String;

    aget-object v4, v4, v1

    .line 662
    .local v4, "firstSolarTermName":Ljava/lang/String;
    sget-object v5, Lcom/coui/appcompat/widget/COUILunarUtil;->ALL_TC_SOLAR_TERM_NAMES:[Ljava/lang/String;

    add-int/lit8 v6, v1, 0x1

    aget-object v5, v5, v6

    .line 664
    .local v5, "secondSolarTermName":Ljava/lang/String;
    new-array v2, v2, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v4, v2, v6

    aput-object v5, v2, v0

    move-object v0, v2

    .line 665
    .local v0, "solarTerms":[Ljava/lang/String;
    return-object v0

    .line 653
    .end local v0    # "solarTerms":[Ljava/lang/String;
    .end local v1    # "firstSolarTermIndex":I
    .end local v3    # "isTCLunarCalendarEnabled":Z
    .end local v4    # "firstSolarTermName":Ljava/lang/String;
    .end local v5    # "secondSolarTermName":Ljava/lang/String;
    :cond_1
    :goto_0
    const-string v0, "COUILunar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAMonthSolarTermNames(),param gregorianMonth:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    const-string v0, ""

    const-string v1, ""

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 656
    .restart local v0    # "solarTerms":[Ljava/lang/String;
    return-object v0
.end method

.method public static getDays(IIII)I
    .locals 3
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "day"    # I
    .param p3, "isLeap"    # I

    .line 584
    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_0

    .line 585
    const/4 v0, 0x0

    return v0

    .line 588
    :cond_0
    move v0, p2

    .line 589
    .local v0, "days":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_1

    .line 590
    invoke-static {p0, v1}, Lcom/coui/appcompat/widget/COUILunarUtil;->daysOfALunarMonth(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 589
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 592
    .end local v1    # "i":I
    :cond_1
    invoke-static {p0}, Lcom/coui/appcompat/widget/COUILunarUtil;->leapMonth(I)I

    move-result v1

    if-ge v1, p1, :cond_2

    .line 593
    invoke-static {p0}, Lcom/coui/appcompat/widget/COUILunarUtil;->daysOfLeapMonthInLunarYear(I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_1

    .line 594
    :cond_2
    invoke-static {p0}, Lcom/coui/appcompat/widget/COUILunarUtil;->leapMonth(I)I

    move-result v1

    if-ne v1, p1, :cond_3

    if-nez p3, :cond_3

    .line 595
    invoke-static {p0, p1}, Lcom/coui/appcompat/widget/COUILunarUtil;->daysOfALunarMonth(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 597
    :cond_3
    :goto_1
    return v0
.end method

.method private static getGregFestival(II)Ljava/lang/String;
    .locals 6
    .param p0, "gregorianMonth"    # I
    .param p1, "gregorianDay"    # I

    .line 752
    const/4 v0, 0x1

    .line 753
    .local v0, "isTCLunarCalendarEnabled":Z
    const/4 v1, 0x5

    .line 754
    .local v1, "laborMonth":I
    const/4 v2, 0x1

    .line 755
    .local v2, "laborDay":I
    const/16 v3, 0xa

    .line 756
    .local v3, "nationalMonth":I
    const/4 v4, 0x1

    .line 757
    .local v4, "nationalDay":I
    const/4 v5, 0x1

    if-ne p0, v5, :cond_0

    if-ne p1, v5, :cond_0

    .line 758
    const-string v5, ""

    return-object v5

    .line 759
    :cond_0
    if-ne p0, v1, :cond_1

    if-ne p1, v2, :cond_1

    .line 760
    const-string v5, ""

    return-object v5

    .line 761
    :cond_1
    if-ne p0, v3, :cond_2

    if-ne p1, v4, :cond_2

    .line 762
    const-string v5, ""

    return-object v5

    .line 765
    :cond_2
    const/4 v5, 0x0

    return-object v5
.end method

.method public static getLunarDateString(III)Ljava/lang/String;
    .locals 5
    .param p0, "gregorianYear"    # I
    .param p1, "gregorianMonth"    # I
    .param p2, "gregorianDay"    # I

    .line 446
    invoke-static {p0, p1, p2}, Lcom/coui/appcompat/widget/COUILunarUtil;->calculateLunarByGregorian(III)[I

    move-result-object v0

    .line 447
    .local v0, "lunarDate":[I
    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    const/4 v3, 0x2

    aget v3, v0, v3

    const/4 v4, 0x3

    aget v4, v0, v4

    invoke-static {v1, v2, v3, v4}, Lcom/coui/appcompat/widget/COUILunarUtil;->getLunarDateString(IIII)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getLunarDateString(IIII)Ljava/lang/String;
    .locals 3
    .param p0, "lunarYear"    # I
    .param p1, "lunarMonth"    # I
    .param p2, "lunarDay"    # I
    .param p3, "leapMonthCode"    # I

    .line 461
    const/high16 v0, -0x80000000

    if-eq p0, v0, :cond_1

    .line 462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\u5e74"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_0

    const-string v1, "\u95f0"

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/coui/appcompat/widget/COUILunarUtil;->CHINESE_NUMBER:[Ljava/lang/String;

    add-int/lit8 v2, p1, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u6708"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    invoke-static {p2}, Lcom/coui/appcompat/widget/COUILunarUtil;->chineseStringOfALunarDay(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 465
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p3, :cond_2

    const-string v1, "\u95f0"

    goto :goto_1

    :cond_2
    const-string v1, ""

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/coui/appcompat/widget/COUILunarUtil;->CHINESE_NUMBER:[Ljava/lang/String;

    add-int/lit8 v2, p1, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u6708"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    invoke-static {p2}, Lcom/coui/appcompat/widget/COUILunarUtil;->chineseStringOfALunarDay(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 468
    .local v0, "lunarDateString":Ljava/lang/String;
    :goto_2
    return-object v0
.end method

.method public static getLunarDateString(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 8
    .param p0, "cal"    # Ljava/util/Calendar;

    .line 428
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 429
    .local v1, "gregorianYear":I
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v3, v0

    .line 430
    .local v3, "gregorianMonth":I
    const/4 v4, 0x5

    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 432
    .local v4, "gregorianDay":I
    invoke-static {v1, v3, v4}, Lcom/coui/appcompat/widget/COUILunarUtil;->calculateLunarByGregorian(III)[I

    move-result-object v5

    .line 434
    .local v5, "lunarDate":[I
    const/4 v6, 0x0

    aget v6, v5, v6

    aget v0, v5, v0

    aget v2, v5, v2

    const/4 v7, 0x3

    aget v7, v5, v7

    invoke-static {v6, v0, v2, v7}, Lcom/coui/appcompat/widget/COUILunarUtil;->getLunarDateString(IIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getLunarFestival(II)Ljava/lang/String;
    .locals 6
    .param p0, "lunarMonth"    # I
    .param p1, "lunarDay"    # I

    .line 727
    const/4 v0, 0x1

    .line 728
    .local v0, "isTCLunarCalendarEnabled":Z
    const/4 v1, 0x5

    .line 729
    .local v1, "dragonBoatMonth":I
    const/4 v2, 0x5

    .line 730
    .local v2, "dragonBoatDay":I
    const/16 v3, 0x8

    .line 731
    .local v3, "midAutumnMonth":I
    const/16 v4, 0xf

    .line 732
    .local v4, "midAutumnDay":I
    const/4 v5, 0x1

    if-ne p0, v5, :cond_0

    if-ne p1, v5, :cond_0

    .line 733
    const-string v5, "\u6625\u7bc0"

    return-object v5

    .line 734
    :cond_0
    if-ne p0, v1, :cond_1

    if-ne p1, v2, :cond_1

    .line 735
    const-string v5, "\u7aef\u5348"

    return-object v5

    .line 736
    :cond_1
    if-ne p0, v3, :cond_2

    if-ne p1, v4, :cond_2

    .line 737
    const-string v5, "\u4e2d\u79cb"

    return-object v5

    .line 740
    :cond_2
    const/4 v5, 0x0

    return-object v5
.end method

.method public static getLunarFestivalChineseString(III)Ljava/lang/String;
    .locals 6
    .param p0, "gregorianYear"    # I
    .param p1, "gregorianMonth"    # I
    .param p2, "gregorianDay"    # I

    .line 679
    const/4 v0, 0x0

    .line 681
    .local v0, "chineseString":Ljava/lang/String;
    invoke-static {p1, p2}, Lcom/coui/appcompat/widget/COUILunarUtil;->getGregFestival(II)Ljava/lang/String;

    move-result-object v0

    .line 682
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 683
    return-object v0

    .line 686
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/coui/appcompat/widget/COUILunarUtil;->calculateLunarByGregorian(III)[I

    move-result-object v1

    .line 688
    .local v1, "lunarDate":[I
    const/4 v2, 0x1

    aget v3, v1, v2

    const/4 v4, 0x2

    aget v5, v1, v4

    invoke-static {v3, v5}, Lcom/coui/appcompat/widget/COUILunarUtil;->getLunarFestival(II)Ljava/lang/String;

    move-result-object v0

    .line 689
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 690
    return-object v0

    .line 693
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/coui/appcompat/widget/COUILunarUtil;->getSolarTerm(III)Ljava/lang/String;

    move-result-object v0

    .line 694
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 695
    return-object v0

    .line 697
    :cond_2
    const/4 v3, 0x3

    aget v3, v1, v3

    if-nez v3, :cond_3

    move v3, v2

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    .line 698
    .local v3, "isLeapMonth":Z
    :goto_0
    aget v2, v1, v2

    aget v4, v1, v4

    invoke-static {v2, v4, v3}, Lcom/coui/appcompat/widget/COUILunarUtil;->getLunarNumber(IIZ)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static getLunarNumber(IIZ)Ljava/lang/String;
    .locals 3
    .param p0, "lunarMonth"    # I
    .param p1, "lunarDay"    # I
    .param p2, "isLeapMonth"    # Z

    .line 708
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 709
    if-eqz p2, :cond_0

    .line 710
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u95f0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/coui/appcompat/widget/COUILunarUtil;->CHINESE_NUMBER:[Ljava/lang/String;

    add-int/lit8 v2, p0, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 712
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/coui/appcompat/widget/COUILunarUtil;->CHINESE_NUMBER:[Ljava/lang/String;

    add-int/lit8 v2, p0, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u6708"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 714
    :cond_1
    invoke-static {p1}, Lcom/coui/appcompat/widget/COUILunarUtil;->chineseStringOfALunarDay(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSolarTerm(III)Ljava/lang/String;
    .locals 6
    .param p0, "gregorianYear"    # I
    .param p1, "gregorianMonth"    # I
    .param p2, "gregorianDay"    # I

    .line 612
    invoke-static {p0, p1}, Lcom/coui/appcompat/widget/COUILunarUtil;->getAMonthSolarTermDays(II)[I

    move-result-object v0

    .line 613
    .local v0, "days":[I
    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq p2, v2, :cond_0

    aget v2, v0, v4

    if-eq p2, v2, :cond_0

    .line 614
    return-object v3

    .line 617
    :cond_0
    invoke-static {p1}, Lcom/coui/appcompat/widget/COUILunarUtil;->getAMonthSolarTermNames(I)[Ljava/lang/String;

    move-result-object v2

    .line 618
    .local v2, "names":[Ljava/lang/String;
    aget v5, v0, v1

    if-ne p2, v5, :cond_1

    .line 619
    aget-object v1, v2, v1

    return-object v1

    .line 620
    :cond_1
    aget v1, v0, v4

    if-ne p2, v1, :cond_2

    .line 621
    aget-object v1, v2, v4

    return-object v1

    .line 623
    :cond_2
    return-object v3
.end method

.method private static getYearDays(I)I
    .locals 6
    .param p0, "year"    # I

    .line 886
    const/16 v0, 0x15c

    .line 887
    .local v0, "sum":I
    const v1, 0x8000

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x8

    if-lt v1, v2, :cond_1

    .line 888
    sget-object v2, Lcom/coui/appcompat/widget/COUILunarUtil;->LUNAR_INFO:[J

    add-int/lit16 v3, p0, -0x76c

    aget-wide v2, v2, v3

    const-wide/32 v4, 0xfff0

    and-long/2addr v2, v4

    int-to-long v4, v1

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 889
    add-int/lit8 v0, v0, 0x1

    .line 887
    :cond_0
    shr-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 892
    .end local v1    # "i":I
    :cond_1
    invoke-static {p0}, Lcom/coui/appcompat/widget/COUILunarUtil;->daysOfLeapMonthInLunarYear(I)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method private static isLunarDate(IIIZ)Z
    .locals 3
    .param p0, "lunarYear"    # I
    .param p1, "lunarMonth"    # I
    .param p2, "lunarDay"    # I
    .param p3, "leapMonthFlag"    # Z

    .line 864
    const/4 v0, 0x0

    const/16 v1, 0x76c

    if-lt p0, v1, :cond_7

    const/16 v1, 0x801

    if-le p0, v1, :cond_0

    goto :goto_4

    .line 867
    :cond_0
    const/4 v1, 0x1

    if-lt p1, v1, :cond_6

    const/16 v2, 0xc

    if-le p1, v2, :cond_1

    goto :goto_3

    .line 871
    :cond_1
    if-lt p2, v1, :cond_5

    const/16 v2, 0x1e

    if-le p2, v2, :cond_2

    goto :goto_2

    .line 875
    :cond_2
    invoke-static {p0}, Lcom/coui/appcompat/widget/COUILunarUtil;->leapMonth(I)I

    move-result v2

    .line 876
    .local v2, "leap":I
    if-eqz p3, :cond_4

    if-ne p1, v2, :cond_3

    goto :goto_0

    :cond_3
    goto :goto_1

    :cond_4
    :goto_0
    move v0, v1

    :goto_1
    return v0

    .line 872
    .end local v2    # "leap":I
    :cond_5
    :goto_2
    return v0

    .line 868
    :cond_6
    :goto_3
    return v0

    .line 865
    :cond_7
    :goto_4
    return v0
.end method

.method public static leapMonth(I)I
    .locals 4
    .param p0, "lunarYear"    # I

    .line 219
    const/16 v0, 0x76c

    if-lt p0, v0, :cond_1

    const/16 v0, 0x834

    if-le p0, v0, :cond_0

    goto :goto_0

    .line 223
    :cond_0
    sget-object v0, Lcom/coui/appcompat/widget/COUILunarUtil;->LUNAR_INFO:[J

    add-int/lit16 v1, p0, -0x76c

    aget-wide v0, v0, v1

    const-wide/16 v2, 0xf

    and-long/2addr v0, v2

    long-to-int v0, v0

    return v0

    .line 220
    :cond_1
    :goto_0
    const-string v0, "COUILunar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get leapMonth:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "is out of range.return 0."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    const/4 v0, 0x0

    return v0
.end method

.method public static lunarToSolar(IIIZ)Ljava/util/Date;
    .locals 6
    .param p0, "lunarYear"    # I
    .param p1, "lunarMonth"    # I
    .param p2, "lunarDay"    # I
    .param p3, "leapMonthFlag"    # Z
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 779
    invoke-static {p0, p1, p2, p3}, Lcom/coui/appcompat/widget/COUILunarUtil;->isLunarDate(IIIZ)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 780
    return-object v1

    .line 783
    :cond_0
    const/4 v0, 0x0

    .line 785
    .local v0, "offset":I
    const/16 v2, 0x76c

    .local v2, "i":I
    :goto_0
    if-ge v2, p0, :cond_1

    .line 787
    invoke-static {v2}, Lcom/coui/appcompat/widget/COUILunarUtil;->getYearDays(I)I

    move-result v3

    .line 788
    .local v3, "yearDaysCount":I
    add-int/2addr v0, v3

    .line 785
    .end local v3    # "yearDaysCount":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 791
    .end local v2    # "i":I
    :cond_1
    invoke-static {p0}, Lcom/coui/appcompat/widget/COUILunarUtil;->leapMonth(I)I

    move-result v2

    .line 793
    .local v2, "leapMonth":I
    const/4 v3, 0x1

    if-eq v2, p1, :cond_2

    move v4, v3

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    and-int/2addr v4, p3

    if-eqz v4, :cond_3

    .line 794
    return-object v1

    .line 798
    :cond_3
    if-eqz v2, :cond_9

    if-lt p1, v2, :cond_9

    if-ne p1, v2, :cond_4

    if-nez p3, :cond_4

    goto :goto_3

    .line 812
    :cond_4
    nop

    .local v3, "i":I
    :goto_2
    if-ge v3, p1, :cond_5

    .line 813
    invoke-static {p0, v3}, Lcom/coui/appcompat/widget/COUILunarUtil;->daysOfALunarMonth(II)I

    move-result v4

    .line 814
    .local v4, "tempMonthDaysCount":I
    add-int/2addr v0, v4

    .line 812
    .end local v4    # "tempMonthDaysCount":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 816
    .end local v3    # "i":I
    :cond_5
    if-le p1, v2, :cond_7

    .line 818
    invoke-static {p0}, Lcom/coui/appcompat/widget/COUILunarUtil;->daysOfLeapMonthInLunarYear(I)I

    move-result v3

    .line 820
    .local v3, "temp":I
    add-int/2addr v0, v3

    .line 822
    invoke-static {p0, p1}, Lcom/coui/appcompat/widget/COUILunarUtil;->daysOfALunarMonth(II)I

    move-result v4

    if-le p2, v4, :cond_6

    .line 823
    return-object v1

    .line 825
    :cond_6
    add-int/2addr v0, p2

    .line 826
    .end local v3    # "temp":I
    goto :goto_5

    .line 830
    :cond_7
    invoke-static {p0, p1}, Lcom/coui/appcompat/widget/COUILunarUtil;->daysOfALunarMonth(II)I

    move-result v3

    .line 831
    .restart local v3    # "temp":I
    add-int/2addr v0, v3

    .line 833
    invoke-static {p0}, Lcom/coui/appcompat/widget/COUILunarUtil;->daysOfLeapMonthInLunarYear(I)I

    move-result v4

    if-le p2, v4, :cond_8

    .line 834
    return-object v1

    .line 836
    :cond_8
    add-int/2addr v0, p2

    goto :goto_5

    .line 799
    .end local v3    # "temp":I
    :cond_9
    :goto_3
    nop

    .local v3, "i":I
    :goto_4
    if-ge v3, p1, :cond_a

    .line 800
    invoke-static {p0, v3}, Lcom/coui/appcompat/widget/COUILunarUtil;->daysOfALunarMonth(II)I

    move-result v4

    .line 801
    .restart local v4    # "tempMonthDaysCount":I
    add-int/2addr v0, v4

    .line 799
    .end local v4    # "tempMonthDaysCount":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 805
    .end local v3    # "i":I
    :cond_a
    invoke-static {p0, p1}, Lcom/coui/appcompat/widget/COUILunarUtil;->daysOfALunarMonth(II)I

    move-result v3

    if-le p2, v3, :cond_b

    .line 806
    return-object v1

    .line 809
    :cond_b
    add-int/2addr v0, p2

    .line 840
    :goto_5
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyyMMdd"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 843
    .local v3, "formatter":Ljava/text/SimpleDateFormat;
    :try_start_0
    const-string v4, "19000130"

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v4

    .line 847
    .local v1, "myDate":Ljava/util/Date;
    nop

    .line 846
    nop

    .line 848
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 849
    .local v4, "c":Ljava/util/Calendar;
    invoke-virtual {v4, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 850
    const/4 v5, 0x5

    invoke-virtual {v4, v5, v0}, Ljava/util/Calendar;->add(II)V

    .line 851
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 852
    return-object v1

    .line 844
    .end local v1    # "myDate":Ljava/util/Date;
    .end local v4    # "c":Ljava/util/Calendar;
    :catch_0
    move-exception v4

    .line 845
    .local v4, "e":Ljava/text/ParseException;
    invoke-virtual {v4}, Ljava/text/ParseException;->printStackTrace()V

    .line 846
    return-object v1
.end method
