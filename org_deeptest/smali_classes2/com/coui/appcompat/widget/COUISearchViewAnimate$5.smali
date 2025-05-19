.class Lcom/coui/appcompat/widget/COUISearchViewAnimate$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "COUISearchViewAnimate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/widget/COUISearchViewAnimate;->showInToolBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/widget/COUISearchViewAnimate;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/COUISearchViewAnimate;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/widget/COUISearchViewAnimate;

    .line 759
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$5;->this$0:Lcom/coui/appcompat/widget/COUISearchViewAnimate;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 762
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 763
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$5;->this$0:Lcom/coui/appcompat/widget/COUISearchViewAnimate;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->access$500(Lcom/coui/appcompat/widget/COUISearchViewAnimate;I)V

    .line 764
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$5;->this$0:Lcom/coui/appcompat/widget/COUISearchViewAnimate;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->access$602(Lcom/coui/appcompat/widget/COUISearchViewAnimate;Z)Z

    .line 765
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$5;->this$0:Lcom/coui/appcompat/widget/COUISearchViewAnimate;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->access$700(Lcom/coui/appcompat/widget/COUISearchViewAnimate;)V

    .line 766
    return-void
.end method
