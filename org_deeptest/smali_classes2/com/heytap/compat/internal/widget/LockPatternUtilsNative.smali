.class public Lcom/heytap/compat/internal/widget/LockPatternUtilsNative;
.super Ljava/lang/Object;
.source "LockPatternUtilsNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/compat/internal/widget/LockPatternUtilsNative$LazyHolder;,
        Lcom/heytap/compat/internal/widget/LockPatternUtilsNative$ReflectInfo;
    }
.end annotation


# static fields
.field private static final ACTION_GET_KEYGUARD_STORED_PASSWORD_QUALITY:Ljava/lang/String; = "getKeyguardStoredPasswordQuality"

.field private static final ACTION_IS_LOCK_SCREEN_DISABLED:Ljava/lang/String; = "isLockScreenDisabled"

.field private static final ACTION_IS_SECURE:Ljava/lang/String; = "isSecure"

.field private static final ACTION_SET_LOCK_CREDENTIAL:Ljava/lang/String; = "setLockCredential"

.field private static final ACTION_VERIFY_CREDENTIAL:Ljava/lang/String; = "verifyCredential"

.field private static final CHALLENGE_VALUE:Ljava/lang/String; = "challenge"

.field private static final COMPONENT_NAME:Ljava/lang/String; = "com.android.internal.widget.LockPatternUtils"

.field private static final CREDENTIAL_VALUE:Ljava/lang/String; = "credential"

.field private static final GET_KEYGUARD_STORED_PASSWORD_QUALITY_RESULT:Ljava/lang/String; = "get_keyguard_stored_password_quality_result"

.field private static final IS_LOCK_SCREEN_DISABLED_RESULT:Ljava/lang/String; = "is_lock_screen_disabled_result"

.field private static final IS_SECURE_RESULT:Ljava/lang/String; = "is_secure_result"

.field private static final NEW_CREDENTIAL_VALUE:Ljava/lang/String; = "newCredential"

.field public static PASSWORD_TYPE_KEY:Ljava/lang/String; = null
    .annotation runtime Lcom/heytap/compat/annotation/Black;
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Permission;
        authStr = "LockPatternUtils"
        type = "epona"
    .end annotation
.end field

.field private static final RESULT:Ljava/lang/String; = "result"

.field private static final SAVED_CREDENTIAL_VALUE:Ljava/lang/String; = "savedCredential"

.field private static final SET_LOCK_CREDENTIAL_RESULT:Ljava/lang/String; = "set_lock_credential_result"

.field private static final TAG:Ljava/lang/String; = "LockPatternUtilsNative"

.field private static final USER_HANDLE_VALUE:Ljava/lang/String; = "userHandle"

.field private static final USER_ID_VALUE:Ljava/lang/String; = "userId"

.field private static final VERIFY_CREDENTIAL_RESULT:Ljava/lang/String; = "verify_credential_result"


