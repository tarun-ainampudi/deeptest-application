.class Landroidx/widget/COUIDrawerLayout$2;
.super Ljava/lang/Object;
.source "COUIDrawerLayout.java"

# interfaces
.implements Lcom/facebook/rebound/SpringListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/widget/COUIDrawerLayout;->initFeedbackAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/widget/COUIDrawerLayout;


# direct methods
.method constructor <init>(Landroidx/widget/COUIDrawerLayout;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/widget/COUIDrawerLayout;

    .line 2947
    iput-object p1, p0, Landroidx/widget/COUIDrawerLayout$2;->this$0:Landroidx/widget/COUIDrawerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSpringActivate(Lcom/facebook/rebound/Spring;)V
    .locals 0
    .param p1, "spring"    # Lcom/facebook/rebound/Spring;

    .line 2967
    return-void
.end method

.method public onSpringAtRest(Lcom/facebook/rebound/Spring;)V
    .locals 0
    .param p1, "spring"    # Lcom/facebook/rebound/Spring;

    .line 2962
    return-void
.end method

.method public onSpringEndStateChange(Lcom/facebook/rebound/Spring;)V
    .locals 0
    .param p1, "spring"    # Lcom/facebook/rebound/Spring;

    .line 2972
    return-void
.end method

.method public onSpringUpdate(Lcom/facebook/rebound/Spring;)V
    .locals 4
    .param p1, "spring"    # Lcom/facebook/rebound/Spring;

    .line 2950
    invoke-virtual {p1}, Lcom/facebook/rebound/Spring;->getCurrentValue()D

    move-result-wide v0

    double-to-int v0, v0

    .line 2951
    .local v0, "currentValue":I
    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    .line 2952
    iget-object v1, p0, Landroidx/widget/COUIDrawerLayout$2;->this$0:Landroidx/widget/COUIDrawerLayout;

    invoke-static {v1}, Landroidx/widget/COUIDrawerLayout;->access$500(Landroidx/widget/COUIDrawerLayout;)Lcom/facebook/rebound/Spring;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/facebook/rebound/Spring;->setEndValue(D)Lcom/facebook/rebound/Spring;

    .line 2954
    :cond_0
    iget-object v1, p0, Landroidx/widget/COUIDrawerLayout$2;->this$0:Landroidx/widget/COUIDrawerLayout;

    invoke-static {v1}, Landroidx/widget/COUIDrawerLayout;->access$600(Landroidx/widget/COUIDrawerLayout;)I

    move-result v1

    sub-int v1, v0, v1

    .line 2955
    .local v1, "offset":I
    iget-object v2, p0, Landroidx/widget/COUIDrawerLayout$2;->this$0:Landroidx/widget/COUIDrawerLayout;

    invoke-static {v2, v0}, Landroidx/widget/COUIDrawerLayout;->access$602(Landroidx/widget/COUIDrawerLayout;I)I

    .line 2956
    iget-object v2, p0, Landroidx/widget/COUIDrawerLayout$2;->this$0:Landroidx/widget/COUIDrawerLayout;

    invoke-static {v2}, Landroidx/widget/COUIDrawerLayout;->access$700(Landroidx/widget/COUIDrawerLayout;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 2957
    return-void
.end method
