.class public Lcom/coui/appcompat/util/COUIThemeOverlay;
.super Ljava/lang/Object;
.source "COUIThemeOverlay.java"


# static fields
.field private static final COLOR_MATERIAL_ENABLE:Ljava/lang/String; = "color_material_enable"

.field private static final COUI_CUSTOM_FALG:I = 0x20000

.field private static final COUI_ONLINE_FALG:I = 0x100000

.field private static final COUI_SELECT_FALG:I = 0xffff

.field private static final COUI_SINGLE_FALG:I = 0x10000

.field private static final COUI_TYPE_FALG:I = 0x30000

.field private static final TAG:Ljava/lang/String; = "COUIThemeOverlay"

.field private static final THEME:Ljava/lang/String; = "theme"

.field private static final THEME_VERSION:Ljava/lang/String; = "theme_version_metadata"

.field private static final WRAPPER_CLASS:Ljava/lang/String; = "com.color.inner.content.res.ConfigurationWrapper"

.field private static final WRAPPER_CLASS_NEW:Ljava/lang/String; = "com.oplus.inner.content.res.ConfigurationWrapper"

.field private static volatile sInstance:Lcom/coui/appcompat/util/COUIThemeOverlay;


# instance fields
.field private mMetaCaches:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private themeOverlays:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const/4 v0, 0x0

    sput-object v0, Lcom/coui/appcompat/util/COUIThemeOverlay;->sInstance:Lcom/coui/appcompat/util/COUIThemeOverlay;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/util/COUIThemeOverlay;->themeOverlays:Landroid/util/SparseIntArray;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/util/COUIThemeOverlay;->mMetaCaches:Ljava/util/HashMap;

    .line 54
    return-void
.end method

.method public static getInstance()Lcom/coui/appcompat/util/COUIThemeOverlay;
    .locals 2

    .line 43
    sget-object v0, Lcom/coui/appcompat/util/COUIThemeOverlay;->sInstance:Lcom/coui/appcompat/util/COUIThemeOverlay;

    if-nez v0, :cond_1

    .line 44
    const-class v0, Lcom/coui/appcompat/util/COUIThemeOverlay;

    monitor-enter v0

    .line 45
    :try_start_0
    sget-object v1, Lcom/coui/appcompat/util/COUIThemeOverlay;->sInstance:Lcom/coui/appcompat/util/COUIThemeOverlay;

    if-nez v1, :cond_0

    .line 46
    new-instance v1, Lcom/coui/appcompat/util/COUIThemeOverlay;

    invoke-direct {v1}, Lcom/coui/appcompat/util/COUIThemeOverlay;-><init>()V

    sput-object v1, Lcom/coui/appcompat/util/COUIThemeOverlay;->sInstance:Lcom/coui/appcompat/util/COUIThemeOverlay;

    .line 48
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 50
    :cond_1
    :goto_0
    sget-object v0, Lcom/coui/appcompat/util/COUIThemeOverlay;->sInstance:Lcom/coui/appcompat/util/COUIThemeOverlay;

    return-object v0
.end method

