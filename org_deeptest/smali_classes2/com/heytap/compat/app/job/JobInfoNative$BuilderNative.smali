.class public final Lcom/heytap/compat/app/job/JobInfoNative$BuilderNative;
.super Ljava/lang/Object;
.source "JobInfoNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/compat/app/job/JobInfoNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BuilderNative"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    return-void
.end method

.method public static getHasCpuConstraint(Landroid/app/job/JobInfo$Builder;)Z
    .locals 2
    .param p0, "builder"    # Landroid/app/job/JobInfo$Builder;
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

    .line 173
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    invoke-static {}, Lcom/heytap/compat/app/job/JobInfoNative$ReflectInfo;->access$600()Lcom/heytap/reflect/RefBoolean;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/heytap/reflect/RefBoolean;->get(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 176
    :cond_0
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    const-string v1, "not supported before Q"

    invoke-direct {v0, v1}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getOplusExtraStr(Landroid/app/job/JobInfo$Builder;)Ljava/lang/String;
    .locals 2
    .param p0, "builder"    # Landroid/app/job/JobInfo$Builder;
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

    .line 197
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    invoke-static {}, Lcom/heytap/compat/app/job/JobInfoNative$ReflectInfo;->access$700()Lcom/heytap/reflect/RefObject;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/heytap/reflect/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 199
    :cond_0
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 200
    invoke-static {}, Lcom/heytap/compat/app/job/JobInfoNative$ReflectInfo;->access$800()Lcom/heytap/reflect/RefObject;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/heytap/reflect/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 202
    :cond_1
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    const-string v1, "not supported before Q"

    invoke-direct {v0, v1}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getOplusJob(Landroid/app/job/JobInfo$Builder;)Z
    .locals 2
    .param p0, "builder"    # Landroid/app/job/JobInfo$Builder;
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

    .line 115
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    invoke-static {}, Lcom/heytap/compat/app/job/JobInfoNative$ReflectInfo;->access$200()Lcom/heytap/reflect/RefBoolean;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/heytap/reflect/RefBoolean;->get(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 117
    :cond_0
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    invoke-static {}, Lcom/heytap/compat/app/job/JobInfoNative$ReflectInfo;->access$300()Lcom/heytap/reflect/RefBoolean;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/heytap/reflect/RefBoolean;->get(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 120
    :cond_1
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    const-string v1, "not supported before Q"

    invoke-direct {v0, v1}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getRequiresBattIdle(Landroid/app/job/JobInfo$Builder;)Z
    .locals 2
    .param p0, "builder"    # Landroid/app/job/JobInfo$Builder;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x19
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Oem;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 91
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isN_MR1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    invoke-static {}, Lcom/heytap/compat/app/job/JobInfoNative$ReflectInfo;->access$100()Lcom/heytap/reflect/RefBoolean;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/heytap/reflect/RefBoolean;->get(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 94
    :cond_0
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    const-string v1, "not supported before N_MR1"

    invoke-direct {v0, v1}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getRequiresProtectFore(Landroid/app/job/JobInfo$Builder;)Z
    .locals 2
    .param p0, "builder"    # Landroid/app/job/JobInfo$Builder;
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

    .line 151
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    invoke-static {}, Lcom/heytap/compat/app/job/JobInfoNative$ReflectInfo;->access$400()Lcom/heytap/reflect/RefBoolean;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/heytap/reflect/RefBoolean;->get(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 154
    :cond_0
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    const-string v1, "not supported before Q"

    invoke-direct {v0, v1}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setHasCpuConstraint(Landroid/app/job/JobInfo$Builder;Z)V
    .locals 2
    .param p0, "builder"    # Landroid/app/job/JobInfo$Builder;
    .param p1, "hasCpuConstraint"    # Z
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

    .line 162
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    invoke-static {}, Lcom/heytap/compat/app/job/JobInfoNative$ReflectInfo;->access$600()Lcom/heytap/reflect/RefBoolean;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/heytap/reflect/RefBoolean;->set(Ljava/lang/Object;Z)V

    .line 167
    return-void

    .line 165
    :cond_0
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    const-string v1, "not supported before Q"

    invoke-direct {v0, v1}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setHasTemperatureConstraint(Landroid/app/job/JobInfo$Builder;Z)V
    .locals 2
    .param p0, "builder"    # Landroid/app/job/JobInfo$Builder;
    .param p1, "hasTemperatureConstraint"    # Z
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

    .line 210
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    invoke-static {}, Lcom/heytap/compat/app/job/JobInfoNative$ReflectInfo;->access$900()Lcom/heytap/reflect/RefBoolean;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/heytap/reflect/RefBoolean;->set(Ljava/lang/Object;Z)V

    .line 215
    return-void

    .line 213
    :cond_0
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    const-string v1, "not supported before R"

    invoke-direct {v0, v1}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setOplusExtraStr(Landroid/app/job/JobInfo$Builder;Ljava/lang/String;)V
    .locals 2
    .param p0, "builder"    # Landroid/app/job/JobInfo$Builder;
    .param p1, "str"    # Ljava/lang/String;
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

    .line 184
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    invoke-static {}, Lcom/heytap/compat/app/job/JobInfoNative$ReflectInfo;->access$700()Lcom/heytap/reflect/RefObject;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/heytap/reflect/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 186
    :cond_0
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    invoke-static {}, Lcom/heytap/compat/app/job/JobInfoNative$ReflectInfo;->access$800()Lcom/heytap/reflect/RefObject;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/heytap/reflect/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 191
    :goto_0
    return-void

    .line 189
    :cond_1
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    const-string v1, "not supported before Q"

    invoke-direct {v0, v1}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setOplusJob(Landroid/app/job/JobInfo$Builder;Z)V
    .locals 2
    .param p0, "builder"    # Landroid/app/job/JobInfo$Builder;
    .param p1, "isColorJob"    # Z
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

    .line 102
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    invoke-static {}, Lcom/heytap/compat/app/job/JobInfoNative$ReflectInfo;->access$200()Lcom/heytap/reflect/RefBoolean;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/heytap/reflect/RefBoolean;->set(Ljava/lang/Object;Z)V

    goto :goto_0

    .line 104
    :cond_0
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    invoke-static {}, Lcom/heytap/compat/app/job/JobInfoNative$ReflectInfo;->access$300()Lcom/heytap/reflect/RefBoolean;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/heytap/reflect/RefBoolean;->set(Ljava/lang/Object;Z)V

    .line 109
    :goto_0
    return-void

    .line 107
    :cond_1
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    const-string v1, "not supported before Q"

    invoke-direct {v0, v1}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setRequiresBattIdle(Landroid/app/job/JobInfo$Builder;ZI)V
    .locals 4
    .param p0, "builder"    # Landroid/app/job/JobInfo$Builder;
    .param p1, "requiresBattIdle"    # Z
    .param p2, "extra"    # I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x19
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Oem;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 80
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isN_MR1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    invoke-static {}, Lcom/heytap/compat/app/job/JobInfoNative$ReflectInfo;->access$000()Lcom/heytap/reflect/RefMethod;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/heytap/reflect/RefMethod;->call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    return-void

    .line 83
    :cond_0
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    const-string v1, "not supported before N_MR1"

    invoke-direct {v0, v1}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setRequiresProtectFore(Landroid/app/job/JobInfo$Builder;Z)V
    .locals 2
    .param p0, "builder"    # Landroid/app/job/JobInfo$Builder;
    .param p1, "requiresProtectFore"    # Z
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

    .line 128
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    invoke-static {}, Lcom/heytap/compat/app/job/JobInfoNative$ReflectInfo;->access$400()Lcom/heytap/reflect/RefBoolean;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/heytap/reflect/RefBoolean;->set(Ljava/lang/Object;Z)V

    .line 133
    return-void

    .line 131
    :cond_0
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    const-string v1, "not supported before Q"

    invoke-direct {v0, v1}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setRequiresProtectFore(Landroid/app/job/JobInfo$Builder;ZI)V
    .locals 2
    .param p0, "builder"    # Landroid/app/job/JobInfo$Builder;
    .param p1, "requiresProtectFore"    # Z
    .param p2, "protectForeType"    # I
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

    .line 139
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    invoke-static {}, Lcom/heytap/compat/app/job/JobInfoNative$ReflectInfo;->access$400()Lcom/heytap/reflect/RefBoolean;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/heytap/reflect/RefBoolean;->set(Ljava/lang/Object;Z)V

    .line 141
    invoke-static {}, Lcom/heytap/compat/app/job/JobInfoNative$ReflectInfo;->access$500()Lcom/heytap/reflect/RefInt;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/heytap/reflect/RefInt;->set(Ljava/lang/Object;I)V

    .line 145
    return-void

    .line 143
    :cond_0
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    const-string v1, "not supported before Q"

    invoke-direct {v0, v1}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setRequiresProtectScene(Landroid/app/job/JobInfo$Builder;ZI)V
    .locals 2
    .param p0, "builder"    # Landroid/app/job/JobInfo$Builder;
    .param p1, "requiresProtectScene"    # Z
    .param p2, "protectScene"    # I
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

    .line 221
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    invoke-static {}, Lcom/heytap/compat/app/job/JobInfoNative$ReflectInfo;->access$1000()Lcom/heytap/reflect/RefBoolean;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/heytap/reflect/RefBoolean;->set(Ljava/lang/Object;Z)V

    .line 223
    invoke-static {}, Lcom/heytap/compat/app/job/JobInfoNative$ReflectInfo;->access$1100()Lcom/heytap/reflect/RefInt;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/heytap/reflect/RefInt;->set(Ljava/lang/Object;I)V

    .line 227
    return-void

    .line 225
    :cond_0
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    const-string v1, "not supported before R"

    invoke-direct {v0, v1}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
