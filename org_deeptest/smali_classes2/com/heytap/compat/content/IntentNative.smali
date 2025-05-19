.class public Lcom/heytap/compat/content/IntentNative;
.super Ljava/lang/Object;
.source "IntentNative.java"


# static fields
.field public static ACTION_CALL_PRIVILEGED:Ljava/lang/String; = null
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x18
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Permission;
        authStr = "Intent"
        type = "epona"
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/System;
    .end annotation
.end field

.field private static final COMPONENT_NAME:Ljava/lang/String; = "android.content.Intent"

.field private static final CONSTANT_ACTION_CALL_PRIVILEGED:Ljava/lang/String; = "ACTION_CALL_PRIVILEGED"

.field private static final CONSTANT_EXTRA_USER_ID:Ljava/lang/String; = "EXTRA_USER_ID"

.field private static final CONSTANT_FLAG_RECEIVER_INCLUDE_BACKGROUND:Ljava/lang/String; = "FLAG_RECEIVER_INCLUDE_BACKGROUND"

.field public static EXTRA_USER_ID:Ljava/lang/String; = null
    .annotation runtime Lcom/heytap/compat/annotation/Black;
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Permission;
        authStr = "Intent"
        type = "epona"
    .end annotation
.end field

.field public static FLAG_RECEIVER_INCLUDE_BACKGROUND:I = 0x0
    .annotation runtime Lcom/heytap/compat/annotation/Black;
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Permission;
        authStr = "Intent"
        type = "epona"
    .end annotation
.end field

.field public static OPLUS_FLAG_MUTIL_APP:I = 0x0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Oem;
    .end annotation
.end field

