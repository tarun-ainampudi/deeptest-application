.class public Lcom/heytap/compat/content/res/ConfigurationNative;
.super Ljava/lang/Object;
.source "ConfigurationNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/compat/content/res/ConfigurationNative$ReflectInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ConfigurationNative"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public static getAccessibleChanged(Landroid/content/res/Configuration;)I
    .locals 1
    .param p0, "configuration"    # Landroid/content/res/Configuration;
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

    .line 84
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    invoke-static {p0}, Lcom/color/inner/content/res/ConfigurationWrapper;->getAccessibleChanged(Landroid/content/res/Configuration;)I

    move-result v0

    return v0

    .line 87
    :cond_0
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
.end method

.method public static getFlipFont(Landroid/content/res/Configuration;)I
    .locals 2
    .param p0, "configuration"    # Landroid/content/res/Configuration;
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

    .line 31
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    invoke-static {p0}, Lcom/color/inner/content/res/ConfigurationWrapper;->getFlipFont(Landroid/content/res/Configuration;)I

    move-result v0

    return v0

    .line 33
    :cond_0
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isN_MR1()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 34
    invoke-static {}, Lcom/heytap/compat/content/res/ConfigurationNative$ReflectInfo;->access$000()Lcom/heytap/reflect/RefObject;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/heytap/reflect/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 35
    .local v0, "extraConfig":Ljava/lang/Object;
    invoke-static {}, Lcom/heytap/compat/content/res/ConfigurationNative$ReflectInfo;->access$100()Lcom/heytap/reflect/RefInt;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/heytap/reflect/RefInt;->get(Ljava/lang/Object;)I

    move-result v1

    return v1

    .line 37
    .end local v0    # "extraConfig":Ljava/lang/Object;
    :cond_1
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
.end method

.method public static getThemeChanged(Landroid/content/res/Configuration;)I
    .locals 1
    .param p0, "configuration"    # Landroid/content/res/Configuration;
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

    .line 44
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    invoke-static {p0}, Lcom/color/inner/content/res/ConfigurationWrapper;->getThemeChanged(Landroid/content/res/Configuration;)I

    move-result v0

    return v0

    .line 47
    :cond_0
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
.end method

.method public static getThemeChangedFlags(Landroid/content/res/Configuration;)J
    .locals 2
    .param p0, "configuration"    # Landroid/content/res/Configuration;
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

    .line 64
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-static {p0}, Lcom/color/inner/content/res/ConfigurationWrapper;->getThemeChangedFlags(Landroid/content/res/Configuration;)J

    move-result-wide v0

    return-wide v0

    .line 67
    :cond_0
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
.end method

.method public static getUxIconConfig(Landroid/content/res/Configuration;)J
    .locals 2
    .param p0, "configuration"    # Landroid/content/res/Configuration;
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

    .line 104
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    invoke-static {p0}, Lcom/color/inner/content/res/ConfigurationWrapper;->getUxIconConfig(Landroid/content/res/Configuration;)J

    move-result-wide v0

    return-wide v0

    .line 107
    :cond_0
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
.end method

.method public static setAccessibleChanged(Landroid/content/res/Configuration;I)V
    .locals 1
    .param p0, "configuration"    # Landroid/content/res/Configuration;
    .param p1, "val"    # I
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

    .line 94
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    invoke-static {p0, p1}, Lcom/color/inner/content/res/ConfigurationWrapper;->setAccessibleChanged(Landroid/content/res/Configuration;I)V

    .line 99
    return-void

    .line 97
    :cond_0
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
.end method

.method public static setThemeChanged(Landroid/content/res/Configuration;I)V
    .locals 1
    .param p0, "configuration"    # Landroid/content/res/Configuration;
    .param p1, "val"    # I
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

    .line 54
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    invoke-static {p0, p1}, Lcom/color/inner/content/res/ConfigurationWrapper;->setThemeChanged(Landroid/content/res/Configuration;I)V

    .line 59
    return-void

    .line 57
    :cond_0
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
.end method

.method public static setThemeChangedFlags(Landroid/content/res/Configuration;J)V
    .locals 1
    .param p0, "configuration"    # Landroid/content/res/Configuration;
    .param p1, "val"    # J
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

    .line 74
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    invoke-static {p0, p1, p2}, Lcom/color/inner/content/res/ConfigurationWrapper;->setThemeChangedFlags(Landroid/content/res/Configuration;J)V

    .line 79
    return-void

    .line 77
    :cond_0
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
.end method

.method public static setUxIconConfig(Landroid/content/res/Configuration;J)V
    .locals 1
    .param p0, "configuration"    # Landroid/content/res/Configuration;
    .param p1, "val"    # J
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

    .line 114
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    invoke-static {p0, p1, p2}, Lcom/color/inner/content/res/ConfigurationWrapper;->setUxIconConfig(Landroid/content/res/Configuration;J)V

    .line 119
    return-void

    .line 117
    :cond_0
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
.end method
