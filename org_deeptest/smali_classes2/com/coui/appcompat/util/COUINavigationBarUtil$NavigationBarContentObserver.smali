.class public Lcom/coui/appcompat/util/COUINavigationBarUtil$NavigationBarContentObserver;
.super Landroid/database/ContentObserver;
.source "COUINavigationBarUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/util/COUINavigationBarUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NavigationBarContentObserver"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/coui/appcompat/util/COUINavigationBarUtil$NavigationBarChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/coui/appcompat/util/COUINavigationBarUtil$NavigationBarChangeListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/coui/appcompat/util/COUINavigationBarUtil$NavigationBarChangeListener;

    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 91
    iput-object p1, p0, Lcom/coui/appcompat/util/COUINavigationBarUtil$NavigationBarContentObserver;->mContext:Landroid/content/Context;

    .line 92
    iput-object p2, p0, Lcom/coui/appcompat/util/COUINavigationBarUtil$NavigationBarContentObserver;->mListener:Lcom/coui/appcompat/util/COUINavigationBarUtil$NavigationBarChangeListener;

    .line 93
    return-void
.end method


# virtual methods
.method public clearListener()V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/coui/appcompat/util/COUINavigationBarUtil$NavigationBarContentObserver;->mListener:Lcom/coui/appcompat/util/COUINavigationBarUtil$NavigationBarChangeListener;

    if-eqz v0, :cond_0

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/util/COUINavigationBarUtil$NavigationBarContentObserver;->mListener:Lcom/coui/appcompat/util/COUINavigationBarUtil$NavigationBarChangeListener;

    .line 99
    :cond_0
    return-void
.end method

.method public onChange(Z)V
    .locals 0
    .param p1, "selfChange"    # Z

    .line 103
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 104
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 3
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 108
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 109
    invoke-static {}, Lcom/coui/appcompat/util/COUINavigationBarUtil;->access$000()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/coui/appcompat/util/COUINavigationBarUtil;->access$000()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/util/COUINavigationBarUtil$NavigationBarContentObserver;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/util/COUINavigationBarUtil$NavigationBarContentObserver;->mListener:Lcom/coui/appcompat/util/COUINavigationBarUtil$NavigationBarChangeListener;

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/coui/appcompat/util/COUINavigationBarUtil$NavigationBarContentObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "nav_bar_immersive"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 112
    .local v0, "navigationBarHideImmersive":I
    iget-object v1, p0, Lcom/coui/appcompat/util/COUINavigationBarUtil$NavigationBarContentObserver;->mListener:Lcom/coui/appcompat/util/COUINavigationBarUtil$NavigationBarChangeListener;

    if-nez v0, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    invoke-interface {v1, v2}, Lcom/coui/appcompat/util/COUINavigationBarUtil$NavigationBarChangeListener;->onNavigationBarChange(Z)V

    .line 114
    .end local v0    # "navigationBarHideImmersive":I
    :cond_1
    return-void
.end method
