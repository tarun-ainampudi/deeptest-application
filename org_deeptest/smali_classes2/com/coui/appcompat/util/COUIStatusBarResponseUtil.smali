.class public Lcom/coui/appcompat/util/COUIStatusBarResponseUtil;
.super Ljava/lang/Object;
.source "COUIStatusBarResponseUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/util/COUIStatusBarResponseUtil$StatusBarClickListener;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mActivity:Landroid/app/Activity;

.field private mIsRegistered:Z

.field private mStatusBarClickListener:Lcom/coui/appcompat/util/COUIStatusBarResponseUtil$StatusBarClickListener;

.field private myReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, "COUIStatusBarResponseUtil"

    iput-object v0, p0, Lcom/coui/appcompat/util/COUIStatusBarResponseUtil;->TAG:Ljava/lang/String;

    .line 42
    iput-object p1, p0, Lcom/coui/appcompat/util/COUIStatusBarResponseUtil;->mActivity:Landroid/app/Activity;

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/util/COUIStatusBarResponseUtil;)Lcom/coui/appcompat/util/COUIStatusBarResponseUtil$StatusBarClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/util/COUIStatusBarResponseUtil;

    .line 27
    iget-object v0, p0, Lcom/coui/appcompat/util/COUIStatusBarResponseUtil;->mStatusBarClickListener:Lcom/coui/appcompat/util/COUIStatusBarResponseUtil$StatusBarClickListener;

    return-object v0
.end method

.method private initReceiver()V
    .locals 3

    .line 54
    iget-boolean v0, p0, Lcom/coui/appcompat/util/COUIStatusBarResponseUtil;->mIsRegistered:Z

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/coui/appcompat/util/COUIStatusBarResponseUtil$1;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/util/COUIStatusBarResponseUtil$1;-><init>(Lcom/coui/appcompat/util/COUIStatusBarResponseUtil;)V

    iput-object v0, p0, Lcom/coui/appcompat/util/COUIStatusBarResponseUtil;->myReceiver:Landroid/content/BroadcastReceiver;

    .line 67
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 68
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "com.oplus.clicktop"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 69
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/coui/appcompat/util/COUIStatusBarResponseUtil;->mIsRegistered:Z

    .line 70
    iget-object v1, p0, Lcom/coui/appcompat/util/COUIStatusBarResponseUtil;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/coui/appcompat/util/COUIStatusBarResponseUtil;->myReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 72
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method


# virtual methods
.method public onPause()V
    .locals 2

    .line 79
    iget-boolean v0, p0, Lcom/coui/appcompat/util/COUIStatusBarResponseUtil;->mIsRegistered:Z

    if-eqz v0, :cond_0

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/util/COUIStatusBarResponseUtil;->mIsRegistered:Z

    .line 81
    iget-object v0, p0, Lcom/coui/appcompat/util/COUIStatusBarResponseUtil;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/coui/appcompat/util/COUIStatusBarResponseUtil;->myReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 83
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/coui/appcompat/util/COUIStatusBarResponseUtil;->initReceiver()V

    .line 51
    return-void
.end method

.method public setStatusBarClickListener(Lcom/coui/appcompat/util/COUIStatusBarResponseUtil$StatusBarClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/coui/appcompat/util/COUIStatusBarResponseUtil$StatusBarClickListener;

    .line 91
    iput-object p1, p0, Lcom/coui/appcompat/util/COUIStatusBarResponseUtil;->mStatusBarClickListener:Lcom/coui/appcompat/util/COUIStatusBarResponseUtil$StatusBarClickListener;

    .line 92
    return-void
.end method
