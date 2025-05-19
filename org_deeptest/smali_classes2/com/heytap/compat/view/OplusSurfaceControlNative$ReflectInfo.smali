.class Lcom/heytap/compat/view/OplusSurfaceControlNative$ReflectInfo;
.super Ljava/lang/Object;
.source "OplusSurfaceControlNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/compat/view/OplusSurfaceControlNative;
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

.field public static screenshot:Lcom/heytap/reflect/RefStaticMethod;
    .annotation runtime Lcom/heytap/reflect/MethodName;
        name = "screenshot"
        params = {
            Landroid/graphics/Rect;,
            I,
            I,
            I,
            I
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heytap/reflect/RefStaticMethod<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field public static screenshotBelowP:Lcom/heytap/reflect/RefStaticMethod;
    .annotation runtime Lcom/heytap/reflect/MethodName;
        name = "screenshot"
        params = {
            Landroid/graphics/Rect;,
            I,
            I,
            I
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heytap/reflect/RefStaticMethod<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    const-class v0, Lcom/heytap/compat/view/OplusSurfaceControlNative$ReflectInfo;

    const-string v1, "com.color.view.ColorSurfaceControl"

    invoke-static {v0, v1}, Lcom/heytap/reflect/RefClass;->load(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/heytap/compat/view/OplusSurfaceControlNative$ReflectInfo;->TYPE:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
