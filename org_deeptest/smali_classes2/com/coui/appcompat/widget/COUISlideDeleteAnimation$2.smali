.class Lcom/coui/appcompat/widget/COUISlideDeleteAnimation$2;
.super Ljava/lang/Object;
.source "COUISlideDeleteAnimation.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


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

    .line 73
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUISlideDeleteAnimation$2;->this$0:Lcom/coui/appcompat/widget/COUISlideDeleteAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 87
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 81
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISlideDeleteAnimation$2;->this$0:Lcom/coui/appcompat/widget/COUISlideDeleteAnimation;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUISlideDeleteAnimation;->itemViewDelete()V

    .line 82
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 92
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 77
    return-void
.end method
