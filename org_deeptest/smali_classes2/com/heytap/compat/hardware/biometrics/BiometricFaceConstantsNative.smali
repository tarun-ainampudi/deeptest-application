.class public Lcom/heytap/compat/hardware/biometrics/BiometricFaceConstantsNative;
.super Ljava/lang/Object;
.source "BiometricFaceConstantsNative.java"


# static fields
.field public static FACE_AUTHENTICATE_BY_USER:I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Oem;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    const/4 v0, 0x1

    sput v0, Lcom/heytap/compat/hardware/biometrics/BiometricFaceConstantsNative;->FACE_AUTHENTICATE_BY_USER:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method
