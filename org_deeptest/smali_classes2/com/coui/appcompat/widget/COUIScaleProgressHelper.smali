.class public Lcom/coui/appcompat/widget/COUIScaleProgressHelper;
.super Ljava/lang/Object;
.source "COUIScaleProgressHelper.java"


# instance fields
.field private mLeft:F

.field private mRight:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/widget/COUIScaleProgressHelper;->mLeft:F

    .line 23
    iput v0, p0, Lcom/coui/appcompat/widget/COUIScaleProgressHelper;->mRight:F

    .line 26
    return-void
.end method


# virtual methods
.method public getLeft()F
    .locals 1

    .line 33
    iget v0, p0, Lcom/coui/appcompat/widget/COUIScaleProgressHelper;->mLeft:F

    return v0
.end method

.method public getRight()F
    .locals 1

    .line 41
    iget v0, p0, Lcom/coui/appcompat/widget/COUIScaleProgressHelper;->mRight:F

    return v0
.end method

.method public setLeft(F)V
    .locals 0
    .param p1, "left"    # F

    .line 29
    iput p1, p0, Lcom/coui/appcompat/widget/COUIScaleProgressHelper;->mLeft:F

    .line 30
    return-void
.end method

.method public setRight(F)V
    .locals 0
    .param p1, "right"    # F

    .line 37
    iput p1, p0, Lcom/coui/appcompat/widget/COUIScaleProgressHelper;->mRight:F

    .line 38
    return-void
.end method