# instance fields
.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockPatternUtilsWrapper:Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 47
    new-instance v0, Lcom/heytap/epona/Request$Builder;

    invoke-direct {v0}, Lcom/heytap/epona/Request$Builder;-><init>()V

    const-string v1, "com.android.internal.widget.LockPatternUtils"

    invoke-virtual {v0, v1}, Lcom/heytap/epona/Request$Builder;->setComponentName(Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v1, "PASSWORD_TYPE_KEY"

    .line 48
    invoke-virtual {v0, v1}, Lcom/heytap/epona/Request$Builder;->setActionName(Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lcom/heytap/epona/Request$Builder;->build()Lcom/heytap/epona/Request;

    move-result-object v0

    .line 50
    .local v0, "request":Lcom/heytap/epona/Request;
    invoke-static {v0}, Lcom/heytap/epona/Epona;->newCall(Lcom/heytap/epona/Request;)Lcom/heytap/epona/internal/RealCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/heytap/epona/internal/RealCall;->execute()Lcom/heytap/epona/Response;

    move-result-object v1

    .line 51
    .local v1, "response":Lcom/heytap/epona/Response;
    invoke-virtual {v1}, Lcom/heytap/epona/Response;->isSuccessful()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 52
    invoke-virtual {v1}, Lcom/heytap/epona/Response;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "result"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/heytap/compat/internal/widget/LockPatternUtilsNative;->PASSWORD_TYPE_KEY:Ljava/lang/String;

    goto :goto_0

    .line 54
    :cond_0
    const-string v2, "LockPatternUtilsNative"

    const-string v3, "Epona Communication failed, static initializer failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .end local v0    # "request":Lcom/heytap/epona/Request;
    .end local v1    # "response":Lcom/heytap/epona/Response;
    :goto_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Grey;
    .end annotation

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    new-instance v0, Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;

    invoke-direct {v0, p1}, Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/heytap/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtilsWrapper:Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;

    .line 69
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/heytap/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    goto :goto_0

    .line 70
    :cond_0
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isL()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/heytap/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    goto :goto_0

    .line 73
    :cond_1
    const-string v0, "LockPatternUtilsNative"

    const-string v1, "not supported before L"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :goto_0
    return-void
.end method

.method public static getKeyguardStoredPasswordQuality(I)I
    .locals 5
    .param p0, "userHandle"    # I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x15
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Permission;
        authStr = "getKeyguardStoredPasswordQuality"
        type = "epona"
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/System;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 127
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    new-instance v0, Lcom/heytap/epona/Request$Builder;

    invoke-direct {v0}, Lcom/heytap/epona/Request$Builder;-><init>()V

    const-string v1, "com.android.internal.widget.LockPatternUtils"

    .line 129
    invoke-virtual {v0, v1}, Lcom/heytap/epona/Request$Builder;->setComponentName(Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v1, "getKeyguardStoredPasswordQuality"

    .line 130
    invoke-virtual {v0, v1}, Lcom/heytap/epona/Request$Builder;->setActionName(Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v1, "userHandle"

    .line 131
    invoke-virtual {v0, v1, p0}, Lcom/heytap/epona/Request$Builder;->withInt(Ljava/lang/String;I)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    .line 132
    invoke-virtual {v0}, Lcom/heytap/epona/Request$Builder;->build()Lcom/heytap/epona/Request;

    move-result-object v0

    .line 133
    .local v0, "request":Lcom/heytap/epona/Request;
    invoke-static {v0}, Lcom/heytap/epona/Epona;->newCall(Lcom/heytap/epona/Request;)Lcom/heytap/epona/internal/RealCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/heytap/epona/internal/RealCall;->execute()Lcom/heytap/epona/Response;

    move-result-object v1

    .line 134
    .local v1, "response":Lcom/heytap/epona/Response;
    invoke-virtual {v1}, Lcom/heytap/epona/Response;->isSuccessful()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 135
    invoke-virtual {v1}, Lcom/heytap/epona/Response;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "get_keyguard_stored_password_quality_result"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    return v2

    .line 137
    :cond_0
    const-string v2, "LockPatternUtilsNative"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getKeyguardStoredPasswordQuality: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/heytap/epona/Response;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    .end local v0    # "request":Lcom/heytap/epona/Request;
    .end local v1    # "response":Lcom/heytap/epona/Response;
    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 140
    invoke-static {}, Lcom/heytap/compat/internal/widget/LockPatternUtilsNative$LazyHolder;->access$000()Lcom/heytap/compat/internal/widget/LockPatternUtilsNative;

    move-result-object v0

    iget-object v0, v0, Lcom/heytap/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtilsWrapper:Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;

    if-eqz v0, :cond_3

    .line 141
    invoke-static {}, Lcom/heytap/compat/internal/widget/LockPatternUtilsNative$LazyHolder;->access$000()Lcom/heytap/compat/internal/widget/LockPatternUtilsNative;

    move-result-object v0

    iget-object v0, v0, Lcom/heytap/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtilsWrapper:Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;

    invoke-virtual {v0, p0}, Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    return v0

    .line 143
    :cond_2
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isL()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 144
    invoke-static {}, Lcom/heytap/compat/internal/widget/LockPatternUtilsNative$LazyHolder;->access$000()Lcom/heytap/compat/internal/widget/LockPatternUtilsNative;

    move-result-object v0

    iget-object v0, v0, Lcom/heytap/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-eqz v0, :cond_3

    .line 145
    invoke-static {}, Lcom/heytap/compat/internal/widget/LockPatternUtilsNative$LazyHolder;->access$000()Lcom/heytap/compat/internal/widget/LockPatternUtilsNative;

    move-result-object v0

    iget-object v0, v0, Lcom/heytap/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    return v0

    .line 150
    :cond_3
    :goto_0
    const/4 v0, -0x1

    return v0

    .line 148
    :cond_4
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
.end method

.method public static isLockPasswordEnabled(I)Z
    .locals 5
    .param p0, "userId"    # I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Grey;
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Permission;
        authStr = "isLockPasswordEnabled"
        type = "epona"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 237
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 238
    new-instance v0, Lcom/heytap/epona/Request$Builder;

    invoke-direct {v0}, Lcom/heytap/epona/Request$Builder;-><init>()V

    const-string v1, "com.android.internal.widget.LockPatternUtils"

    .line 239
    invoke-virtual {v0, v1}, Lcom/heytap/epona/Request$Builder;->setComponentName(Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v1, "isLockPasswordEnabled"

    .line 240
    invoke-virtual {v0, v1}, Lcom/heytap/epona/Request$Builder;->setActionName(Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v1, "userId"

    .line 241
    invoke-virtual {v0, v1, p0}, Lcom/heytap/epona/Request$Builder;->withInt(Ljava/lang/String;I)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    .line 242
    invoke-virtual {v0}, Lcom/heytap/epona/Request$Builder;->build()Lcom/heytap/epona/Request;

    move-result-object v0

    .line 243
    .local v0, "request":Lcom/heytap/epona/Request;
    invoke-static {v0}, Lcom/heytap/epona/Epona;->newCall(Lcom/heytap/epona/Request;)Lcom/heytap/epona/internal/RealCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/heytap/epona/internal/RealCall;->execute()Lcom/heytap/epona/Response;

    move-result-object v1

    .line 244
    .local v1, "response":Lcom/heytap/epona/Response;
    invoke-virtual {v1}, Lcom/heytap/epona/Response;->isSuccessful()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 245
    invoke-virtual {v1}, Lcom/heytap/epona/Response;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "is_lock_password_enabled_result"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    return v2

    .line 247
    :cond_0
    const-string v2, "LockPatternUtilsNative"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isLockPasswordEnabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/heytap/epona/Response;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const/4 v2, 0x0

    return v2

    .line 250
    .end local v0    # "request":Lcom/heytap/epona/Request;
    .end local v1    # "response":Lcom/heytap/epona/Response;
    :cond_1
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 251
    invoke-static {}, Lcom/heytap/compat/internal/widget/LockPatternUtilsNative$LazyHolder;->access$000()Lcom/heytap/compat/internal/widget/LockPatternUtilsNative;

    move-result-object v0

    iget-object v0, v0, Lcom/heytap/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtilsWrapper:Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;

    invoke-virtual {v0, p0}, Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;->isLockPasswordEnabled(I)Z

    move-result v0

    return v0

    .line 252
    :cond_2
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isO()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 253
    invoke-static {}, Lcom/heytap/compat/internal/widget/LockPatternUtilsNative$LazyHolder;->access$000()Lcom/heytap/compat/internal/widget/LockPatternUtilsNative;

    move-result-object v0

    iget-object v0, v0, Lcom/heytap/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled(I)Z

    move-result v0

    return v0

    .line 255
    :cond_3
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
.end method

.method public static isLockPatternEnabled(I)Z
    .locals 5
    .param p0, "userId"    # I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Grey;
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Permission;
        authStr = "isLockPatternEnabled"
        type = "epona"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 213
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 214
    new-instance v0, Lcom/heytap/epona/Request$Builder;

    invoke-direct {v0}, Lcom/heytap/epona/Request$Builder;-><init>()V

    const-string v1, "com.android.internal.widget.LockPatternUtils"

    .line 215
    invoke-virtual {v0, v1}, Lcom/heytap/epona/Request$Builder;->setComponentName(Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v1, "isLockPatternEnabled"

    .line 216
    invoke-virtual {v0, v1}, Lcom/heytap/epona/Request$Builder;->setActionName(Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v1, "userId"

    .line 217
    invoke-virtual {v0, v1, p0}, Lcom/heytap/epona/Request$Builder;->withInt(Ljava/lang/String;I)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    .line 218
    invoke-virtual {v0}, Lcom/heytap/epona/Request$Builder;->build()Lcom/heytap/epona/Request;

    move-result-object v0

    .line 219
    .local v0, "request":Lcom/heytap/epona/Request;
    invoke-static {v0}, Lcom/heytap/epona/Epona;->newCall(Lcom/heytap/epona/Request;)Lcom/heytap/epona/internal/RealCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/heytap/epona/internal/RealCall;->execute()Lcom/heytap/epona/Response;

    move-result-object v1

    .line 220
    .local v1, "response":Lcom/heytap/epona/Response;
    invoke-virtual {v1}, Lcom/heytap/epona/Response;->isSuccessful()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 221
    invoke-virtual {v1}, Lcom/heytap/epona/Response;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "is_lock_pattern_enabled_result"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    return v2

    .line 223
    :cond_0
    const-string v2, "LockPatternUtilsNative"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isLockPatternEnabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/heytap/epona/Response;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const/4 v2, 0x0

    return v2

    .line 226
    .end local v0    # "request":Lcom/heytap/epona/Request;
    .end local v1    # "response":Lcom/heytap/epona/Response;
    :cond_1
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isO()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 227
    invoke-static {}, Lcom/heytap/compat/internal/widget/LockPatternUtilsNative$LazyHolder;->access$000()Lcom/heytap/compat/internal/widget/LockPatternUtilsNative;

    move-result-object v0

    iget-object v0, v0, Lcom/heytap/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled(I)Z

    move-result v0

    return v0

    .line 229
    :cond_2
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    const-string v1, "Not supported before O"

    invoke-direct {v0, v1}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isLockScreenDisabled(I)Z
    .locals 5
    .param p0, "userId"    # I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x17
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Grey;
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Permission;
        authStr = "isLockScreenDisabled"
        type = "epona"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 187
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 188
    new-instance v0, Lcom/heytap/epona/Request$Builder;

    invoke-direct {v0}, Lcom/heytap/epona/Request$Builder;-><init>()V

    const-string v1, "com.android.internal.widget.LockPatternUtils"

    .line 189
    invoke-virtual {v0, v1}, Lcom/heytap/epona/Request$Builder;->setComponentName(Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v1, "isLockScreenDisabled"

    .line 190
    invoke-virtual {v0, v1}, Lcom/heytap/epona/Request$Builder;->setActionName(Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v1, "userId"

    .line 191
    invoke-virtual {v0, v1, p0}, Lcom/heytap/epona/Request$Builder;->withInt(Ljava/lang/String;I)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    .line 192
    invoke-virtual {v0}, Lcom/heytap/epona/Request$Builder;->build()Lcom/heytap/epona/Request;

    move-result-object v0

    .line 193
    .local v0, "request":Lcom/heytap/epona/Request;
    invoke-static {v0}, Lcom/heytap/epona/Epona;->newCall(Lcom/heytap/epona/Request;)Lcom/heytap/epona/internal/RealCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/heytap/epona/internal/RealCall;->execute()Lcom/heytap/epona/Response;

    move-result-object v1

    .line 194
    .local v1, "response":Lcom/heytap/epona/Response;
    invoke-virtual {v1}, Lcom/heytap/epona/Response;->isSuccessful()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 195
    invoke-virtual {v1}, Lcom/heytap/epona/Response;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "is_lock_screen_disabled_result"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    return v2

    .line 197
    :cond_0
    const-string v2, "LockPatternUtilsNative"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isLockScreenDisabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/heytap/epona/Response;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    .end local v0    # "request":Lcom/heytap/epona/Request;
    .end local v1    # "response":Lcom/heytap/epona/Response;
    nop

    .line 206
    const/4 v0, 0x0

    return v0

    .line 199
    :cond_1
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 200
    invoke-static {}, Lcom/heytap/compat/internal/widget/LockPatternUtilsNative$LazyHolder;->access$000()Lcom/heytap/compat/internal/widget/LockPatternUtilsNative;

    move-result-object v0

    iget-object v0, v0, Lcom/heytap/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtilsWrapper:Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;

    invoke-virtual {v0, p0}, Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;->isLockScreenDisabled(I)Z

    move-result v0

    return v0

    .line 201
    :cond_2
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isM()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 202
    invoke-static {}, Lcom/heytap/compat/internal/widget/LockPatternUtilsNative$LazyHolder;->access$000()Lcom/heytap/compat/internal/widget/LockPatternUtilsNative;

    move-result-object v0

    iget-object v0, v0, Lcom/heytap/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v0

    return v0

    .line 204
    :cond_3
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
.end method

.method public static isSecure(I)Z
    .locals 5
    .param p0, "userId"    # I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x16
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Grey;
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Permission;
        authStr = "isSecure"
        type = "epona"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 157
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    new-instance v0, Lcom/heytap/epona/Request$Builder;

    invoke-direct {v0}, Lcom/heytap/epona/Request$Builder;-><init>()V

    const-string v1, "com.android.internal.widget.LockPatternUtils"

    .line 159
    invoke-virtual {v0, v1}, Lcom/heytap/epona/Request$Builder;->setComponentName(Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v1, "isSecure"

    .line 160
    invoke-virtual {v0, v1}, Lcom/heytap/epona/Request$Builder;->setActionName(Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v1, "userId"

    .line 161
    invoke-virtual {v0, v1, p0}, Lcom/heytap/epona/Request$Builder;->withInt(Ljava/lang/String;I)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    .line 162
    invoke-virtual {v0}, Lcom/heytap/epona/Request$Builder;->build()Lcom/heytap/epona/Request;

    move-result-object v0

    .line 163
    .local v0, "request":Lcom/heytap/epona/Request;
    invoke-static {v0}, Lcom/heytap/epona/Epona;->newCall(Lcom/heytap/epona/Request;)Lcom/heytap/epona/internal/RealCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/heytap/epona/internal/RealCall;->execute()Lcom/heytap/epona/Response;

    move-result-object v1

    .line 164
    .local v1, "response":Lcom/heytap/epona/Response;
    invoke-virtual {v1}, Lcom/heytap/epona/Response;->isSuccessful()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 165
    invoke-virtual {v1}, Lcom/heytap/epona/Response;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "is_secure_result"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    return v2

    .line 167
    :cond_0
    const-string v2, "LockPatternUtilsNative"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSecure: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/heytap/epona/Response;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    .end local v0    # "request":Lcom/heytap/epona/Request;
    .end local v1    # "response":Lcom/heytap/epona/Response;
    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 170
    invoke-static {}, Lcom/heytap/compat/internal/widget/LockPatternUtilsNative$LazyHolder;->access$000()Lcom/heytap/compat/internal/widget/LockPatternUtilsNative;

    move-result-object v0

    iget-object v0, v0, Lcom/heytap/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtilsWrapper:Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;

    if-eqz v0, :cond_3

    .line 171
    invoke-static {}, Lcom/heytap/compat/internal/widget/LockPatternUtilsNative$LazyHolder;->access$000()Lcom/heytap/compat/internal/widget/LockPatternUtilsNative;

    move-result-object v0

    iget-object v0, v0, Lcom/heytap/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtilsWrapper:Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;

    invoke-virtual {v0, p0}, Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;->isSecure(I)Z

    move-result v0

    return v0

    .line 173
    :cond_2
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isL_MR1()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 174
    invoke-static {}, Lcom/heytap/compat/internal/widget/LockPatternUtilsNative$LazyHolder;->access$000()Lcom/heytap/compat/internal/widget/LockPatternUtilsNative;

    move-result-object v0

    iget-object v0, v0, Lcom/heytap/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-eqz v0, :cond_3

    .line 175
    invoke-static {}, Lcom/heytap/compat/internal/widget/LockPatternUtilsNative$LazyHolder;->access$000()Lcom/heytap/compat/internal/widget/LockPatternUtilsNative;

    move-result-object v0

    iget-object v0, v0, Lcom/heytap/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    return v0

    .line 180
    :cond_3
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 178
    :cond_4
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
.end method

.method public static setLockCredential(Lcom/heytap/compat/internal/widget/LockscreenCredentialNative;Lcom/heytap/compat/internal/widget/LockscreenCredentialNative;I)Z
    .locals 4
    .param p0, "newCredential"    # Lcom/heytap/compat/internal/widget/LockscreenCredentialNative;
    .param p1, "savedCredential"    # Lcom/heytap/compat/internal/widget/LockscreenCredentialNative;
    .param p2, "userHandle"    # I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Black;
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Permission;
        authStr = "setLockCredential"
        type = "epona"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 82
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    new-instance v0, Lcom/heytap/epona/Request$Builder;

    invoke-direct {v0}, Lcom/heytap/epona/Request$Builder;-><init>()V

    const-string v1, "com.android.internal.widget.LockPatternUtils"

    .line 84
    invoke-virtual {v0, v1}, Lcom/heytap/epona/Request$Builder;->setComponentName(Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v1, "setLockCredential"

    .line 85
    invoke-virtual {v0, v1}, Lcom/heytap/epona/Request$Builder;->setActionName(Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v1, "newCredential"

    .line 86
    invoke-virtual {p0}, Lcom/heytap/compat/internal/widget/LockscreenCredentialNative;->getLockscreenCredential()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/heytap/epona/Request$Builder;->withParcelable(Ljava/lang/String;Landroid/os/Parcelable;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v1, "savedCredential"

    .line 87
    invoke-virtual {p1}, Lcom/heytap/compat/internal/widget/LockscreenCredentialNative;->getLockscreenCredential()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/heytap/epona/Request$Builder;->withParcelable(Ljava/lang/String;Landroid/os/Parcelable;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v1, "userHandle"

    .line 88
    invoke-virtual {v0, v1, p2}, Lcom/heytap/epona/Request$Builder;->withInt(Ljava/lang/String;I)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Lcom/heytap/epona/Request$Builder;->build()Lcom/heytap/epona/Request;

    move-result-object v0

    .line 90
    .local v0, "request":Lcom/heytap/epona/Request;
    invoke-static {v0}, Lcom/heytap/epona/Epona;->newCall(Lcom/heytap/epona/Request;)Lcom/heytap/epona/internal/RealCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/heytap/epona/internal/RealCall;->execute()Lcom/heytap/epona/Response;

    move-result-object v1

    .line 91
    .local v1, "response":Lcom/heytap/epona/Response;
    invoke-virtual {v1}, Lcom/heytap/epona/Response;->isSuccessful()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 92
    invoke-virtual {v1}, Lcom/heytap/epona/Response;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "set_lock_credential_result"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    return v2

    .line 94
    .end local v0    # "request":Lcom/heytap/epona/Request;
    .end local v1    # "response":Lcom/heytap/epona/Response;
    :cond_0
    nop

    .line 97
    const/4 v0, 0x0

    return v0

    .line 95
    :cond_1
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    const-string v1, "not supported before R"

    invoke-direct {v0, v1}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setLockScreenDisabled(ZI)V
    .locals 2
    .param p0, "disable"    # Z
    .param p1, "userId"    # I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Black;
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Permission;
        authStr = "setLockScreenDisabled"
        type = "epona"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 263
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    new-instance v0, Lcom/heytap/epona/Request$Builder;

    invoke-direct {v0}, Lcom/heytap/epona/Request$Builder;-><init>()V

    const-string v1, "com.android.internal.widget.LockPatternUtils"

    .line 265
    invoke-virtual {v0, v1}, Lcom/heytap/epona/Request$Builder;->setComponentName(Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v1, "setLockScreenDisabled"

    .line 266
    invoke-virtual {v0, v1}, Lcom/heytap/epona/Request$Builder;->setActionName(Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v1, "disable"

    .line 267
    invoke-virtual {v0, v1, p0}, Lcom/heytap/epona/Request$Builder;->withBoolean(Ljava/lang/String;Z)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v1, "userId"

    .line 268
    invoke-virtual {v0, v1, p1}, Lcom/heytap/epona/Request$Builder;->withInt(Ljava/lang/String;I)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    .line 269
    invoke-virtual {v0}, Lcom/heytap/epona/Request$Builder;->build()Lcom/heytap/epona/Request;

    move-result-object v0

    .line 271
    .local v0, "request":Lcom/heytap/epona/Request;
    invoke-static {v0}, Lcom/heytap/epona/Epona;->newCall(Lcom/heytap/epona/Request;)Lcom/heytap/epona/internal/RealCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/heytap/epona/internal/RealCall;->execute()Lcom/heytap/epona/Response;

    .line 272
    .end local v0    # "request":Lcom/heytap/epona/Request;
    nop

    .line 275
    return-void

    .line 273
    :cond_0
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    const-string v1, "Not supported before R"

    invoke-direct {v0, v1}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static verifyCredential(Lcom/heytap/compat/internal/widget/LockscreenCredentialNative;JI)[B
    .locals 4
    .param p0, "credential"    # Lcom/heytap/compat/internal/widget/LockscreenCredentialNative;
    .param p1, "challenge"    # J
    .param p3, "userId"    # I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Black;
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Permission;
        authStr = "verifyCredential"
        type = "epona"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 105
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    new-instance v0, Lcom/heytap/epona/Request$Builder;

    invoke-direct {v0}, Lcom/heytap/epona/Request$Builder;-><init>()V

    const-string v1, "com.android.internal.widget.LockPatternUtils"

    .line 107
    invoke-virtual {v0, v1}, Lcom/heytap/epona/Request$Builder;->setComponentName(Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v1, "verifyCredential"

    .line 108
    invoke-virtual {v0, v1}, Lcom/heytap/epona/Request$Builder;->setActionName(Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v1, "credential"

    .line 109
    invoke-virtual {p0}, Lcom/heytap/compat/internal/widget/LockscreenCredentialNative;->getLockscreenCredential()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/heytap/epona/Request$Builder;->withParcelable(Ljava/lang/String;Landroid/os/Parcelable;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v1, "challenge"

    .line 110
    invoke-virtual {v0, v1, p1, p2}, Lcom/heytap/epona/Request$Builder;->withLong(Ljava/lang/String;J)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v1, "userId"

    .line 111
    invoke-virtual {v0, v1, p3}, Lcom/heytap/epona/Request$Builder;->withInt(Ljava/lang/String;I)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    .line 112
    invoke-virtual {v0}, Lcom/heytap/epona/Request$Builder;->build()Lcom/heytap/epona/Request;

    move-result-object v0

    .line 113
    .local v0, "request":Lcom/heytap/epona/Request;
    invoke-static {v0}, Lcom/heytap/epona/Epona;->newCall(Lcom/heytap/epona/Request;)Lcom/heytap/epona/internal/RealCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/heytap/epona/internal/RealCall;->execute()Lcom/heytap/epona/Response;

    move-result-object v1

    .line 114
    .local v1, "response":Lcom/heytap/epona/Response;
    invoke-virtual {v1}, Lcom/heytap/epona/Response;->isSuccessful()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 115
    invoke-virtual {v1}, Lcom/heytap/epona/Response;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "verify_credential_result"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    return-object v2

    .line 117
    .end local v0    # "request":Lcom/heytap/epona/Request;
    .end local v1    # "response":Lcom/heytap/epona/Response;
    :cond_0
    nop

    .line 120
    const/4 v0, 0x0

    return-object v0

    .line 118
    :cond_1
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    const-string v1, "not supported before R"

    invoke-direct {v0, v1}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 292
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-nez v0, :cond_1

    .line 294
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isL()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/heytap/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0

    .line 297
    :cond_0
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0

    .line 293
    :cond_1
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
.end method

.method getLockPatternUtilsWrapper()Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 281
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/heytap/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtilsWrapper:Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;

    return-object v0

    .line 284
    :cond_0
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
.end method

.method public isTactileFeedbackEnabled()Z
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

    .line 353
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/heytap/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtilsWrapper:Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;

    if-eqz v0, :cond_1

    .line 355
    iget-object v0, p0, Lcom/heytap/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtilsWrapper:Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;

    invoke-virtual {v0}, Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;->isTactileFeedbackEnabled()Z

    move-result v0

    return v0

    .line 357
    :cond_0
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isL()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 358
    iget-object v0, p0, Lcom/heytap/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-eqz v0, :cond_1

    .line 359
    iget-object v0, p0, Lcom/heytap/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v0

    return v0

    .line 364
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 362
    :cond_2
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
.end method

.method public isVisiblePatternEnabled(I)Z
    .locals 1
    .param p1, "userId"    # I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x17
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Grey;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 370
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/heytap/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtilsWrapper:Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;

    if-eqz v0, :cond_1

    .line 372
    iget-object v0, p0, Lcom/heytap/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtilsWrapper:Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;

    invoke-virtual {v0, p1}, Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;->isVisiblePatternEnabled(I)Z

    move-result v0

    return v0

    .line 374
    :cond_0
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isM()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 375
    iget-object v0, p0, Lcom/heytap/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-eqz v0, :cond_1

    .line 376
    iget-object v0, p0, Lcom/heytap/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled(I)Z

    move-result v0

    return v0

    .line 381
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 379
    :cond_2
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
.end method

.method public reportSuccessfulPasswordAttempt(I)V
    .locals 1
    .param p1, "userId"    # I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x17
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Grey;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 318
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/heytap/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtilsWrapper:Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;

    if-eqz v0, :cond_1

    .line 320
    iget-object v0, p0, Lcom/heytap/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtilsWrapper:Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;

    invoke-virtual {v0, p1}, Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;->reportSuccessfulPasswordAttempt(I)V

    .line 321
    return-void

    .line 323
    :cond_0
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isM()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 324
    iget-object v0, p0, Lcom/heytap/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-eqz v0, :cond_1

    .line 325
    iget-object v0, p0, Lcom/heytap/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->reportSuccessfulPasswordAttempt(I)V

    .line 326
    return-void

    .line 331
    :cond_1
    return-void

    .line 329
    :cond_2
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
.end method

.method public sanitizePassword()V
    .locals 3
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Oem;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 305
    :try_start_0
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    invoke-static {}, Lcom/heytap/compat/internal/widget/LockPatternUtilsNative$ReflectInfo;->access$100()Lcom/heytap/reflect/RefMethod;

    move-result-object v0

    iget-object v1, p0, Lcom/heytap/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtilsWrapper:Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;

    invoke-virtual {v1}, Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;->getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/heytap/reflect/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    nop

    .line 313
    return-void

    .line 308
    :cond_0
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    const-string v1, "not supported before R"

    invoke-direct {v0, v1}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    :catch_0
    move-exception v0

    .line 311
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v1, v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setLockoutAttemptDeadline(II)J
    .locals 2
    .param p1, "userId"    # I
    .param p2, "timeoutMs"    # I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x17
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Grey;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 336
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/heytap/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtilsWrapper:Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;

    if-eqz v0, :cond_1

    .line 338
    iget-object v0, p0, Lcom/heytap/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtilsWrapper:Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/color/inner/internal/widget/LockPatternUtilsWrapper;->setLockoutAttemptDeadline(II)J

    move-result-wide v0

    return-wide v0

    .line 340
    :cond_0
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isM()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 341
    iget-object v0, p0, Lcom/heytap/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-eqz v0, :cond_1

    .line 342
    iget-object v0, p0, Lcom/heytap/compat/internal/widget/LockPatternUtilsNative;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline(II)J

    move-result-wide v0

    return-wide v0

    .line 347
    :cond_1
    const-wide/16 v0, -0x1

    return-wide v0

    .line 345
    :cond_2
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
.end method
