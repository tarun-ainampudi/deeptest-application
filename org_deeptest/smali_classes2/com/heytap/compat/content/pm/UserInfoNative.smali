.class public Lcom/heytap/compat/content/pm/UserInfoNative;
.super Ljava/lang/Object;
.source "UserInfoNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/compat/content/pm/UserInfoNative$ReflectInnerClass;,
        Lcom/heytap/compat/content/pm/UserInfoNative$ReflectInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UserInfoNative"


# instance fields
.field private mUserInfo:Landroid/content/pm/UserInfo;

.field private mUserInfoWrapper:Lcom/color/inner/content/pm/UserInfoWrapper;


# direct methods
.method public constructor <init>(Landroid/content/pm/UserInfo;)V
    .locals 0
    .param p1, "userInfo"    # Landroid/content/pm/UserInfo;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/heytap/compat/content/pm/UserInfoNative;->mUserInfo:Landroid/content/pm/UserInfo;

    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/color/inner/content/pm/UserInfoWrapper;)V
    .locals 3
    .param p1, "userInfoWrapper"    # Lcom/color/inner/content/pm/UserInfoWrapper;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    :try_start_0
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    iput-object p1, p0, Lcom/heytap/compat/content/pm/UserInfoNative;->mUserInfoWrapper:Lcom/color/inner/content/pm/UserInfoWrapper;

    .line 41
    sget-object v0, Lcom/heytap/compat/content/pm/UserInfoNative$ReflectInnerClass;->user:Lcom/heytap/reflect/RefObject;

    iget-object v1, p0, Lcom/heytap/compat/content/pm/UserInfoNative;->mUserInfoWrapper:Lcom/color/inner/content/pm/UserInfoWrapper;

    invoke-virtual {v0, v1}, Lcom/heytap/reflect/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    iput-object v0, p0, Lcom/heytap/compat/content/pm/UserInfoNative;->mUserInfo:Landroid/content/pm/UserInfo;

    .line 47
    goto :goto_0

    .line 43
    :cond_0
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "UserInfoNative"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Grey;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 53
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/heytap/compat/content/pm/UserInfoNative;->mUserInfo:Landroid/content/pm/UserInfo;

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    return v0

    .line 55
    :cond_0
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    iget-object v0, p0, Lcom/heytap/compat/content/pm/UserInfoNative;->mUserInfoWrapper:Lcom/color/inner/content/pm/UserInfoWrapper;

    if-eqz v0, :cond_2

    .line 57
    iget-object v0, p0, Lcom/heytap/compat/content/pm/UserInfoNative;->mUserInfoWrapper:Lcom/color/inner/content/pm/UserInfoWrapper;

    invoke-virtual {v0}, Lcom/color/inner/content/pm/UserInfoWrapper;->getId()I

    move-result v0

    return v0

    .line 59
    :cond_1
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isL()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 60
    iget-object v0, p0, Lcom/heytap/compat/content/pm/UserInfoNative;->mUserInfo:Landroid/content/pm/UserInfo;

    if-eqz v0, :cond_2

    .line 61
    iget-object v0, p0, Lcom/heytap/compat/content/pm/UserInfoNative;->mUserInfo:Landroid/content/pm/UserInfo;

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    return v0

    .line 66
    :cond_2
    const/4 v0, -0x1

    return v0

    .line 64
    :cond_3
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
.end method

.method public getUserHandle()Landroid/os/UserHandle;
    .locals 3
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Grey;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 72
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    sget-object v0, Lcom/heytap/compat/content/pm/UserInfoNative$ReflectInfo;->getUserHandle:Lcom/heytap/reflect/RefMethod;

    iget-object v1, p0, Lcom/heytap/compat/content/pm/UserInfoNative;->mUserInfo:Landroid/content/pm/UserInfo;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/heytap/reflect/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    return-object v0

    .line 74
    :cond_0
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/heytap/compat/content/pm/UserInfoNative;->mUserInfoWrapper:Lcom/color/inner/content/pm/UserInfoWrapper;

    if-eqz v0, :cond_2

    .line 76
    iget-object v0, p0, Lcom/heytap/compat/content/pm/UserInfoNative;->mUserInfoWrapper:Lcom/color/inner/content/pm/UserInfoWrapper;

    invoke-virtual {v0}, Lcom/color/inner/content/pm/UserInfoWrapper;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    return-object v0

    .line 78
    :cond_1
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isL()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 79
    iget-object v0, p0, Lcom/heytap/compat/content/pm/UserInfoNative;->mUserInfo:Landroid/content/pm/UserInfo;

    if-eqz v0, :cond_2

    .line 80
    iget-object v0, p0, Lcom/heytap/compat/content/pm/UserInfoNative;->mUserInfo:Landroid/content/pm/UserInfo;

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    return-object v0

    .line 85
    :cond_2
    const/4 v0, 0x0

    return-object v0

    .line 83
    :cond_3
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
.end method

.method public isEnabled()Z
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Grey;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 91
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/heytap/compat/content/pm/UserInfoNative;->mUserInfo:Landroid/content/pm/UserInfo;

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v0

    return v0

    .line 93
    :cond_0
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 94
    iget-object v0, p0, Lcom/heytap/compat/content/pm/UserInfoNative;->mUserInfoWrapper:Lcom/color/inner/content/pm/UserInfoWrapper;

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/heytap/compat/content/pm/UserInfoNative;->mUserInfoWrapper:Lcom/color/inner/content/pm/UserInfoWrapper;

    invoke-virtual {v0}, Lcom/color/inner/content/pm/UserInfoWrapper;->isEnabled()Z

    move-result v0

    return v0

    .line 100
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 98
    :cond_2
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
.end method
