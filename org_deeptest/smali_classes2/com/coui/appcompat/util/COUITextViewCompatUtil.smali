.class public Lcom/coui/appcompat/util/COUITextViewCompatUtil;
.super Ljava/lang/Object;
.source "COUITextViewCompatUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const-class v0, Lcom/coui/appcompat/util/COUITextViewCompatUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coui/appcompat/util/COUITextViewCompatUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getParaSpacing(Landroid/widget/TextView;)F
    .locals 3
    .param p0, "tv"    # Landroid/widget/TextView;

    .line 59
    :try_start_0
    invoke-static {p0}, Lcom/coui/appcompat/util/COUITextViewCompatUtil;->reflectGetParaSpacing(Landroid/widget/TextView;)F

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/coui/appcompat/util/COUITextViewCompatUtil;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 62
    const/4 v1, 0x0

    return v1
.end method

.method private static reflectGetParaSpacing(Landroid/widget/TextView;)F
    .locals 4
    .param p0, "data"    # Landroid/widget/TextView;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 76
    const-string v0, "android.view.OplusBaseView"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 77
    .local v0, "ownerClass":Ljava/lang/Class;
    const-string v1, "getParaSpacing"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 78
    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 79
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 80
    .local v2, "paraSpacing":F
    return v2
.end method

.method private static reflectSetParaSpacing(Landroid/widget/TextView;F)V
    .locals 6
    .param p0, "data"    # Landroid/widget/TextView;
    .param p1, "value"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 67
    const-string v0, "android.view.OplusBaseView"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 68
    .local v0, "ownerClass":Ljava/lang/Class;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    .line 69
    .local v2, "args":[Ljava/lang/Class;
    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 70
    const-string v3, "setParaSpacing"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 71
    .local v3, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 72
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-virtual {v3, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    return-void
.end method

.method public static setParaSpacing(Landroid/widget/TextView;F)Z
    .locals 3
    .param p0, "tv"    # Landroid/widget/TextView;
    .param p1, "paraSpacing"    # F

    .line 43
    :try_start_0
    invoke-static {p0, p1}, Lcom/coui/appcompat/util/COUITextViewCompatUtil;->reflectSetParaSpacing(Landroid/widget/TextView;F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    const/4 v0, 0x1

    return v0

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/coui/appcompat/util/COUITextViewCompatUtil;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 47
    const/4 v1, 0x0

    return v1
.end method
