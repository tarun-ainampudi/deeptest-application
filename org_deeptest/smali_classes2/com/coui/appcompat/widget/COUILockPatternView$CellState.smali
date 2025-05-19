.class public Lcom/coui/appcompat/widget/COUILockPatternView$CellState;
.super Ljava/lang/Object;
.source "COUILockPatternView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/COUILockPatternView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CellState"
.end annotation


# instance fields
.field alpha:F

.field cellDrawListener:Lcom/coui/appcompat/widget/COUILockPatternView$OnCellDrawListener;

.field col:I

.field innerCircleAlpha:F

.field innerCircleScale:F

.field public lineAnimator:Landroid/animation/ValueAnimator;

.field public lineEndX:F

.field public lineEndY:F

.field needDrawCircle:Z

.field outerCircleAlpha:F

.field outerCircleScale:F

.field radius:F

.field row:I

.field translationX:F

.field translationY:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    const/4 v0, 0x1

    iput v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView$CellState;->lineEndX:F

    .line 282
    iput v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView$CellState;->lineEndY:F

    return-void
.end method


# virtual methods
.method public setCellDrawListener(Lcom/coui/appcompat/widget/COUILockPatternView$OnCellDrawListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/coui/appcompat/widget/COUILockPatternView$OnCellDrawListener;

    .line 301
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUILockPatternView$CellState;->cellDrawListener:Lcom/coui/appcompat/widget/COUILockPatternView$OnCellDrawListener;

    .line 302
    return-void
.end method

.method public setCellNumberAlpha(F)V
    .locals 1
    .param p1, "cellNumberAlpha"    # F

    .line 309
    iput p1, p0, Lcom/coui/appcompat/widget/COUILockPatternView$CellState;->alpha:F

    .line 310
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView$CellState;->cellDrawListener:Lcom/coui/appcompat/widget/COUILockPatternView$OnCellDrawListener;

    invoke-interface {v0}, Lcom/coui/appcompat/widget/COUILockPatternView$OnCellDrawListener;->drawCell()V

    .line 311
    return-void
.end method

.method public setCellNumberTranslateX(I)V
    .locals 1
    .param p1, "cellNumberTranslateX"    # I

    .line 327
    int-to-float v0, p1

    iput v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView$CellState;->translationX:F

    .line 328
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView$CellState;->cellDrawListener:Lcom/coui/appcompat/widget/COUILockPatternView$OnCellDrawListener;

    invoke-interface {v0}, Lcom/coui/appcompat/widget/COUILockPatternView$OnCellDrawListener;->drawCell()V

    .line 329
    return-void
.end method

.method public setCellNumberTranslateY(I)V
    .locals 1
    .param p1, "cellNumberTranslateY"    # I

    .line 318
    int-to-float v0, p1

    iput v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView$CellState;->translationY:F

    .line 319
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView$CellState;->cellDrawListener:Lcom/coui/appcompat/widget/COUILockPatternView$OnCellDrawListener;

    invoke-interface {v0}, Lcom/coui/appcompat/widget/COUILockPatternView$OnCellDrawListener;->drawCell()V

    .line 320
    return-void
.end method
