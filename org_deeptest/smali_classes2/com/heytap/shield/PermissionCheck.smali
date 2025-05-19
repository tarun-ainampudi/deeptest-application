.class public Lcom/heytap/shield/PermissionCheck;
.super Ljava/lang/Object;
.source "PermissionCheck.java"


# static fields
.field private static sInstance:Lcom/heytap/shield/PermissionCheck;


# instance fields
.field private volatile initialized:Z

.field private mAuthCache:Lcom/heytap/shield/authcode/AuthCache;

.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/heytap/shield/PermissionCheck;->initialized:Z

    .line 36
    return-void
.end method

.method public static getInstance()Lcom/heytap/shield/PermissionCheck;
    .locals 2

    .line 238
    sget-object v0, Lcom/heytap/shield/PermissionCheck;->sInstance:Lcom/heytap/shield/PermissionCheck;

    if-nez v0, :cond_1

    .line 239
    const-class v0, Lcom/heytap/shield/PermissionCheck;

    monitor-enter v0

    .line 240
    :try_start_0
    sget-object v1, Lcom/heytap/shield/PermissionCheck;->sInstance:Lcom/heytap/shield/PermissionCheck;

    if-nez v1, :cond_0

    .line 241
    new-instance v1, Lcom/heytap/shield/PermissionCheck;

    invoke-direct {v1}, Lcom/heytap/shield/PermissionCheck;-><init>()V

    sput-object v1, Lcom/heytap/shield/PermissionCheck;->sInstance:Lcom/heytap/shield/PermissionCheck;

    .line 243
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 245
    :cond_1
    :goto_0
    sget-object v0, Lcom/heytap/shield/PermissionCheck;->sInstance:Lcom/heytap/shield/PermissionCheck;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    monitor-enter p0

    .line 39
    :try_start_0
    iget-boolean v0, p0, Lcom/heytap/shield/PermissionCheck;->initialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 40
    monitor-exit p0

    return-void

    .line 42
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/heytap/shield/PermissionCheck;->initialized:Z

    .line 43
    instance-of v0, p1, Landroid/app/Application;

    if-eqz v0, :cond_1

    move-object v0, p1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/heytap/shield/PermissionCheck;->mContext:Landroid/content/Context;

    .line 44
    new-instance v0, Lcom/heytap/shield/authcode/AuthCache;

    invoke-direct {v0, p1}, Lcom/heytap/shield/authcode/AuthCache;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/heytap/shield/PermissionCheck;->mAuthCache:Lcom/heytap/shield/authcode/AuthCache;

    .line 45
    invoke-static {}, Lcom/heytap/shield/servicemaps/ServiceMap;->initServiceMap()V

    .line 46
    iget-object v0, p0, Lcom/heytap/shield/PermissionCheck;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/heytap/shield/PermissionCheck;->mContext:Landroid/content/Context;

    .line 47
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.heytap.appplatform"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 48
    iget-object v0, p0, Lcom/heytap/shield/PermissionCheck;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/heytap/shield/utils/PLog;->init(Landroid/content/Context;)V

    .line 49
    invoke-static {}, Lcom/heytap/shield/utils/DebugUtils;->getInstance()Lcom/heytap/shield/utils/DebugUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/heytap/shield/PermissionCheck;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/heytap/shield/utils/DebugUtils;->init(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    :cond_2
    monitor-exit p0

    return-void

    .line 38
    .end local p1    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/heytap/shield/PermissionCheck;
    throw p1
.end method

.method public isValid()Z
    .locals 1

    .line 234
    invoke-static {}, Lcom/heytap/shield/utils/DebugUtils;->getInstance()Lcom/heytap/shield/utils/DebugUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heytap/shield/utils/DebugUtils;->isDebugMode()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public verityEpona(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "component"    # Ljava/lang/String;
    .param p2, "actionName"    # Ljava/lang/String;
    .param p3, "registerPackage"    # Ljava/lang/String;

    .line 120
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_0

    .line 121
    return v1

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/heytap/shield/PermissionCheck;->mContext:Landroid/content/Context;

    .line 124
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 123
    invoke-static {v0, v2, v3}, Lcom/heytap/shield/utils/PackageUtils;->getCallingPackageName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "callerPackage":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Epona Authentication Failed Cause Component Empty : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/heytap/shield/utils/PLog;->e(Ljava/lang/String;)V

    .line 128
    return v3

    .line 130
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Epona Authentication Failed Cause ActionName Empty : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/heytap/shield/utils/PLog;->e(Ljava/lang/String;)V

    .line 132
    return v3

    .line 134
    :cond_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Epona Authentication Failed Cause Register Package Empty : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/heytap/shield/utils/PLog;->e(Ljava/lang/String;)V

    .line 136
    return v3

    .line 139
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Start epona verify Component : ["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] action : ["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] register pacage : ["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] caller pacakge : ["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/heytap/shield/utils/PLog;->d(Ljava/lang/String;)V

    .line 142
    iget-object v2, p0, Lcom/heytap/shield/PermissionCheck;->mAuthCache:Lcom/heytap/shield/authcode/AuthCache;

    const-string v4, "728E6B5E6D3FAA00E2DE12CC464D027BFFE2DD87329967F72028F2FD13C122E9"

    invoke-virtual {v2, v4}, Lcom/heytap/shield/authcode/AuthCache;->isPlatformSignature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 143
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Epona verity SUCCESS cause local version, Caller Package ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/heytap/shield/utils/PLog;->d(Ljava/lang/String;)V

    .line 145
    return v1

    .line 151
    :cond_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 152
    const-string v2, "Get caller package is null"

    invoke-static {v2}, Lcom/heytap/shield/utils/PLog;->e(Ljava/lang/String;)V

    .line 153
    iget-object v2, p0, Lcom/heytap/shield/PermissionCheck;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 154
    .local v2, "packages":[Ljava/lang/String;
    if-eqz v2, :cond_5

    array-length v4, v2

    if-lez v4, :cond_5

    .line 155
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Get UID ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] PID ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] Packages ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 155
    invoke-static {v4}, Lcom/heytap/shield/utils/PLog;->e(Ljava/lang/String;)V

    .line 158
    aget-object v0, v2, v3

    goto :goto_0

    .line 160
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get packages Error : Calling pid ["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] Calling uid ["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 160
    invoke-static {v1}, Lcom/heytap/shield/utils/PLog;->e(Ljava/lang/String;)V

    .line 162
    return v3

    .line 166
    .end local v2    # "packages":[Ljava/lang/String;
    :cond_6
    :goto_0
    iget-object v2, p0, Lcom/heytap/shield/PermissionCheck;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/heytap/shield/utils/CertUtils;->getCertificateSHA256(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 168
    .local v2, "sigSHA256":Ljava/lang/String;
    iget-object v4, p0, Lcom/heytap/shield/PermissionCheck;->mAuthCache:Lcom/heytap/shield/authcode/AuthCache;

    invoke-virtual {v4, v2}, Lcom/heytap/shield/authcode/AuthCache;->isPlatformSignature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 169
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Epona verity SUCCESS Caller Package ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] is platform signature"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/heytap/shield/utils/PLog;->d(Ljava/lang/String;)V

    .line 171
    return v1

    .line 174
    :cond_7
    const-string v4, "com.heytap.appplatform"

    invoke-static {v4, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 175
    const-string v4, "com.heytap.appplatform"

    invoke-static {v4, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 176
    return v1

    .line 178
    :cond_8
    iget-object v1, p0, Lcom/heytap/shield/PermissionCheck;->mAuthCache:Lcom/heytap/shield/authcode/AuthCache;

    invoke-virtual {v1, v0, v2}, Lcom/heytap/shield/authcode/AuthCache;->hasCache(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 179
    iget-object v1, p0, Lcom/heytap/shield/PermissionCheck;->mAuthCache:Lcom/heytap/shield/authcode/AuthCache;

    invoke-virtual {v1, v0, p1, p2}, Lcom/heytap/shield/authcode/AuthCache;->verifyEponaPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 180
    .local v1, "ret":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Epona verity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_9

    const-string v4, "SUCCESS"

    goto :goto_1

    :cond_9
    const-string v4, "FAILED"

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " Caller : ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] Component : ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] ActionName : ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/heytap/shield/utils/PLog;->d(Ljava/lang/String;)V

    .line 184
    return v1

    .line 186
    .end local v1    # "ret":Z
    :cond_a
    iget-object v1, p0, Lcom/heytap/shield/PermissionCheck;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/heytap/shield/authcode/Authentication;->checkAuthCode(Landroid/content/Context;Ljava/lang/String;)Lcom/heytap/shield/authcode/info/AuthResult;

    move-result-object v1

    .line 187
    .local v1, "authResult":Lcom/heytap/shield/authcode/info/AuthResult;
    invoke-virtual {v1}, Lcom/heytap/shield/authcode/info/AuthResult;->getErrrorCode()I

    move-result v4

    .line 188
    .local v4, "errorCode":I
    const/16 v5, 0x3e9

    if-eq v4, v5, :cond_b

    .line 189
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Epona Authentication Failed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    invoke-static {v4}, Lcom/heytap/shield/authcode/CommonStatusCodes;->getStatusCodeString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " Package : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 189
    invoke-static {v5}, Lcom/heytap/shield/utils/PLog;->e(Ljava/lang/String;)V

    .line 192
    return v3

    .line 194
    :cond_b
    iget-object v3, p0, Lcom/heytap/shield/PermissionCheck;->mAuthCache:Lcom/heytap/shield/authcode/AuthCache;

    invoke-virtual {v3, v0, v1, v2}, Lcom/heytap/shield/authcode/AuthCache;->putCache(Ljava/lang/String;Lcom/heytap/shield/authcode/info/AuthResult;Ljava/lang/String;)V

    .line 195
    iget-object v3, p0, Lcom/heytap/shield/PermissionCheck;->mAuthCache:Lcom/heytap/shield/authcode/AuthCache;

    invoke-virtual {v3, v0, p1, p2}, Lcom/heytap/shield/authcode/AuthCache;->verifyEponaPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 196
    .local v3, "ret":Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Epona verity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_c

    const-string v6, "SUCCESS"

    goto :goto_2

    :cond_c
    const-string v6, "FAILED"

    :goto_2
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " Caller : ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "] Component : ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "] ActionName : ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/heytap/shield/utils/PLog;->d(Ljava/lang/String;)V

    .line 200
    return v3

    .line 204
    .end local v1    # "authResult":Lcom/heytap/shield/authcode/info/AuthResult;
    .end local v3    # "ret":Z
    .end local v4    # "errorCode":I
    :cond_d
    iget-object v1, p0, Lcom/heytap/shield/PermissionCheck;->mContext:Landroid/content/Context;

    invoke-static {v1, p3}, Lcom/heytap/shield/utils/CertUtils;->getCertificateSHA1(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 205
    .local v1, "registerSig":Ljava/lang/String;
    iget-object v3, p0, Lcom/heytap/shield/PermissionCheck;->mContext:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/heytap/shield/utils/CertUtils;->getCertificateSHA1(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 206
    .local v3, "findSig":Ljava/lang/String;
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    .line 207
    .local v4, "ret":Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Epona verity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_e

    const-string v6, "SUCCESS"

    goto :goto_3

    :cond_e
    const-string v6, "FAILED"

    :goto_3
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " Caller : ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "] Component : ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "] ActionName : ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/heytap/shield/utils/PLog;->d(Ljava/lang/String;)V

    .line 211
    return v4
.end method

.method public verityNavi(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "callerPackage"    # Ljava/lang/String;
    .param p2, "pluginSignature"    # Ljava/lang/String;

    .line 220
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 221
    const-string v0, "Navi Authentication Failed Cause Plugin Signature Empty"

    invoke-static {v0}, Lcom/heytap/shield/utils/PLog;->e(Ljava/lang/String;)V

    .line 222
    return v1

    .line 224
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 225
    const-string v0, "Navi Authentication Failed Cause Caller Package Empty"

    invoke-static {v0}, Lcom/heytap/shield/utils/PLog;->e(Ljava/lang/String;)V

    .line 226
    return v1

    .line 228
    :cond_1
    iget-object v0, p0, Lcom/heytap/shield/PermissionCheck;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/heytap/shield/utils/CertUtils;->getCertificateSHA256(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, "callerSignature":Ljava/lang/String;
    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method public verityTingle(Ljava/lang/String;I)Z
    .locals 7
    .param p1, "descriptor"    # Ljava/lang/String;
    .param p2, "transactCode"    # I

    .line 58
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_0

    .line 59
    return v1

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/heytap/shield/PermissionCheck;->mContext:Landroid/content/Context;

    .line 62
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 61
    invoke-static {v0, v2, v3}, Lcom/heytap/shield/utils/PackageUtils;->getCallingPackageName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "callerPackage":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tingle Authentication Failed Cause Descriptor Empty : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/heytap/shield/utils/PLog;->e(Ljava/lang/String;)V

    .line 66
    return v3

    .line 68
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Start tingle verity descriptor : ["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] method : ["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-static {p1, p2}, Lcom/heytap/shield/servicemaps/ServiceMap;->convertTransactCode(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] caller package : ["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 68
    invoke-static {v2}, Lcom/heytap/shield/utils/PLog;->d(Ljava/lang/String;)V

    .line 72
    iget-object v2, p0, Lcom/heytap/shield/PermissionCheck;->mAuthCache:Lcom/heytap/shield/authcode/AuthCache;

    const-string v4, "728E6B5E6D3FAA00E2DE12CC464D027BFFE2DD87329967F72028F2FD13C122E9"

    invoke-virtual {v2, v4}, Lcom/heytap/shield/authcode/AuthCache;->isPlatformSignature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tingle verity SUCCESS cause local version, Caller Package ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/heytap/shield/utils/PLog;->d(Ljava/lang/String;)V

    .line 75
    return v1

    .line 78
    :cond_2
    iget-object v2, p0, Lcom/heytap/shield/PermissionCheck;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/heytap/shield/utils/CertUtils;->getCertificateSHA256(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 80
    .local v2, "sigSHA256":Ljava/lang/String;
    iget-object v4, p0, Lcom/heytap/shield/PermissionCheck;->mAuthCache:Lcom/heytap/shield/authcode/AuthCache;

    invoke-virtual {v4, v2}, Lcom/heytap/shield/authcode/AuthCache;->isPlatformSignature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 81
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tingle verity SUCCESS Caller Package ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] is platform signature"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/heytap/shield/utils/PLog;->d(Ljava/lang/String;)V

    .line 83
    return v1

    .line 86
    :cond_3
    iget-object v1, p0, Lcom/heytap/shield/PermissionCheck;->mAuthCache:Lcom/heytap/shield/authcode/AuthCache;

    invoke-virtual {v1, v0, v2}, Lcom/heytap/shield/authcode/AuthCache;->hasCache(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 87
    iget-object v1, p0, Lcom/heytap/shield/PermissionCheck;->mAuthCache:Lcom/heytap/shield/authcode/AuthCache;

    .line 88
    invoke-static {p1, p2}, Lcom/heytap/shield/servicemaps/ServiceMap;->convertTransactCode(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 87
    invoke-virtual {v1, v3, v0}, Lcom/heytap/shield/authcode/AuthCache;->verifyTinglePermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 89
    .local v1, "ret":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tingle verity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_4

    const-string v4, "SUCCESS"

    goto :goto_0

    :cond_4
    const-string v4, "FAILED"

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " Caller : ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] Descriptor : ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] Method : ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-static {p1, p2}, Lcom/heytap/shield/servicemaps/ServiceMap;->convertTransactCode(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 89
    invoke-static {v3}, Lcom/heytap/shield/utils/PLog;->d(Ljava/lang/String;)V

    .line 93
    return v1

    .line 95
    .end local v1    # "ret":Z
    :cond_5
    iget-object v1, p0, Lcom/heytap/shield/PermissionCheck;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/heytap/shield/authcode/Authentication;->checkAuthCode(Landroid/content/Context;Ljava/lang/String;)Lcom/heytap/shield/authcode/info/AuthResult;

    move-result-object v1

    .line 96
    .local v1, "authResult":Lcom/heytap/shield/authcode/info/AuthResult;
    invoke-virtual {v1}, Lcom/heytap/shield/authcode/info/AuthResult;->getErrrorCode()I

    move-result v4

    .line 97
    .local v4, "errorCode":I
    const/16 v5, 0x3e9

    if-eq v4, v5, :cond_6

    .line 98
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Tingle Authentication Failed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-static {v4}, Lcom/heytap/shield/authcode/CommonStatusCodes;->getStatusCodeString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " Package : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 98
    invoke-static {v5}, Lcom/heytap/shield/utils/PLog;->e(Ljava/lang/String;)V

    .line 101
    return v3

    .line 103
    :cond_6
    iget-object v3, p0, Lcom/heytap/shield/PermissionCheck;->mAuthCache:Lcom/heytap/shield/authcode/AuthCache;

    invoke-virtual {v3, v0, v1, v2}, Lcom/heytap/shield/authcode/AuthCache;->putCache(Ljava/lang/String;Lcom/heytap/shield/authcode/info/AuthResult;Ljava/lang/String;)V

    .line 104
    iget-object v3, p0, Lcom/heytap/shield/PermissionCheck;->mAuthCache:Lcom/heytap/shield/authcode/AuthCache;

    .line 105
    invoke-static {p1, p2}, Lcom/heytap/shield/servicemaps/ServiceMap;->convertTransactCode(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 104
    invoke-virtual {v3, v5, v0}, Lcom/heytap/shield/authcode/AuthCache;->verifyTinglePermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 106
    .local v3, "ret":Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Tingle verity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_7

    const-string v6, "SUCCESS"

    goto :goto_1

    :cond_7
    const-string v6, "FAILED"

    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " Caller : ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "] Descriptor : ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "] Method : ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-static {p1, p2}, Lcom/heytap/shield/servicemaps/ServiceMap;->convertTransactCode(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 106
    invoke-static {v5}, Lcom/heytap/shield/utils/PLog;->d(Ljava/lang/String;)V

    .line 110
    return v3
.end method
