.class public Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIRecyclerListView;
.super Lcom/coui/appcompat/dialog/app/AlertController$RecycleListView;
.source "COUIAlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/dialog/app/COUIAlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "COUIRecyclerListView"
.end annotation


# instance fields
.field private mClipPath:Landroid/graphics/Path;

.field private mCornerRadius:I

.field private mNeedClip:Z

.field private mRadiusArrays:[F

.field private mRectF:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 634
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIRecyclerListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 635
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 645
    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/dialog/app/AlertController$RecycleListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 646
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$dimen;->alert_dialog_bottom_corner_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIRecyclerListView;->mCornerRadius:I

    .line 647
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIRecyclerListView;->mClipPath:Landroid/graphics/Path;

    .line 648
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIRecyclerListView;->mRectF:Landroid/graphics/RectF;

    .line 649
    const/16 v0, 0x8

    new-array v0, v0, [F

    iget v1, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIRecyclerListView;->mCornerRadius:I

    int-to-float v1, v1

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIRecyclerListView;->mCornerRadius:I

    int-to-float v1, v1

    const/4 v2, 0x1

    aput v1, v0, v2

    iget v1, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIRecyclerListView;->mCornerRadius:I

    int-to-float v1, v1

    const/4 v2, 0x2

    aput v1, v0, v2

    iget v1, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIRecyclerListView;->mCornerRadius:I

    int-to-float v1, v1

    const/4 v2, 0x3

    aput v1, v0, v2

    const/4 v1, 0x0

    const/4 v2, 0x4

    aput v1, v0, v2

    const/4 v2, 0x5

    aput v1, v0, v2

    const/4 v2, 0x6

    aput v1, v0, v2

    const/4 v2, 0x7

    aput v1, v0, v2

    iput-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIRecyclerListView;->mRadiusArrays:[F

    .line 653
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 657
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 658
    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIRecyclerListView;->mNeedClip:Z

    if-eqz v0, :cond_0

    .line 659
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIRecyclerListView;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 661
    :cond_0
    invoke-super {p0, p1}, Lcom/coui/appcompat/dialog/app/AlertController$RecycleListView;->draw(Landroid/graphics/Canvas;)V

    .line 662
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 663
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 4
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 676
    invoke-super {p0, p1, p2, p3, p4}, Lcom/coui/appcompat/dialog/app/AlertController$RecycleListView;->onSizeChanged(IIII)V

    .line 677
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIRecyclerListView;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 678
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIRecyclerListView;->mRectF:Landroid/graphics/RectF;

    int-to-float v1, p1

    int-to-float v2, p2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 679
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIRecyclerListView;->mClipPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIRecyclerListView;->mRectF:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIRecyclerListView;->mRadiusArrays:[F

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 680
    return-void
.end method

.method public setNeedClip(Z)V
    .locals 0
    .param p1, "needClip"    # Z

    .line 671
    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIRecyclerListView;->mNeedClip:Z

    .line 672
    return-void
.end method
