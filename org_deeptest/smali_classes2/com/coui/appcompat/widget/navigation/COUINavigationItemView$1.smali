.class Lcom/coui/appcompat/widget/navigation/COUINavigationItemView$1;
.super Ljava/lang/Object;
.source "COUINavigationItemView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->initializeAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;

    .line 325
    iput-object p1, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView$1;->this$0:Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 339
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 333
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView$1;->this$0:Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;

    invoke-static {v0}, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->access$000(Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;)Landroid/widget/TextView;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 334
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 344
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 329
    return-void
.end method
