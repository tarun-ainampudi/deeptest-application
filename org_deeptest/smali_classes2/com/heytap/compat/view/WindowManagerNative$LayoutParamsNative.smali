.class public Lcom/heytap/compat/view/WindowManagerNative$LayoutParamsNative;
.super Ljava/lang/Object;
.source "WindowManagerNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/compat/view/WindowManagerNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParamsNative"
.end annotation


# static fields
.field public static DEFAULT_STATUS_BAR:I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x17
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Oem;
    .end annotation
.end field

.field public static DISABLE_STATUS_BAR:I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x17
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Oem;
    .end annotation
.end field

.field public static ENABLE_STATUS_BAR:I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x17
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Oem;
    .end annotation
.end field

.field public static IGNORE_HOME_KEY:I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x18
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Oem;
    .end annotation
.end field

.field public static IGNORE_HOME_MENU_KEY:I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x18
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Oem;
    .end annotation
.end field

.field public static IGNORE_MENU_KEY:I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x18
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Oem;
    .end annotation
.end field

.field public static UNSET_ANY_KEY:I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x18
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Oem;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 210
    const/4 v0, 0x0

    sput v0, Lcom/heytap/compat/view/WindowManagerNative$LayoutParamsNative;->UNSET_ANY_KEY:I

    .line 214
    sput v0, Lcom/heytap/compat/view/WindowManagerNative$LayoutParamsNative;->IGNORE_HOME_MENU_KEY:I

    .line 218
    sput v0, Lcom/heytap/compat/view/WindowManagerNative$LayoutParamsNative;->IGNORE_HOME_KEY:I

    .line 222
    sput v0, Lcom/heytap/compat/view/WindowManagerNative$LayoutParamsNative;->IGNORE_MENU_KEY:I

    .line 227
    sput v0, Lcom/heytap/compat/view/WindowManagerNative$LayoutParamsNative;->DEFAULT_STATUS_BAR:I

    .line 231
    sput v0, Lcom/heytap/compat/view/WindowManagerNative$LayoutParamsNative;->DISABLE_STATUS_BAR:I

    .line 235
    sput v0, Lcom/heytap/compat/view/WindowManagerNative$LayoutParamsNative;->ENABLE_STATUS_BAR:I

    .line 239
    :try_start_0
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 240
    sput v0, Lcom/heytap/compat/view/WindowManagerNative$LayoutParamsNative;->UNSET_ANY_KEY:I

    .line 241
    const/4 v1, 0x1

    sput v1, Lcom/heytap/compat/view/WindowManagerNative$LayoutParamsNative;->IGNORE_HOME_MENU_KEY:I

    .line 242
    const/4 v2, 0x2

    sput v2, Lcom/heytap/compat/view/WindowManagerNative$LayoutParamsNative;->IGNORE_HOME_KEY:I

    .line 243
    const/4 v3, 0x3

    sput v3, Lcom/heytap/compat/view/WindowManagerNative$LayoutParamsNative;->IGNORE_MENU_KEY:I

    .line 244
    sput v0, Lcom/heytap/compat/view/WindowManagerNative$LayoutParamsNative;->DEFAULT_STATUS_BAR:I

    .line 245
    sput v1, Lcom/heytap/compat/view/WindowManagerNative$LayoutParamsNative;->DISABLE_STATUS_BAR:I

    .line 246
    sput v2, Lcom/heytap/compat/view/WindowManagerNative$LayoutParamsNative;->ENABLE_STATUS_BAR:I

    goto :goto_0

    .line 247
    :cond_0
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isM()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 248
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isN()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 249
    sget-object v0, Lcom/heytap/compat/view/WindowManagerNative$ReflectInfo;->IGNORE_HOME_MENU_KEY:Lcom/heytap/reflect/RefObject;

    invoke-virtual {v0, v1}, Lcom/heytap/reflect/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/heytap/compat/view/WindowManagerNative$LayoutParamsNative;->IGNORE_HOME_MENU_KEY:I

    .line 250
    sget-object v0, Lcom/heytap/compat/view/WindowManagerNative$ReflectInfo;->UNSET_ANY_KEY:Lcom/heytap/reflect/RefObject;

    invoke-virtual {v0, v1}, Lcom/heytap/reflect/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/heytap/compat/view/WindowManagerNative$LayoutParamsNative;->UNSET_ANY_KEY:I

    .line 251
    sget-object v0, Lcom/heytap/compat/view/WindowManagerNative$ReflectInfo;->IGNORE_HOME_KEY:Lcom/heytap/reflect/RefObject;

    invoke-virtual {v0, v1}, Lcom/heytap/reflect/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/heytap/compat/view/WindowManagerNative$LayoutParamsNative;->IGNORE_HOME_KEY:I

    .line 252
    sget-object v0, Lcom/heytap/compat/view/WindowManagerNative$ReflectInfo;->IGNORE_MENU_KEY:Lcom/heytap/reflect/RefObject;

    invoke-virtual {v0, v1}, Lcom/heytap/reflect/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/heytap/compat/view/WindowManagerNative$LayoutParamsNative;->IGNORE_MENU_KEY:I

    .line 254
    :cond_1
    sget-object v0, Lcom/heytap/compat/view/WindowManagerNative$ReflectInfo;->DEFAULT_STATUS_BAR:Lcom/heytap/reflect/RefObject;

    invoke-virtual {v0, v1}, Lcom/heytap/reflect/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/heytap/compat/view/WindowManagerNative$LayoutParamsNative;->DEFAULT_STATUS_BAR:I

    .line 255
    sget-object v0, Lcom/heytap/compat/view/WindowManagerNative$ReflectInfo;->DISABLE_STATUS_BAR:Lcom/heytap/reflect/RefObject;

    invoke-virtual {v0, v1}, Lcom/heytap/reflect/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/heytap/compat/view/WindowManagerNative$LayoutParamsNative;->DISABLE_STATUS_BAR:I

    .line 256
    sget-object v0, Lcom/heytap/compat/view/WindowManagerNative$ReflectInfo;->ENABLE_STATUS_BAR:Lcom/heytap/reflect/RefObject;

    invoke-virtual {v0, v1}, Lcom/heytap/reflect/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/heytap/compat/view/WindowManagerNative$LayoutParamsNative;->ENABLE_STATUS_BAR:I

    .line 262
    :goto_0
    goto :goto_1

    .line 258
    :cond_2
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {v0}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    :catch_0
    move-exception v0

    .line 261
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "WindowManagerNative"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    return-void
.end method

