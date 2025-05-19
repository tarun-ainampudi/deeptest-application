.class public Lcom/heytap/compat/hardware/input/InputManagerNative;
.super Ljava/lang/Object;
.source "InputManagerNative.java"


# static fields
.field private static final COMPONENT_NAME:Ljava/lang/String; = "android.hardware.input.InputManager"

.field private static final KEY_EVENT:Ljava/lang/String; = "event"

.field private static final KEY_MODE:Ljava/lang/String; = "mode"

.field private static final KEY_RESULT:Ljava/lang/String; = "result"

.field private static final TAG:Ljava/lang/String; = "InputManagerNative"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public static injectInputEvent(Landroid/view/InputEvent;I)Z
    .locals 4
    .param p0, "event"    # Landroid/view/InputEvent;
    .param p1, "mode"    # I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Grey;
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Permission;
        authStr = "injectInputEvent"
        type = "epona"
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/System;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 31
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 32
    new-instance v0, Lcom/heytap/epona/Request$Builder;

    invoke-direct {v0}, Lcom/heytap/epona/Request$Builder;-><init>()V

    const-string v1, "android.hardware.input.InputManager"

    .line 33
    invoke-virtual {v0, v1}, Lcom/heytap/epona/Request$Builder;->setComponentName(Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v1, "injectInputEvent"

    .line 34
    invoke-virtual {v0, v1}, Lcom/heytap/epona/Request$Builder;->setActionName(Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v1, "event"

    .line 35
    invoke-virtual {v0, v1, p0}, Lcom/heytap/epona/Request$Builder;->withParcelable(Ljava/lang/String;Landroid/os/Parcelable;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    const-string v1, "mode"

    .line 36
    invoke-virtual {v0, v1, p1}, Lcom/heytap/epona/Request$Builder;->withInt(Ljava/lang/String;I)Lcom/heytap/epona/Request$Builder;

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
    invoke-virtual {v1}, Lcom/heytap/epona/Response;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "result"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    return v2

    .line 42
    .end local v0    # "request":Lcom/heytap/epona/Request;
    .end local v1    # "response":Lcom/heytap/epona/Response;
    :cond_0
    nop

    .line 47
    const/4 v0, 0x0

    return v0

    .line 42
    :cond_1
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 43
    invoke-static {p0, p1}, Lcom/color/inner/hardware/input/InputManagerWrapper;->injectInputEvent(Landroid/view/InputEvent;I)Z

    move-result v0

    return v0

    .line 45
    :cond_2
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    const-string v1, "not supported before Q"

    invoke-direct {v0, v1}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
