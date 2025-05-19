.class public Lcom/heytap/compat/hardware/soundtrigger/SoundTriggerNative;
.super Ljava/lang/Object;
.source "SoundTriggerNative.java"


# static fields
.field private static final COMPONENT_NAME:Ljava/lang/String; = "hardware.soundtrigger.SoundTrigger"

.field private static final KEY_RESULT:Ljava/lang/String; = "result"

.field public static final STATUS_BAD_VALUE:I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Black;
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Permission;
        authStr = "SoundTrigger"
        type = "epona"
    .end annotation
.end field

.field private static final STATUS_BAD_VALUE_NAME:Ljava/lang/String; = "STATUS_BAD_VALUE"

.field public static final STATUS_DEAD_OBJECT:I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Black;
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Permission;
        authStr = "SoundTrigger"
        type = "epona"
    .end annotation
.end field

.field private static final STATUS_DEAD_OBJECT_NAME:Ljava/lang/String; = "STATUS_DEAD_OBJECT"

.field private static final STATUS_ERROR:I = -0x80000000

.field public static final STATUS_INVALID_OPERATION:I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Black;
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Permission;
        authStr = "SoundTrigger"
        type = "epona"
    .end annotation
.end field

.field private static final STATUS_INVALID_OPERATION_NAME:Ljava/lang/String; = "STATUS_INVALID_OPERATION"

.field public static final STATUS_NO_INIT:I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Black;
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Permission;
        authStr = "SoundTrigger"
        type = "epona"
    .end annotation
.end field

.field private static final STATUS_NO_INIT_NAME:Ljava/lang/String; = "STATUS_NO_INIT"

.field public static final STATUS_PERMISSION_DENIED:I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Black;
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Permission;
        authStr = "SoundTrigger"
        type = "epona"
    .end annotation
.end field

.field private static final STATUS_PERMISSION_DENIED_NAME:Ljava/lang/String; = "STATUS_PERMISSION_DENIED"

.field private static final TAG:Ljava/lang/String; = "SoundTriggerNative"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    const-string v0, "STATUS_BAD_VALUE"

    invoke-static {v0}, Lcom/heytap/compat/hardware/soundtrigger/SoundTriggerNative;->init(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/heytap/compat/hardware/soundtrigger/SoundTriggerNative;->STATUS_BAD_VALUE:I

    .line 55
    const-string v0, "STATUS_DEAD_OBJECT"

    invoke-static {v0}, Lcom/heytap/compat/hardware/soundtrigger/SoundTriggerNative;->init(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/heytap/compat/hardware/soundtrigger/SoundTriggerNative;->STATUS_DEAD_OBJECT:I

    .line 56
    const-string v0, "STATUS_INVALID_OPERATION"

    invoke-static {v0}, Lcom/heytap/compat/hardware/soundtrigger/SoundTriggerNative;->init(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/heytap/compat/hardware/soundtrigger/SoundTriggerNative;->STATUS_INVALID_OPERATION:I

    .line 57
    const-string v0, "STATUS_NO_INIT"

    invoke-static {v0}, Lcom/heytap/compat/hardware/soundtrigger/SoundTriggerNative;->init(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/heytap/compat/hardware/soundtrigger/SoundTriggerNative;->STATUS_NO_INIT:I

    .line 58
    const-string v0, "STATUS_PERMISSION_DENIED"

    invoke-static {v0}, Lcom/heytap/compat/hardware/soundtrigger/SoundTriggerNative;->init(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/heytap/compat/hardware/soundtrigger/SoundTriggerNative;->STATUS_PERMISSION_DENIED:I

    .line 59
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method private static init(Ljava/lang/String;)I
    .locals 4
    .param p0, "fieldName"    # Ljava/lang/String;

    .line 62
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    new-instance v0, Lcom/heytap/epona/Request$Builder;

    invoke-direct {v0}, Lcom/heytap/epona/Request$Builder;-><init>()V

    const-string v1, "hardware.soundtrigger.SoundTrigger"

    .line 64
    invoke-virtual {v0, v1}, Lcom/heytap/epona/Request$Builder;->setComponentName(Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    .line 65
    invoke-virtual {v0, p0}, Lcom/heytap/epona/Request$Builder;->setActionName(Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lcom/heytap/epona/Request$Builder;->build()Lcom/heytap/epona/Request;

    move-result-object v0

    .line 67
    .local v0, "request":Lcom/heytap/epona/Request;
    invoke-static {v0}, Lcom/heytap/epona/Epona;->newCall(Lcom/heytap/epona/Request;)Lcom/heytap/epona/internal/RealCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/heytap/epona/internal/RealCall;->execute()Lcom/heytap/epona/Response;

    move-result-object v1

    .line 68
    .local v1, "response":Lcom/heytap/epona/Response;
    invoke-virtual {v1}, Lcom/heytap/epona/Response;->isSuccessful()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 69
    invoke-virtual {v1}, Lcom/heytap/epona/Response;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "result"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    return v2

    .line 71
    .end local v0    # "request":Lcom/heytap/epona/Request;
    .end local v1    # "response":Lcom/heytap/epona/Response;
    :cond_0
    goto :goto_0

    .line 72
    :cond_1
    const-string v0, "SoundTriggerNative"

    const-string v1, "is not supported before R"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :goto_0
    const/high16 v0, -0x80000000

    return v0
.end method
