.class public Lcom/coui/appcompat/util/UIUtil;
.super Ljava/lang/Object;
.source "UIUtil.java"


# static fields
.field public static final CONSTANT_COLOR_MASK:I = 0xffffff

.field public static final CONSTANT_INT_EIGHT:I = 0x8

.field public static final CONSTANT_INT_EIGHTEEN:I = 0x12

.field public static final CONSTANT_INT_ELEVEN:I = 0xb

.field public static final CONSTANT_INT_FIFTEEN:I = 0xf

.field public static final CONSTANT_INT_FIVE:I = 0x5

.field public static final CONSTANT_INT_FORE:I = 0x4

.field public static final CONSTANT_INT_FOURTEEN:I = 0xe

.field public static final CONSTANT_INT_NINE:I = 0x9

.field public static final CONSTANT_INT_NINETY:I = 0x5a

.field public static final CONSTANT_INT_ONE_HUNDRED:I = 0x64

.field public static final CONSTANT_INT_ONE_HUNDRED_TEENTY:I = 0x78

.field public static final CONSTANT_INT_ONE_THOUSAND:I = 0x3e8

.field public static final CONSTANT_INT_SEVEN:I = 0x7

.field public static final CONSTANT_INT_SIX:I = 0x6

.field public static final CONSTANT_INT_SIXTEEN:I = 0x10

.field public static final CONSTANT_INT_SIXTY:I = 0x3c

.field public static final CONSTANT_INT_TEN:I = 0xa

.field public static final CONSTANT_INT_THIRTEEN:I = 0xd

.field public static final CONSTANT_INT_THIRTY:I = 0x1e

.field public static final CONSTANT_INT_THREE:I = 0x3

.field public static final CONSTANT_INT_THREE_HUNDRED:I = 0x12c

.field public static final CONSTANT_INT_THTEE_HUNDRED_THIRTY:I = 0x14a

.field public static final CONSTANT_INT_TWELVE:I = 0xc

.field public static final CONSTANT_INT_TWO_HUNDRED_SEVENTY:I = 0x10e

.field public static final DEBUG:Z = false

.field public static final INT_TWENTY_FOUR:I = 0x18

.field public static final TWO_FIVE_FIVE:I = 0xff

