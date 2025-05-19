.class Lcom/coui/appcompat/widget/COUISlideView$2;
.super Ljava/lang/Object;
.source "COUISlideView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/widget/COUISlideView;->shrink()V
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

    .line 967
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUISlideView$2;->this$0:Lcom/coui/appcompat/widget/COUISlideView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 970
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISlideView$2;->this$0:Lcom/coui/appcompat/widget/COUISlideView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/COUISlideView;->access$102(Lcom/coui/appcompat/widget/COUISlideView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 971
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISlideView$2;->this$0:Lcom/coui/appcompat/widget/COUISlideView;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUISlideView;->access$200(Lcom/coui/appcompat/widget/COUISlideView;)Lcom/coui/appcompat/widget/COUISlideView$OnSmoothScrollListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 972
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUISlideView$2;->this$0:Lcom/coui/appcompat/widget/COUISlideView;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUISlideView;->access$200(Lcom/coui/appcompat/widget/COUISlideView;)Lcom/coui/appcompat/widget/COUISlideView$OnSmoothScrollListener;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUISlideView$2;->this$0:Lcom/coui/appcompat/widget/COUISlideView;

    invoke-interface {v0, v1}, Lcom/coui/appcompat/widget/COUISlideView$OnSmoothScrollListener;->onSmoothScroll(Landroid/view/View;)V

    .line 974
    :cond_0
    return-void
.end method
