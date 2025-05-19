.class Lcom/heytap/compat/app/SearchManagerNative$ReflectInfo;
.super Ljava/lang/Object;
.source "SearchManagerNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/compat/app/SearchManagerNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReflectInfo"
.end annotation


# static fields
.field private static TYPE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static getSuggestionsWithThreeParams:Lcom/heytap/reflect/RefMethod;
    .annotation runtime Lcom/heytap/reflect/MethodName;
        name = "getSuggestions"
        params = {
            Landroid/app/SearchableInfo;,
            Ljava/lang/String;,
            I
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heytap/reflect/RefMethod<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private static getSuggestionsWithTwoParams:Lcom/heytap/reflect/RefMethod;
    .annotation runtime Lcom/heytap/reflect/MethodName;
        name = "getSuggestions"
        params = {
            Landroid/app/SearchableInfo;,
            Ljava/lang/String;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heytap/reflect/RefMethod<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private static getWebSearchActivity:Lcom/heytap/reflect/RefMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/heytap/reflect/RefMethod<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    const-class v0, Lcom/heytap/compat/app/SearchManagerNative$ReflectInfo;

    const-string v1, "android.app.SearchManager"

    invoke-static {v0, v1}, Lcom/heytap/reflect/RefClass;->load(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/heytap/compat/app/SearchManagerNative$ReflectInfo;->TYPE:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/heytap/reflect/RefMethod;
    .locals 1

    .line 21
    sget-object v0, Lcom/heytap/compat/app/SearchManagerNative$ReflectInfo;->getSuggestionsWithThreeParams:Lcom/heytap/reflect/RefMethod;

    return-object v0
.end method

.method static synthetic access$100()Lcom/heytap/reflect/RefMethod;
    .locals 1

    .line 21
    sget-object v0, Lcom/heytap/compat/app/SearchManagerNative$ReflectInfo;->getSuggestionsWithTwoParams:Lcom/heytap/reflect/RefMethod;

    return-object v0
.end method

.method static synthetic access$200()Lcom/heytap/reflect/RefMethod;
    .locals 1

    .line 21
    sget-object v0, Lcom/heytap/compat/app/SearchManagerNative$ReflectInfo;->getWebSearchActivity:Lcom/heytap/reflect/RefMethod;

    return-object v0
.end method