.field private static sStringMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static alphaColor(IF)I
    .locals 2
    .param p0, "paramInt"    # I
    .param p1, "paramFloat"    # F

    .line 307
    const v0, 0xffffff

    and-int/2addr v0, p0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public static getPrice(D)Ljava/lang/String;
    .locals 2
    .param p0, "price"    # D

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, "result":Ljava/lang/String;
    invoke-static {v0}, Lcom/coui/appcompat/util/UIUtil;->removeZero(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getPx(Landroid/content/Context;I)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I

    .line 156
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 157
    .local v0, "pxValue":I
    return v0
.end method

.method public static getScreenHeight(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 200
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 201
    .local v0, "dm":Landroid/util/DisplayMetrics;
    const-string v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 202
    .local v1, "manager":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 203
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v2
.end method

.method public static getScreenSize(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 187
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 188
    .local v0, "dm":Landroid/util/DisplayMetrics;
    const-string v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 189
    .local v1, "manager":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 190
    const/4 v2, 0x0

    .line 191
    .local v2, "screenSize":Ljava/lang/String;
    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le v3, v4, :cond_0

    .line 192
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 194
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 196
    :goto_0
    return-object v2
.end method

.method public static getScreenWidth(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 207
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 208
    .local v0, "dm":Landroid/util/DisplayMetrics;
    const-string v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 209
    .local v1, "manager":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 210
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v2
.end method

.method public static getStatusBarHeight(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 120
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 121
    .local v0, "resourceId":I
    const/4 v1, -0x1

    .line 122
    .local v1, "statusBarHeight":I
    if-lez v0, :cond_0

    .line 124
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 127
    goto :goto_0

    .line 125
    :catch_0
    move-exception v2

    .line 126
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 129
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return v1
.end method

.method public static getString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "strId"    # I

    .line 78
    sget-object v0, Lcom/coui/appcompat/util/UIUtil;->sStringMap:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/coui/appcompat/util/UIUtil;->sStringMap:Landroid/util/SparseArray;

    .line 81
    :cond_0
    sget-object v0, Lcom/coui/appcompat/util/UIUtil;->sStringMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 82
    .local v0, "str":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 83
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 84
    sget-object v1, Lcom/coui/appcompat/util/UIUtil;->sStringMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 86
    :cond_1
    return-object v0
.end method

.method public static initEditViewCursor(Landroid/widget/TextView;I)V
    .locals 4
    .param p0, "et"    # Landroid/widget/TextView;
    .param p1, "position"    # I

    .line 95
    if-nez p0, :cond_0

    .line 96
    return-void

    .line 98
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 99
    .local v0, "text":Ljava/lang/CharSequence;
    instance-of v1, v0, Landroid/text/Spannable;

    if-eqz v1, :cond_2

    .line 100
    move-object v1, v0

    check-cast v1, Landroid/text/Spannable;

    .line 101
    .local v1, "spanText":Landroid/text/Spannable;
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-gt p1, v2, :cond_1

    .line 102
    invoke-static {v1, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto :goto_0

    .line 105
    :cond_1
    :try_start_0
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "the cursor of EditText is indexOutOfBoundException!!!!!"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :catch_0
    move-exception v2

    .line 107
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 111
    .end local v1    # "spanText":Landroid/text/Spannable;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_0
    return-void
.end method

.method public static isInMarketStack(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 139
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity"

    .line 140
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 141
    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 142
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 143
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 145
    :cond_0
    return v2
.end method

.method public static isInVisibleRect(Landroid/view/View;)Z
    .locals 4
    .param p0, "view"    # Landroid/view/View;

    .line 220
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    .line 221
    .local v0, "visibleRect":Z
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    .line 222
    .local v1, "visibility":I
    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v2

    .line 223
    .local v2, "isShown":Z
    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method public static makeGradientDrawable(II)Landroid/graphics/drawable/GradientDrawable;
    .locals 3
    .param p0, "startColor"    # I
    .param p1, "endColor"    # I

    .line 260
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 261
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 262
    .local v0, "gd":Landroid/graphics/drawable/GradientDrawable;
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    const/4 v2, 0x1

    aput p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    .line 263
    return-object v0

    .line 265
    .end local v0    # "gd":Landroid/graphics/drawable/GradientDrawable;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static makeSelector(II)Landroid/graphics/drawable/StateListDrawable;
    .locals 2
    .param p0, "normalColor"    # I
    .param p1, "pressedColor"    # I

    .line 303
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-static {v0, v1}, Lcom/coui/appcompat/util/UIUtil;->makeSelector(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    return-object v0
.end method

.method public static makeSelector(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;
    .locals 4
    .param p0, "normal"    # Landroid/graphics/drawable/Drawable;
    .param p1, "pressed"    # Landroid/graphics/drawable/Drawable;

    .line 277
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 279
    .local v0, "drawable":Landroid/graphics/drawable/StateListDrawable;
    const/4 v1, 0x3

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    invoke-virtual {v0, v2, p0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 281
    new-array v2, v1, [I

    fill-array-data v2, :array_1

    invoke-virtual {v0, v2, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 284
    new-array v2, v1, [I

    fill-array-data v2, :array_2

    invoke-virtual {v0, v2, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 286
    new-array v1, v1, [I

    fill-array-data v1, :array_3

    invoke-virtual {v0, v1, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 289
    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_4

    invoke-virtual {v0, v1, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 290
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const v3, 0x10100a7

    aput v3, v1, v2

    invoke-virtual {v0, v1, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 292
    return-object v0

    :array_0
    .array-data 4
        -0x101009c
        -0x10100a1
        -0x10100a7
    .end array-data

    :array_1
    .array-data 4
        -0x101009c
        0x10100a1
        -0x10100a7
    .end array-data

    :array_2
    .array-data 4
        0x101009c
        -0x10100a1
        -0x10100a7
    .end array-data

    :array_3
    .array-data 4
        0x101009c
        0x10100a1
        -0x10100a7
    .end array-data

    :array_4
    .array-data 4
        0x10100a1
        0x10100a7
    .end array-data
.end method

.method public static makeShapeDrawable(FIII)Landroid/graphics/drawable/GradientDrawable;
    .locals 2
    .param p0, "roundRadius"    # F
    .param p1, "strokeWidth"    # I
    .param p2, "strokeColor"    # I
    .param p3, "solidColor"    # I

    .line 239
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 240
    .local v0, "gd":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v0, p3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 241
    const/4 v1, 0x0

    cmpl-float v1, p0, v1

    if-lez v1, :cond_0

    .line 242
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 244
    :cond_0
    if-lez p1, :cond_1

    .line 245
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 247
    :cond_1
    return-object v0
.end method

.method public static removeZero(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .line 179
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 180
    const-string v0, "0+?$"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 181
    const-string v0, "[.]$"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 183
    :cond_0
    return-object p0
.end method
