.class public Lcom/coui/appcompat/util/COUIUnitConversionUtils;
.super Ljava/lang/Object;
.source "COUIUnitConversionUtils.java"


# static fields
.field private static final HUNDRED:D = 100.0

.field private static final MILLION:D = 1000000.0

.field private static final NOPOINT:Ljava/lang/String; = "0"

.field private static final ONEPOINT:Ljava/lang/String; = "0.0"

.field private static final SIXPOINT:Ljava/lang/String; = "0.00000"

.field private static final SPECIAL:D = 1024.0

.field private static final SQUARE_FIVE:I = 0x5

.field private static final SQUARE_FOUR:I = 0x4

.field private static final SQUARE_THREE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "COUIUnitConversionUtils"

.field private static final TEN:D = 10.0

.field private static final THOUSAND:D = 1000.0

.field private static final TWOPOINT:Ljava/lang/String; = "0.00"


# instance fields
.field private mByteShort:Ljava/lang/String;

.field private mByteSpeed:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mGigaByteShort:Ljava/lang/String;

.field private mGigaByteSpeed:Ljava/lang/String;

.field private mKiloByteShort:Ljava/lang/String;

.field private mKiloByteSpeed:Ljava/lang/String;

.field private mMegaByteShort:Ljava/lang/String;

.field private mMegaByteSpeed:Ljava/lang/String;

.field private mMoreDownLoad:Ljava/lang/String;

.field private mMostDownLoad:Ljava/lang/String;

.field private mPetaByteShort:Ljava/lang/String;

.field private mPetaByteSpeed:Ljava/lang/String;

.field private mSpecialPoint:Ljava/lang/String;

.field private mTeraByteShort:Ljava/lang/String;

