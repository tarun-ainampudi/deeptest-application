.class Lcom/coui/appcompat/widget/COUILoadProgress$1;
.super Ljava/lang/Object;
.source "COUILoadProgress.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/widget/COUILoadProgress;->refreshProgressWithAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/widget/COUILoadProgress;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/COUILoadProgress;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/widget/COUILoadProgress;

    .line 560
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUILoadProgress$1;->this$0:Lcom/coui/appcompat/widget/COUILoadProgress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 563
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILoadProgress$1;->this$0:Lcom/coui/appcompat/widget/COUILoadProgress;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, v0, Lcom/coui/appcompat/widget/COUILoadProgress;->mVisualProgress:F

    .line 564
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILoadProgress$1;->this$0:Lcom/coui/appcompat/widget/COUILoadProgress;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUILoadProgress;->invalidate()V

    .line 565
    return-void
.end method
