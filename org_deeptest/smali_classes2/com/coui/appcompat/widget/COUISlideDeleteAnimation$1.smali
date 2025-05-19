.class Lcom/coui/appcompat/widget/COUISlideDeleteAnimation$1;
.super Ljava/lang/Object;
.source "COUISlideDeleteAnimation.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/widget/COUISlideDeleteAnimation;-><init>(Landroid/view/View;Landroid/view/View;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/widget/COUISlideDeleteAnimation;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/COUISlideDeleteAnimation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/widget/COUISlideDeleteAnimation;

    .line 61
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUISlideDeleteAnimation$1;->this$0:Lcom/coui/appcompat/widget/COUISlideDeleteAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .line 64
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISlideDeleteAnimation$1;->this$0:Lcom/coui/appcompat/widget/COUISlideDeleteAnimation;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUISlideDeleteAnimation;->access$000(Lcom/coui/appcompat/widget/COUISlideDeleteAnimation;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->scrollTo(II)V

    .line 65
    return-void
.end method
