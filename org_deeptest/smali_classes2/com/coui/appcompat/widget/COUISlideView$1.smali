.class Lcom/coui/appcompat/widget/COUISlideView$1;
.super Ljava/lang/Object;
.source "COUISlideView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/widget/COUISlideView;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/widget/COUISlideView;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/COUISlideView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/widget/COUISlideView;

    .line 462
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUISlideView$1;->this$0:Lcom/coui/appcompat/widget/COUISlideView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 466
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISlideView$1;->this$0:Lcom/coui/appcompat/widget/COUISlideView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/COUISlideView;->access$002(Lcom/coui/appcompat/widget/COUISlideView;I)I

    .line 467
    return-void
.end method
