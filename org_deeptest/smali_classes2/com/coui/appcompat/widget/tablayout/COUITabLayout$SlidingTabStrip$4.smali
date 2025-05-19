.class Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "COUITabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->animateIndicatorToPosition(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;

    .line 2465
    iput-object p1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip$4;->this$1:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;

    iput p2, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip$4;->val$position:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 2468
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip$4;->this$1:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;

    iget v1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip$4;->val$position:I

    iput v1, v0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->mSelectedPosition:I

    .line 2469
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip$4;->this$1:Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;

    const/4 v1, 0x0

    iput v1, v0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$SlidingTabStrip;->mSelectionOffset:F

    .line 2470
    return-void
.end method
