.class public Lcom/heytap/compat/app/job/JobInfoNative;
.super Ljava/lang/Object;
.source "JobInfoNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/compat/app/job/JobInfoNative$BuilderNative;,
        Lcom/heytap/compat/app/job/JobInfoNative$ReflectInfo;
    }
.end annotation


# static fields
.field public static SCENE_MODE_GAME:I = 0x0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Oem;
    .end annotation
.end field

.field public static SCENE_MODE_VIDEO:I = 0x0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Oem;
    .end annotation
.end field

.field public static SCENE_MODE_VIDEO_CALL:I = 0x0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Oem;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "JobInfoNative"

.field public static TYPE_PROTECT_FORE_FRAME:I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Oem;
    .end annotation
.end field

.field public static TYPE_PROTECT_FORE_NET:I
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
    const/4 v0, 0x1

    sput v0, Lcom/heytap/compat/app/job/JobInfoNative;->TYPE_PROTECT_FORE_NET:I

    .line 26
    const/4 v1, 0x0

    sput v1, Lcom/heytap/compat/app/job/JobInfoNative;->TYPE_PROTECT_FORE_FRAME:I

    .line 30
    sput v0, Lcom/heytap/compat/app/job/JobInfoNative;->SCENE_MODE_VIDEO:I

    .line 34
    const/4 v0, 0x2

    sput v0, Lcom/heytap/compat/app/job/JobInfoNative;->SCENE_MODE_VIDEO_CALL:I

    .line 38
    const/4 v0, 0x4

    sput v0, Lcom/heytap/compat/app/job/JobInfoNative;->SCENE_MODE_GAME:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method
