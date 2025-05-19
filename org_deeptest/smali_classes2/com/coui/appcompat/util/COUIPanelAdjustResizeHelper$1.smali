.class Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "COUIPanelAdjustResizeHelper.java"


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

.field final synthetic val$endValue:I

.field final synthetic val$paddingLeft:I

.field final synthetic val$paddingRight:I

.field final synthetic val$paddingTop:I

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;Landroid/view/View;IIII)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;

    .line 192
    iput-object p1, p0, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper$1;->this$0:Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper;

    iput-object p2, p0, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper$1;->val$view:Landroid/view/View;

    iput p3, p0, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper$1;->val$paddingLeft:I

    iput p4, p0, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper$1;->val$paddingTop:I

    iput p5, p0, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper$1;->val$paddingRight:I

    iput p6, p0, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper$1;->val$endValue:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 195
    iget-object v0, p0, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper$1;->val$view:Landroid/view/View;

    iget v1, p0, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper$1;->val$paddingLeft:I

    iget v2, p0, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper$1;->val$paddingTop:I

    iget v3, p0, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper$1;->val$paddingRight:I

    iget v4, p0, Lcom/coui/appcompat/util/COUIPanelAdjustResizeHelper$1;->val$endValue:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 196
    return-void
.end method
