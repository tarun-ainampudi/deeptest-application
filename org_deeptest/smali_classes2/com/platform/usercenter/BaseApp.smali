.class public Lcom/platform/usercenter/BaseApp;
.super Ljava/lang/Object;
.source "BaseApp.java"


# static fields
.field public static mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 24
    if-nez p0, :cond_0

    .line 25
    const-string v0, "init context is null"

    invoke-static {v0}, Lcom/platform/usercenter/tools/log/UCLogUtil;->e(Ljava/lang/String;)V

    .line 26
    return-void

    .line 28
    :cond_0
    sput-object p0, Lcom/platform/usercenter/BaseApp;->mContext:Landroid/content/Context;

    .line 29
    sget-object v0, Lcom/platform/usercenter/BaseApp;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/platform/usercenter/tools/os/UCRuntimeEnvironment;->init(Landroid/content/Context;)V

    .line 30
    return-void
.end method
