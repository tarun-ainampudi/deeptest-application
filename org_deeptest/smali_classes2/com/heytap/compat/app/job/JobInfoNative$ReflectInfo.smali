.class Lcom/heytap/compat/app/job/JobInfoNative$ReflectInfo;
.super Ljava/lang/Object;
.source "JobInfoNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/compat/app/job/JobInfoNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReflectInfo"
.end annotation


# static fields
.field private static mHasCpuConstraint:Lcom/heytap/reflect/RefBoolean;

.field private static mHasProtectSceneConstraint:Lcom/heytap/reflect/RefBoolean;

.field private static mHasTemperatureConstraint:Lcom/heytap/reflect/RefBoolean;

.field private static mIsOplusJob:Lcom/heytap/reflect/RefBoolean;

.field private static mIsOppoJob:Lcom/heytap/reflect/RefBoolean;

.field private static mOplusExtraStr:Lcom/heytap/reflect/RefObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heytap/reflect/RefObject<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mOppoExtraStr:Lcom/heytap/reflect/RefObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heytap/reflect/RefObject<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mProtectForeType:Lcom/heytap/reflect/RefInt;

.field private static mProtectScene:Lcom/heytap/reflect/RefInt;

.field private static mRequiresBattIdle:Lcom/heytap/reflect/RefBoolean;

.field private static mRequiresProtectFore:Lcom/heytap/reflect/RefBoolean;

.field private static setRequiresBattIdle:Lcom/heytap/reflect/RefMethod;
    .annotation runtime Lcom/heytap/reflect/MethodName;
        name = "setRequiresBattIdle"
        params = {
            Z,
            I
        }
    .end annotation

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

    .line 45
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    const-class v0, Lcom/heytap/compat/app/job/JobInfoNative$ReflectInfo;

    const-class v1, Landroid/app/job/OplusBaseJobInfo$BaseBuilder;

    invoke-static {v0, v1}, Lcom/heytap/reflect/RefClass;->load(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    goto :goto_0

    .line 47
    :cond_0
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    const-class v0, Lcom/heytap/compat/app/job/JobInfoNative$ReflectInfo;

    const-string v1, "android.app.job.OppoBaseJobInfo$BaseBuilder"

    invoke-static {v0, v1}, Lcom/heytap/reflect/RefClass;->load(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    goto :goto_0

    .line 49
    :cond_1
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isN_MR1()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 50
    const-class v0, Lcom/heytap/compat/app/job/JobInfoNative$ReflectInfo;

    const-class v1, Landroid/app/job/JobInfo$Builder;

    invoke-static {v0, v1}, Lcom/heytap/reflect/RefClass;->load(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    .line 52
    :cond_2
    :goto_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/heytap/reflect/RefMethod;
    .locals 1

    .line 43
    sget-object v0, Lcom/heytap/compat/app/job/JobInfoNative$ReflectInfo;->setRequiresBattIdle:Lcom/heytap/reflect/RefMethod;

    return-object v0
.end method

.method static synthetic access$100()Lcom/heytap/reflect/RefBoolean;
    .locals 1

    .line 43
    sget-object v0, Lcom/heytap/compat/app/job/JobInfoNative$ReflectInfo;->mRequiresBattIdle:Lcom/heytap/reflect/RefBoolean;

    return-object v0
.end method

.method static synthetic access$1000()Lcom/heytap/reflect/RefBoolean;
    .locals 1

    .line 43
    sget-object v0, Lcom/heytap/compat/app/job/JobInfoNative$ReflectInfo;->mHasProtectSceneConstraint:Lcom/heytap/reflect/RefBoolean;

    return-object v0
.end method

.method static synthetic access$1100()Lcom/heytap/reflect/RefInt;
    .locals 1

    .line 43
    sget-object v0, Lcom/heytap/compat/app/job/JobInfoNative$ReflectInfo;->mProtectScene:Lcom/heytap/reflect/RefInt;

    return-object v0
.end method

.method static synthetic access$200()Lcom/heytap/reflect/RefBoolean;
    .locals 1

    .line 43
    sget-object v0, Lcom/heytap/compat/app/job/JobInfoNative$ReflectInfo;->mIsOplusJob:Lcom/heytap/reflect/RefBoolean;

    return-object v0
.end method

.method static synthetic access$300()Lcom/heytap/reflect/RefBoolean;
    .locals 1

    .line 43
    sget-object v0, Lcom/heytap/compat/app/job/JobInfoNative$ReflectInfo;->mIsOppoJob:Lcom/heytap/reflect/RefBoolean;

    return-object v0
.end method

.method static synthetic access$400()Lcom/heytap/reflect/RefBoolean;
    .locals 1

    .line 43
    sget-object v0, Lcom/heytap/compat/app/job/JobInfoNative$ReflectInfo;->mRequiresProtectFore:Lcom/heytap/reflect/RefBoolean;

    return-object v0
.end method

.method static synthetic access$500()Lcom/heytap/reflect/RefInt;
    .locals 1

    .line 43
    sget-object v0, Lcom/heytap/compat/app/job/JobInfoNative$ReflectInfo;->mProtectForeType:Lcom/heytap/reflect/RefInt;

    return-object v0
.end method

.method static synthetic access$600()Lcom/heytap/reflect/RefBoolean;
    .locals 1

    .line 43
    sget-object v0, Lcom/heytap/compat/app/job/JobInfoNative$ReflectInfo;->mHasCpuConstraint:Lcom/heytap/reflect/RefBoolean;

    return-object v0
.end method

.method static synthetic access$700()Lcom/heytap/reflect/RefObject;
    .locals 1

    .line 43
    sget-object v0, Lcom/heytap/compat/app/job/JobInfoNative$ReflectInfo;->mOplusExtraStr:Lcom/heytap/reflect/RefObject;

    return-object v0
.end method

.method static synthetic access$800()Lcom/heytap/reflect/RefObject;
    .locals 1

    .line 43
    sget-object v0, Lcom/heytap/compat/app/job/JobInfoNative$ReflectInfo;->mOppoExtraStr:Lcom/heytap/reflect/RefObject;

    return-object v0
.end method

.method static synthetic access$900()Lcom/heytap/reflect/RefBoolean;
    .locals 1

    .line 43
    sget-object v0, Lcom/heytap/compat/app/job/JobInfoNative$ReflectInfo;->mHasTemperatureConstraint:Lcom/heytap/reflect/RefBoolean;

    return-object v0
.end method
