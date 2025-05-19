.class Lcom/coui/appcompat/widget/tablayout/COUITabLayout$PagerAdapterObserver;
.super Landroid/database/DataSetObserver;
.source "COUITabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/tablayout/COUITabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PagerAdapterObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/widget/tablayout/COUITabLayout;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/widget/tablayout/COUITabLayout;)V
    .locals 0

    .line 2705
    iput-object p1, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$PagerAdapterObserver;->this$0:Lcom/coui/appcompat/widget/tablayout/COUITabLayout;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 2706
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 2710
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$PagerAdapterObserver;->this$0:Lcom/coui/appcompat/widget/tablayout/COUITabLayout;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->populateFromPagerAdapter()V

    .line 2711
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .line 2715
    iget-object v0, p0, Lcom/coui/appcompat/widget/tablayout/COUITabLayout$PagerAdapterObserver;->this$0:Lcom/coui/appcompat/widget/tablayout/COUITabLayout;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/tablayout/COUITabLayout;->populateFromPagerAdapter()V

    .line 2716
    return-void
.end method