.field public static OPLUS_FLAG_MUTIL_CHOOSER:I = 0x0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Oem;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "IntentNative"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 56
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    const/16 v1, 0x200

    const/16 v2, 0x400

    if-eqz v0, :cond_1

    .line 57
    sput v2, Lcom/heytap/compat/content/IntentNative;->OPLUS_FLAG_MUTIL_APP:I

    .line 58
    sput v1, Lcom/heytap/compat/content/IntentNative;->OPLUS_FLAG_MUTIL_CHOOSER:I

    .line 59
    new-instance v0, Lcom/heytap/epona/Request$Builder;

    invoke-direct {v0}, Lcom/heytap/epona/Request$Builder;-><init>()V

    const-string v1, "android.content.Intent"

    .line 60
    invoke-virtual {v0, v1}, Lcom/heytap/epona/Request$Builder;->setComponentName(Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Lcom/heytap/epona/Request$Builder;->build()Lcom/heytap/epona/Request;

    move-result-object v0

    .line 62
    .local v0, "request":Lcom/heytap/epona/Request;
    invoke-static {v0}, Lcom/heytap/epona/Epona;->newCall(Lcom/heytap/epona/Request;)Lcom/heytap/epona/internal/RealCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/heytap/epona/internal/RealCall;->execute()Lcom/heytap/epona/Response;

    move-result-object v1

    .line 63
    .local v1, "response":Lcom/heytap/epona/Response;
    invoke-virtual {v1}, Lcom/heytap/epona/Response;->isSuccessful()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 64
    invoke-virtual {v1}, Lcom/heytap/epona/Response;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "EXTRA_USER_ID"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/heytap/compat/content/IntentNative;->EXTRA_USER_ID:Ljava/lang/String;

    .line 65
    invoke-virtual {v1}, Lcom/heytap/epona/Response;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "FLAG_RECEIVER_INCLUDE_BACKGROUND"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/heytap/compat/content/IntentNative;->FLAG_RECEIVER_INCLUDE_BACKGROUND:I

    .line 66
    invoke-virtual {v1}, Lcom/heytap/epona/Response;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "ACTION_CALL_PRIVILEGED"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/heytap/compat/content/IntentNative;->ACTION_CALL_PRIVILEGED:Ljava/lang/String;

    goto :goto_0

    .line 68
    :cond_0
    const-string v2, "IntentNative"

    const-string v3, "Epona Communication failed, static initializer failed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .end local v0    # "request":Lcom/heytap/epona/Request;
    .end local v1    # "response":Lcom/heytap/epona/Response;
    :goto_0
    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    const/high16 v3, 0x1000000

    if-eqz v0, :cond_2

    .line 71
    sput v2, Lcom/heytap/compat/content/IntentNative;->OPLUS_FLAG_MUTIL_APP:I

    .line 72
    sput v1, Lcom/heytap/compat/content/IntentNative;->OPLUS_FLAG_MUTIL_CHOOSER:I

    .line 73
    const-string v0, "android.intent.action.CALL_PRIVILEGED"

    sput-object v0, Lcom/heytap/compat/content/IntentNative;->ACTION_CALL_PRIVILEGED:Ljava/lang/String;

    .line 74
    sput v3, Lcom/heytap/compat/content/IntentNative;->FLAG_RECEIVER_INCLUDE_BACKGROUND:I

    goto :goto_1

    .line 75
    :cond_2
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isP()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 76
    sput v3, Lcom/heytap/compat/content/IntentNative;->FLAG_RECEIVER_INCLUDE_BACKGROUND:I

    goto :goto_1

    .line 77
    :cond_3
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isN()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 78
    const-string v0, "android.intent.action.CALL_PRIVILEGED"

    sput-object v0, Lcom/heytap/compat/content/IntentNative;->ACTION_CALL_PRIVILEGED:Ljava/lang/String;

    goto :goto_1

    .line 80
    :cond_4
    const-string v0, "IntentNative"

    const-string v1, "Not supported before N"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :goto_1
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method public static getCallingUid(Landroid/content/Intent;)I
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Oem;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 147
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    invoke-static {p0}, Lcom/color/inner/content/IntentWrapper;->getCallingUid(Landroid/content/Intent;)I

    move-result v0

    return v0

    .line 150
    :cond_0
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
.end method

.method public static getIsFromGameSpace(Landroid/content/Intent;)I
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Oem;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 107
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    invoke-static {p0}, Lcom/color/inner/content/IntentWrapper;->getIsFromGameSpace(Landroid/content/Intent;)I

    move-result v0

    return v0

    .line 110
    :cond_0
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
.end method

.method public static getOplusFlags(Landroid/content/Intent;)I
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Oem;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 137
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    invoke-static {p0}, Lcom/color/inner/content/IntentWrapper;->getOppoFlags(Landroid/content/Intent;)I

    move-result v0

    return v0

    .line 140
    :cond_0
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
.end method

.method public static getOplusUserId(Landroid/content/Intent;)I
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Oem;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 87
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    invoke-static {p0}, Lcom/color/inner/content/IntentWrapper;->getColorUserId(Landroid/content/Intent;)I

    move-result v0

    return v0

    .line 90
    :cond_0
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
.end method

.method public static setIsFromGameSpace(Landroid/content/Intent;I)V
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "isFromGameSpace"    # I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Oem;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 117
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    invoke-static {p0, p1}, Lcom/color/inner/content/IntentWrapper;->setIsFromGameSpace(Landroid/content/Intent;I)V

    .line 122
    return-void

    .line 120
    :cond_0
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
.end method

.method public static setOplusFlags(Landroid/content/Intent;I)V
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "flag"    # I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Oem;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 127
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    invoke-static {p0, p1}, Lcom/color/inner/content/IntentWrapper;->setOppoFlags(Landroid/content/Intent;I)V

    .line 132
    return-void

    .line 130
    :cond_0
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
.end method

.method public static setOplusUserId(Landroid/content/Intent;I)V
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "oplusUserId"    # I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Oem;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 97
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    invoke-static {p0, p1}, Lcom/color/inner/content/IntentWrapper;->setColorUserId(Landroid/content/Intent;I)V

    .line 102
    return-void

    .line 100
    :cond_0
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
.end method
