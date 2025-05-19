.class public Lcom/coui/appcompat/util/COUIChangeTextUtil;
.super Ljava/lang/Object;
.source "COUIChangeTextUtil.java"


# static fields
.field public static final G1:I = 0x1

.field public static final G2:I = 0x2

.field public static final G3:I = 0x3

.field public static final G4:I = 0x4

.field public static final G5:I = 0x5

.field public static final GN:I = 0x6

.field private static final H1:F = 0.9f

.field private static final H2:F = 1.0f

.field private static final H3:F = 1.1f

.field private static final H4:F = 1.25f

.field private static final H5:F = 1.45f

.field private static final H6:F = 1.65f

.field public static final MEDIUM_FONT:Ljava/lang/String; = "sans-serif-medium"

.field public static final SCALE_LEVEL:[F

.field private static final TAG:Ljava/lang/String; = "COUIChangeTextUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    const/4 v0, 0x6

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/coui/appcompat/util/COUIChangeTextUtil;->SCALE_LEVEL:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3f666666    # 0.9f
        0x3f800000    # 1.0f
        0x3f8ccccd    # 1.1f
        0x3fa00000    # 1.25f
        0x3fb9999a    # 1.45f
        0x3fd33333    # 1.65f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    return-void
.end method

.method public static adaptBoldAndMediumFont(Landroid/graphics/Paint;Z)V
    .locals 2
    .param p0, "paint"    # Landroid/graphics/Paint;
    .param p1, "isBold"    # Z

    .line 175
    if-eqz p0, :cond_2

    .line 176
    invoke-static {}, Lcom/coui/appcompat/util/COUIVersionUtil;->getOSVersionCode()I

    move-result v0

    const/16 v1, 0xc

    if-ge v0, v1, :cond_0

    .line 177
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    goto :goto_1

    .line 179
    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "sans-serif-medium"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    :goto_0
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 182
    :cond_2
    :goto_1
    return-void
.end method

.method public static adaptBoldAndMediumFont(Landroid/widget/TextView;Z)V
    .locals 2
    .param p0, "textView"    # Landroid/widget/TextView;
    .param p1, "isBold"    # Z

    .line 159
    if-eqz p0, :cond_2

    .line 160
    invoke-static {}, Lcom/coui/appcompat/util/COUIVersionUtil;->getOSVersionCode()I

    move-result v0

    const/16 v1, 0xc

    if-ge v0, v1, :cond_0

    .line 161
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    goto :goto_1

    .line 163
    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "sans-serif-medium"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 166
    :cond_2
    :goto_1
    return-void
.end method

.method public static adaptFontSize(Landroid/widget/TextView;I)V
    .locals 4
    .param p0, "textView"    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "scaleLevel"    # I

    .line 191
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    .line 192
    .local v0, "textSizePixel":F
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->fontScale:F

    .line 193
    .local v1, "fontScale":F
    invoke-static {v0, v1, p1}, Lcom/coui/appcompat/util/COUIChangeTextUtil;->getSuitableFontSize(FFI)F

    move-result v2

    .line 194
    .local v2, "fontSize":F
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 195
    return-void
.end method

.method private static getSuitableFontScale(FI)F
    .locals 3
    .param p0, "scale"    # F
    .param p1, "level"    # I

    .line 123
    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    .line 124
    return p0

    .line 126
    :cond_0
    sget-object v0, Lcom/coui/appcompat/util/COUIChangeTextUtil;->SCALE_LEVEL:[F

    array-length v0, v0

    if-le p1, v0, :cond_1

    .line 127
    sget-object v0, Lcom/coui/appcompat/util/COUIChangeTextUtil;->SCALE_LEVEL:[F

    array-length p1, v0

    .line 129
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    const v1, 0x3f8ccccd    # 1.1f

    packed-switch p1, :pswitch_data_0

    .line 145
    sget-object v0, Lcom/coui/appcompat/util/COUIChangeTextUtil;->SCALE_LEVEL:[F

    add-int/lit8 v1, p1, -0x1

    aget v0, v0, v1

    cmpl-float v0, p0, v0

    if-lez v0, :cond_5

    .line 146
    sget-object v0, Lcom/coui/appcompat/util/COUIChangeTextUtil;->SCALE_LEVEL:[F

    add-int/lit8 v1, p1, -0x1

    aget v0, v0, v1

    return v0

    .line 136
    :pswitch_0
    cmpg-float v2, p0, v1

    if-gez v2, :cond_2

    .line 137
    return v0

    .line 139
    :cond_2
    const v0, 0x3fb9999a    # 1.45f

    cmpg-float v0, p0, v0

    if-gez v0, :cond_3

    .line 140
    return v1

    .line 143
    :cond_3
    const/high16 v0, 0x3fa00000    # 1.25f

    return v0

    .line 131
    :pswitch_1
    cmpg-float v2, p0, v1

    if-gez v2, :cond_4

    .line 132
    return v0

    .line 134
    :cond_4
    return v1

    .line 148
    :cond_5
    return p0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getSuitableFontSize(FFI)F
    .locals 4
    .param p0, "textSize"    # F
    .param p1, "scale"    # F
    .param p2, "level"    # I

    .line 91
    const/4 v0, 0x2

    if-ge p2, v0, :cond_0

    .line 92
    return p0

    .line 94
    :cond_0
    sget-object v0, Lcom/coui/appcompat/util/COUIChangeTextUtil;->SCALE_LEVEL:[F

    array-length v0, v0

    if-le p2, v0, :cond_1

    .line 95
    sget-object v0, Lcom/coui/appcompat/util/COUIChangeTextUtil;->SCALE_LEVEL:[F

    array-length p2, v0

    .line 97
    :cond_1
    div-float v0, p0, p1

    .line 98
    .local v0, "textSizeNoScale":F
    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3f8ccccd    # 1.1f

    packed-switch p2, :pswitch_data_0

    .line 114
    sget-object v1, Lcom/coui/appcompat/util/COUIChangeTextUtil;->SCALE_LEVEL:[F

    add-int/lit8 v2, p2, -0x1

    aget v1, v1, v2

    cmpl-float v1, p1, v1

    if-lez v1, :cond_5

    .line 115
    sget-object v1, Lcom/coui/appcompat/util/COUIChangeTextUtil;->SCALE_LEVEL:[F

    add-int/lit8 v2, p2, -0x1

    aget v1, v1, v2

    mul-float/2addr v1, v0

    return v1

    .line 105
    :pswitch_0
    cmpg-float v3, p1, v2

    if-gez v3, :cond_2

    .line 106
    mul-float/2addr v1, v0

    return v1

    .line 108
    :cond_2
    const v1, 0x3fb9999a    # 1.45f

    cmpg-float v1, p1, v1

    if-gez v1, :cond_3

    .line 109
    mul-float/2addr v2, v0

    return v2

    .line 112
    :cond_3
    const/high16 v1, 0x3fa00000    # 1.25f

    mul-float/2addr v1, v0

    return v1

    .line 100
    :pswitch_1
    cmpg-float v3, p1, v2

    if-gez v3, :cond_4

    .line 101
    mul-float/2addr v1, v0

    return v1

    .line 103
    :cond_4
    mul-float/2addr v2, v0

    return v2

    .line 117
    :cond_5
    mul-float v1, v0, p1

    return v1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
