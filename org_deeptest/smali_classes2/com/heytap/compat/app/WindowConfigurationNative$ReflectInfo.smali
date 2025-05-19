.class Lcom/heytap/compat/app/WindowConfigurationNative$ReflectInfo;
.super Ljava/lang/Object;
.source "WindowConfigurationNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/compat/app/WindowConfigurationNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReflectInfo"
.end annotation


# static fields
.field public static TYPE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static WINDOWING_MODE_FULLSCREEN:Lcom/heytap/reflect/RefStaticInt;

.field public static WINDOWING_MODE_SPLIT_SCREEN_PRIMARY:Lcom/heytap/reflect/RefStaticInt;

.field public static WINDOWING_MODE_SPLIT_SCREEN_SECONDARY:Lcom/heytap/reflect/RefStaticInt;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    const-class v0, Lcom/heytap/compat/app/WindowConfigurationNative$ReflectInfo;

    const-class v1, Landroid/app/WindowConfiguration;

    invoke-static {v0, v1}, Lcom/heytap/reflect/RefClass;->load(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/heytap/compat/app/WindowConfigurationNative$ReflectInfo;->TYPE:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
