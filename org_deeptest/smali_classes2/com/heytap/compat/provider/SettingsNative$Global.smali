.class public Lcom/heytap/compat/provider/SettingsNative$Global;
.super Ljava/lang/Object;
.source "SettingsNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/compat/provider/SettingsNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Global"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/compat/provider/SettingsNative$Global$ReflectInfo;
    }
.end annotation


# static fields
.field private static final COMPONENT_NAME:Ljava/lang/String; = "Settings.Global"

.field public static NTP_SERVER_2:Ljava/lang/String;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Oem;
    .end annotation
.end field

.field public static ZEN_MODE_IMPORTANT_INTERRUPTIONS:I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Grey;
    .end annotation
.end field

.field public static ZEN_MODE_OFF:I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Grey;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 60
    :try_start_0
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    invoke-static {}, Lcom/heytap/compat/provider/SettingsNative$Global$ReflectInfo;->access$000()Lcom/heytap/reflect/RefStaticInt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heytap/reflect/RefStaticInt;->getWithException()I

    move-result v0

    sput v0, Lcom/heytap/compat/provider/SettingsNative$Global;->ZEN_MODE_IMPORTANT_INTERRUPTIONS:I

    .line 62
    invoke-static {}, Lcom/heytap/compat/provider/SettingsNative$Global$ReflectInfo;->access$100()Lcom/heytap/reflect/RefStaticInt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heytap/reflect/RefStaticInt;->getWithException()I

    move-result v0

    sput v0, Lcom/heytap/compat/provider/SettingsNative$Global;->ZEN_MODE_OFF:I

    .line 63
    :cond_0
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    invoke-static {}, Lcom/heytap/compat/provider/SettingsNative$Global$ReflectInfo;->access$200()Lcom/heytap/reflect/RefStaticObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heytap/reflect/RefStaticObject;->getWithException()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/heytap/compat/provider/SettingsNative$Global;->NTP_SERVER_2:Ljava/lang/String;

    goto :goto_0

    .line 66
    :cond_1
    const-string v0, "SettingsNative"

    const-string v1, "Not supported before Q"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_0
    goto :goto_1

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SettingsNative"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public static putFloat(Ljava/lang/String;F)Z
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # F
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x17
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Permission;
        authStr = "Settings.Global"
        type = "epona"
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/System;
    .end annotation

    .line 152
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    new-instance v0, Lcom/heytap/epona/Request$Builder;

    invoke-direct {v0}, Lcom/heytap/epona/Request$Builder;-><init>()V

    const-string v1, "Settings.Global"

    .line 154
    invoke-virtual {v0, v1}, Lcom/heytap/epona/Request$Builder;->setComponentName(Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v1, "putFloat"

    .line 155
    invoke-virtual {v0, v1}, Lcom/heytap/epona/Request$Builder;->setActionName(Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v1, "SETTINGS_KEY"

    .line 156
    invoke-virtual {v0, v1, p0}, Lcom/heytap/epona/Request$Builder;->withString(Ljava/lang/String;Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v1, "SETTINGS_VALUE"

    .line 157
    invoke-virtual {v0, v1, p1}, Lcom/heytap/epona/Request$Builder;->withFloat(Ljava/lang/String;F)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    .line 158
    invoke-virtual {v0}, Lcom/heytap/epona/Request$Builder;->build()Lcom/heytap/epona/Request;

    move-result-object v0

    .line 159
    .local v0, "request":Lcom/heytap/epona/Request;
    invoke-static {v0}, Lcom/heytap/epona/Epona;->newCall(Lcom/heytap/epona/Request;)Lcom/heytap/epona/internal/RealCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/heytap/epona/internal/RealCall;->execute()Lcom/heytap/epona/Response;

    move-result-object v1

    .line 160
    .local v1, "response":Lcom/heytap/epona/Response;
    invoke-virtual {v1}, Lcom/heytap/epona/Response;->isSuccessful()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 161
    invoke-virtual {v1}, Lcom/heytap/epona/Response;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "result"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    return v2

    .line 163
    .end local v0    # "request":Lcom/heytap/epona/Request;
    .end local v1    # "response":Lcom/heytap/epona/Response;
    :cond_0
    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isM()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 164
    invoke-static {}, Lcom/heytap/epona/Epona;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 165
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    invoke-static {v0, p0, p1}, Landroid/provider/Settings$Global;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    move-result v1

    return v1

    .line 167
    .end local v0    # "contentResolver":Landroid/content/ContentResolver;
    :cond_2
    const-string v0, "SettingsNative"

    const-string v1, "SettingsNative.Global.putFloat is not supported before M"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static putInt(Ljava/lang/String;I)Z
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x17
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Permission;
        authStr = "Settings.Global"
        type = "epona"
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/System;
    .end annotation

    .line 102
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    new-instance v0, Lcom/heytap/epona/Request$Builder;

    invoke-direct {v0}, Lcom/heytap/epona/Request$Builder;-><init>()V

    const-string v1, "Settings.Global"

    .line 104
    invoke-virtual {v0, v1}, Lcom/heytap/epona/Request$Builder;->setComponentName(Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v1, "putInt"

    .line 105
    invoke-virtual {v0, v1}, Lcom/heytap/epona/Request$Builder;->setActionName(Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v1, "SETTINGS_KEY"

    .line 106
    invoke-virtual {v0, v1, p0}, Lcom/heytap/epona/Request$Builder;->withString(Ljava/lang/String;Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v1, "SETTINGS_VALUE"

    .line 107
    invoke-virtual {v0, v1, p1}, Lcom/heytap/epona/Request$Builder;->withInt(Ljava/lang/String;I)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Lcom/heytap/epona/Request$Builder;->build()Lcom/heytap/epona/Request;

    move-result-object v0

    .line 109
    .local v0, "request":Lcom/heytap/epona/Request;
    invoke-static {v0}, Lcom/heytap/epona/Epona;->newCall(Lcom/heytap/epona/Request;)Lcom/heytap/epona/internal/RealCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/heytap/epona/internal/RealCall;->execute()Lcom/heytap/epona/Response;

    move-result-object v1

    .line 110
    .local v1, "response":Lcom/heytap/epona/Response;
    invoke-virtual {v1}, Lcom/heytap/epona/Response;->isSuccessful()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 111
    invoke-virtual {v1}, Lcom/heytap/epona/Response;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "result"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    return v2

    .line 113
    .end local v0    # "request":Lcom/heytap/epona/Request;
    .end local v1    # "response":Lcom/heytap/epona/Response;
    :cond_0
    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isM()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 114
    invoke-static {}, Lcom/heytap/epona/Epona;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 115
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    invoke-static {v0, p0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v1

    return v1

    .line 117
    .end local v0    # "contentResolver":Landroid/content/ContentResolver;
    :cond_2
    const-string v0, "SettingsNative"

    const-string v1, "SettingsNative.Global.putInt is not supported before M"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static putLong(Ljava/lang/String;J)Z
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # J
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x17
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Permission;
        authStr = "Settings.Global"
        type = "epona"
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/System;
    .end annotation

    .line 127
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    new-instance v0, Lcom/heytap/epona/Request$Builder;

    invoke-direct {v0}, Lcom/heytap/epona/Request$Builder;-><init>()V

    const-string v1, "Settings.Global"

    .line 129
    invoke-virtual {v0, v1}, Lcom/heytap/epona/Request$Builder;->setComponentName(Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v1, "putLong"

    .line 130
    invoke-virtual {v0, v1}, Lcom/heytap/epona/Request$Builder;->setActionName(Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v1, "SETTINGS_KEY"

    .line 131
    invoke-virtual {v0, v1, p0}, Lcom/heytap/epona/Request$Builder;->withString(Ljava/lang/String;Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v1, "SETTINGS_VALUE"

    .line 132
    invoke-virtual {v0, v1, p1, p2}, Lcom/heytap/epona/Request$Builder;->withLong(Ljava/lang/String;J)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    .line 133
    invoke-virtual {v0}, Lcom/heytap/epona/Request$Builder;->build()Lcom/heytap/epona/Request;

    move-result-object v0

    .line 134
    .local v0, "request":Lcom/heytap/epona/Request;
    invoke-static {v0}, Lcom/heytap/epona/Epona;->newCall(Lcom/heytap/epona/Request;)Lcom/heytap/epona/internal/RealCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/heytap/epona/internal/RealCall;->execute()Lcom/heytap/epona/Response;

    move-result-object v1

    .line 135
    .local v1, "response":Lcom/heytap/epona/Response;
    invoke-virtual {v1}, Lcom/heytap/epona/Response;->isSuccessful()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 136
    invoke-virtual {v1}, Lcom/heytap/epona/Response;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "result"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    return v2

    .line 138
    .end local v0    # "request":Lcom/heytap/epona/Request;
    .end local v1    # "response":Lcom/heytap/epona/Response;
    :cond_0
    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isM()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 139
    invoke-static {}, Lcom/heytap/epona/Epona;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 140
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    invoke-static {v0, p0, p1, p2}, Landroid/provider/Settings$Global;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    move-result v1

    return v1

    .line 142
    .end local v0    # "contentResolver":Landroid/content/ContentResolver;
    :cond_2
    const-string v0, "SettingsNative"

    const-string v1, "SettingsNative.Global.putLong is not supported before M"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static putString(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x17
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Permission;
        authStr = "Settings.Global"
        type = "epona"
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/System;
    .end annotation

    .line 78
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    new-instance v0, Lcom/heytap/epona/Request$Builder;

    invoke-direct {v0}, Lcom/heytap/epona/Request$Builder;-><init>()V

    const-string v1, "Settings.Global"

    .line 80
    invoke-virtual {v0, v1}, Lcom/heytap/epona/Request$Builder;->setComponentName(Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v1, "putString"

    .line 81
    invoke-virtual {v0, v1}, Lcom/heytap/epona/Request$Builder;->setActionName(Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v1, "SETTINGS_KEY"

    .line 82
    invoke-virtual {v0, v1, p0}, Lcom/heytap/epona/Request$Builder;->withString(Ljava/lang/String;Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v1, "SETTINGS_VALUE"

    .line 83
    invoke-virtual {v0, v1, p1}, Lcom/heytap/epona/Request$Builder;->withString(Ljava/lang/String;Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Lcom/heytap/epona/Request$Builder;->build()Lcom/heytap/epona/Request;

    move-result-object v0

    .line 85
    .local v0, "request":Lcom/heytap/epona/Request;
    invoke-static {v0}, Lcom/heytap/epona/Epona;->newCall(Lcom/heytap/epona/Request;)Lcom/heytap/epona/internal/RealCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/heytap/epona/internal/RealCall;->execute()Lcom/heytap/epona/Response;

    move-result-object v1

    .line 86
    .local v1, "response":Lcom/heytap/epona/Response;
    invoke-virtual {v1}, Lcom/heytap/epona/Response;->isSuccessful()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 87
    invoke-virtual {v1}, Lcom/heytap/epona/Response;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "result"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    return v2

    .line 89
    .end local v0    # "request":Lcom/heytap/epona/Request;
    .end local v1    # "response":Lcom/heytap/epona/Response;
    :cond_0
    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isM()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 90
    invoke-static {}, Lcom/heytap/epona/Epona;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 91
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    invoke-static {v0, p0, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 93
    .end local v0    # "contentResolver":Landroid/content/ContentResolver;
    :cond_2
    const-string v0, "SettingsNative"

    const-string v1, "SettingsNative.Global.putString is not supported before M"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :goto_0
    const/4 v0, 0x0

    return v0
.end method
