.class public Lcom/heytap/compat/internal/widget/LockscreenCredentialNative;
.super Ljava/lang/Object;
.source "LockscreenCredentialNative.java"


# static fields
.field private static final COMPONENT_NAME:Ljava/lang/String; = "internal.widget.LockscreenCredential"

.field private static final KEY_RESULT:Ljava/lang/String; = "result"

.field private static final PASSWORD_VALUE:Ljava/lang/String; = "PASSWORD_VALUE"


# instance fields
.field private mLockscreenCredential:Lcom/android/internal/widget/LockscreenCredential;


# direct methods
.method private constructor <init>(Lcom/android/internal/widget/LockscreenCredential;)V
    .locals 0
    .param p1, "lockscreenCredential"    # Lcom/android/internal/widget/LockscreenCredential;

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/heytap/compat/internal/widget/LockscreenCredentialNative;->mLockscreenCredential:Lcom/android/internal/widget/LockscreenCredential;

    .line 23
    return-void
.end method

.method public static createNone()Lcom/heytap/compat/internal/widget/LockscreenCredentialNative;
    .locals 5
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Black;
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Permission;
        authStr = "createNone"
        type = "epona"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 33
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 34
    new-instance v0, Lcom/heytap/epona/Request$Builder;

    invoke-direct {v0}, Lcom/heytap/epona/Request$Builder;-><init>()V

    const-string v1, "internal.widget.LockscreenCredential"

    .line 35
    invoke-virtual {v0, v1}, Lcom/heytap/epona/Request$Builder;->setComponentName(Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v1, "createNone"

    .line 36
    invoke-virtual {v0, v1}, Lcom/heytap/epona/Request$Builder;->setActionName(Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lcom/heytap/epona/Request$Builder;->build()Lcom/heytap/epona/Request;

    move-result-object v0

    .line 38
    .local v0, "request":Lcom/heytap/epona/Request;
    invoke-static {v0}, Lcom/heytap/epona/Epona;->newCall(Lcom/heytap/epona/Request;)Lcom/heytap/epona/internal/RealCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/heytap/epona/internal/RealCall;->execute()Lcom/heytap/epona/Response;

    move-result-object v1

    .line 39
    .local v1, "response":Lcom/heytap/epona/Response;
    invoke-virtual {v1}, Lcom/heytap/epona/Response;->isSuccessful()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 40
    new-instance v2, Lcom/heytap/compat/internal/widget/LockscreenCredentialNative;

    invoke-virtual {v1}, Lcom/heytap/epona/Response;->getBundle()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "result"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/LockscreenCredential;

    invoke-direct {v2, v3}, Lcom/heytap/compat/internal/widget/LockscreenCredentialNative;-><init>(Lcom/android/internal/widget/LockscreenCredential;)V

    return-object v2

    .line 42
    .end local v0    # "request":Lcom/heytap/epona/Request;
    .end local v1    # "response":Lcom/heytap/epona/Response;
    :cond_0
    nop

    .line 45
    const/4 v0, 0x0

    return-object v0

    .line 43
    :cond_1
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    const-string v1, "not supported before R"

    invoke-direct {v0, v1}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createPassword(Ljava/lang/CharSequence;)Lcom/heytap/compat/internal/widget/LockscreenCredentialNative;
    .locals 5
    .param p0, "password"    # Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Black;
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Permission;
        authStr = "createPassword"
        type = "epona"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 52
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    new-instance v0, Lcom/heytap/epona/Request$Builder;

    invoke-direct {v0}, Lcom/heytap/epona/Request$Builder;-><init>()V

    const-string v1, "internal.widget.LockscreenCredential"

    .line 54
    invoke-virtual {v0, v1}, Lcom/heytap/epona/Request$Builder;->setComponentName(Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v1, "createPassword"

    .line 55
    invoke-virtual {v0, v1}, Lcom/heytap/epona/Request$Builder;->setActionName(Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v1, "PASSWORD_VALUE"

    .line 56
    invoke-virtual {v0, v1, p0}, Lcom/heytap/epona/Request$Builder;->withCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Lcom/heytap/epona/Request$Builder;->build()Lcom/heytap/epona/Request;

    move-result-object v0

    .line 58
    .local v0, "request":Lcom/heytap/epona/Request;
    invoke-static {v0}, Lcom/heytap/epona/Epona;->newCall(Lcom/heytap/epona/Request;)Lcom/heytap/epona/internal/RealCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/heytap/epona/internal/RealCall;->execute()Lcom/heytap/epona/Response;

    move-result-object v1

    .line 59
    .local v1, "response":Lcom/heytap/epona/Response;
    invoke-virtual {v1}, Lcom/heytap/epona/Response;->isSuccessful()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 60
    new-instance v2, Lcom/heytap/compat/internal/widget/LockscreenCredentialNative;

    invoke-virtual {v1}, Lcom/heytap/epona/Response;->getBundle()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "result"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/LockscreenCredential;

    invoke-direct {v2, v3}, Lcom/heytap/compat/internal/widget/LockscreenCredentialNative;-><init>(Lcom/android/internal/widget/LockscreenCredential;)V

    return-object v2

    .line 62
    .end local v0    # "request":Lcom/heytap/epona/Request;
    .end local v1    # "response":Lcom/heytap/epona/Response;
    :cond_0
    nop

    .line 65
    const/4 v0, 0x0

    return-object v0

    .line 63
    :cond_1
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    const-string v1, "not supported before R"

    invoke-direct {v0, v1}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method getLockscreenCredential()Lcom/android/internal/widget/LockscreenCredential;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/heytap/compat/internal/widget/LockscreenCredentialNative;->mLockscreenCredential:Lcom/android/internal/widget/LockscreenCredential;

    return-object v0
.end method
