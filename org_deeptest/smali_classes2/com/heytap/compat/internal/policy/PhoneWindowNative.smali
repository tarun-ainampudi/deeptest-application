.class public Lcom/heytap/compat/internal/policy/PhoneWindowNative;
.super Ljava/lang/Object;
.source "PhoneWindowNative.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PhoneWindowNative"


# instance fields
.field private mWindow:Lcom/android/internal/policy/PhoneWindow;

.field private mWindowWrapper:Lcom/color/inner/internal/policy/PhoneWindowWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x18
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Grey;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    new-instance v0, Lcom/color/inner/internal/policy/PhoneWindowWrapper;

    invoke-direct {v0, p1}, Lcom/color/inner/internal/policy/PhoneWindowWrapper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/heytap/compat/internal/policy/PhoneWindowNative;->mWindowWrapper:Lcom/color/inner/internal/policy/PhoneWindowWrapper;

    goto :goto_0

    .line 23
    :cond_0
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isN()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 24
    new-instance v0, Lcom/android/internal/policy/PhoneWindow;

    invoke-direct {v0, p1}, Lcom/android/internal/policy/PhoneWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/heytap/compat/internal/policy/PhoneWindowNative;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 28
    :goto_0
    return-void

    .line 26
    :cond_1
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
.end method


# virtual methods
.method public getWindow()Landroid/view/Window;
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x18
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Grey;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 33
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/heytap/compat/internal/policy/PhoneWindowNative;->mWindowWrapper:Lcom/color/inner/internal/policy/PhoneWindowWrapper;

    invoke-virtual {v0}, Lcom/color/inner/internal/policy/PhoneWindowWrapper;->getWindow()Landroid/view/Window;

    move-result-object v0

    return-object v0

    .line 35
    :cond_0
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isN()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36
    iget-object v0, p0, Lcom/heytap/compat/internal/policy/PhoneWindowNative;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    return-object v0

    .line 38
    :cond_1
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
.end method
