.class public Lcom/heytap/compat/app/WindowConfigurationNative;
.super Ljava/lang/Object;
.source "WindowConfigurationNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/compat/app/WindowConfigurationNative$ReflectInfo;
    }
.end annotation


# static fields
.field private static final COMPONENT_NAME:Ljava/lang/String; = "android.app.WindowConfiguration"

.field private static final KEY_RESULT:Ljava/lang/String; = "result"

.field private static final STATUS_ERROR:I = -0x80000000

.field private static final TAG:Ljava/lang/String; = "WindowConfigurationNative"

.field public static final WINDOWING_MODE_FULLSCREEN:I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Black;
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Permission;
        authStr = "WindowConfiguration"
        type = "epona"
    .end annotation
.end field

.field private static final WINDOWING_MODE_FULLSCREEN_NAME:Ljava/lang/String; = "WINDOWING_MODE_FULLSCREEN"

.field public static final WINDOWING_MODE_SPLIT_SCREEN_PRIMARY:I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Black;
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Permission;
        authStr = "WindowConfiguration"
        type = "epona"
    .end annotation
.end field

.field private static final WINDOWING_MODE_SPLIT_SCREEN_PRIMARY_NAME:Ljava/lang/String; = "WINDOWING_MODE_SPLIT_SCREEN_PRIMARY"

.field public static final WINDOWING_MODE_SPLIT_SCREEN_SECONDARY:I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Black;
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Permission;
        authStr = "WindowConfiguration"
        type = "epona"
    .end annotation
.end field

.field private static final WINDOWING_MODE_SPLIT_SCREEN_SECONDARY_NAME:Ljava/lang/String; = "WINDOWING_MODE_SPLIT_SCREEN_SECONDARY"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    const-string v0, "WINDOWING_MODE_FULLSCREEN"

    invoke-static {v0}, Lcom/heytap/compat/app/WindowConfigurationNative;->init(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/heytap/compat/app/WindowConfigurationNative;->WINDOWING_MODE_FULLSCREEN:I

    .line 55
    const-string v0, "WINDOWING_MODE_SPLIT_SCREEN_PRIMARY"

    invoke-static {v0}, Lcom/heytap/compat/app/WindowConfigurationNative;->init(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/heytap/compat/app/WindowConfigurationNative;->WINDOWING_MODE_SPLIT_SCREEN_PRIMARY:I

    .line 56
    const-string v0, "WINDOWING_MODE_SPLIT_SCREEN_SECONDARY"

    invoke-static {v0}, Lcom/heytap/compat/app/WindowConfigurationNative;->init(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/heytap/compat/app/WindowConfigurationNative;->WINDOWING_MODE_SPLIT_SCREEN_SECONDARY:I

    .line 57
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method private static init(Ljava/lang/String;)I
    .locals 4
    .param p0, "fieldName"    # Ljava/lang/String;

    .line 61
    :try_start_0
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    new-instance v0, Lcom/heytap/epona/Request$Builder;

    invoke-direct {v0}, Lcom/heytap/epona/Request$Builder;-><init>()V

    const-string v1, "android.app.WindowConfiguration"

    .line 63
    invoke-virtual {v0, v1}, Lcom/heytap/epona/Request$Builder;->setComponentName(Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    .line 64
    invoke-virtual {v0, p0}, Lcom/heytap/epona/Request$Builder;->setActionName(Ljava/lang/String;)Lcom/heytap/epona/Request$Builder;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lcom/heytap/epona/Request$Builder;->build()Lcom/heytap/epona/Request;

    move-result-object v0

    .line 66
    .local v0, "request":Lcom/heytap/epona/Request;
    invoke-static {v0}, Lcom/heytap/epona/Epona;->newCall(Lcom/heytap/epona/Request;)Lcom/heytap/epona/internal/RealCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/heytap/epona/internal/RealCall;->execute()Lcom/heytap/epona/Response;

    move-result-object v1

    .line 67
    .local v1, "response":Lcom/heytap/epona/Response;
    invoke-virtual {v1}, Lcom/heytap/epona/Response;->isSuccessful()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 68
    invoke-virtual {v1}, Lcom/heytap/epona/Response;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "result"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    return v2

    .line 70
    .end local v0    # "request":Lcom/heytap/epona/Request;
    .end local v1    # "response":Lcom/heytap/epona/Response;
    :cond_0
    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 71
    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x1a905096

    if-eq v1, v2, :cond_4

    const v2, 0x1f472515

    if-eq v1, v2, :cond_3

    const v2, 0x7c1b39e3

    if-eq v1, v2, :cond_2

    goto :goto_0

    :cond_2
    const-string v1, "WINDOWING_MODE_SPLIT_SCREEN_PRIMARY"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    const-string v1, "WINDOWING_MODE_SPLIT_SCREEN_SECONDARY"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    const-string v1, "WINDOWING_MODE_FULLSCREEN"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    :cond_5
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 82
    goto :goto_1

    .line 79
    :pswitch_0
    sget-object v0, Lcom/heytap/compat/app/WindowConfigurationNative$ReflectInfo;->WINDOWING_MODE_SPLIT_SCREEN_PRIMARY:Lcom/heytap/reflect/RefStaticInt;

    invoke-virtual {v0}, Lcom/heytap/reflect/RefStaticInt;->getWithException()I

    move-result v0

    return v0

    .line 76
    :pswitch_1
    sget-object v0, Lcom/heytap/compat/app/WindowConfigurationNative$ReflectInfo;->WINDOWING_MODE_FULLSCREEN:Lcom/heytap/reflect/RefStaticInt;

    invoke-virtual {v0}, Lcom/heytap/reflect/RefStaticInt;->getWithException()I

    move-result v0

    return v0

    .line 73
    :pswitch_2
    sget-object v0, Lcom/heytap/compat/app/WindowConfigurationNative$ReflectInfo;->WINDOWING_MODE_SPLIT_SCREEN_SECONDARY:Lcom/heytap/reflect/RefStaticInt;

    invoke-virtual {v0}, Lcom/heytap/reflect/RefStaticInt;->getWithException()I

    move-result v0

    return v0

    .line 85
    :cond_6
    const-string v0, "WindowConfigurationNative"

    const-string v1, "not supported before R"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :goto_1
    goto :goto_2

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "WindowConfigurationNative"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_2
    const/high16 v0, -0x80000000

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
