.class Lcom/coui/appcompat/widget/COUIListView$1;
.super Ljava/lang/Object;
.source "COUIListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/COUIListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/widget/COUIListView;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/COUIListView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/coui/appcompat/widget/COUIListView;

    .line 55
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIListView$1;->this$0:Lcom/coui/appcompat/widget/COUIListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 58
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIListView$1;->this$0:Lcom/coui/appcompat/widget/COUIListView;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUIListView;->access$000(Lcom/coui/appcompat/widget/COUIListView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIListView$1;->this$0:Lcom/coui/appcompat/widget/COUIListView;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIListView$1;->this$0:Lcom/coui/appcompat/widget/COUIListView;

    invoke-virtual {v1}, Lcom/coui/appcompat/widget/COUIListView;->getFirstVisiblePosition()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIListView$1;->this$0:Lcom/coui/appcompat/widget/COUIListView;

    invoke-virtual {v2}, Lcom/coui/appcompat/widget/COUIListView;->getPaddingTop()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/coui/appcompat/widget/COUIListView;->setSelectionFromTop(II)V

    goto :goto_0

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIListView$1;->this$0:Lcom/coui/appcompat/widget/COUIListView;

    iget-object v1, p0, Lcom/coui/appcompat/widget/COUIListView$1;->this$0:Lcom/coui/appcompat/widget/COUIListView;

    invoke-virtual {v1}, Lcom/coui/appcompat/widget/COUIListView;->getLastVisiblePosition()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/coui/appcompat/widget/COUIListView$1;->this$0:Lcom/coui/appcompat/widget/COUIListView;

    invoke-virtual {v2}, Lcom/coui/appcompat/widget/COUIListView;->getPaddingBottom()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/coui/appcompat/widget/COUIListView;->access$100(Lcom/coui/appcompat/widget/COUIListView;II)V

    .line 63
    :goto_0
    return-void
.end method