.method public static getHomeAndMenuKeyState(Landroid/view/WindowManager$LayoutParams;)I
    .locals 2
    .param p0, "params"    # Landroid/view/WindowManager$LayoutParams;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x18
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Oem;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 295
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    invoke-static {p0}, Lcom/color/inner/view/WindowManagerWrapper$LayoutParamsWrapper;->getHomeAndMenuKeyState(Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    return v0

    .line 297
    :cond_0
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isN()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 298
    sget-object v0, Lcom/heytap/compat/view/WindowManagerNative$ReflectInfo;->ignoreHomeMenuKey:Lcom/heytap/reflect/RefObject;

    invoke-virtual {v0, p0}, Lcom/heytap/reflect/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 300
    :cond_1
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    const-string v1, "not supported before N"

    invoke-direct {v0, v1}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getStatusBarStateByWindowManager(Landroid/view/WindowManager$LayoutParams;)I
    .locals 2
    .param p0, "params"    # Landroid/view/WindowManager$LayoutParams;
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x17
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Oem;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 269
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    invoke-static {p0}, Lcom/color/inner/view/WindowManagerWrapper$LayoutParamsWrapper;->getStatusBarStateByWindowManager(Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    return v0

    .line 271
    :cond_0
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isM()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 272
    sget-object v0, Lcom/heytap/compat/view/WindowManagerNative$ReflectInfo;->isDisableStatusBar:Lcom/heytap/reflect/RefObject;

    invoke-virtual {v0, p0}, Lcom/heytap/reflect/RefObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 274
    :cond_1
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    const-string v1, "not supported before M"

    invoke-direct {v0, v1}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setHomeAndMenuKeyState(Landroid/view/WindowManager$LayoutParams;I)V
    .locals 2
    .param p0, "params"    # Landroid/view/WindowManager$LayoutParams;
    .param p1, "ignoreHomeMenuKey"    # I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x18
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Oem;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 308
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    invoke-static {p0, p1}, Lcom/color/inner/view/WindowManagerWrapper$LayoutParamsWrapper;->setHomeAndMenuKeyState(Landroid/view/WindowManager$LayoutParams;I)V

    goto :goto_0

    .line 310
    :cond_0
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isN()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 311
    sget-object v0, Lcom/heytap/compat/view/WindowManagerNative$ReflectInfo;->ignoreHomeMenuKey:Lcom/heytap/reflect/RefObject;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/heytap/reflect/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 315
    :goto_0
    return-void

    .line 313
    :cond_1
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    const-string v1, "not supported before N"

    invoke-direct {v0, v1}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setStatusBarStateByWindowManager(Landroid/view/WindowManager$LayoutParams;I)V
    .locals 2
    .param p0, "params"    # Landroid/view/WindowManager$LayoutParams;
    .param p1, "disableStatusBar"    # I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x17
    .end annotation

    .annotation runtime Lcom/heytap/compat/annotation/Oem;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .line 282
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    invoke-static {p0, p1}, Lcom/color/inner/view/WindowManagerWrapper$LayoutParamsWrapper;->setStatusBarStateByWindowManager(Landroid/view/WindowManager$LayoutParams;I)V

    goto :goto_0

    .line 284
    :cond_0
    invoke-static {}, Lcom/heytap/compat/utils/util/VersionUtils;->isM()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 285
    sget-object v0, Lcom/heytap/compat/view/WindowManagerNative$ReflectInfo;->isDisableStatusBar:Lcom/heytap/reflect/RefObject;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/heytap/reflect/RefObject;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 289
    :goto_0
    return-void

    .line 287
    :cond_1
    new-instance v0, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;

    const-string v1, "not supported before M"

    invoke-direct {v0, v1}, Lcom/heytap/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
