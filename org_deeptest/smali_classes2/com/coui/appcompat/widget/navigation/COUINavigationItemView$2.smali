.class Lcom/coui/appcompat/widget/navigation/COUINavigationItemView$2;
.super Ljava/lang/Object;
.source "COUINavigationItemView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->createTipsHideAnimator()V
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

    .line 357
    iput-object p1, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView$2;->this$0:Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 365
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView$2;->this$0:Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;

    invoke-static {v0}, Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;->access$100(Lcom/coui/appcompat/widget/navigation/COUINavigationItemView;)Lcom/coui/appcompat/widget/COUIHintRedDot;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUIHintRedDot;->setVisibility(I)V

    .line 366
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 371
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .line 361
    return-void
.end method
