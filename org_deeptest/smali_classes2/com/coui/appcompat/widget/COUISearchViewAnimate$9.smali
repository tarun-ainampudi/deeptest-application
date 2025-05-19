.class Lcom/coui/appcompat/widget/COUISearchViewAnimate$9;
.super Ljava/lang/Object;
.source "COUISearchViewAnimate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/COUISearchViewAnimate;
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

    .line 965
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$9;->this$0:Lcom/coui/appcompat/widget/COUISearchViewAnimate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 968
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$9;->this$0:Lcom/coui/appcompat/widget/COUISearchViewAnimate;

    invoke-static {v1}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->access$1300(Lcom/coui/appcompat/widget/COUISearchViewAnimate;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 969
    invoke-static {}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->access$1400()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 970
    const-string v0, "COUISearchViewAnimate"

    const-string v1, "onClick: hint"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$9;->this$0:Lcom/coui/appcompat/widget/COUISearchViewAnimate;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->access$1500(Lcom/coui/appcompat/widget/COUISearchViewAnimate;)V

    goto :goto_0

    .line 973
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$9;->this$0:Lcom/coui/appcompat/widget/COUISearchViewAnimate;

    invoke-static {v1}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->access$1600(Lcom/coui/appcompat/widget/COUISearchViewAnimate;)Lcom/coui/appcompat/widget/COUISearchViewAnimate$SearchCancelButton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coui/appcompat/widget/COUISearchViewAnimate$SearchCancelButton;->getId()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 974
    invoke-static {}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->access$1400()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 975
    const-string v0, "COUISearchViewAnimate"

    const-string v1, "onClick: cancel button"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    :cond_2
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISearchViewAnimate$9;->this$0:Lcom/coui/appcompat/widget/COUISearchViewAnimate;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUISearchViewAnimate;->access$1700(Lcom/coui/appcompat/widget/COUISearchViewAnimate;)V

    .line 979
    :cond_3
    :goto_0
    return-void
.end method
