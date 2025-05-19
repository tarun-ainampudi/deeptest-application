.class public Lcom/oplus/anim/model/DocumentData;
.super Ljava/lang/Object;
.source "DocumentData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/anim/model/DocumentData$Justification;
    }
.end annotation


# instance fields
.field public final baselineShift:D

.field public final color:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field public final fontName:Ljava/lang/String;

.field public final justification:Lcom/oplus/anim/model/DocumentData$Justification;

.field public final lineHeight:D

.field public final size:D

.field public final strokeColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field public final strokeOverFill:Z

.field public final strokeWidth:D

.field public final text:Ljava/lang/String;

.field public final tracking:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;DLcom/oplus/anim/model/DocumentData$Justification;IDDIIDZ)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "fontName"    # Ljava/lang/String;
    .param p3, "size"    # D
    .param p5, "justification"    # Lcom/oplus/anim/model/DocumentData$Justification;
    .param p6, "tracking"    # I
    .param p7, "lineHeight"    # D
    .param p9, "baselineShift"    # D
    .param p11, "color"    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p12, "strokeColor"    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p13, "strokeWidth"    # D
    .param p15, "strokeOverFill"    # Z

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/oplus/anim/model/DocumentData;->text:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/oplus/anim/model/DocumentData;->fontName:Ljava/lang/String;

    .line 28
    iput-wide p3, p0, Lcom/oplus/anim/model/DocumentData;->size:D

    .line 29
    iput-object p5, p0, Lcom/oplus/anim/model/DocumentData;->justification:Lcom/oplus/anim/model/DocumentData$Justification;

    .line 30
    iput p6, p0, Lcom/oplus/anim/model/DocumentData;->tracking:I

    .line 31
    iput-wide p7, p0, Lcom/oplus/anim/model/DocumentData;->lineHeight:D

    .line 32
    iput-wide p9, p0, Lcom/oplus/anim/model/DocumentData;->baselineShift:D

    .line 33
    iput p11, p0, Lcom/oplus/anim/model/DocumentData;->color:I

    .line 34
    iput p12, p0, Lcom/oplus/anim/model/DocumentData;->strokeColor:I

    .line 35
    iput-wide p13, p0, Lcom/oplus/anim/model/DocumentData;->strokeWidth:D

    .line 36
    iput-boolean p15, p0, Lcom/oplus/anim/model/DocumentData;->strokeOverFill:Z

    .line 37
    return-void
.end method


# virtual methods
.method public hashCode()I
    .locals 6

    .line 43
    iget-object v0, p0, Lcom/oplus/anim/model/DocumentData;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 44
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/oplus/anim/model/DocumentData;->fontName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 45
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    int-to-double v2, v0

    iget-wide v4, p0, Lcom/oplus/anim/model/DocumentData;->size:D

    add-double/2addr v2, v4

    double-to-int v0, v2

    .line 46
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/oplus/anim/model/DocumentData;->justification:Lcom/oplus/anim/model/DocumentData$Justification;

    invoke-virtual {v2}, Lcom/oplus/anim/model/DocumentData$Justification;->ordinal()I

    move-result v2

    add-int/2addr v1, v2

    .line 47
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/oplus/anim/model/DocumentData;->tracking:I

    add-int/2addr v0, v2

    .line 48
    .end local v1    # "result":I
    .restart local v0    # "result":I
    iget-wide v1, p0, Lcom/oplus/anim/model/DocumentData;->lineHeight:D

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    .line 49
    .local v1, "temp":J
    mul-int/lit8 v3, v0, 0x1f

    const/16 v4, 0x20

    ushr-long v4, v1, v4

    xor-long/2addr v4, v1

    long-to-int v4, v4

    add-int/2addr v3, v4

    .line 50
    .end local v0    # "result":I
    .local v3, "result":I
    mul-int/lit8 v0, v3, 0x1f

    iget v4, p0, Lcom/oplus/anim/model/DocumentData;->color:I

    add-int/2addr v0, v4

    .line 51
    .end local v3    # "result":I
    .restart local v0    # "result":I
    return v0
.end method
