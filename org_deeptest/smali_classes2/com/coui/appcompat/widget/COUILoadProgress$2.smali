.class Lcom/coui/appcompat/widget/COUILoadProgress$2;
.super Ljava/lang/Object;
.source "COUILoadProgress.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


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

    .line 567
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUILoadProgress$2;->this$0:Lcom/coui/appcompat/widget/COUILoadProgress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 581
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILoadProgress$2;->this$0:Lcom/coui/appcompat/widget/COUILoadProgress;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/coui/appcompat/widget/COUILoadProgress;->mIsUpdateWithAnimation:Z

    .line 582
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 575
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILoadProgress$2;->this$0:Lcom/coui/appcompat/widget/COUILoadProgress;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/coui/appcompat/widget/COUILoadProgress;->mIsUpdateWithAnimation:Z

    .line 576
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILoadProgress$2;->this$0:Lcom/coui/appcompat/widget/COUILoadProgress;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUILoadProgress$2;->this$0:Lcom/coui/appcompat/widget/COUILoadProgress;

    iget v1, v1, Lcom/coui/appcompat/widget/COUILoadProgress;->mProgress:I

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUILoadProgress;->onProgressRefresh(I)V

    .line 577
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 587
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 570
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUILoadProgress$2;->this$0:Lcom/coui/appcompat/widget/COUILoadProgress;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/coui/appcompat/widget/COUILoadProgress;->mIsUpdateWithAnimation:Z

    .line 571
    return-void
.end method
