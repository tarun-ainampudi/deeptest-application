.class public Lcom/coui/appcompat/util/AbsListViewNative;
.super Ljava/lang/Object;
.source "AbsListViewNative.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AbsListViewNative"

.field public static final TOUCH_MODE_DONE_WAITING:I = 0x2

.field public static final TOUCH_MODE_DOWN:I = 0x0

.field public static final TOUCH_MODE_FLING:I = 0x4

.field public static final TOUCH_MODE_OVERFLING:I = 0x6

.field public static final TOUCH_MODE_OVERSCROLL:I = 0x5

.field public static final TOUCH_MODE_REST:I = -0x1

.field public static final TOUCH_MODE_SCROLL:I = 0x3

.field public static final TOUCH_MODE_TAP:I = 0x1

.field private static final USE_WRAPPER:Z

.field private static final VIEW_WRAPPER_PATH:Ljava/lang/String; = "com.color.inner.widget.AbsListViewWrapper"

.field private static final VIEW_WRAPPER_PATH_NEW:Ljava/lang/String; = "com.oplus.inner.widget.AbsListViewWrapper"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_0

    const-string v0, "Q"

    sget-object v1, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    .line 37
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
    sput-boolean v0, Lcom/coui/appcompat/util/AbsListViewNative;->USE_WRAPPER:Z

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTouchMode(Landroid/widget/AbsListView;)I
    .locals 9
    .param p0, "absListView"    # Landroid/widget/AbsListView;

    .line 86
    const/4 v0, -0x1

    .line 88
    .local v0, "result":I
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    sget-boolean v4, Lcom/coui/appcompat/util/AbsListViewNative;->USE_WRAPPER:Z

    if-eqz v4, :cond_0

    .line 89
    const-string v4, "com.color.inner.widget.AbsListViewWrapper"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "getTouchMode"

    new-array v6, v3, [Ljava/lang/Class;

    const-class v7, Landroid/widget/AbsListView;

    aput-object v7, v6, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 90
    .local v4, "method":Ljava/lang/reflect/Method;
    new-array v5, v3, [Ljava/lang/Object;

    aput-object p0, v5, v2

    invoke-virtual {v4, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move v0, v5

    .line 91
    .end local v4    # "method":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 92
    :cond_0
    const-class v4, Landroid/widget/AbsListView;

    const-string v5, "mTouchMode"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 93
    .local v4, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v4, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 94
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v5

    .line 109
    .end local v4    # "field":Ljava/lang/reflect/Field;
    :goto_0
    goto :goto_2

    .line 96
    :catch_0
    move-exception v4

    .line 98
    .local v4, "e":Ljava/lang/Throwable;
    :try_start_1
    sget-boolean v5, Lcom/coui/appcompat/util/AbsListViewNative;->USE_WRAPPER:Z

    if-eqz v5, :cond_1

    .line 99
    const-string v5, "com.oplus.inner.widget.AbsListViewWrapper"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-string v6, "getTouchMode"

    new-array v7, v3, [Ljava/lang/Class;

    const-class v8, Landroid/widget/AbsListView;

    aput-object v8, v7, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 100
    .local v5, "method":Ljava/lang/reflect/Method;
    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v2

    invoke-virtual {v5, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v0, v1

    .line 101
    .end local v5    # "method":Ljava/lang/reflect/Method;
    goto :goto_1

    .line 102
    :cond_1
    const-class v1, Landroid/widget/AbsListView;

    const-string v2, "mTouchMode"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 103
    .local v1, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 104
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v2

    .line 108
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :goto_1
    goto :goto_2

    .line 106
    :catch_1
    move-exception v1

    .line 107
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "AbsListViewNative"

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    .end local v1    # "t":Ljava/lang/Throwable;
    .end local v4    # "e":Ljava/lang/Throwable;
    :goto_2
    return v0
.end method

.method public static setTouchMode(Landroid/widget/AbsListView;I)V
    .locals 9
    .param p0, "absListView"    # Landroid/widget/AbsListView;
    .param p1, "mode"    # I

    .line 121
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    :try_start_0
    sget-boolean v4, Lcom/coui/appcompat/util/AbsListViewNative;->USE_WRAPPER:Z

    if-eqz v4, :cond_0

    .line 122
    const-string v4, "com.color.inner.widget.AbsListViewWrapper"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "setTouchMode"

    new-array v6, v2, [Ljava/lang/Class;

    const-class v7, Landroid/widget/AbsListView;

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 123
    .local v4, "method":Ljava/lang/reflect/Method;
    new-array v5, v2, [Ljava/lang/Object;

    aput-object p0, v5, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-virtual {v4, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .end local v4    # "method":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 125
    :cond_0
    const-class v4, Landroid/widget/AbsListView;

    const-string v5, "mTouchMode"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 126
    .local v4, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v4, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 127
    invoke-virtual {v4, p0, p1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    .end local v4    # "field":Ljava/lang/reflect/Field;
    :goto_0
    goto :goto_2

    .line 129
    :catch_0
    move-exception v4

    .line 131
    .local v4, "e":Ljava/lang/Throwable;
    :try_start_1
    sget-boolean v5, Lcom/coui/appcompat/util/AbsListViewNative;->USE_WRAPPER:Z

    if-eqz v5, :cond_1

    .line 132
    const-string v5, "com.oplus.inner.widget.AbsListViewWrapper"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-string v6, "setTouchMode"

    new-array v7, v2, [Ljava/lang/Class;

    const-class v8, Landroid/widget/AbsListView;

    aput-object v8, v7, v1

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v3

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 133
    .local v5, "method":Ljava/lang/reflect/Method;
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-virtual {v5, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .end local v5    # "method":Ljava/lang/reflect/Method;
    goto :goto_1

    .line 135
    :cond_1
    const-class v0, Landroid/widget/AbsListView;

    const-string v1, "mTouchMode"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 136
    .local v0, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 137
    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 141
    .end local v0    # "field":Ljava/lang/reflect/Field;
    :goto_1
    goto :goto_2

    .line 139
    :catch_1
    move-exception v0

    .line 140
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "AbsListViewNative"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    .end local v0    # "t":Ljava/lang/Throwable;
    .end local v4    # "e":Ljava/lang/Throwable;
    :goto_2
    return-void
.end method
