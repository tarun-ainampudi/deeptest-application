.class Lcom/facebook/rebound/ui/SpringConfiguratorView$SpinnerAdapter;
.super Landroid/widget/BaseAdapter;
.source "SpringConfiguratorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/rebound/ui/SpringConfiguratorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpinnerAdapter"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mStrings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/facebook/rebound/ui/SpringConfiguratorView;


# direct methods
.method public constructor <init>(Lcom/facebook/rebound/ui/SpringConfiguratorView;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .line 366
    iput-object p1, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView$SpinnerAdapter;->this$0:Lcom/facebook/rebound/ui/SpringConfiguratorView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 367
    iput-object p2, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView$SpinnerAdapter;->mContext:Landroid/content/Context;

    .line 368
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView$SpinnerAdapter;->mStrings:Ljava/util/List;

    .line 369
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .line 387
    iget-object v0, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView$SpinnerAdapter;->mStrings:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 388
    invoke-virtual {p0}, Lcom/facebook/rebound/ui/SpringConfiguratorView$SpinnerAdapter;->notifyDataSetChanged()V

    .line 389
    return-void
.end method

.method public clear()V
    .locals 1

    .line 395
    iget-object v0, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView$SpinnerAdapter;->mStrings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 396
    invoke-virtual {p0}, Lcom/facebook/rebound/ui/SpringConfiguratorView$SpinnerAdapter;->notifyDataSetChanged()V

    .line 397
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 373
    iget-object v0, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView$SpinnerAdapter;->mStrings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .line 378
    iget-object v0, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView$SpinnerAdapter;->mStrings:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 383
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 402
    if-nez p2, :cond_0

    .line 403
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView$SpinnerAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 404
    .local v0, "textView":Landroid/widget/TextView;
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 407
    .local v1, "params":Landroid/widget/AbsListView$LayoutParams;
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 408
    const/high16 v2, 0x41400000    # 12.0f

    iget-object v3, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView$SpinnerAdapter;->this$0:Lcom/facebook/rebound/ui/SpringConfiguratorView;

    invoke-virtual {v3}, Lcom/facebook/rebound/ui/SpringConfiguratorView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/facebook/rebound/ui/Util;->dpToPx(FLandroid/content/res/Resources;)I

    move-result v2

    .line 409
    .local v2, "twelvePx":I
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 410
    iget-object v3, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView$SpinnerAdapter;->this$0:Lcom/facebook/rebound/ui/SpringConfiguratorView;

    invoke-static {v3}, Lcom/facebook/rebound/ui/SpringConfiguratorView;->access$1500(Lcom/facebook/rebound/ui/SpringConfiguratorView;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 411
    .end local v1    # "params":Landroid/widget/AbsListView$LayoutParams;
    .end local v2    # "twelvePx":I
    goto :goto_0

    .line 412
    .end local v0    # "textView":Landroid/widget/TextView;
    :cond_0
    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    .line 414
    .restart local v0    # "textView":Landroid/widget/TextView;
    :goto_0
    iget-object v1, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView$SpinnerAdapter;->mStrings:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 415
    return-object v0
.end method
