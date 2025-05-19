.class public Lcom/coui/appcompat/util/COUIThemeUtils;
.super Ljava/lang/Object;
.source "COUIThemeUtils.java"


# static fields
.field static final ACTIVATED_STATE_SET:[I

.field static final CHECKED_STATE_SET:[I

.field static final DISABLED_STATE_SET:[I

.field static final EMPTY_STATE_SET:[I

.field static final FOCUSED_STATE_SET:[I

.field static final NOT_PRESSED_OR_FOCUSED_STATE_SET:[I

.field static final PRESSED_STATE_SET:[I

.field static final SELECTED_STATE_SET:[I

.field private static final TEMP_ARRAY:[I

.field private static final TL_TYPED_VALUE:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/util/TypedValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 33
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/coui/appcompat/util/COUIThemeUtils;->TL_TYPED_VALUE:Ljava/lang/ThreadLocal;

    .line 35
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const v3, -0x101009e

    aput v3, v1, v2

    sput-object v1, Lcom/coui/appcompat/util/COUIThemeUtils;->DISABLED_STATE_SET:[I

    .line 36
    new-array v1, v0, [I

    const v3, 0x101009c

    aput v3, v1, v2

    sput-object v1, Lcom/coui/appcompat/util/COUIThemeUtils;->FOCUSED_STATE_SET:[I

    .line 37
    new-array v1, v0, [I

    const v3, 0x10102fe

    aput v3, v1, v2

    sput-object v1, Lcom/coui/appcompat/util/COUIThemeUtils;->ACTIVATED_STATE_SET:[I

    .line 38
    new-array v1, v0, [I

    const v3, 0x10100a7

    aput v3, v1, v2

    sput-object v1, Lcom/coui/appcompat/util/COUIThemeUtils;->PRESSED_STATE_SET:[I

    .line 39
    new-array v1, v0, [I

    const v3, 0x10100a0

    aput v3, v1, v2

    sput-object v1, Lcom/coui/appcompat/util/COUIThemeUtils;->CHECKED_STATE_SET:[I

    .line 40
    new-array v1, v0, [I

    const v3, 0x10100a1

    aput v3, v1, v2

    sput-object v1, Lcom/coui/appcompat/util/COUIThemeUtils;->SELECTED_STATE_SET:[I

    .line 41
    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/coui/appcompat/util/COUIThemeUtils;->NOT_PRESSED_OR_FOCUSED_STATE_SET:[I

    .line 43
    new-array v1, v2, [I

    sput-object v1, Lcom/coui/appcompat/util/COUIThemeUtils;->EMPTY_STATE_SET:[I

    .line 45
    new-array v0, v0, [I

    sput-object v0, Lcom/coui/appcompat/util/COUIThemeUtils;->TEMP_ARRAY:[I

    return-void

    :array_0
    .array-data 4
        -0x10100a7
        -0x101009c
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createDisabledStateList(II)Landroid/content/res/ColorStateList;
    .locals 4
    .param p0, "textColor"    # I
    .param p1, "disabledTextColor"    # I

    .line 50
    const/4 v0, 0x2

    new-array v1, v0, [[I

    .line 51
    .local v1, "states":[[I
    new-array v0, v0, [I

    .line 52
    .local v0, "colors":[I
    const/4 v2, 0x0

    .line 55
    .local v2, "i":I
    sget-object v3, Lcom/coui/appcompat/util/COUIThemeUtils;->DISABLED_STATE_SET:[I

    aput-object v3, v1, v2

    .line 56
    aput p1, v0, v2

    .line 57
    add-int/lit8 v2, v2, 0x1

    .line 60
    sget-object v3, Lcom/coui/appcompat/util/COUIThemeUtils;->EMPTY_STATE_SET:[I

    aput-object v3, v1, v2

    .line 61
    aput p0, v0, v2

    .line 62
    add-int/lit8 v2, v2, 0x1

    .line 64
    new-instance v3, Landroid/content/res/ColorStateList;

    invoke-direct {v3, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v3
.end method

.method public static getDisabledThemeAttrColor(Landroid/content/Context;I)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attr"    # I

    .line 88
    invoke-static {p0, p1}, Lcom/coui/appcompat/util/COUIThemeUtils;->getThemeAttrColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 89
    .local v0, "csl":Landroid/content/res/ColorStateList;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    sget-object v1, Lcom/coui/appcompat/util/COUIThemeUtils;->DISABLED_STATE_SET:[I

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    return v1

    .line 95
    :cond_0
    invoke-static {}, Lcom/coui/appcompat/util/COUIThemeUtils;->getTypedValue()Landroid/util/TypedValue;

    move-result-object v1

    .line 97
    .local v1, "tv":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1010033

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 98
    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    .line 100
    .local v2, "disabledAlpha":F
    invoke-static {p0, p1, v2}, Lcom/coui/appcompat/util/COUIThemeUtils;->getThemeAttrColor(Landroid/content/Context;IF)I

    move-result v3

    return v3
.end method

.method public static getThemeAttrColor(Landroid/content/Context;I)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attr"    # I

    .line 68
    sget-object v0, Lcom/coui/appcompat/util/COUIThemeUtils;->TEMP_ARRAY:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 69
    sget-object v0, Lcom/coui/appcompat/util/COUIThemeUtils;->TEMP_ARRAY:[I

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 71
    .local v0, "a":Landroid/content/res/TypedArray;
    :try_start_0
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method static getThemeAttrColor(Landroid/content/Context;IF)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attr"    # I
    .param p2, "alpha"    # F

    .line 114
    invoke-static {p0, p1}, Lcom/coui/appcompat/util/COUIThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v0

    .line 115
    .local v0, "color":I
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    .line 116
    .local v1, "originalAlpha":I
    int-to-float v2, v1

    mul-float/2addr v2, p2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v0, v2}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v2

    return v2
.end method

.method public static getThemeAttrColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attr"    # I

    .line 78
    sget-object v0, Lcom/coui/appcompat/util/COUIThemeUtils;->TEMP_ARRAY:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 79
    sget-object v0, Lcom/coui/appcompat/util/COUIThemeUtils;->TEMP_ARRAY:[I

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 81
    .local v0, "a":Landroid/content/res/TypedArray;
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method private static getTypedValue()Landroid/util/TypedValue;
    .locals 2

    .line 105
    sget-object v0, Lcom/coui/appcompat/util/COUIThemeUtils;->TL_TYPED_VALUE:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/TypedValue;

    .line 106
    .local v0, "typedValue":Landroid/util/TypedValue;
    if-nez v0, :cond_0

    .line 107
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    move-object v0, v1

    .line 108
    sget-object v1, Lcom/coui/appcompat/util/COUIThemeUtils;->TL_TYPED_VALUE:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 110
    :cond_0
    return-object v0
.end method
