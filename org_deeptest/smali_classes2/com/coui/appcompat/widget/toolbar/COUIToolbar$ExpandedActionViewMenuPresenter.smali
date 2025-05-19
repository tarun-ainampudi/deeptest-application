.class Lcom/coui/appcompat/widget/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;
.super Ljava/lang/Object;
.source "COUIToolbar.java"

# interfaces
.implements Landroidx/appcompat/view/menu/MenuPresenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/widget/toolbar/COUIToolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExpandedActionViewMenuPresenter"
.end annotation


# instance fields
.field mCurrentExpandedItem:Landroidx/appcompat/view/menu/MenuItemImpl;

.field mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

.field final synthetic this$0:Lcom/coui/appcompat/widget/toolbar/COUIToolbar;


# direct methods
.method private constructor <init>(Lcom/coui/appcompat/widget/toolbar/COUIToolbar;)V
    .locals 0

    .line 2295
    iput-object p1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;->this$0:Lcom/coui/appcompat/widget/toolbar/COUIToolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/coui/appcompat/widget/toolbar/COUIToolbar;Lcom/coui/appcompat/widget/toolbar/COUIToolbar$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/coui/appcompat/widget/toolbar/COUIToolbar;
    .param p2, "x1"    # Lcom/coui/appcompat/widget/toolbar/COUIToolbar$1;

    .line 2295
    invoke-direct {p0, p1}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;-><init>(Lcom/coui/appcompat/widget/toolbar/COUIToolbar;)V

    return-void
.end method