.field private mTeraByteSpeed:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->mMoreDownLoad:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->mMostDownLoad:Ljava/lang/String;

    .line 51
    const-string v0, "0.98"

    iput-object v0, p0, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->mSpecialPoint:Ljava/lang/String;

    .line 73
    iput-object p1, p0, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->mContext:Landroid/content/Context;

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$string;->more_time_download:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->mMoreDownLoad:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$string;->most_time_download:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->mMostDownLoad:Ljava/lang/String;

    .line 78
    const-string v0, "0.00"

    const-wide v1, 0x3fef5c28f5c28f5cL    # 0.98

    invoke-direct {p0, v1, v2, v0}, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->formatLocaleNumber(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->mSpecialPoint:Ljava/lang/String;

    .line 80
    iget-object v0, p0, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$string;->byteShort:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->mByteShort:Ljava/lang/String;

    .line 81
    iget-object v0, p0, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$string;->kilobyteShort:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->mKiloByteShort:Ljava/lang/String;

    .line 82
    iget-object v0, p0, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$string;->megabyteShort:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->mMegaByteShort:Ljava/lang/String;

    .line 83
    iget-object v0, p0, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$string;->gigabyteShort:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->mGigaByteShort:Ljava/lang/String;

    .line 84
    iget-object v0, p0, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$string;->terabyteShort:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->mTeraByteShort:Ljava/lang/String;

    .line 85
    iget-object v0, p0, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$string;->petabyteShort:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->mPetaByteShort:Ljava/lang/String;

    .line 86
    iget-object v0, p0, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$string;->byteSpeed:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->mByteSpeed:Ljava/lang/String;

    .line 87
    iget-object v0, p0, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$string;->kiloByteSpeed:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->mKiloByteSpeed:Ljava/lang/String;

    .line 88
    iget-object v0, p0, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$string;->megaByteSpeed:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->mMegaByteSpeed:Ljava/lang/String;

    .line 89
    iget-object v0, p0, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$string;->gigaByteSpeed:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->mGigaByteSpeed:Ljava/lang/String;

    .line 90
    iget-object v0, p0, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$string;->teraByteSpeed:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->mTeraByteSpeed:Ljava/lang/String;

    .line 91
    iget-object v0, p0, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$string;->petaByteSpeed:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->mPetaByteSpeed:Ljava/lang/String;

    .line 92
    return-void
.end method

.method private formatLocaleNumber(DLjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "number"    # D
    .param p3, "pointNum"    # Ljava/lang/String;

    .line 116
    new-instance v0, Ljava/text/DecimalFormat;

    new-instance v1, Ljava/text/DecimalFormatSymbols;

    iget-object v2, p0, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {v1, v2}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-direct {v0, p3, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    .line 118
    .local v0, "df":Ljava/text/DecimalFormat;
    invoke-virtual {v0, p1, p2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, "stringNum":Ljava/lang/String;
    return-object v1
.end method

.method private formatNumber(DLjava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .param p1, "number"    # D
    .param p3, "pointNum"    # Ljava/lang/String;
    .param p4, "isRound"    # Z

    .line 105
    new-instance v0, Ljava/text/DecimalFormat;

    new-instance v1, Ljava/text/DecimalFormatSymbols;

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v1, v2}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-direct {v0, p3, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    .line 106
    .local v0, "df":Ljava/text/DecimalFormat;
    if-nez p4, :cond_0

    .line 107
    sget-object v1, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    goto :goto_0

    .line 109
    :cond_0
    sget-object v1, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    .line 111
    :goto_0
    invoke-virtual {v0, p1, p2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, "stringNum":Ljava/lang/String;
    return-object v1
.end method

.method private getChineseDownloadValue(J)Ljava/lang/String;
    .locals 9
    .param p1, "number"    # J

    .line 123
    const/4 v0, 0x0

    .line 124
    .local v0, "downloadValue":Ljava/lang/String;
    const-wide/16 v1, 0x0

    cmp-long v3, v1, p1

    const-wide v4, 0x40c3880000000000L    # 10000.0

    if-gtz v3, :cond_1

    long-to-double v6, p1

    cmpg-double v3, v6, v4

    if-gez v3, :cond_1

    .line 125
    cmp-long v1, p1, v1

    if-nez v1, :cond_0

    .line 126
    const-wide/16 v1, 0x1

    add-long/2addr p1, v1

    .line 128
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 130
    :cond_1
    long-to-double v1, p1

    cmpg-double v1, v4, v1

    const-wide v2, 0x40f86a0000000000L    # 100000.0

    const/4 v6, 0x1

    if-gtz v1, :cond_3

    long-to-double v7, p1

    cmpg-double v1, v7, v2

    if-gez v1, :cond_3

    .line 131
    long-to-double v1, p1

    div-double/2addr v1, v4

    const-string v3, "0.0"

    invoke-direct {p0, v1, v2, v3, v6}, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->formatNumber(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    .line 132
    .local v1, "value":D
    double-to-int v3, v1

    .line 133
    .local v3, "temp":I
    int-to-double v4, v3

    cmpl-double v4, v1, v4

    if-nez v4, :cond_2

    .line 134
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->mMoreDownLoad:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 136
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->mMoreDownLoad:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 139
    .end local v1    # "value":D
    .end local v3    # "temp":I
    :goto_0
    goto/16 :goto_2

    :cond_3
    long-to-double v7, p1

    cmpg-double v1, v2, v7

    const-wide v2, 0x412e848000000000L    # 1000000.0

    if-gtz v1, :cond_5

    long-to-double v7, p1

    cmpg-double v1, v7, v2

    if-gez v1, :cond_5

    .line 140
    long-to-double v1, p1

    div-double/2addr v1, v4

    const-string v3, "0.0"

    invoke-direct {p0, v1, v2, v3, v6}, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->formatNumber(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    .line 141
    .restart local v1    # "value":D
    double-to-int v3, v1

    .line 142
    .restart local v3    # "temp":I
    int-to-double v4, v3

    cmpl-double v4, v1, v4

    if-nez v4, :cond_4

    .line 143
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->mMoreDownLoad:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 145
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->mMoreDownLoad:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 148
    .end local v1    # "value":D
    .end local v3    # "temp":I
    :goto_1
    goto/16 :goto_2

    :cond_5
    long-to-double v7, p1

    cmpg-double v1, v2, v7

    const-wide v2, 0x416312d000000000L    # 1.0E7

    if-gtz v1, :cond_6

    long-to-double v7, p1

    cmpg-double v1, v7, v2

    if-gez v1, :cond_6

    .line 149
    long-to-double v1, p1

    div-double/2addr v1, v4

    const-string v3, "0.00"

    invoke-direct {p0, v1, v2, v3, v6}, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->formatNumber(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    .line 150
    .restart local v1    # "value":D
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    double-to-int v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->mMoreDownLoad:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 152
    .end local v1    # "value":D
    goto :goto_2

    :cond_6
    long-to-double v7, p1

    cmpg-double v1, v2, v7

    const-wide v2, 0x4197d78400000000L    # 1.0E8

    if-gtz v1, :cond_7

    long-to-double v7, p1

    cmpg-double v1, v7, v2

    if-gez v1, :cond_7

    .line 153
    long-to-double v1, p1

    div-double/2addr v1, v4

    const-string v3, "0.00"

    invoke-direct {p0, v1, v2, v3, v6}, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->formatNumber(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    .line 154
    .restart local v1    # "value":D
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    double-to-int v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->mMoreDownLoad:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 156
    .end local v1    # "value":D
    goto :goto_2

    :cond_7
    long-to-double v4, p1

    cmpl-double v1, v4, v2

    if-ltz v1, :cond_8

    .line 157
    long-to-double v4, p1

    div-double/2addr v4, v2

    const-string v1, "0.00000"

    invoke-direct {p0, v4, v5, v1, v6}, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->formatNumber(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    .line 158
    .restart local v1    # "value":D
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0.0"

    const/4 v5, 0x0

    invoke-direct {p0, v1, v2, v4, v5}, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->formatNumber(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->mMostDownLoad:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 160
    .end local v1    # "value":D
    nop

    .line 163
    :goto_2
    return-object v0

    .line 161
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "the value of the incoming is wrong"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getChineseStripValue(J)Ljava/lang/String;
    .locals 9
    .param p1, "number"    # J

    .line 213
    const/4 v0, 0x0

    .line 214
    .local v0, "stripValue":Ljava/lang/String;
    const-wide/16 v1, 0x0

    cmp-long v1, v1, p1

    const-wide v2, 0x40c3880000000000L    # 10000.0

    if-gtz v1, :cond_0

    long-to-double v4, p1

    cmpg-double v1, v4, v2

    if-gez v1, :cond_0

    .line 215
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 217
    :cond_0
    long-to-double v4, p1

    cmpg-double v1, v2, v4

    const/4 v4, 0x1

    const-wide v5, 0x412e848000000000L    # 1000000.0

    if-gtz v1, :cond_2

    long-to-double v7, p1

    cmpg-double v1, v7, v5

    if-gez v1, :cond_2

    .line 218
    long-to-double v5, p1

    div-double/2addr v5, v2

    const-string v1, "0.0"

    invoke-direct {p0, v5, v6, v1, v4}, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->formatNumber(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    .line 219
    .local v1, "value":D
    double-to-int v3, v1

    .line 220
    .local v3, "temp":I
    int-to-double v4, v3

    cmpl-double v4, v1, v4

    if-nez v4, :cond_1

    .line 221
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->mMoreDownLoad:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 223
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->mMoreDownLoad:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 226
    .end local v1    # "value":D
    .end local v3    # "temp":I
    :goto_0
    goto :goto_1

    :cond_2
    long-to-double v7, p1

    cmpg-double v1, v5, v7

    if-gtz v1, :cond_3

    long-to-double v5, p1

    const-wide v7, 0x4197d78400000000L    # 1.0E8

    cmpg-double v1, v5, v7

    if-gez v1, :cond_3

    .line 227
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double v5, p1

    div-double/2addr v5, v2

    const-string v2, "0"

    invoke-direct {p0, v5, v6, v2, v4}, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->formatNumber(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->mMoreDownLoad:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 232
    :goto_1
    return-object v0

    .line 230
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "the value of the incoming is wrong"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getEnglishDownloadValue(J)Ljava/lang/String;
    .locals 11
    .param p1, "number"    # J

    .line 167
    const/4 v0, 0x0

    .line 168
    .local v0, "downloadValue":Ljava/lang/String;
    const-wide/16 v1, 0x0

    cmp-long v3, v1, p1

    const-wide v4, 0x40c3880000000000L    # 10000.0

    if-gtz v3, :cond_1

    long-to-double v6, p1

    cmpg-double v3, v6, v4

    if-gez v3, :cond_1

    .line 169
    cmp-long v1, p1, v1

    if-nez v1, :cond_0

    .line 170
    const-wide/16 v1, 0x1

    add-long/2addr p1, v1

    .line 172
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 174
    :cond_1
    long-to-double v1, p1

    cmpg-double v1, v4, v1

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    const-wide v6, 0x40f86a0000000000L    # 100000.0

    const/4 v8, 0x1

    if-gtz v1, :cond_2

    long-to-double v9, p1

    cmpg-double v1, v9, v6

    if-gez v1, :cond_2

    .line 175
    long-to-double v6, p1

    div-double/2addr v6, v4

    const-string v1, "0.0"

    invoke-direct {p0, v6, v7, v1, v8}, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->formatNumber(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 176
    .local v4, "value":D
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->mMoreDownLoad:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 178
    .end local v4    # "value":D
    goto/16 :goto_2

    :cond_2
    long-to-double v9, p1

    cmpg-double v1, v6, v9

    const-wide v6, 0x412e848000000000L    # 1000000.0

    if-gtz v1, :cond_3

    long-to-double v9, p1

    cmpg-double v1, v9, v6

    if-gez v1, :cond_3

    .line 179
    long-to-double v6, p1

    div-double/2addr v6, v4

    const-string v1, "0.0"

    invoke-direct {p0, v6, v7, v1, v8}, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->formatNumber(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 180
    .restart local v4    # "value":D
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->mMoreDownLoad:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 182
    .end local v4    # "value":D
    goto/16 :goto_2

    :cond_3
    long-to-double v1, p1

    cmpg-double v1, v6, v1

    const-wide v2, 0x416312d000000000L    # 1.0E7

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    if-gtz v1, :cond_5

    long-to-double v9, p1

    cmpg-double v1, v9, v2

    if-gez v1, :cond_5

    .line 183
    long-to-double v1, p1

    div-double/2addr v1, v4

    const-string v3, "0.00"

    invoke-direct {p0, v1, v2, v3, v8}, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->formatNumber(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 184
    .local v1, "tempString":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    div-double/2addr v2, v6

    .line 185
    .local v2, "value":D
    double-to-int v4, v2

    .line 186
    .local v4, "temp":I
    int-to-double v5, v4

    cmpl-double v5, v2, v5

    if-nez v5, :cond_4

    .line 187
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->mMostDownLoad:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 189
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->mMostDownLoad:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 192
    .end local v1    # "tempString":Ljava/lang/String;
    .end local v2    # "value":D
    .end local v4    # "temp":I
    :goto_0
    goto/16 :goto_2

    :cond_5
    long-to-double v9, p1

    cmpg-double v1, v2, v9

    const-wide v2, 0x4197d78400000000L    # 1.0E8

    if-gtz v1, :cond_7

    long-to-double v9, p1

    cmpg-double v1, v9, v2

    if-gez v1, :cond_7

    .line 193
    long-to-double v1, p1

    div-double/2addr v1, v4

    const-string v3, "0.00"

    invoke-direct {p0, v1, v2, v3, v8}, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->formatNumber(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 194
    .restart local v1    # "tempString":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    div-double/2addr v2, v6

    .line 195
    .restart local v2    # "value":D
    double-to-int v4, v2

    .line 196
    .restart local v4    # "temp":I
    int-to-double v5, v4

    cmpl-double v5, v2, v5

    if-nez v5, :cond_6

    .line 197
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->mMostDownLoad:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 199
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->mMostDownLoad:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 202
    .end local v1    # "tempString":Ljava/lang/String;
    .end local v2    # "value":D
    .end local v4    # "temp":I
    :goto_1
    goto :goto_2

    :cond_7
    long-to-double v4, p1

    cmpl-double v1, v4, v2

    if-ltz v1, :cond_8

    .line 203
    long-to-double v4, p1

    div-double/2addr v4, v2

    const-string v1, "0.00000"

    invoke-direct {p0, v4, v5, v1, v8}, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->formatNumber(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    .line 204
    .local v1, "value":D
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0.0"

    const/4 v5, 0x0

    invoke-direct {p0, v1, v2, v4, v5}, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->formatNumber(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    mul-double/2addr v4, v6

    double-to-int v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->mMostDownLoad:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 206
    .end local v1    # "value":D
    nop

    .line 209
    :goto_2
    return-object v0

    .line 207
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "the value of the incoming is wrong"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getEnglishStripValue(J)Ljava/lang/String;
    .locals 11
    .param p1, "number"    # J

    .line 236
    const/4 v0, 0x0

    .line 237
    .local v0, "stripValue":Ljava/lang/String;
    const-wide/16 v1, 0x0

    cmp-long v1, v1, p1

    const-wide v2, 0x40c3880000000000L    # 10000.0

    if-gtz v1, :cond_0

    long-to-double v4, p1

    cmpg-double v1, v4, v2

    if-gez v1, :cond_0

    .line 238
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 240
    :cond_0
    long-to-double v4, p1

    cmpg-double v1, v2, v4

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    const/4 v6, 0x1

    const-wide v7, 0x412e848000000000L    # 1000000.0

    if-gtz v1, :cond_1

    long-to-double v9, p1

    cmpg-double v1, v9, v7

    if-gez v1, :cond_1

    .line 241
    long-to-double v7, p1

    div-double/2addr v7, v2

    const-string v1, "0.0"

    invoke-direct {p0, v7, v8, v1, v6}, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->formatNumber(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    .line 242
    .local v1, "value":D
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    mul-double/2addr v4, v1

    double-to-int v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->mMoreDownLoad:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 244
    .end local v1    # "value":D
    goto :goto_0

    :cond_1
    long-to-double v9, p1

    cmpg-double v1, v7, v9

    if-gtz v1, :cond_2

    long-to-double v7, p1

    const-wide v9, 0x4197d78400000000L    # 1.0E8

    cmpg-double v1, v7, v9

    if-gez v1, :cond_2

    .line 245
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double v7, p1

    div-double/2addr v7, v2

    const-string v2, "0"

    invoke-direct {p0, v7, v8, v2, v6}, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->formatNumber(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->mMoreDownLoad:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 250
    :goto_0
    return-object v0

    .line 248
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "the value of the incoming is wrong"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private isChinese()Z
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "country":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v1, "CN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "TW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "HK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 98
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 100
    :cond_1
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public getDownLoadValue(J)Ljava/lang/String;
    .locals 2
    .param p1, "number"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 651
    const/4 v0, 0x0

    .line 652
    .local v0, "downloadValue":Ljava/lang/String;
    invoke-direct {p0}, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->isChinese()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 653
    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->getChineseDownloadValue(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 655
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->getEnglishDownloadValue(J)Ljava/lang/String;

    move-result-object v0

    .line 658
    :goto_0
    return-object v0
.end method

.method public getDownLoadValue(JLjava/util/Locale;)Ljava/lang/String;
    .locals 3
    .param p1, "number"    # J
    .param p3, "local"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 688
    const/4 v0, 0x0

    .line 689
    .local v0, "downloadValue":Ljava/lang/String;
    const/4 v1, 0x0

    .line 690
    .local v1, "country":Ljava/lang/String;
    if-eqz p3, :cond_0

    .line 691
    invoke-virtual {p3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 693
    :cond_0
    if-eqz v1, :cond_2

    const-string v2, "CN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "TW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "HK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 694
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->getChineseDownloadValue(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 695
    :cond_2
    if-eqz v1, :cond_3

    .line 696
    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->getEnglishDownloadValue(J)Ljava/lang/String;

    move-result-object v0

    .line 699
    :cond_3
    :goto_0
    return-object v0
.end method

.method public getSpeedValue(J)Ljava/lang/String;
    .locals 22
    .param p1, "number"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 480
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    const/4 v3, 0x0

    .line 482
    .local v3, "speedValue":Ljava/lang/String;
    const-wide/16 v4, 0x0

    cmp-long v4, v4, v1

    const/4 v5, 0x1

    const-wide v6, 0x408f400000000000L    # 1000.0

    const-wide/high16 v8, 0x4090000000000000L    # 1024.0

    if-gtz v4, :cond_1

    long-to-double v10, v1

    cmpg-double v4, v10, v6

    if-gez v4, :cond_1

    .line 483
    long-to-double v10, v1

    const-string v4, "0"

    invoke-direct {v0, v10, v11, v4, v5}, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->formatNumber(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 484
    .local v4, "tempString":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 485
    .local v10, "temp":J
    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    const-string v5, "0"

    invoke-direct {v0, v12, v13, v5}, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->formatLocaleNumber(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 486
    long-to-double v12, v10

    cmpg-double v5, v6, v12

    if-gtz v5, :cond_0

    long-to-double v5, v10

    cmpg-double v5, v5, v8

    if-gez v5, :cond_0

    .line 487
    invoke-virtual {v0, v10, v11}, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->getUnitValue(J)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 489
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->mByteSpeed:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 492
    .end local v4    # "tempString":Ljava/lang/String;
    .end local v10    # "temp":J
    goto/16 :goto_0

    :cond_1
    long-to-double v10, v1

    cmpg-double v4, v6, v10

    const-wide v10, 0x412f400000000000L    # 1024000.0

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    if-gtz v4, :cond_3

    long-to-double v6, v1

    cmpg-double v4, v6, v10

    if-gez v4, :cond_3

    .line 493
    long-to-double v6, v1

    div-double/2addr v6, v8

    const-string v4, "0"

    invoke-direct {v0, v6, v7, v4, v5}, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->formatNumber(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 494
    .restart local v4    # "tempString":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v16, 0x400

    mul-long v5, v5, v16

    .line 495
    .local v5, "temp":J
    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    const-string v7, "0"

    invoke-direct {v0, v14, v15, v7}, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->formatLocaleNumber(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 496
    long-to-double v14, v5

    cmpg-double v7, v10, v14

    if-gtz v7, :cond_2

    long-to-double v10, v5

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    mul-double/2addr v7, v12

    cmpg-double v7, v10, v7

    if-gez v7, :cond_2

    .line 497
    invoke-virtual {v0, v5, v6}, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->getUnitValue(J)Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 499
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->mKiloByteSpeed:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 502
    .end local v4    # "tempString":Ljava/lang/String;
    .end local v5    # "temp":J
    goto/16 :goto_0

    :cond_3
    long-to-double v6, v1

    cmpg-double v4, v10, v6

    if-gtz v4, :cond_5

    long-to-double v6, v1

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    mul-double/2addr v10, v14

    cmpg-double v4, v6, v10

    if-gez v4, :cond_5

    .line 504
    long-to-double v6, v1

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    div-double/2addr v6, v10

    const-string v4, "0.0"

    invoke-direct {v0, v6, v7, v4, v5}, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->formatNumber(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 505
    .restart local v4    # "tempString":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    mul-double/2addr v5, v10

    double-to-long v5, v5

    .line 506
    .restart local v5    # "temp":J
    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    const-string v7, "0.0"

    invoke-direct {v0, v10, v11, v7}, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->formatLocaleNumber(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 507
    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    mul-double/2addr v10, v14

    long-to-double v14, v5

    cmpg-double v7, v10, v14

    if-gtz v7, :cond_4

    long-to-double v10, v5

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    const-wide v12, 0x408f400000000000L    # 1000.0

    mul-double/2addr v7, v12

    cmpg-double v7, v10, v7

    if-gez v7, :cond_4

    .line 508
    invoke-virtual {v0, v5, v6}, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->getUnitValue(J)Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 510
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->mMegaByteSpeed:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 513
    .end local v4    # "tempString":Ljava/lang/String;
    .end local v5    # "temp":J
    goto/16 :goto_0

    :cond_5
    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    mul-double/2addr v6, v10

    long-to-double v10, v1

    cmpg-double v4, v6, v10

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    if-gtz v4, :cond_7

    long-to-double v10, v1

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    const-wide v16, 0x408f400000000000L    # 1000.0

    mul-double v14, v14, v16

    cmpg-double v4, v10, v14

    if-gez v4, :cond_7

    .line 515
    long-to-double v10, v1

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    div-double/2addr v10, v14

    const-string v4, "0"

    invoke-direct {v0, v10, v11, v4, v5}, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->formatNumber(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 516
    .restart local v4    # "tempString":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    mul-double/2addr v10, v14

    double-to-long v10, v10

    .line 517
    .restart local v10    # "temp":J
    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    const-string v5, "0"

    invoke-direct {v0, v14, v15, v5}, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->formatLocaleNumber(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 518
    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    const-wide v14, 0x408f400000000000L    # 1000.0

    mul-double/2addr v12, v14

    long-to-double v14, v10

    cmpg-double v5, v12, v14

    if-gtz v5, :cond_6

    long-to-double v12, v10

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    cmpg-double v5, v12, v5

    if-gez v5, :cond_6

    .line 519
    invoke-virtual {v0, v10, v11}, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->getUnitValue(J)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 521
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->mMegaByteSpeed:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 524
    .end local v4    # "tempString":Ljava/lang/String;
    .end local v10    # "temp":J
    goto/16 :goto_0

    :cond_7
    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    const-wide v14, 0x408f400000000000L    # 1000.0

    mul-double/2addr v10, v14

    long-to-double v14, v1

    cmpg-double v4, v10, v14

    const-wide v10, 0x408ff80000000000L    # 1023.0

    if-gtz v4, :cond_9

    long-to-double v14, v1

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v20

    cmpg-double v4, v14, v20

    if-gez v4, :cond_9

    .line 525
    long-to-double v4, v1

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    mul-double/2addr v12, v10

    cmpl-double v4, v4, v12

    if-lez v4, :cond_8

    .line 526
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-long v4, v4

    invoke-virtual {v0, v4, v5}, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->getUnitValue(J)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 528
    :cond_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->mSpecialPoint:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->mGigaByteSpeed:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 531
    :cond_9
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    long-to-double v14, v1

    cmpg-double v4, v12, v14

    const-wide/high16 v12, 0x4024000000000000L    # 10.0

    if-gtz v4, :cond_b

    long-to-double v14, v1

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v20

    mul-double v20, v20, v12

    cmpg-double v4, v14, v20

    if-gez v4, :cond_b

    .line 533
    long-to-double v10, v1

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    div-double/2addr v10, v14

    const-string v4, "0.00"

    invoke-direct {v0, v10, v11, v4, v5}, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->formatNumber(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 534
    .restart local v4    # "tempString":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    mul-double/2addr v10, v14

    double-to-long v10, v10

    .line 535
    .restart local v10    # "temp":J
    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    const-string v5, "0.00"

    invoke-direct {v0, v14, v15, v5}, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->formatLocaleNumber(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 536
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    mul-double/2addr v14, v12

    long-to-double v12, v10

    cmpg-double v5, v14, v12

    if-gtz v5, :cond_a

    long-to-double v12, v10

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    const-wide/high16 v7, 0x4059000000000000L    # 100.0

    mul-double/2addr v5, v7

    cmpg-double v5, v12, v5

    if-gez v5, :cond_a

    .line 537
    invoke-virtual {v0, v10, v11}, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->getUnitValue(J)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 539
    :cond_a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->mGigaByteSpeed:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 542
    .end local v4    # "tempString":Ljava/lang/String;
    .end local v10    # "temp":J
    goto/16 :goto_0

    :cond_b
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    mul-double/2addr v14, v12

    long-to-double v12, v1

    cmpg-double v4, v14, v12

    if-gtz v4, :cond_d

    long-to-double v12, v1

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    const-wide/high16 v18, 0x4059000000000000L    # 100.0

    mul-double v14, v14, v18

    cmpg-double v4, v12, v14

    if-gez v4, :cond_d

    .line 543
    long-to-double v10, v1

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    div-double/2addr v10, v12

    const-string v4, "0.0"

    invoke-direct {v0, v10, v11, v4, v5}, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->formatNumber(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 544
    .restart local v4    # "tempString":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    mul-double/2addr v10, v12

    double-to-long v10, v10

    .line 545
    .restart local v10    # "temp":J
    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    const-string v5, "0.0"

    invoke-direct {v0, v12, v13, v5}, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->formatLocaleNumber(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 546
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    mul-double/2addr v12, v14

    long-to-double v14, v10

    cmpg-double v5, v12, v14

    if-gtz v5, :cond_c

    long-to-double v12, v10

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    const-wide v7, 0x408f400000000000L    # 1000.0

    mul-double/2addr v5, v7

    cmpg-double v5, v12, v5

    if-gez v5, :cond_c

    .line 547
    invoke-virtual {v0, v10, v11}, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->getUnitValue(J)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 549
    :cond_c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->mGigaByteSpeed:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 552
    .end local v4    # "tempString":Ljava/lang/String;
    .end local v10    # "temp":J
    goto/16 :goto_0

    :cond_d
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    mul-double/2addr v12, v14

    long-to-double v14, v1

    cmpg-double v4, v12, v14

    const-wide/high16 v12, 0x4010000000000000L    # 4.0

    if-gtz v4, :cond_f

    long-to-double v14, v1

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v20

    const-wide v16, 0x408f400000000000L    # 1000.0

    mul-double v20, v20, v16

    cmpg-double v4, v14, v20

    if-gez v4, :cond_f

    .line 556
    long-to-double v10, v1

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    div-double/2addr v10, v14

    const-string v4, "0"

    invoke-direct {v0, v10, v11, v4, v5}, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->formatNumber(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 557
    .restart local v4    # "tempString":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    mul-double/2addr v10, v14

    double-to-long v10, v10

    .line 558
    .restart local v10    # "temp":J
    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    const-string v5, "0"

    invoke-direct {v0, v14, v15, v5}, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->formatLocaleNumber(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 559
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    const-wide v14, 0x408f400000000000L    # 1000.0

    mul-double/2addr v5, v14

    long-to-double v14, v10

    cmpg-double v5, v5, v14

    if-gtz v5, :cond_e

    long-to-double v5, v10

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    cmpg-double v5, v5, v7

    if-gez v5, :cond_e

    .line 560
    invoke-virtual {v0, v10, v11}, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->getUnitValue(J)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 562
    :cond_e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->mGigaByteSpeed:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 565
    .end local v4    # "tempString":Ljava/lang/String;
    .end local v10    # "temp":J
    goto/16 :goto_0

    :cond_f
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    const-wide v16, 0x408f400000000000L    # 1000.0

    mul-double v14, v14, v16

    long-to-double v10, v1

    cmpg-double v4, v14, v10

    if-gtz v4, :cond_11

    long-to-double v10, v1

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    cmpg-double v4, v10, v14

    if-gez v4, :cond_11

    .line 567
    long-to-double v4, v1

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    const-wide v10, 0x408ff80000000000L    # 1023.0

    mul-double/2addr v6, v10

    cmpl-double v4, v4, v6

    if-lez v4, :cond_10

    .line 568
    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-long v4, v4

    invoke-virtual {v0, v4, v5}, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->getUnitValue(J)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 570
    :cond_10
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->mSpecialPoint:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->mTeraByteSpeed:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 573
    :cond_11
    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    long-to-double v10, v1

    cmpg-double v4, v6, v10

    if-gtz v4, :cond_13

    long-to-double v6, v1

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    const-wide/high16 v14, 0x4024000000000000L    # 10.0

    mul-double/2addr v10, v14

    cmpg-double v4, v6, v10

    if-gez v4, :cond_13

    .line 575
    long-to-double v6, v1

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    div-double/2addr v6, v10

    const-string v4, "0.00"

    invoke-direct {v0, v6, v7, v4, v5}, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->formatNumber(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 576
    .restart local v4    # "tempString":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    mul-double/2addr v5, v10

    double-to-long v5, v5

    .line 577
    .restart local v5    # "temp":J
    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    const-string v7, "0.00"

    invoke-direct {v0, v10, v11, v7}, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->formatLocaleNumber(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 578
    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    const-wide/high16 v14, 0x4024000000000000L    # 10.0

    mul-double/2addr v10, v14

    long-to-double v14, v5

    cmpg-double v7, v10, v14

    if-gtz v7, :cond_12

    long-to-double v10, v5

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    mul-double/2addr v7, v12

    cmpg-double v7, v10, v7

    if-gez v7, :cond_12

    .line 579
    invoke-virtual {v0, v5, v6}, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->getUnitValue(J)Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 581
    :cond_12
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->mTeraByteSpeed:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 584
    .end local v4    # "tempString":Ljava/lang/String;
    .end local v5    # "temp":J
    goto/16 :goto_0

    :cond_13
    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    const-wide/high16 v10, 0x4024000000000000L    # 10.0

    mul-double/2addr v6, v10

    long-to-double v10, v1

    cmpg-double v4, v6, v10

    if-gtz v4, :cond_15

    long-to-double v6, v1

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    mul-double/2addr v10, v14

    cmpg-double v4, v6, v10

    if-gez v4, :cond_15

    .line 586
    long-to-double v6, v1

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    div-double/2addr v6, v10

    const-string v4, "0.0"

    invoke-direct {v0, v6, v7, v4, v5}, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->formatNumber(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 587
    .restart local v4    # "tempString":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    mul-double/2addr v5, v10

    double-to-long v5, v5

    .line 588
    .restart local v5    # "temp":J
    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    const-string v7, "0.0"

    invoke-direct {v0, v10, v11, v7}, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->formatLocaleNumber(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 589
    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    mul-double/2addr v10, v14

    long-to-double v14, v5

    cmpg-double v7, v10, v14

    if-gtz v7, :cond_14

    long-to-double v10, v5

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    const-wide v12, 0x408f400000000000L    # 1000.0

    mul-double/2addr v7, v12

    cmpg-double v7, v10, v7

    if-gez v7, :cond_14

    .line 590
    invoke-virtual {v0, v5, v6}, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->getUnitValue(J)Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 592
    :cond_14
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->mTeraByteSpeed:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 595
    .end local v4    # "tempString":Ljava/lang/String;
    .end local v5    # "temp":J
    goto/16 :goto_0

    :cond_15
    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    mul-double/2addr v6, v10

    long-to-double v10, v1

    cmpg-double v4, v6, v10

    const-wide/high16 v6, 0x4014000000000000L    # 5.0

    if-gtz v4, :cond_17

    long-to-double v10, v1

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    const-wide v16, 0x408f400000000000L    # 1000.0

    mul-double v14, v14, v16

    cmpg-double v4, v10, v14

    if-gez v4, :cond_17

    .line 597
    long-to-double v10, v1

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    div-double/2addr v10, v14

    const-string v4, "0"

    invoke-direct {v0, v10, v11, v4, v5}, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->formatNumber(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 598
    .restart local v4    # "tempString":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    mul-double/2addr v10, v14

    double-to-long v10, v10

    .line 599
    .restart local v10    # "temp":J
    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    const-wide v14, 0x408f400000000000L    # 1000.0

    mul-double/2addr v12, v14

    long-to-double v14, v10

    cmpg-double v5, v12, v14

    if-gtz v5, :cond_16

    long-to-double v12, v10

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    cmpg-double v5, v12, v5

    if-gez v5, :cond_16

    .line 600
    invoke-virtual {v0, v10, v11}, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->getUnitValue(J)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 602
    :cond_16
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->mTeraByteSpeed:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 605
    .end local v4    # "tempString":Ljava/lang/String;
    .end local v10    # "temp":J
    goto/16 :goto_0

    :cond_17
    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    const-wide v14, 0x408f400000000000L    # 1000.0

    mul-double/2addr v10, v14

    long-to-double v14, v1

    cmpg-double v4, v10, v14

    if-gtz v4, :cond_19

    long-to-double v10, v1

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    cmpg-double v4, v10, v14

    if-gez v4, :cond_19

    .line 606
    long-to-double v4, v1

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    const-wide v12, 0x408ff80000000000L    # 1023.0

    mul-double/2addr v10, v12

    cmpl-double v4, v4, v10

    if-lez v4, :cond_18

    .line 607
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-long v4, v4

    invoke-virtual {v0, v4, v5}, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->getUnitValue(J)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 609
    :cond_18
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->mSpecialPoint:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->mPetaByteSpeed:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 612
    :cond_19
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    long-to-double v12, v1

    cmpg-double v4, v10, v12

    if-gtz v4, :cond_1b

    long-to-double v10, v1

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    const-wide/high16 v14, 0x4024000000000000L    # 10.0

    mul-double/2addr v12, v14

    cmpg-double v4, v10, v12

    if-gez v4, :cond_1b

    .line 614
    long-to-double v10, v1

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    div-double/2addr v10, v12

    const-string v4, "0.00"

    invoke-direct {v0, v10, v11, v4, v5}, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->formatNumber(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 615
    .restart local v4    # "tempString":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    mul-double/2addr v10, v12

    double-to-long v10, v10

    .line 616
    .restart local v10    # "temp":J
    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    const-string v5, "0.00"

    invoke-direct {v0, v12, v13, v5}, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->formatLocaleNumber(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 617
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    const-wide/high16 v14, 0x4024000000000000L    # 10.0

    mul-double/2addr v12, v14

    long-to-double v14, v10

    cmpg-double v5, v12, v14

    if-gtz v5, :cond_1a

    long-to-double v12, v10

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    const-wide/high16 v7, 0x4059000000000000L    # 100.0

    mul-double/2addr v5, v7

    cmpg-double v5, v12, v5

    if-gez v5, :cond_1a

    .line 618
    invoke-virtual {v0, v10, v11}, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->getUnitValue(J)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 620
    :cond_1a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->mPetaByteSpeed:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 623
    .end local v4    # "tempString":Ljava/lang/String;
    .end local v10    # "temp":J
    goto/16 :goto_0

    :cond_1b
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    const-wide/high16 v12, 0x4024000000000000L    # 10.0

    mul-double/2addr v10, v12

    long-to-double v12, v1

    cmpg-double v4, v10, v12

    if-gtz v4, :cond_1d

    long-to-double v10, v1

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    mul-double/2addr v12, v14

    cmpg-double v4, v10, v12

    if-gez v4, :cond_1d

    .line 625
    long-to-double v10, v1

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    div-double/2addr v10, v12

    const-string v4, "0.0"

    invoke-direct {v0, v10, v11, v4, v5}, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->formatNumber(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 626
    .restart local v4    # "tempString":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    mul-double/2addr v10, v12

    double-to-long v10, v10

    .line 627
    .restart local v10    # "temp":J
    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    const-string v5, "0.0"

    invoke-direct {v0, v12, v13, v5}, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->formatLocaleNumber(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 628
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    mul-double/2addr v12, v14

    long-to-double v14, v10

    cmpg-double v5, v12, v14

    if-gtz v5, :cond_1c

    long-to-double v12, v10

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    const-wide v7, 0x408f400000000000L    # 1000.0

    mul-double/2addr v5, v7

    cmpg-double v5, v12, v5

    if-gez v5, :cond_1c

    .line 629
    invoke-virtual {v0, v10, v11}, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->getUnitValue(J)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 631
    :cond_1c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->mPetaByteSpeed:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 634
    .end local v4    # "tempString":Ljava/lang/String;
    .end local v10    # "temp":J
    goto :goto_0

    :cond_1d
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v10

    long-to-double v10, v1

    cmpg-double v4, v4, v10

    if-gtz v4, :cond_1e

    long-to-double v4, v1

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    const-wide v12, 0x408f400000000000L    # 1000.0

    mul-double/2addr v10, v12

    cmpg-double v4, v4, v10

    if-gez v4, :cond_1e

    .line 636
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double v10, v1

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    div-double/2addr v10, v5

    const-string v5, "0"

    invoke-direct {v0, v10, v11, v5}, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->formatLocaleNumber(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->mPetaByteSpeed:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 641
    :goto_0
    return-object v3

    .line 639
    :cond_1e
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "the value of the incoming is wrong"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getStripValue(J)Ljava/lang/String;
    .locals 2
    .param p1, "number"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 669
    const/4 v0, 0x0

    .line 671
    .local v0, "stripValue":Ljava/lang/String;
    invoke-direct {p0}, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->isChinese()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 672
    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->getChineseStripValue(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 674
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->getEnglishStripValue(J)Ljava/lang/String;

    move-result-object v0

    .line 676
    :goto_0
    return-object v0
.end method

.method public getStripValue(JLjava/util/Locale;)Ljava/lang/String;
    .locals 3
    .param p1, "number"    # J
    .param p3, "local"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 711
    const/4 v0, 0x0

    .line 712
    .local v0, "stripValue":Ljava/lang/String;
    const/4 v1, 0x0

    .line 713
    .local v1, "country":Ljava/lang/String;
    if-eqz p3, :cond_0

    .line 714
    invoke-virtual {p3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 716
    :cond_0
    if-eqz v1, :cond_2

    const-string v2, "CN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "TW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "HK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 717
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->getChineseStripValue(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 718
    :cond_2
    if-eqz v1, :cond_3

    .line 719
    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->getEnglishStripValue(J)Ljava/lang/String;

    move-result-object v0

    .line 721
    :cond_3
    :goto_0
    return-object v0
.end method

.method public getTransformUnitValue(JD)Ljava/lang/String;
    .locals 24
    .param p1, "number"    # J
    .param p3, "unit"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 284
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    const/4 v5, 0x0

    .line 286
    .local v5, "unitValue":Ljava/lang/String;
    const-wide/16 v6, 0x0

    cmp-long v6, v6, v1

    const/4 v7, 0x1

    const-wide v8, 0x408f400000000000L    # 1000.0

    const-wide/high16 v10, 0x4090000000000000L    # 1024.0

    if-gtz v6, :cond_1

    long-to-double v12, v1

    cmpg-double v6, v12, v8

    if-gez v6, :cond_1

    .line 287
    long-to-double v12, v1

    const-string v6, "0"

    invoke-direct {v0, v12, v13, v6, v7}, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->formatNumber(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    .line 288
    .local v6, "tempString":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 289
    .local v12, "temp":J
    invoke-static {v6}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    const-string v7, "0"

    invoke-direct {v0, v14, v15, v7}, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->formatLocaleNumber(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 290
    long-to-double v14, v12

    cmpg-double v7, v8, v14

    if-gtz v7, :cond_0

    long-to-double v7, v12

    cmpg-double v7, v7, v10

    if-gez v7, :cond_0

    .line 291
    invoke-virtual {v0, v12, v13}, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->getUnitValue(J)Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 293
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->mByteShort:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 296
    .end local v6    # "tempString":Ljava/lang/String;
    .end local v12    # "temp":J
    goto/16 :goto_0

    :cond_1
    long-to-double v12, v1

    cmpg-double v6, v8, v12

    const-wide v12, 0x412f400000000000L    # 1024000.0

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    const-wide/high16 v16, 0x4059000000000000L    # 100.0

    if-gtz v6, :cond_3

    long-to-double v8, v1

    cmpg-double v6, v8, v12

    if-gez v6, :cond_3

    .line 297
    long-to-double v8, v1

    div-double/2addr v8, v3

    const-string v6, "0"

    invoke-direct {v0, v8, v9, v6, v7}, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->formatNumber(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    .line 298
    .restart local v6    # "tempString":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    double-to-long v10, v3

    mul-long/2addr v7, v10

    .line 299
    .local v7, "temp":J
    invoke-static {v6}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    const-string v11, "0"

    invoke-direct {v0, v9, v10, v11}, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->formatLocaleNumber(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 300
    long-to-double v9, v7

    cmpg-double v9, v12, v9

    if-gtz v9, :cond_2

    long-to-double v9, v7

    const-wide/high16 v11, 0x4090000000000000L    # 1024.0

    invoke-static {v11, v12, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    mul-double v11, v11, v16

    cmpg-double v9, v9, v11

    if-gez v9, :cond_2

    .line 301
    invoke-virtual {v0, v7, v8, v3, v4}, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->getTransformUnitValue(JD)Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 303
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->mKiloByteShort:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 306
    .end local v6    # "tempString":Ljava/lang/String;
    .end local v7    # "temp":J
    goto/16 :goto_0

    :cond_3
    long-to-double v8, v1

    cmpg-double v6, v12, v8

    if-gtz v6, :cond_5

    long-to-double v8, v1

    const-wide/high16 v10, 0x4090000000000000L    # 1024.0

    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    mul-double v12, v12, v16

    cmpg-double v6, v8, v12

    if-gez v6, :cond_5

    .line 308
    long-to-double v8, v1

    invoke-static {v3, v4, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    div-double/2addr v8, v10

    const-string v6, "0.0"

    invoke-direct {v0, v8, v9, v6, v7}, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->formatNumber(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    .line 309
    .restart local v6    # "tempString":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    invoke-static {v3, v4, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    mul-double/2addr v7, v9

    double-to-long v7, v7

    .line 310
    .restart local v7    # "temp":J
    invoke-static {v6}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    const-string v11, "0.0"

    invoke-direct {v0, v9, v10, v11}, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->formatLocaleNumber(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 311
    const-wide/high16 v9, 0x4090000000000000L    # 1024.0

    invoke-static {v9, v10, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    mul-double v11, v11, v16

    long-to-double v9, v7

    cmpg-double v9, v11, v9

    if-gtz v9, :cond_4

    long-to-double v9, v7

    const-wide/high16 v11, 0x4090000000000000L    # 1024.0

    invoke-static {v11, v12, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    const-wide v13, 0x408f400000000000L    # 1000.0

    mul-double/2addr v11, v13

    cmpg-double v9, v9, v11

    if-gez v9, :cond_4

    .line 312
    invoke-virtual {v0, v7, v8, v3, v4}, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->getTransformUnitValue(JD)Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 314
    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->mMegaByteShort:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 317
    .end local v6    # "tempString":Ljava/lang/String;
    .end local v7    # "temp":J
    goto/16 :goto_0

    :cond_5
    const-wide/high16 v8, 0x4090000000000000L    # 1024.0

    invoke-static {v8, v9, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    mul-double v10, v10, v16

    long-to-double v12, v1

    cmpg-double v6, v10, v12

    if-gtz v6, :cond_7

    long-to-double v12, v1

    invoke-static {v8, v9, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v22

    const-wide v8, 0x408f400000000000L    # 1000.0

    mul-double v22, v22, v8

    cmpg-double v6, v12, v22

    if-gez v6, :cond_7

    .line 319
    long-to-double v8, v1

    invoke-static {v3, v4, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    div-double/2addr v8, v12

    const-string v6, "0"

    invoke-direct {v0, v8, v9, v6, v7}, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->formatNumber(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    .line 320
    .restart local v6    # "tempString":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    invoke-static {v3, v4, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    mul-double/2addr v7, v12

    double-to-long v7, v7

    .line 321
    .restart local v7    # "temp":J
    invoke-static {v6}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    const-string v9, "0"

    invoke-direct {v0, v12, v13, v9}, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->formatLocaleNumber(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 322
    const-wide/high16 v12, 0x4090000000000000L    # 1024.0

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    const-wide v16, 0x408f400000000000L    # 1000.0

    mul-double v14, v14, v16

    long-to-double v10, v7

    cmpg-double v9, v14, v10

    if-gtz v9, :cond_6

    long-to-double v9, v7

    const-wide/high16 v14, 0x4008000000000000L    # 3.0

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    cmpg-double v9, v9, v11

    if-gez v9, :cond_6

    .line 323
    invoke-virtual {v0, v7, v8, v3, v4}, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->getTransformUnitValue(JD)Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 325
    :cond_6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->mMegaByteShort:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 328
    .end local v6    # "tempString":Ljava/lang/String;
    .end local v7    # "temp":J
    goto/16 :goto_0

    :cond_7
    const-wide/high16 v8, 0x4090000000000000L    # 1024.0

    invoke-static {v8, v9, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    const-wide v12, 0x408f400000000000L    # 1000.0

    mul-double/2addr v10, v12

    long-to-double v14, v1

    cmpg-double v6, v10, v14

    if-gtz v6, :cond_a

    long-to-double v14, v1

    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    cmpg-double v6, v14, v18

    if-gez v6, :cond_a

    .line 329
    cmpl-double v6, v3, v12

    if-nez v6, :cond_8

    .line 330
    long-to-double v8, v1

    invoke-static {v3, v4, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    div-double/2addr v8, v12

    const-string v6, "0.00"

    invoke-direct {v0, v8, v9, v6, v7}, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->formatNumber(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    .line 331
    .restart local v6    # "tempString":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    invoke-static {v3, v4, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    mul-double/2addr v7, v9

    double-to-long v7, v7

    .line 332
    .restart local v7    # "temp":J
    invoke-static {v6}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    const-string v11, "0.00"

    invoke-direct {v0, v9, v10, v11}, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->formatLocaleNumber(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 333
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->mGigaByteShort:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 334
    .end local v6    # "tempString":Ljava/lang/String;
    .end local v7    # "temp":J
    goto/16 :goto_0

    :cond_8
    const-wide/high16 v6, 0x4090000000000000L    # 1024.0

    cmpl-double v8, v3, v6

    if-nez v8, :cond_21

    .line 335
    long-to-double v8, v1

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    const-wide v12, 0x408ff80000000000L    # 1023.0

    mul-double/2addr v10, v12

    cmpl-double v8, v8, v10

    if-lez v8, :cond_9

    .line 336
    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-long v6, v6

    invoke-virtual {v0, v6, v7}, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->getUnitValue(J)Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 338
    :cond_9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v0, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->mSpecialPoint:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->mGigaByteShort:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 342
    :cond_a
    const-wide/high16 v8, 0x4090000000000000L    # 1024.0

    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    long-to-double v14, v1

    cmpg-double v6, v12, v14

    const-wide/high16 v12, 0x4024000000000000L    # 10.0

    if-gtz v6, :cond_c

    long-to-double v14, v1

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v22

    mul-double v22, v22, v12

    cmpg-double v6, v14, v22

    if-gez v6, :cond_c

    .line 344
    long-to-double v8, v1

    invoke-static {v3, v4, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    div-double/2addr v8, v14

    const-string v6, "0.00"

    invoke-direct {v0, v8, v9, v6, v7}, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->formatNumber(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    .line 345
    .restart local v6    # "tempString":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    invoke-static {v3, v4, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    mul-double/2addr v7, v14

    double-to-long v7, v7

    .line 346
    .restart local v7    # "temp":J
    invoke-static {v6}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    const-string v9, "0.00"

    invoke-direct {v0, v14, v15, v9}, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->formatLocaleNumber(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 347
    const-wide/high16 v14, 0x4090000000000000L    # 1024.0

    invoke-static {v14, v15, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    mul-double v18, v18, v12

    long-to-double v12, v7

    cmpg-double v9, v18, v12

    if-gtz v9, :cond_b

    long-to-double v12, v7

    invoke-static {v14, v15, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    mul-double v9, v9, v16

    cmpg-double v9, v12, v9

    if-gez v9, :cond_b

    .line 348
    invoke-virtual {v0, v7, v8, v3, v4}, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->getTransformUnitValue(JD)Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 350
    :cond_b
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->mGigaByteShort:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 353
    .end local v6    # "tempString":Ljava/lang/String;
    .end local v7    # "temp":J
    goto/16 :goto_0

    :cond_c
    const-wide/high16 v8, 0x4090000000000000L    # 1024.0

    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    mul-double/2addr v14, v12

    long-to-double v12, v1

    cmpg-double v6, v14, v12

    if-gtz v6, :cond_e

    long-to-double v12, v1

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    mul-double v14, v14, v16

    cmpg-double v6, v12, v14

    if-gez v6, :cond_e

    .line 355
    long-to-double v8, v1

    invoke-static {v3, v4, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    div-double/2addr v8, v12

    const-string v6, "0.0"

    invoke-direct {v0, v8, v9, v6, v7}, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->formatNumber(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    .line 356
    .restart local v6    # "tempString":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    invoke-static {v3, v4, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    mul-double/2addr v7, v12

    double-to-long v7, v7

    .line 357
    .restart local v7    # "temp":J
    invoke-static {v6}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    const-string v9, "0.0"

    invoke-direct {v0, v12, v13, v9}, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->formatLocaleNumber(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 358
    const-wide/high16 v12, 0x4090000000000000L    # 1024.0

    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    mul-double v14, v14, v16

    long-to-double v10, v7

    cmpg-double v9, v14, v10

    if-gtz v9, :cond_d

    long-to-double v9, v7

    const-wide/high16 v14, 0x4008000000000000L    # 3.0

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    const-wide v13, 0x408f400000000000L    # 1000.0

    mul-double/2addr v11, v13

    cmpg-double v9, v9, v11

    if-gez v9, :cond_d

    .line 359
    invoke-virtual {v0, v7, v8, v3, v4}, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->getTransformUnitValue(JD)Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 361
    :cond_d
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->mGigaByteShort:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 364
    .end local v6    # "tempString":Ljava/lang/String;
    .end local v7    # "temp":J
    goto/16 :goto_0

    :cond_e
    const-wide/high16 v8, 0x4090000000000000L    # 1024.0

    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    mul-double v12, v12, v16

    long-to-double v14, v1

    cmpg-double v6, v12, v14

    if-gtz v6, :cond_10

    long-to-double v14, v1

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v22

    const-wide v8, 0x408f400000000000L    # 1000.0

    mul-double v22, v22, v8

    cmpg-double v6, v14, v22

    if-gez v6, :cond_10

    .line 368
    long-to-double v8, v1

    invoke-static {v3, v4, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    div-double/2addr v8, v14

    const-string v6, "0"

    invoke-direct {v0, v8, v9, v6, v7}, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->formatNumber(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    .line 369
    .restart local v6    # "tempString":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    invoke-static {v3, v4, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    mul-double/2addr v7, v14

    double-to-long v7, v7

    .line 370
    .restart local v7    # "temp":J
    invoke-static {v6}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    const-string v9, "0"

    invoke-direct {v0, v14, v15, v9}, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->formatLocaleNumber(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 371
    const-wide/high16 v14, 0x4090000000000000L    # 1024.0

    invoke-static {v14, v15, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    const-wide v16, 0x408f400000000000L    # 1000.0

    mul-double v9, v9, v16

    long-to-double v12, v7

    cmpg-double v9, v9, v12

    if-gtz v9, :cond_f

    long-to-double v9, v7

    const-wide/high16 v11, 0x4010000000000000L    # 4.0

    invoke-static {v14, v15, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    cmpg-double v9, v9, v11

    if-gez v9, :cond_f

    .line 372
    invoke-virtual {v0, v7, v8, v3, v4}, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->getTransformUnitValue(JD)Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 374
    :cond_f
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->mGigaByteShort:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 377
    .end local v6    # "tempString":Ljava/lang/String;
    .end local v7    # "temp":J
    goto/16 :goto_0

    :cond_10
    const-wide/high16 v8, 0x4090000000000000L    # 1024.0

    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    const-wide v10, 0x408f400000000000L    # 1000.0

    mul-double/2addr v12, v10

    long-to-double v14, v1

    cmpg-double v6, v12, v14

    if-gtz v6, :cond_13

    long-to-double v12, v1

    const-wide/high16 v14, 0x4010000000000000L    # 4.0

    invoke-static {v8, v9, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    cmpg-double v6, v12, v18

    if-gez v6, :cond_13

    .line 379
    cmpl-double v6, v3, v10

    if-nez v6, :cond_11

    .line 380
    long-to-double v8, v1

    invoke-static {v3, v4, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    div-double/2addr v8, v10

    const-string v6, "0.00"

    invoke-direct {v0, v8, v9, v6, v7}, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->formatNumber(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    .line 381
    .restart local v6    # "tempString":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    invoke-static {v3, v4, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    mul-double/2addr v7, v9

    double-to-long v7, v7

    .line 382
    .restart local v7    # "temp":J
    invoke-static {v6}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    const-string v11, "0.00"

    invoke-direct {v0, v9, v10, v11}, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->formatLocaleNumber(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 383
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->mTeraByteShort:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 384
    .end local v6    # "tempString":Ljava/lang/String;
    .end local v7    # "temp":J
    goto/16 :goto_0

    :cond_11
    const-wide/high16 v6, 0x4090000000000000L    # 1024.0

    cmpl-double v8, v3, v6

    if-nez v8, :cond_21

    .line 385
    long-to-double v8, v1

    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    const-wide v12, 0x408ff80000000000L    # 1023.0

    mul-double/2addr v10, v12

    cmpl-double v8, v8, v10

    if-lez v8, :cond_12

    .line 386
    const-wide/high16 v8, 0x4010000000000000L    # 4.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-long v6, v6

    invoke-virtual {v0, v6, v7}, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->getUnitValue(J)Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 388
    :cond_12
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v0, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->mSpecialPoint:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->mTeraByteShort:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 392
    :cond_13
    const-wide/high16 v8, 0x4090000000000000L    # 1024.0

    const-wide/high16 v10, 0x4010000000000000L    # 4.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    long-to-double v14, v1

    cmpg-double v6, v12, v14

    if-gtz v6, :cond_15

    long-to-double v12, v1

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    mul-double/2addr v14, v8

    cmpg-double v6, v12, v14

    if-gez v6, :cond_15

    .line 394
    long-to-double v8, v1

    invoke-static {v3, v4, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    div-double/2addr v8, v12

    const-string v6, "0.00"

    invoke-direct {v0, v8, v9, v6, v7}, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->formatNumber(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    .line 395
    .restart local v6    # "tempString":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    invoke-static {v3, v4, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    mul-double/2addr v7, v12

    double-to-long v7, v7

    .line 396
    .restart local v7    # "temp":J
    invoke-static {v6}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    const-string v9, "0.00"

    invoke-direct {v0, v12, v13, v9}, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->formatLocaleNumber(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 397
    const-wide/high16 v12, 0x4090000000000000L    # 1024.0

    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    const-wide/high16 v18, 0x4024000000000000L    # 10.0

    mul-double v14, v14, v18

    long-to-double v10, v7

    cmpg-double v9, v14, v10

    if-gtz v9, :cond_14

    long-to-double v9, v7

    const-wide/high16 v14, 0x4010000000000000L    # 4.0

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    mul-double v11, v11, v16

    cmpg-double v9, v9, v11

    if-gez v9, :cond_14

    .line 398
    invoke-virtual {v0, v7, v8, v3, v4}, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->getTransformUnitValue(JD)Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 400
    :cond_14
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->mTeraByteShort:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 403
    .end local v6    # "tempString":Ljava/lang/String;
    .end local v7    # "temp":J
    goto/16 :goto_0

    :cond_15
    const-wide/high16 v8, 0x4090000000000000L    # 1024.0

    const-wide/high16 v10, 0x4010000000000000L    # 4.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    const-wide/high16 v14, 0x4024000000000000L    # 10.0

    mul-double/2addr v12, v14

    long-to-double v14, v1

    cmpg-double v6, v12, v14

    if-gtz v6, :cond_17

    long-to-double v12, v1

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    mul-double v14, v14, v16

    cmpg-double v6, v12, v14

    if-gez v6, :cond_17

    .line 405
    long-to-double v8, v1

    invoke-static {v3, v4, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    div-double/2addr v8, v12

    const-string v6, "0.0"

    invoke-direct {v0, v8, v9, v6, v7}, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->formatNumber(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    .line 406
    .restart local v6    # "tempString":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    invoke-static {v3, v4, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    mul-double/2addr v7, v12

    double-to-long v7, v7

    .line 407
    .restart local v7    # "temp":J
    invoke-static {v6}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    const-string v9, "0.0"

    invoke-direct {v0, v12, v13, v9}, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->formatLocaleNumber(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 408
    const-wide/high16 v12, 0x4090000000000000L    # 1024.0

    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    mul-double v14, v14, v16

    long-to-double v10, v7

    cmpg-double v9, v14, v10

    if-gtz v9, :cond_16

    long-to-double v9, v7

    const-wide/high16 v14, 0x4010000000000000L    # 4.0

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    const-wide v13, 0x408f400000000000L    # 1000.0

    mul-double/2addr v11, v13

    cmpg-double v9, v9, v11

    if-gez v9, :cond_16

    .line 409
    invoke-virtual {v0, v7, v8, v3, v4}, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->getTransformUnitValue(JD)Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 411
    :cond_16
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->mTeraByteShort:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 414
    .end local v6    # "tempString":Ljava/lang/String;
    .end local v7    # "temp":J
    goto/16 :goto_0

    :cond_17
    const-wide/high16 v8, 0x4090000000000000L    # 1024.0

    const-wide/high16 v10, 0x4010000000000000L    # 4.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    mul-double v12, v12, v16

    long-to-double v14, v1

    cmpg-double v6, v12, v14

    if-gtz v6, :cond_19

    long-to-double v14, v1

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v22

    const-wide v8, 0x408f400000000000L    # 1000.0

    mul-double v22, v22, v8

    cmpg-double v6, v14, v22

    if-gez v6, :cond_19

    .line 416
    long-to-double v8, v1

    invoke-static {v3, v4, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    div-double/2addr v8, v14

    const-string v6, "0"

    invoke-direct {v0, v8, v9, v6, v7}, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->formatNumber(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    .line 417
    .restart local v6    # "tempString":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    invoke-static {v3, v4, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    mul-double/2addr v7, v14

    double-to-long v7, v7

    .line 418
    .restart local v7    # "temp":J
    invoke-static {v6}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    const-string v9, "0"

    invoke-direct {v0, v14, v15, v9}, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->formatLocaleNumber(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 419
    const-wide/high16 v14, 0x4090000000000000L    # 1024.0

    invoke-static {v14, v15, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    const-wide v16, 0x408f400000000000L    # 1000.0

    mul-double v9, v9, v16

    long-to-double v12, v7

    cmpg-double v9, v9, v12

    if-gtz v9, :cond_18

    long-to-double v9, v7

    const-wide/high16 v11, 0x4014000000000000L    # 5.0

    invoke-static {v14, v15, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    cmpg-double v9, v9, v11

    if-gez v9, :cond_18

    .line 420
    invoke-virtual {v0, v7, v8, v3, v4}, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->getTransformUnitValue(JD)Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 422
    :cond_18
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->mTeraByteShort:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 425
    .end local v6    # "tempString":Ljava/lang/String;
    .end local v7    # "temp":J
    goto/16 :goto_0

    :cond_19
    const-wide/high16 v8, 0x4090000000000000L    # 1024.0

    const-wide/high16 v10, 0x4010000000000000L    # 4.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    const-wide v10, 0x408f400000000000L    # 1000.0

    mul-double/2addr v12, v10

    long-to-double v14, v1

    cmpg-double v6, v12, v14

    if-gtz v6, :cond_1c

    long-to-double v12, v1

    const-wide/high16 v14, 0x4014000000000000L    # 5.0

    invoke-static {v8, v9, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    cmpg-double v6, v12, v18

    if-gez v6, :cond_1c

    .line 426
    cmpl-double v6, v3, v10

    if-nez v6, :cond_1a

    .line 427
    long-to-double v8, v1

    invoke-static {v3, v4, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    div-double/2addr v8, v10

    const-string v6, "0.00"

    invoke-direct {v0, v8, v9, v6, v7}, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->formatNumber(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    .line 428
    .restart local v6    # "tempString":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    invoke-static {v3, v4, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    mul-double/2addr v7, v9

    double-to-long v7, v7

    .line 429
    .restart local v7    # "temp":J
    invoke-static {v6}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    const-string v11, "0.00"

    invoke-direct {v0, v9, v10, v11}, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->formatLocaleNumber(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 430
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->mPetaByteShort:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 431
    .end local v6    # "tempString":Ljava/lang/String;
    .end local v7    # "temp":J
    goto/16 :goto_0

    :cond_1a
    const-wide/high16 v6, 0x4090000000000000L    # 1024.0

    cmpl-double v8, v3, v6

    if-nez v8, :cond_21

    .line 432
    long-to-double v8, v1

    const-wide/high16 v10, 0x4010000000000000L    # 4.0

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    const-wide v12, 0x408ff80000000000L    # 1023.0

    mul-double/2addr v10, v12

    cmpl-double v8, v8, v10

    if-lez v8, :cond_1b

    .line 433
    const-wide/high16 v8, 0x4014000000000000L    # 5.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-long v6, v6

    invoke-virtual {v0, v6, v7}, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->getUnitValue(J)Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 435
    :cond_1b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v0, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->mSpecialPoint:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->mPetaByteShort:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 439
    :cond_1c
    const-wide/high16 v8, 0x4090000000000000L    # 1024.0

    const-wide/high16 v10, 0x4014000000000000L    # 5.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    long-to-double v14, v1

    cmpg-double v6, v12, v14

    if-gtz v6, :cond_1e

    long-to-double v12, v1

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    const-wide/high16 v20, 0x4024000000000000L    # 10.0

    mul-double v14, v14, v20

    cmpg-double v6, v12, v14

    if-gez v6, :cond_1e

    .line 441
    long-to-double v12, v1

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    div-double/2addr v12, v14

    const-string v6, "0.00"

    invoke-direct {v0, v12, v13, v6, v7}, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->formatNumber(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    .line 442
    .restart local v6    # "tempString":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    mul-double/2addr v12, v14

    double-to-long v12, v12

    .line 443
    .restart local v12    # "temp":J
    invoke-static {v6}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    const-string v7, "0.00"

    invoke-direct {v0, v14, v15, v7}, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->formatLocaleNumber(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 444
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    const-wide/high16 v18, 0x4024000000000000L    # 10.0

    mul-double v14, v14, v18

    long-to-double v8, v12

    cmpg-double v7, v14, v8

    if-gtz v7, :cond_1d

    long-to-double v7, v12

    const-wide/high16 v14, 0x4090000000000000L    # 1024.0

    invoke-static {v14, v15, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    mul-double v9, v9, v16

    cmpg-double v7, v7, v9

    if-gez v7, :cond_1d

    .line 445
    invoke-virtual {v0, v12, v13}, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->getUnitValue(J)Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 447
    :cond_1d
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->mPetaByteShort:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 450
    .end local v6    # "tempString":Ljava/lang/String;
    .end local v12    # "temp":J
    goto/16 :goto_0

    :cond_1e
    const-wide/high16 v8, 0x4090000000000000L    # 1024.0

    const-wide/high16 v10, 0x4014000000000000L    # 5.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    const-wide/high16 v14, 0x4024000000000000L    # 10.0

    mul-double/2addr v12, v14

    long-to-double v14, v1

    cmpg-double v6, v12, v14

    if-gtz v6, :cond_20

    long-to-double v12, v1

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    mul-double v14, v14, v16

    cmpg-double v6, v12, v14

    if-gez v6, :cond_20

    .line 452
    long-to-double v12, v1

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    div-double/2addr v12, v14

    const-string v6, "0.0"

    invoke-direct {v0, v12, v13, v6, v7}, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->formatNumber(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    .line 453
    .restart local v6    # "tempString":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    mul-double/2addr v12, v14

    double-to-long v12, v12

    .line 454
    .restart local v12    # "temp":J
    invoke-static {v6}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    const-string v7, "0.0"

    invoke-direct {v0, v14, v15, v7}, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->formatLocaleNumber(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 455
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    mul-double v14, v14, v16

    long-to-double v8, v12

    cmpg-double v7, v14, v8

    if-gtz v7, :cond_1f

    long-to-double v7, v12

    const-wide/high16 v14, 0x4090000000000000L    # 1024.0

    invoke-static {v14, v15, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    const-wide v14, 0x408f400000000000L    # 1000.0

    mul-double/2addr v9, v14

    cmpg-double v7, v7, v9

    if-gez v7, :cond_1f

    .line 456
    invoke-virtual {v0, v12, v13}, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->getUnitValue(J)Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 458
    :cond_1f
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->mPetaByteShort:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 461
    .end local v6    # "tempString":Ljava/lang/String;
    .end local v12    # "temp":J
    goto :goto_0

    :cond_20
    const-wide/high16 v6, 0x4090000000000000L    # 1024.0

    const-wide/high16 v8, 0x4014000000000000L    # 5.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    mul-double v10, v10, v16

    long-to-double v12, v1

    cmpg-double v10, v10, v12

    if-gtz v10, :cond_22

    long-to-double v10, v1

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    const-wide v14, 0x408f400000000000L    # 1000.0

    mul-double/2addr v12, v14

    cmpg-double v10, v10, v12

    if-gez v10, :cond_22

    .line 463
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double v11, v1

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    div-double/2addr v11, v6

    const-string v6, "0"

    invoke-direct {v0, v11, v12, v6}, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->formatLocaleNumber(DLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->mPetaByteShort:Ljava/lang/String;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 469
    :cond_21
    :goto_0
    return-object v5

    .line 466
    :cond_22
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "the value of the incoming is wrong"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public getUnitThousandValue(J)Ljava/lang/String;
    .locals 2
    .param p1, "number"    # J

    .line 272
    const-wide v0, 0x408f400000000000L    # 1000.0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->getTransformUnitValue(JD)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUnitValue(J)Ljava/lang/String;
    .locals 2
    .param p1, "number"    # J

    .line 262
    const-wide/high16 v0, 0x4090000000000000L    # 1024.0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/coui/appcompat/util/COUIUnitConversionUtils;->getTransformUnitValue(JD)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
