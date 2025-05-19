.class public Lcom/coui/appcompat/util/ViewNative;
.super Ljava/lang/Object;
.source "ViewNative.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ViewNative"

.field private static final USE_WRAPPER:Z

.field private static final VIEW_WRAPPER_PATH:Ljava/lang/String; = "com.color.inner.view.ViewWrapper"

.field private static final VIEW_WRAPPER_PATH_NEW:Ljava/lang/String; = "com.oplus.inner.view.ViewWrapper"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_0

    const-string v0, "Q"

    sget-object v1, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/coui/appcompat/util/ViewNative;->USE_WRAPPER:Z

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setScrollX(Landroid/view/View;I)V
    .locals 9
    .param p0, "view"    # Landroid/view/View;
    .param p1, "scrollX"    # I

    .line 80
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    :try_start_0
    sget-boolean v4, Lcom/coui/appcompat/util/ViewNative;->USE_WRAPPER:Z

    if-eqz v4, :cond_0

    .line 81
    const-string v4, "com.color.inner.view.ViewWrapper"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "setScrollXForColor"

    new-array v6, v2, [Ljava/lang/Class;

    const-class v7, Landroid/view/View;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 82
    .local v4, "method":Ljava/lang/reflect/Method;
    new-array v5, v2, [Ljava/lang/Object;

    aput-object p0, v5, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-virtual {v4, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .end local v4    # "method":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 84
    :cond_0
    const-class v4, Landroid/view/View;

    const-string v5, "mScrollX"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 85
    .local v4, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v4, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 86
    invoke-virtual {v4, p0, p1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .end local v4    # "field":Ljava/lang/reflect/Field;
    :goto_0
    goto :goto_2

    .line 88
    :catch_0
    move-exception v4

    .line 90
    .local v4, "e":Ljava/lang/Throwable;
    :try_start_1
    sget-boolean v5, Lcom/coui/appcompat/util/ViewNative;->USE_WRAPPER:Z

    if-eqz v5, :cond_1

    .line 91
    const-string v5, "com.oplus.inner.view.ViewWrapper"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-string v6, "setScrollXForColor"

    new-array v7, v2, [Ljava/lang/Class;

    const-class v8, Landroid/view/View;

    aput-object v8, v7, v1

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v3

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 92
    .local v5, "method":Ljava/lang/reflect/Method;
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-virtual {v5, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .end local v5    # "method":Ljava/lang/reflect/Method;
    goto :goto_1

    .line 94
    :cond_1
    const-class v0, Landroid/view/View;

    const-string v1, "mScrollX"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 95
    .local v0, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 96
    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 100
    .end local v0    # "field":Ljava/lang/reflect/Field;
    :goto_1
    goto :goto_2

    .line 98
    :catch_1
    move-exception v0

    .line 99
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "ViewNative"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    .end local v0    # "t":Ljava/lang/Throwable;
    .end local v4    # "e":Ljava/lang/Throwable;
    :goto_2
    return-void
.end method

.method public static setScrollY(Landroid/view/View;I)V
    .locals 9
    .param p0, "view"    # Landroid/view/View;
    .param p1, "scrollY"    # I

    .line 48
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    :try_start_0
    sget-boolean v4, Lcom/coui/appcompat/util/ViewNative;->USE_WRAPPER:Z

    if-eqz v4, :cond_0

    .line 49
    const-string v4, "com.color.inner.view.ViewWrapper"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "setScrollYForColor"

    new-array v6, v2, [Ljava/lang/Class;

    const-class v7, Landroid/view/View;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 50
    .local v4, "method":Ljava/lang/reflect/Method;
    new-array v5, v2, [Ljava/lang/Object;

    aput-object p0, v5, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-virtual {v4, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .end local v4    # "method":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 52
    :cond_0
    const-class v4, Landroid/view/View;

    const-string v5, "mScrollY"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 53
    .local v4, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v4, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 54
    invoke-virtual {v4, p0, p1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .end local v4    # "field":Ljava/lang/reflect/Field;
    :goto_0
    goto :goto_2

    .line 56
    :catch_0
    move-exception v4

    .line 58
    .local v4, "e":Ljava/lang/Throwable;
    :try_start_1
    sget-boolean v5, Lcom/coui/appcompat/util/ViewNative;->USE_WRAPPER:Z

    if-eqz v5, :cond_1

    .line 59
    const-string v5, "com.oplus.inner.view.ViewWrapper"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-string v6, "setScrollYForColor"

    new-array v7, v2, [Ljava/lang/Class;

    const-class v8, Landroid/view/View;

    aput-object v8, v7, v1

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v3

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 60
    .local v5, "method":Ljava/lang/reflect/Method;
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-virtual {v5, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .end local v5    # "method":Ljava/lang/reflect/Method;
    goto :goto_1

    .line 62
    :cond_1
    const-class v0, Landroid/view/View;

    const-string v1, "mScrollY"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 63
    .local v0, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 64
    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 68
    .end local v0    # "field":Ljava/lang/reflect/Field;
    :goto_1
    goto :goto_2

    .line 66
    :catch_1
    move-exception v0

    .line 67
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "ViewNative"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .end local v0    # "t":Ljava/lang/Throwable;
    .end local v4    # "e":Ljava/lang/Throwable;
    :goto_2
    return-void
.end method
