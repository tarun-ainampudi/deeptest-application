.class Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper$2;
.super Ljava/lang/Object;
.source "COUIPanelAdjustResizeHelper.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;->doPaddingBottomAnim(Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;

.field final synthetic val$paddingLeft:I

.field final synthetic val$paddingRight:I

.field final synthetic val$paddingTop:I

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;Landroid/view/View;III)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;

    .line 198
    iput-object p1, p0, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper$2;->this$0:Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;

    iput-object p2, p0, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper$2;->val$view:Landroid/view/View;

    iput p3, p0, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper$2;->val$paddingLeft:I

    iput p4, p0, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper$2;->val$paddingTop:I

    iput p5, p0, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper$2;->val$paddingRight:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 201
    iget-object v0, p0, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper$2;->val$view:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper$2;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 203
    .local v0, "value":I
    iget-object v1, p0, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper$2;->val$view:Landroid/view/View;

    iget v2, p0, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper$2;->val$paddingLeft:I

    iget v3, p0, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper$2;->val$paddingTop:I

    iget v4, p0, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper$2;->val$paddingRight:I

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 205
    .end local v0    # "value":I
    :cond_0
    return-void
.end method
