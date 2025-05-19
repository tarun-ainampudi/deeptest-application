.class public Lcom/heytap/compat/provider/SettingsNative;
.super Ljava/lang/Object;
.source "SettingsNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/compat/provider/SettingsNative$System;,
        Lcom/heytap/compat/provider/SettingsNative$Secure;,
        Lcom/heytap/compat/provider/SettingsNative$Global;
    }
.end annotation


# static fields
.field private static final KEY_RESULT:Ljava/lang/String; = "result"

.field private static final SETTINGS_KEY:Ljava/lang/String; = "SETTINGS_KEY"

.field private static final SETTINGS_VALUE:Ljava/lang/String; = "SETTINGS_VALUE"

.field private static final SETTINGS_VALUE_DEF:Ljava/lang/String; = "def"

.field private static final SETTINGS_VALUE_USER_HANDLE:Ljava/lang/String; = "userHandle"

.field private static final TAG:Ljava/lang/String; = "SettingsNative"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method