.method private isCOUIEnable(Landroid/content/Context;)Z
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .line 171
    const/4 v0, 0x0

    .line 172
    .local v0, "themeEnable":Z
    iget-object v1, p0, Lcom/coui/appcompat/util/COUIThemeOverlay;->mMetaCaches:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 173
    .local v1, "weakReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/lang/Boolean;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 174
    .local v2, "meta":Ljava/lang/Boolean;
    :goto_0
    if-eqz v2, :cond_1

    .line 175
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_2

    .line 178
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 179
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 180
    .local v3, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v3, :cond_2

    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "color_material_enable"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    move v0, v4

    .line 181
    iget-object v4, p0, Lcom/coui/appcompat/util/COUIThemeOverlay;->mMetaCaches:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/ref/WeakReference;

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, v0}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-direct {v6, v7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    .end local v3    # "info":Landroid/content/pm/ApplicationInfo;
    goto :goto_2

    .line 182
    :catch_0
    move-exception v3

    .line 183
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "COUIThemeOverlay"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isCOUIEnable e: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_2
    return v0
.end method

.method private isRejectTheme(Landroid/content/Context;)Z
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .line 190
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 191
    .local v0, "configuration":Landroid/content/res/Configuration;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 192
    return v1

    .line 194
    :cond_0
    const-wide/16 v2, 0x0

    .line 196
    .local v2, "themeFlag":J
    const/4 v4, 0x0

    const/4 v5, 0x1

    :try_start_0
    const-string v6, "com.color.inner.content.res.ConfigurationWrapper"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 197
    .local v6, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v6}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v7

    .line 198
    .local v7, "wrapper":Ljava/lang/Object;
    if-eqz v7, :cond_1

    .line 199
    const-string v8, "getThemeChangedFlags"

    new-array v9, v5, [Ljava/lang/Class;

    const-class v10, Landroid/content/res/Configuration;

    aput-object v10, v9, v1

    invoke-virtual {v6, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 200
    .local v8, "method":Ljava/lang/reflect/Method;
    new-array v9, v5, [Ljava/lang/Object;

    aput-object v0, v9, v1

    invoke-virtual {v8, v4, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v2, v9

    .line 215
    .end local v6    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "wrapper":Ljava/lang/Object;
    .end local v8    # "method":Ljava/lang/reflect/Method;
    :cond_1
    :goto_0
    goto :goto_1

    .line 213
    :catch_0
    move-exception v4

    .line 214
    .local v4, "e":Ljava/lang/Exception;
    const-string v6, "COUIThemeOverlay"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isRejectTheme e: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 202
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v6

    .line 204
    .local v6, "e":Ljava/lang/ClassNotFoundException;
    :try_start_1
    const-string v7, "com.oplus.inner.content.res.ConfigurationWrapper"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 205
    .local v7, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v7}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v8

    .line 206
    .local v8, "wrapper":Ljava/lang/Object;
    if-eqz v8, :cond_2

    .line 207
    const-string v9, "getThemeChangedFlags"

    new-array v10, v5, [Ljava/lang/Class;

    const-class v11, Landroid/content/res/Configuration;

    aput-object v11, v10, v1

    invoke-virtual {v7, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 208
    .local v9, "method":Ljava/lang/reflect/Method;
    new-array v10, v5, [Ljava/lang/Object;

    aput-object v0, v10, v1

    invoke-virtual {v9, v4, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-wide v2, v10

    .line 212
    .end local v7    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "wrapper":Ljava/lang/Object;
    .end local v9    # "method":Ljava/lang/reflect/Method;
    :cond_2
    goto :goto_0

    .line 210
    :catch_2
    move-exception v4

    .line 211
    .local v4, "ex":Ljava/lang/Exception;
    const-string v7, "COUIThemeOverlay"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isRejectTheme cls ex: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 216
    .end local v4    # "ex":Ljava/lang/Exception;
    .end local v6    # "e":Ljava/lang/ClassNotFoundException;
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "theme"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 217
    .local v4, "path":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 218
    .local v6, "file":Ljava/io/File;
    const-wide/16 v7, 0x1

    and-long v9, v2, v7

    cmp-long v7, v9, v7

    if-nez v7, :cond_3

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_3

    iget v7, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v7, v7, 0x30

    const/16 v8, 0x20

    if-eq v7, v8, :cond_3

    move v1, v5

    nop

    :cond_3
    return v1
.end method

.method private resolveThemeStyle(Landroid/content/Context;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .line 90
    if-nez p1, :cond_0

    .line 91
    return-void

    .line 93
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/util/COUIThemeOverlay;->getCOUITheme(Landroid/content/res/Configuration;)J

    move-result-wide v0

    .line 94
    .local v0, "flag":J
    const-wide/32 v2, 0xffff

    and-long/2addr v2, v0

    long-to-int v2, v2

    .line 95
    .local v2, "select":I
    const-wide/32 v3, 0x30000

    and-long/2addr v3, v0

    long-to-int v3, v3

    .line 96
    .local v3, "type":I
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-eqz v4, :cond_b

    const-wide/32 v4, 0x100000

    and-long v6, v0, v4

    cmp-long v4, v6, v4

    if-eqz v4, :cond_b

    const/high16 v4, 0x20000

    if-ne v3, v4, :cond_1

    goto/16 :goto_5

    .line 100
    :cond_1
    if-nez v2, :cond_2

    if-eqz v3, :cond_3

    :cond_2
    invoke-direct {p0, p1}, Lcom/coui/appcompat/util/COUIThemeOverlay;->isRejectTheme(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 101
    :cond_3
    return-void

    .line 104
    :cond_4
    const/4 v4, 0x1

    new-array v4, v4, [I

    sget v5, Lcoui/support/appcompat/R$attr;->couiThemeIdentifier:I

    const/4 v6, 0x0

    aput v5, v4, v6

    .line 105
    .local v4, "idAttr":[I
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 106
    .local v5, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v5, v6, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v7

    .line 109
    .local v7, "themeIdentifier":I
    const/4 v8, 0x0

    .line 110
    .local v8, "arrayId":I
    const/4 v9, -0x1

    .line 111
    .local v9, "index":I
    if-nez v3, :cond_5

    .line 112
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 123
    :pswitch_0
    sget v8, Lcoui/support/appcompat/R$array;->coui_theme_arrays_fourth:I

    goto :goto_0

    .line 120
    :pswitch_1
    sget v8, Lcoui/support/appcompat/R$array;->coui_theme_arrays_third:I

    .line 121
    goto :goto_0

    .line 117
    :pswitch_2
    sget v8, Lcoui/support/appcompat/R$array;->coui_theme_arrays_second:I

    .line 118
    goto :goto_0

    .line 114
    :pswitch_3
    sget v8, Lcoui/support/appcompat/R$array;->coui_theme_arrays_first:I

    .line 115
    nop

    .line 126
    :goto_0
    add-int/lit8 v9, v7, -0x1

    goto :goto_1

    .line 127
    :cond_5
    const/high16 v10, 0x10000

    if-ne v3, v10, :cond_6

    .line 128
    sget v8, Lcoui/support/appcompat/R$array;->coui_theme_arrays_single:I

    .line 129
    move v9, v2

    .line 131
    :cond_6
    :goto_1
    if-eqz v8, :cond_a

    const/4 v10, -0x1

    if-ne v9, v10, :cond_7

    goto :goto_4

    .line 134
    :cond_7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v10

    .line 135
    .local v10, "themeArrays":Landroid/content/res/TypedArray;
    move v11, v6

    .local v11, "i":I
    :goto_2
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->length()I

    move-result v12

    if-ge v11, v12, :cond_9

    .line 136
    if-ne v11, v9, :cond_8

    .line 137
    invoke-virtual {v10, v11, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 138
    .local v6, "styleId":I
    sget v12, Lcoui/support/appcompat/R$id;->coui_global_theme:I

    invoke-virtual {p0, v12, v6}, Lcom/coui/appcompat/util/COUIThemeOverlay;->setThemeOverlay(II)V

    .line 139
    goto :goto_3

    .line 135
    .end local v6    # "styleId":I
    :cond_8
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 142
    .end local v11    # "i":I
    :cond_9
    :goto_3
    return-void

    .line 132
    .end local v10    # "themeArrays":Landroid/content/res/TypedArray;
    :cond_a
    :goto_4
    return-void

    .line 98
    .end local v4    # "idAttr":[I
    .end local v5    # "a":Landroid/content/res/TypedArray;
    .end local v7    # "themeIdentifier":I
    .end local v8    # "arrayId":I
    .end local v9    # "index":I
    :cond_b
    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public applyThemeOverlays(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 61
    invoke-virtual {p0}, Lcom/coui/appcompat/util/COUIThemeOverlay;->clearThemeOverlays()V

    .line 62
    invoke-direct {p0, p1}, Lcom/coui/appcompat/util/COUIThemeOverlay;->resolveThemeStyle(Landroid/content/Context;)V

    .line 63
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/coui/appcompat/util/COUIThemeOverlay;->themeOverlays:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 64
    iget-object v1, p0, Lcom/coui/appcompat/util/COUIThemeOverlay;->themeOverlays:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->setTheme(I)V

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 66
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public clearThemeOverlays()V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/coui/appcompat/util/COUIThemeOverlay;->themeOverlays:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 79
    return-void
.end method

.method public getCOUITheme(Landroid/content/res/Configuration;)J
    .locals 11
    .param p1, "configuration"    # Landroid/content/res/Configuration;

    .line 145
    const-wide/16 v0, 0x0

    .line 147
    .local v0, "themeId":J
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_0
    const-string v5, "com.color.inner.content.res.ConfigurationWrapper"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 148
    .local v5, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    .line 149
    .local v6, "wrapper":Ljava/lang/Object;
    if-eqz v6, :cond_0

    .line 150
    const-string v7, "getMaterialColor"

    new-array v8, v4, [Ljava/lang/Class;

    const-class v9, Landroid/content/res/Configuration;

    aput-object v9, v8, v3

    invoke-virtual {v5, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 151
    .local v7, "getCOUITheme":Ljava/lang/reflect/Method;
    new-array v8, v4, [Ljava/lang/Object;

    aput-object p1, v8, v3

    invoke-virtual {v7, v2, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v0, v8

    .line 166
    .end local v5    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "wrapper":Ljava/lang/Object;
    .end local v7    # "getCOUITheme":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    goto :goto_1

    .line 164
    :catch_0
    move-exception v2

    .line 165
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "COUIThemeOverlay"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCOUITheme e: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 153
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v5

    .line 155
    .local v5, "e":Ljava/lang/ClassNotFoundException;
    :try_start_1
    const-string v6, "com.oplus.inner.content.res.ConfigurationWrapper"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 156
    .local v6, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v6}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v7

    .line 157
    .local v7, "wrapper":Ljava/lang/Object;
    if-eqz v7, :cond_1

    .line 158
    const-string v8, "getMaterialColor"

    new-array v9, v4, [Ljava/lang/Class;

    const-class v10, Landroid/content/res/Configuration;

    aput-object v10, v9, v3

    invoke-virtual {v6, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 159
    .local v8, "getCOUITheme":Ljava/lang/reflect/Method;
    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v3

    invoke-virtual {v8, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-wide v0, v2

    .line 163
    .end local v6    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "wrapper":Ljava/lang/Object;
    .end local v8    # "getCOUITheme":Ljava/lang/reflect/Method;
    :cond_1
    goto :goto_0

    .line 161
    :catch_2
    move-exception v2

    .line 162
    .local v2, "ex":Ljava/lang/Exception;
    const-string v3, "COUIThemeOverlay"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCOUITheme cls ex: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 167
    .end local v2    # "ex":Ljava/lang/Exception;
    .end local v5    # "e":Ljava/lang/ClassNotFoundException;
    :goto_1
    return-wide v0
.end method

.method public getThemeOverlay(I)I
    .locals 1
    .param p1, "id"    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .line 82
    iget-object v0, p0, Lcom/coui/appcompat/util/COUIThemeOverlay;->themeOverlays:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    return v0
.end method

.method public isCOUITheme(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/util/COUIThemeOverlay;->getCOUITheme(Landroid/content/res/Configuration;)J

    move-result-wide v0

    .line 70
    .local v0, "flag":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public setThemeOverlay(II)V
    .locals 1
    .param p1, "id"    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .param p2, "themeOverlay"    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .line 74
    iget-object v0, p0, Lcom/coui/appcompat/util/COUIThemeOverlay;->themeOverlays:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 75
    return-void
.end method
