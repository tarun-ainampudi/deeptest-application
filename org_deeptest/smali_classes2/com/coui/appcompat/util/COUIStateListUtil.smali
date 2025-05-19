.class public Lcom/coui/appcompat/util/COUIStateListUtil;
.super Ljava/lang/Object;
.source "COUIStateListUtil.java"


# static fields
.field private static final EMPTY_STATE_SET:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/coui/appcompat/util/COUIStateListUtil;->EMPTY_STATE_SET:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createColorStateList(II)Landroid/content/res/ColorStateList;
    .locals 6
    .param p0, "defaultColor"    # I
    .param p1, "disabledColor"    # I

    .line 38
    const/4 v0, 0x2

    new-array v1, v0, [[I

    .line 39
    .local v1, "states":[[I
    new-array v0, v0, [I

    .line 41
    .local v0, "colors":[I
    const/4 v2, 0x1

    new-array v3, v2, [I

    const/4 v4, 0x0

    const v5, -0x101009e

    aput v5, v3, v4

    aput-object v3, v1, v4

    .line 42
    aput p1, v0, v4

    .line 44
    sget-object v3, Lcom/coui/appcompat/util/COUIStateListUtil;->EMPTY_STATE_SET:[I

    aput-object v3, v1, v2

    .line 45
    aput p0, v0, v2

    .line 47
    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v2
.end method

.method public static createColorStateList(IIII)Landroid/content/res/ColorStateList;
    .locals 6
    .param p0, "defaultColor"    # I
    .param p1, "disabledColor"    # I
    .param p2, "selectedColor"    # I
    .param p3, "pressedColor"    # I

    .line 60
    const/4 v0, 0x4

    new-array v1, v0, [[I

    .line 61
    .local v1, "states":[[I
    new-array v0, v0, [I

    .line 63
    .local v0, "colors":[I
    const/4 v2, 0x1

    new-array v3, v2, [I

    const/4 v4, 0x0

    const v5, -0x101009e

    aput v5, v3, v4

    aput-object v3, v1, v4

    .line 64
    aput p1, v0, v4

    .line 66
    const/4 v3, 0x2

    new-array v4, v3, [I

    fill-array-data v4, :array_0

    aput-object v4, v1, v2

    .line 67
    aput p2, v0, v2

    .line 69
    new-array v2, v3, [I

    fill-array-data v2, :array_1

    aput-object v2, v1, v3

    .line 70
    aput p3, v0, v3

    .line 72
    sget-object v2, Lcom/coui/appcompat/util/COUIStateListUtil;->EMPTY_STATE_SET:[I

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 73
    aput p0, v0, v3

    .line 75
    new-instance v2, Landroid/content/res/ColorStateList;

    invoke-direct {v2, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v2

    :array_0
    .array-data 4
        0x101009e
        0x10100a1
    .end array-data

    :array_1
    .array-data 4
        0x101009e
        0x10100a7
    .end array-data
.end method
