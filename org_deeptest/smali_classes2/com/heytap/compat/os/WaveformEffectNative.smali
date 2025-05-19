.class public Lcom/heytap/compat/os/WaveformEffectNative;
.super Ljava/lang/Object;
.source "WaveformEffectNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/compat/os/WaveformEffectNative$RefInfo;
    }
.end annotation


# static fields
.field public static EFFECT_ALARM_NOTIFICATION:I = 0x0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Oem;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "WaveformEffectNative"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ne v0, v1, :cond_0

    .line 26
    invoke-static {}, Lcom/heytap/compat/os/WaveformEffectNative$RefInfo;->access$000()Lcom/heytap/reflect/RefStaticInt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/heytap/reflect/RefStaticInt;->get()I

    move-result v0

    sput v0, Lcom/heytap/compat/os/WaveformEffectNative;->EFFECT_ALARM_NOTIFICATION:I

    goto :goto_0

    .line 28
    :cond_0
    const-string v0, "WaveformEffectNative"

    const-string v1, "only support before Q"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
