.class public Lcom/heytap/compat/telephony/PhoneNative;
.super Ljava/lang/Object;
.source "PhoneNative.java"


# static fields
.field public static PREFERRED_NT_MODE:I = 0x0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Grey;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "PhoneNative"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    sget v0, Lcom/color/inner/telephony/PhoneWrapper;->PREFERRED_NT_MODE:I

    sput v0, Lcom/heytap/compat/telephony/PhoneNative;->PREFERRED_NT_MODE:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method
