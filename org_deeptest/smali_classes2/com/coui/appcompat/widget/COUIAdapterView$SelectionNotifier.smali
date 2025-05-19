.class Lcom/coui/appcompat/widget/COUIAdapterView$SelectionNotifier;
.super Ljava/lang/Object;
.source "COUIAdapterView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/COUIAdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionNotifier"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/widget/COUIAdapterView;


# direct methods
.method private constructor <init>(Lcom/coui/appcompat/widget/COUIAdapterView;)V
    .locals 0

    .line 856
    .local p0, "this":Lcom/coui/appcompat/widget/COUIAdapterView$SelectionNotifier;, "Lcom/coui/appcompat/widget/COUIAdapterView<TT;>.SelectionNotifier;"
    iput-object p1, p0, Lcom/coui/appcompat/widget/COUIAdapterView$SelectionNotifier;->this$0:Lcom/coui/appcompat/widget/COUIAdapterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/coui/appcompat/widget/COUIAdapterView;Lcom/coui/appcompat/widget/COUIAdapterView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/coui/appcompat/widget/COUIAdapterView;
    .param p2, "x1"    # Lcom/coui/appcompat/widget/COUIAdapterView$1;

    .line 856
    .local p0, "this":Lcom/coui/appcompat/widget/COUIAdapterView$SelectionNotifier;, "Lcom/coui/appcompat/widget/COUIAdapterView<TT;>.SelectionNotifier;"
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/COUIAdapterView$SelectionNotifier;-><init>(Lcom/coui/appcompat/widget/COUIAdapterView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 858
    .local p0, "this":Lcom/coui/appcompat/widget/COUIAdapterView$SelectionNotifier;, "Lcom/coui/appcompat/widget/COUIAdapterView<TT;>.SelectionNotifier;"
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIAdapterView$SelectionNotifier;->this$0:Lcom/coui/appcompat/widget/COUIAdapterView;

    iget-boolean v0, v0, Lcom/coui/appcompat/widget/COUIAdapterView;->mDataChanged:Z

    if-eqz v0, :cond_0

    .line 862
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIAdapterView$SelectionNotifier;->this$0:Lcom/coui/appcompat/widget/COUIAdapterView;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/COUIAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 863
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIAdapterView$SelectionNotifier;->this$0:Lcom/coui/appcompat/widget/COUIAdapterView;

    invoke-virtual {v0, p0}, Lcom/coui/appcompat/widget/COUIAdapterView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 866
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/COUIAdapterView$SelectionNotifier;->this$0:Lcom/coui/appcompat/widget/COUIAdapterView;

    invoke-static {v0}, Lcom/coui/appcompat/widget/COUIAdapterView;->access$200(Lcom/coui/appcompat/widget/COUIAdapterView;)V

    .line 868
    :cond_1
    :goto_0
    return-void
.end method
