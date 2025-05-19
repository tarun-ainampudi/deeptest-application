.class Lcom/coui/appcompat/widget/COUILockPatternView$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "COUILockPatternView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/widget/COUILockPatternView;->startLineEndAnimation(Lcom/coui/appcompat/widget/COUILockPatternView$CellState;FFFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/widget/COUILockPatternView;

.field final synthetic val$state:Lcom/coui/appcompat/widget/COUILockPatternView$CellState;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/COUILockPatternView;Lcom/coui/appcompat/widget/COUILockPatternView$CellState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/widget/COUILockPatternView;

    .line 867
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUILockPatternView$6;->this$0:Lcom/coui/appcompat/widget/COUILockPatternView;

    iput-object p2, p0, Lcom/coui/appcompat/widget/COUILockPatternView$6;->val$state:Lcom/coui/appcompat/widget/COUILockPatternView$CellState;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 870
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILockPatternView$6;->val$state:Lcom/coui/appcompat/widget/COUILockPatternView$CellState;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/coui/appcompat/widget/COUILockPatternView$CellState;->lineAnimator:Landroid/animation/ValueAnimator;

    .line 871
    return-void
.end method
