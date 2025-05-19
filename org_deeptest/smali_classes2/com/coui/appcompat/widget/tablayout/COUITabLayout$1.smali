.class Lcom/coui/appcompat/widget/tablayout/COUITabLayout$1;
.super Ljava/lang/Object;
.source "COUITabLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->ensureScrollAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/widget/tablayout/COUITabLayout;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/tablayout/COUITabLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/widget/tablayout/COUITabLayout;

    .line 1206
    iput-object p1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$1;->this$0:Lcom/coui/appcompat/widget/tablayout/COUITabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animator"    # Landroid/animation/ValueAnimator;

    .line 1209
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$1;->this$0:Lcom/coui/appcompat/widget/tablayout/COUITabLayout;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->scrollTo(II)V

    .line 1210
    return-void
.end method
