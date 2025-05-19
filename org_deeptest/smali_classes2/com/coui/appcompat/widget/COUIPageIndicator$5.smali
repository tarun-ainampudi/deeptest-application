.class Lcom/coui/appcompat/widget/COUIPageIndicator$5;
.super Ljava/lang/Object;
.source "COUIPageIndicator.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/widget/COUIPageIndicator;->addIndicatorDots(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/widget/COUIPageIndicator;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/COUIPageIndicator;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/widget/COUIPageIndicator;

    .line 341
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator$5;->this$0:Lcom/coui/appcompat/widget/COUIPageIndicator;

    iput p2, p0, Lcom/coui/appcompat/widget/COUIPageIndicator$5;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 344
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator$5;->this$0:Lcom/coui/appcompat/widget/COUIPageIndicator;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUIPageIndicator;->access$1400(Lcom/coui/appcompat/widget/COUIPageIndicator;)Lcom/coui/appcompat/widget/COUIPageIndicator$OnIndicatorDotClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator$5;->this$0:Lcom/coui/appcompat/widget/COUIPageIndicator;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUIPageIndicator;->access$1500(Lcom/coui/appcompat/widget/COUIPageIndicator;)I

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator$5;->val$index:I

    if-eq v0, v1, :cond_0

    .line 345
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator$5;->this$0:Lcom/coui/appcompat/widget/COUIPageIndicator;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/COUIPageIndicator;->access$702(Lcom/coui/appcompat/widget/COUIPageIndicator;Z)Z

    .line 346
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator$5;->this$0:Lcom/coui/appcompat/widget/COUIPageIndicator;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/COUIPageIndicator;->access$902(Lcom/coui/appcompat/widget/COUIPageIndicator;Z)Z

    .line 347
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator$5;->this$0:Lcom/coui/appcompat/widget/COUIPageIndicator;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUIPageIndicator;->stopTraceAnimator()V

    .line 348
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIPageIndicator$5;->this$0:Lcom/coui/appcompat/widget/COUIPageIndicator;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUIPageIndicator;->access$1400(Lcom/coui/appcompat/widget/COUIPageIndicator;)Lcom/coui/appcompat/widget/COUIPageIndicator$OnIndicatorDotClickListener;

    move-result-object v0

    iget v1, p0, Lcom/coui/appcompat/widget/COUIPageIndicator$5;->val$index:I

    invoke-interface {v0, v1}, Lcom/coui/appcompat/widget/COUIPageIndicator$OnIndicatorDotClickListener;->onClick(I)V

    .line 350
    :cond_0
    return-void
.end method
