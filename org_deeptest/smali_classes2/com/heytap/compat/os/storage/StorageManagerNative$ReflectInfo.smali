.class Lcom/heytap/compat/os/storage/StorageManagerNative$ReflectInfo;
.super Ljava/lang/Object;
.source "StorageManagerNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/compat/os/storage/StorageManagerNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReflectInfo"
.end annotation


# static fields
.field private static DiskInfoTYPE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static TYPE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static VolumeInfoTYPE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static getDisk:Lcom/heytap/reflect/RefMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heytap/reflect/RefMethod<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static getVolumeList:Lcom/heytap/reflect/RefMethod;
    .annotation runtime Lcom/heytap/reflect/MethodName;
        name = "getVolumeList"
        params = {
            I,
            I
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heytap/reflect/RefMethod<",
            "[",
            "Landroid/os/storage/StorageVolume;",
            ">;"
        }
    .end annotation
.end field

.field private static getVolumePaths:Lcom/heytap/reflect/RefMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heytap/reflect/RefMethod<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static getVolumeState:Lcom/heytap/reflect/RefMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heytap/reflect/RefMethod<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static getVolumes:Lcom/heytap/reflect/RefMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heytap/reflect/RefMethod<",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private static isFileEncryptedNativeOnly:Lcom/heytap/reflect/RefMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heytap/reflect/RefMethod<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static isSd:Lcom/heytap/reflect/RefMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heytap/reflect/RefMethod<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static registerListener:Lcom/heytap/reflect/RefMethod;
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

    .line 36
    const-class v0, Lcom/heytap/compat/os/storage/StorageManagerNative$ReflectInfo;

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-static {v0, v1}, Lcom/heytap/reflect/RefClass;->load(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/heytap/compat/os/storage/StorageManagerNative$ReflectInfo;->TYPE:Ljava/lang/Class;

    .line 44
    const-class v0, Lcom/heytap/compat/os/storage/StorageManagerNative$ReflectInfo;

    const-class v1, Landroid/os/storage/VolumeInfo;

    invoke-static {v0, v1}, Lcom/heytap/reflect/RefClass;->load(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/heytap/compat/os/storage/StorageManagerNative$ReflectInfo;->VolumeInfoTYPE:Ljava/lang/Class;

    .line 46
    const-class v0, Lcom/heytap/compat/os/storage/StorageManagerNative$ReflectInfo;

    const-class v1, Landroid/os/storage/DiskInfo;

    invoke-static {v0, v1}, Lcom/heytap/reflect/RefClass;->load(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/heytap/compat/os/storage/StorageManagerNative$ReflectInfo;->DiskInfoTYPE:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/heytap/reflect/RefMethod;
    .locals 1

    .line 35
    sget-object v0, Lcom/heytap/compat/os/storage/StorageManagerNative$ReflectInfo;->getVolumes:Lcom/heytap/reflect/RefMethod;

    return-object v0
.end method

.method static synthetic access$100()Lcom/heytap/reflect/RefMethod;
    .locals 1

    .line 35
    sget-object v0, Lcom/heytap/compat/os/storage/StorageManagerNative$ReflectInfo;->getDisk:Lcom/heytap/reflect/RefMethod;

    return-object v0
.end method

.method static synthetic access$200()Lcom/heytap/reflect/RefMethod;
    .locals 1

    .line 35
    sget-object v0, Lcom/heytap/compat/os/storage/StorageManagerNative$ReflectInfo;->isSd:Lcom/heytap/reflect/RefMethod;

    return-object v0
.end method

.method static synthetic access$300()Lcom/heytap/reflect/RefMethod;
    .locals 1

    .line 35
    sget-object v0, Lcom/heytap/compat/os/storage/StorageManagerNative$ReflectInfo;->getVolumeList:Lcom/heytap/reflect/RefMethod;

    return-object v0
.end method

.method static synthetic access$400()Lcom/heytap/reflect/RefMethod;
    .locals 1

    .line 35
    sget-object v0, Lcom/heytap/compat/os/storage/StorageManagerNative$ReflectInfo;->getVolumeState:Lcom/heytap/reflect/RefMethod;

    return-object v0
.end method

.method static synthetic access$500()Lcom/heytap/reflect/RefMethod;
    .locals 1

    .line 35
    sget-object v0, Lcom/heytap/compat/os/storage/StorageManagerNative$ReflectInfo;->isFileEncryptedNativeOnly:Lcom/heytap/reflect/RefMethod;

    return-object v0
.end method

.method static synthetic access$600()Lcom/heytap/reflect/RefMethod;
    .locals 1

    .line 35
    sget-object v0, Lcom/heytap/compat/os/storage/StorageManagerNative$ReflectInfo;->getVolumePaths:Lcom/heytap/reflect/RefMethod;

    return-object v0
.end method
