.class Lcom/heytap/compat/app/ActivityManagerNative$ReflectInfo;
.super Ljava/lang/Object;
.source "ActivityManagerNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/compat/app/ActivityManagerNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReflectInfo"
.end annotation


# static fields
.field public static clearApplicationUserData:Lcom/heytap/reflect/RefMethod;
    .annotation runtime Lcom/heytap/reflect/MethodName;
        params = {
            Ljava/lang/String;,
            Landroid/content/pm/IPackageDataObserver;,
            I
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heytap/reflect/RefMethod<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static getConfiguration:Lcom/heytap/reflect/RefMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heytap/reflect/RefMethod<",
            "Landroid/content/res/Configuration;",
            ">;"
        }
    .end annotation
.end field

.field public static getRunningAppProcesses:Lcom/heytap/reflect/RefMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heytap/reflect/RefMethod<",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field public static getService:Lcom/heytap/reflect/RefMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heytap/reflect/RefMethod<",
            "Landroid/app/IActivityManager;",
            ">;"
        }
    .end annotation
.end field

.field public static registerProcessObserver:Lcom/heytap/reflect/RefMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heytap/reflect/RefMethod<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field public static sClassActivityManager:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static sClassIActivityManager:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static switchUser:Lcom/heytap/reflect/RefMethod;
    .annotation runtime Lcom/heytap/reflect/MethodName;
        name = "switchUser"
        params = {
            I
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heytap/reflect/RefMethod<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static unregisterProcessObserver:Lcom/heytap/reflect/RefMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heytap/reflect/RefMethod<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 44
    const-class v0, Lcom/heytap/compat/app/ActivityManagerNative$ReflectInfo;

    const-class v1, Landroid/app/IActivityManager;

    invoke-static {v0, v1}, Lcom/heytap/reflect/RefClass;->load(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/heytap/compat/app/ActivityManagerNative$ReflectInfo;->sClassIActivityManager:Ljava/lang/Class;

    .line 45
    const-class v0, Lcom/heytap/compat/app/ActivityManagerNative$ReflectInfo;

    const-class v1, Landroid/app/ActivityManager;

    invoke-static {v0, v1}, Lcom/heytap/reflect/RefClass;->load(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/heytap/compat/app/ActivityManagerNative$ReflectInfo;->sClassActivityManager:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
