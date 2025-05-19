.class public Lcom/coui/appcompat/widget/navigation/COUINavigationPresenter;
.super Ljava/lang/Object;
.source "COUINavigationPresenter.java"

# interfaces
.implements Landroidx/appcompat/view/menu/MenuPresenter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/widget/navigation/COUINavigationPresenter$SavedState;
    }
.end annotation


# instance fields
.field private mId:I

.field private mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

.field private mMenuView:Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;

.field private mUpdateSuspended:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationPresenter;->mUpdateSuspended:Z

    return-void
.end method


# virtual methods
.method public collapseItemActionView(Landroidx/appcompat/view/menu/MenuBuilder;Landroidx/appcompat/view/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "menu"    # Landroidx/appcompat/view/menu/MenuBuilder;
    .param p2, "item"    # Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public expandItemActionView(Landroidx/appcompat/view/menu/MenuBuilder;Landroidx/appcompat/view/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "menu"    # Landroidx/appcompat/view/menu/MenuBuilder;
    .param p2, "item"    # Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public flagActionItems()Z
    .locals 1

    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public getId()I
    .locals 1

    .line 101
    iget v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationPresenter;->mId:I

    return v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Landroidx/appcompat/view/menu/MenuView;
    .locals 1
    .param p1, "root"    # Landroid/view/ViewGroup;

    .line 50
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationPresenter;->mMenuView:Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;

    return-object v0
.end method

.method public initForMenu(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Landroidx/appcompat/view/menu/MenuBuilder;

    .line 44
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationPresenter;->mMenuView:Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;

    iget-object v1, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->initialize(Landroidx/appcompat/view/menu/MenuBuilder;)V

    .line 45
    iput-object p2, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationPresenter;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 46
    return-void
.end method

.method public onCloseMenu(Landroidx/appcompat/view/menu/MenuBuilder;Z)V
    .locals 0
    .param p1, "menu"    # Landroidx/appcompat/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .line 78
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 113
    instance-of v0, p1, Lcom/coui/appcompat/widget/navigation/COUINavigationPresenter$SavedState;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationPresenter;->mMenuView:Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;

    move-object v1, p1

    check-cast v1, Lcom/coui/appcompat/widget/navigation/COUINavigationPresenter$SavedState;

    iget v1, v1, Lcom/coui/appcompat/widget/navigation/COUINavigationPresenter$SavedState;->mSelectedItemId:I

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->tryRestoreSelectedItemId(I)V

    .line 116
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 106
    new-instance v0, Lcom/coui/appcompat/widget/navigation/COUINavigationPresenter$SavedState;

    invoke-direct {v0}, Lcom/coui/appcompat/widget/navigation/COUINavigationPresenter$SavedState;-><init>()V

    .line 107
    .local v0, "savedState":Lcom/coui/appcompat/widget/navigation/COUINavigationPresenter$SavedState;
    iget-object v1, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationPresenter;->mMenuView:Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;

    invoke-virtual {v1}, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->getSelectedItemId()I

    move-result v1

    iput v1, v0, Lcom/coui/appcompat/widget/navigation/COUINavigationPresenter$SavedState;->mSelectedItemId:I

    .line 108
    return-object v0
.end method

.method public onSubMenuSelected(Landroidx/appcompat/view/menu/SubMenuBuilder;)Z
    .locals 1
    .param p1, "subMenu"    # Landroidx/appcompat/view/menu/SubMenuBuilder;

    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public setBottomNavigationMenuView(Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;)V
    .locals 0
    .param p1, "menuView"    # Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;

    .line 39
    iput-object p1, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationPresenter;->mMenuView:Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;

    .line 40
    return-void
.end method

.method public setCallback(Landroidx/appcompat/view/menu/MenuPresenter$Callback;)V
    .locals 0
    .param p1, "cb"    # Landroidx/appcompat/view/menu/MenuPresenter$Callback;

    .line 68
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .line 96
    iput p1, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationPresenter;->mId:I

    .line 97
    return-void
.end method

.method public setUpdateSuspended(Z)V
    .locals 0
    .param p1, "updateSuspended"    # Z

    .line 119
    iput-boolean p1, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationPresenter;->mUpdateSuspended:Z

    .line 120
    return-void
.end method

.method public updateMenuView(Z)V
    .locals 1
    .param p1, "cleared"    # Z

    .line 55
    iget-boolean v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationPresenter;->mUpdateSuspended:Z

    if-eqz v0, :cond_0

    .line 56
    return-void

    .line 58
    :cond_0
    if-eqz p1, :cond_1

    .line 59
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationPresenter;->mMenuView:Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->buildMenuView()V

    goto :goto_0

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/widget/navigation/COUINavigationPresenter;->mMenuView:Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;

    invoke-virtual {v0}, Lcom/coui/appcompat/widget/navigation/COUINavigationMenuView;->updateMenuView()V

    .line 63
    :goto_0
    return-void
.end method
