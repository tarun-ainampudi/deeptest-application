.class public Lcom/oplus/anim/EffectiveImageAsset;
.super Ljava/lang/Object;
.source "EffectiveImageAsset.java"


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final dirName:Ljava/lang/String;

.field private final fileName:Ljava/lang/String;

.field private final height:I

.field private final id:Ljava/lang/String;

.field private final width:I


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "fileName"    # Ljava/lang/String;
    .param p5, "dirName"    # Ljava/lang/String;

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p1, p0, Lcom/oplus/anim/EffectiveImageAsset;->width:I

    .line 24
    iput p2, p0, Lcom/oplus/anim/EffectiveImageAsset;->height:I

    .line 25
    iput-object p3, p0, Lcom/oplus/anim/EffectiveImageAsset;->id:Ljava/lang/String;

    .line 26
    iput-object p4, p0, Lcom/oplus/anim/EffectiveImageAsset;->fileName:Ljava/lang/String;

    .line 27
    iput-object p5, p0, Lcom/oplus/anim/EffectiveImageAsset;->dirName:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/oplus/anim/EffectiveImageAsset;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getDirName()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/oplus/anim/EffectiveImageAsset;->dirName:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/oplus/anim/EffectiveImageAsset;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/oplus/anim/EffectiveImageAsset;->height:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/oplus/anim/EffectiveImageAsset;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 31
    iget v0, p0, Lcom/oplus/anim/EffectiveImageAsset;->width:I

    return v0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 63
    iget-object v0, p0, Lcom/oplus/anim/EffectiveImageAsset;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 64
    iget-object v0, p0, Lcom/oplus/anim/EffectiveImageAsset;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 66
    :cond_0
    iput-object p1, p0, Lcom/oplus/anim/EffectiveImageAsset;->bitmap:Landroid/graphics/Bitmap;

    .line 67
    return-void
.end method
