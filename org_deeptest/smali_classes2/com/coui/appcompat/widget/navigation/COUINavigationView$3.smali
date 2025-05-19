.class Lcom/coui/appcompat/widget/navigation/COUINavigationView$3;
.super Ljava/lang/Object;
.source "COUINavigationView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/widget/navigation/COUINavigationView;->initAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/widget/navigation/COUINavigationView;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/navigation/COUINavigationView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/widget/navigation/COUINavigationView;

    .line 499
    iput-object p1, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationView$3;->this$0:Lcom/coui/appcompat/widget/navigation/COUINavigationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 515
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 507
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationView$3;->this$0:Lcom/coui/appcompat/widget/navigation/COUINavigationView;

    invoke-static {v0}, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->access$300(Lcom/coui/appcompat/widget/navigation/COUINavigationView;)Lcom/coui/appcompat/widget/navigation/COUINavigationView$OnNavigationEnterHideListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 508
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationView$3;->this$0:Lcom/coui/appcompat/widget/navigation/COUINavigationView;

    invoke-static {v0}, Lcom/coui/appcompat/widget/navigation/COUINavigationView;->access$300(Lcom/coui/appcompat/widget/navigation/COUINavigationView;)Lcom/coui/appcompat/widget/navigation/COUINavigationView$OnNavigationEnterHideListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/coui/appcompat/widget/navigation/COUINavigationView$OnNavigationEnterHideListener;->onAnimationExitEnd()V

    .line 510
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 520
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 503
    return-void
.end method
