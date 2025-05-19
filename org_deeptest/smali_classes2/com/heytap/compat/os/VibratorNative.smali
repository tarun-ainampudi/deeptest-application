.class public Lcom/heytap/compat/os/VibratorNative;
.super Ljava/lang/Object;
.source "VibratorNative.java"


# static fields
.field public static LONG_MIDDLE_ONESHOT_TIME:J = 0x0L
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Oem;
    .end annotation
.end field

.field public static LONG_STRONG_ONESHOT_TIME:J = 0x0L
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Oem;
    .end annotation
.end field

.field public static MIDDLE_AMPLITUDE:I = 0x0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Oem;
    .end annotation
.end field

.field public static RAPID_MIDDLE_ONESHOT_TIME:J = 0x0L
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Oem;
    .end annotation
.end field

.field public static RAPID_MIDDLE_WAVEFORM_AMPLITUDE:[I = null
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Oem;
    .end annotation
.end field

.field public static RAPID_MIDDLE_WAVEFORM_TIME:[J = null
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Oem;
    .end annotation
.end field

.field public static RAPID_STRONG_WAVEFORM_AMPLITUDE:[I = null
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Oem;
    .end annotation
.end field

.field public static RAPID_STRONG_WAVEFORM_TIME:[J = null
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Oem;
    .end annotation
.end field

.field public static RAPID_WEAK_ONESHOT_TIME:J = 0x0L
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Oem;
    .end annotation
.end field

.field public static STRONG_AMPLITUDE:I = 0x0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Oem;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "VibratorNative"

.field public static WEAK_AMPLITUDE:I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Oem;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    const/16 v0, 0x64

    sput v0, Lcom/heytap/compat/os/VibratorNative;->WEAK_AMPLITUDE:I

    .line 26
    const/16 v0, 0xaf

    sput v0, Lcom/heytap/compat/os/VibratorNative;->MIDDLE_AMPLITUDE:I

    .line 30
    const/16 v0, 0xfa

    sput v0, Lcom/heytap/compat/os/VibratorNative;->STRONG_AMPLITUDE:I

    .line 40
    const-wide/16 v0, 0x19

    sput-wide v0, Lcom/heytap/compat/os/VibratorNative;->RAPID_WEAK_ONESHOT_TIME:J

    .line 44
    const-wide/16 v0, 0x32

    sput-wide v0, Lcom/heytap/compat/os/VibratorNative;->RAPID_MIDDLE_ONESHOT_TIME:J

    .line 48
    const-wide/16 v0, 0x96

    sput-wide v0, Lcom/heytap/compat/os/VibratorNative;->LONG_MIDDLE_ONESHOT_TIME:J

    .line 52
    const-wide/16 v0, 0x190

    sput-wide v0, Lcom/heytap/compat/os/VibratorNative;->LONG_STRONG_ONESHOT_TIME:J

    .line 62
    sget-object v0, Lcom/color/inner/os/VibratorWrapper;->RAPID_MIDDLE_WAVEFORM_TIME:[J

    sput-object v0, Lcom/heytap/compat/os/VibratorNative;->RAPID_MIDDLE_WAVEFORM_TIME:[J

    .line 66
    sget-object v0, Lcom/color/inner/os/VibratorWrapper;->RAPID_MIDDLE_WAVEFORM_AMPLITUDE:[I

    sput-object v0, Lcom/heytap/compat/os/VibratorNative;->RAPID_MIDDLE_WAVEFORM_AMPLITUDE:[I

    .line 70
    sget-object v0, Lcom/color/inner/os/VibratorWrapper;->RAPID_STRONG_WAVEFORM_TIME:[J

    sput-object v0, Lcom/heytap/compat/os/VibratorNative;->RAPID_STRONG_WAVEFORM_TIME:[J

    .line 74
    sget-object v0, Lcom/color/inner/os/VibratorWrapper;->RAPID_STRONG_WAVEFORM_AMPLITUDE:[I

    sput-object v0, Lcom/heytap/compat/os/VibratorNative;->RAPID_STRONG_WAVEFORM_AMPLITUDE:[I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    return-void
.end method

.method public static linerMotorVibrate(Landroid/os/Vibrator;Landroid/os/VibrationEffect;)V
    .locals 2
    .param p0, "vibrator"    # Landroid/os/Vibrator;
    .param p1, "vibe"    # Landroid/os/VibrationEffect;
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
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-nez v0, :cond_1

    .line 89
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/color/inner/os/VibratorWrapper;->linerMotorVibrate(Landroid/os/Vibrator;Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V

    .line 94
    return-void

    .line 92
    :cond_0
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    const-string v1, "not supported before Q"

    invoke-direct {v0, v1}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_1
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    const-string v1, "not supported in R because of not exist"

    invoke-direct {v0, v1}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static linerMotorVibrate(Landroid/os/Vibrator;Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V
    .locals 2
    .param p0, "vibrator"    # Landroid/os/Vibrator;
    .param p1, "vibe"    # Landroid/os/VibrationEffect;
    .param p2, "attributes"    # Landroid/media/AudioAttributes;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 99
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-nez v0, :cond_1

    .line 101
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    invoke-static {p0, p1, p2}, Lcom/color/inner/os/VibratorWrapper;->linerMotorVibrate(Landroid/os/Vibrator;Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V

    .line 106
    return-void

    .line 104
    :cond_0
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    const-string v1, "not supported before Q"

    invoke-direct {v0, v1}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_1
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    const-string v1, "not supported in R because of not exist"

    invoke-direct {v0, v1}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