# virtual methods
.method public collapseItemActionView(Landroidx/appcompat/view/menu/MenuBuilder;Landroidx/appcompat/view/menu/MenuItemImpl;)Z
    .locals 3
    .param p1, "menu"    # Landroidx/appcompat/view/menu/MenuBuilder;
    .param p2, "item"    # Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 2386
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;->this$0:Lcom/coui/appcompat/widget/toolbar/COUIToolbar;

    iget-object v0, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mExpandedActionView:Landroid/view/View;

    instance-of v0, v0, Landroidx/appcompat/view/CollapsibleActionView;

    if-eqz v0, :cond_0

    .line 2387
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;->this$0:Lcom/coui/appcompat/widget/toolbar/COUIToolbar;

    iget-object v0, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mExpandedActionView:Landroid/view/View;

    check-cast v0, Landroidx/appcompat/view/CollapsibleActionView;

    invoke-interface {v0}, Landroidx/appcompat/view/CollapsibleActionView;->onActionViewCollapsed()V

    .line 2390
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;->this$0:Lcom/coui/appcompat/widget/toolbar/COUIToolbar;

    iget-object v1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;->this$0:Lcom/coui/appcompat/widget/toolbar/COUIToolbar;

    iget-object v1, v1, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->removeView(Landroid/view/View;)V

    .line 2391
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;->this$0:Lcom/coui/appcompat/widget/toolbar/COUIToolbar;

    iget-object v1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;->this$0:Lcom/coui/appcompat/widget/toolbar/COUIToolbar;

    invoke-static {v1}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->access$300(Lcom/coui/appcompat/widget/toolbar/COUIToolbar;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->removeView(Landroid/view/View;)V

    .line 2392
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;->this$0:Lcom/coui/appcompat/widget/toolbar/COUIToolbar;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mExpandedActionView:Landroid/view/View;

    .line 2394
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;->this$0:Lcom/coui/appcompat/widget/toolbar/COUIToolbar;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->access$500(Lcom/coui/appcompat/widget/toolbar/COUIToolbar;Z)V

    .line 2395
    iput-object v1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 2396
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;->this$0:Lcom/coui/appcompat/widget/toolbar/COUIToolbar;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->requestLayout()V

    .line 2397
    invoke-virtual {p2, v2}, Landroidx/appcompat/view/menu/MenuItemImpl;->setActionViewExpanded(Z)V

    .line 2399
    const/4 v0, 0x1

    return v0
.end method

.method public expandItemActionView(Landroidx/appcompat/view/menu/MenuBuilder;Landroidx/appcompat/view/menu/MenuItemImpl;)Z
    .locals 3
    .param p1, "menu"    # Landroidx/appcompat/view/menu/MenuBuilder;
    .param p2, "item"    # Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 2357
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;->this$0:Lcom/coui/appcompat/widget/toolbar/COUIToolbar;

    invoke-static {v0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->access$200(Lcom/coui/appcompat/widget/toolbar/COUIToolbar;)V

    .line 2358
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;->this$0:Lcom/coui/appcompat/widget/toolbar/COUIToolbar;

    invoke-static {v0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->access$300(Lcom/coui/appcompat/widget/toolbar/COUIToolbar;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;->this$0:Lcom/coui/appcompat/widget/toolbar/COUIToolbar;

    if-eq v0, v1, :cond_0

    .line 2359
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;->this$0:Lcom/coui/appcompat/widget/toolbar/COUIToolbar;

    iget-object v1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;->this$0:Lcom/coui/appcompat/widget/toolbar/COUIToolbar;

    invoke-static {v1}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->access$300(Lcom/coui/appcompat/widget/toolbar/COUIToolbar;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->addView(Landroid/view/View;)V

    .line 2361
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;->this$0:Lcom/coui/appcompat/widget/toolbar/COUIToolbar;

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mExpandedActionView:Landroid/view/View;

    .line 2362
    iput-object p2, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 2363
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;->this$0:Lcom/coui/appcompat/widget/toolbar/COUIToolbar;

    iget-object v0, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;->this$0:Lcom/coui/appcompat/widget/toolbar/COUIToolbar;

    if-eq v0, v1, :cond_1

    .line 2364
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;->this$0:Lcom/coui/appcompat/widget/toolbar/COUIToolbar;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->generateDefaultLayoutParams()Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;

    move-result-object v0

    .line 2365
    .local v0, "lp":Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;
    const v1, 0x800003

    iget-object v2, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;->this$0:Lcom/coui/appcompat/widget/toolbar/COUIToolbar;

    invoke-static {v2}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->access$400(Lcom/coui/appcompat/widget/toolbar/COUIToolbar;)I

    move-result v2

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v1, v2

    iput v1, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;->gravity:I

    .line 2366
    const/4 v1, 0x2

    iput v1, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;->mViewType:I

    .line 2367
    iget-object v1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;->this$0:Lcom/coui/appcompat/widget/toolbar/COUIToolbar;

    iget-object v1, v1, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2368
    iget-object v1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;->this$0:Lcom/coui/appcompat/widget/toolbar/COUIToolbar;

    iget-object v2, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;->this$0:Lcom/coui/appcompat/widget/toolbar/COUIToolbar;

    iget-object v2, v2, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->addView(Landroid/view/View;)V

    .line 2371
    .end local v0    # "lp":Lcom/coui/appcompat/widget/toolbar/COUIToolbar$LayoutParams;
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;->this$0:Lcom/coui/appcompat/widget/toolbar/COUIToolbar;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->access$500(Lcom/coui/appcompat/widget/toolbar/COUIToolbar;Z)V

    .line 2372
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;->this$0:Lcom/coui/appcompat/widget/toolbar/COUIToolbar;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->requestLayout()V

    .line 2373
    invoke-virtual {p2, v1}, Landroidx/appcompat/view/menu/MenuItemImpl;->setActionViewExpanded(Z)V

    .line 2375
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;->this$0:Lcom/coui/appcompat/widget/toolbar/COUIToolbar;

    iget-object v0, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mExpandedActionView:Landroid/view/View;

    instance-of v0, v0, Landroidx/appcompat/view/CollapsibleActionView;

    if-eqz v0, :cond_2

    .line 2376
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;->this$0:Lcom/coui/appcompat/widget/toolbar/COUIToolbar;

    iget-object v0, v0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->mExpandedActionView:Landroid/view/View;

    check-cast v0, Landroidx/appcompat/view/CollapsibleActionView;

    invoke-interface {v0}, Landroidx/appcompat/view/CollapsibleActionView;->onActionViewExpanded()V

    .line 2379
    :cond_2
    return v1
.end method

.method public flagActionItems()Z
    .locals 1

    .line 2352
    const/4 v0, 0x0

    return v0
.end method

.method public getId()I
    .locals 1

    .line 2404
    const/4 v0, 0x0

    return v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Landroidx/appcompat/view/menu/MenuView;
    .locals 1
    .param p1, "root"    # Landroid/view/ViewGroup;

    .line 2310
    const/4 v0, 0x0

    return-object v0
.end method

.method public initForMenu(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Landroidx/appcompat/view/menu/MenuBuilder;

    .line 2302
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    .line 2303
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    iget-object v1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/MenuBuilder;->collapseItemActionView(Landroidx/appcompat/view/menu/MenuItemImpl;)Z

    .line 2305
    :cond_0
    iput-object p2, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 2306
    return-void
.end method

.method public onCloseMenu(Landroidx/appcompat/view/menu/MenuBuilder;Z)V
    .locals 0
    .param p1, "menu"    # Landroidx/appcompat/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .line 2348
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 2414
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .line 2409
    const/4 v0, 0x0

    return-object v0
.end method

.method public onSubMenuSelected(Landroidx/appcompat/view/menu/SubMenuBuilder;)Z
    .locals 1
    .param p1, "subMenu"    # Landroidx/appcompat/view/menu/SubMenuBuilder;

    .line 2343
    const/4 v0, 0x0

    return v0
.end method

.method public setCallback(Landroidx/appcompat/view/menu/MenuPresenter$Callback;)V
    .locals 0
    .param p1, "cb"    # Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    .line 2339
    return-void
.end method

.method public updateMenuView(Z)V
    .locals 5
    .param p1, "cleared"    # Z

    .line 2316
    iget-object v0, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    if-eqz v0, :cond_2

    .line 2317
    const/4 v0, 0x0

    .line 2319
    .local v0, "found":Z
    iget-object v1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    if-eqz v1, :cond_1

    .line 2320
    iget-object v1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuBuilder;->size()I

    move-result v1

    .line 2321
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 2322
    iget-object v3, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v3, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 2323
    .local v3, "item":Landroid/view/MenuItem;
    iget-object v4, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    if-ne v3, v4, :cond_0

    .line 2324
    const/4 v0, 0x1

    .line 2325
    goto :goto_1

    .line 2321
    .end local v3    # "item":Landroid/view/MenuItem;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2330
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 2332
    iget-object v1, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    iget-object v2, p0, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-virtual {p0, v1, v2}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar$ExpandedActionViewMenuPresenter;->collapseItemActionView(Landroidx/appcompat/view/menu/MenuBuilder;Landroidx/appcompat/view/menu/MenuItemImpl;)Z

    .line 2335
    .end local v0    # "found":Z
    :cond_2
    return-void
.end method
