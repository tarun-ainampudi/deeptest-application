.class public final Lcom/platform/usercenter/tools/ui/KeyboardUtils;
.super Ljava/lang/Object;
.source "KeyboardUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/platform/usercenter/tools/ui/KeyboardUtils$OnSoftInputChangedListener;
    }
.end annotation


# static fields
.field private static final TAG_ON_GLOBAL_LAYOUT_LISTENER:I = -0x8

.field private static millis:J

.field private static sDecorViewDelta:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 169
    const/4 v0, 0x0

    sput v0, Lcom/platform/usercenter/tools/ui/KeyboardUtils;->sDecorViewDelta:I

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "u can\'t instantiate me..."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000(Landroid/view/Window;)I
    .locals 1
    .param p0, "x0"    # Landroid/view/Window;

    .line 34
    invoke-static {p0}, Lcom/platform/usercenter/tools/ui/KeyboardUtils;->getDecorViewInvisibleHeight(Landroid/view/Window;)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Landroid/view/Window;)I
    .locals 1
    .param p0, "x0"    # Landroid/view/Window;

    .line 34
    invoke-static {p0}, Lcom/platform/usercenter/tools/ui/KeyboardUtils;->getContentViewInvisibleHeight(Landroid/view/Window;)I

    move-result v0

    return v0
.end method

.method public static fixAndroidBug5497(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 256
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/platform/usercenter/tools/ui/KeyboardUtils;->fixAndroidBug5497(Landroid/view/Window;)V

    .line 257
    return-void
.end method

.method public static fixAndroidBug5497(Landroid/view/Window;)V
    .locals 7
    .param p0, "window"    # Landroid/view/Window;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 266
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 267
    .local v0, "softInputMode":I
    and-int/lit8 v1, v0, -0x11

    invoke-virtual {p0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 268
    const v1, 0x1020002

    invoke-virtual {p0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 269
    .local v1, "contentView":Landroid/widget/FrameLayout;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 270
    .local v3, "contentViewChild":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    .line 271
    .local v4, "paddingBottom":I
    const/4 v5, 0x1

    new-array v5, v5, [I

    invoke-static {p0}, Lcom/platform/usercenter/tools/ui/KeyboardUtils;->getContentViewInvisibleHeight(Landroid/view/Window;)I

    move-result v6

    aput v6, v5, v2

    move-object v2, v5

    .line 272
    .local v2, "contentViewInvisibleHeightPre5497":[I
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    new-instance v6, Lcom/platform/usercenter/tools/ui/KeyboardUtils$2;

    invoke-direct {v6, p0, v2, v3, v4}, Lcom/platform/usercenter/tools/ui/KeyboardUtils$2;-><init>(Landroid/view/Window;[ILandroid/view/View;I)V

    .line 273
    invoke-virtual {v5, v6}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 288
    return-void
.end method

.method public static fixSoftInputLeaks(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 310
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/platform/usercenter/tools/ui/KeyboardUtils;->fixSoftInputLeaks(Landroid/view/Window;)V

    .line 311
    return-void
.end method

.method public static fixSoftInputLeaks(Landroid/view/Window;)V
    .locals 10
    .param p0, "window"    # Landroid/view/Window;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 319
    nop

    .line 320
    invoke-virtual {p0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    .line 321
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 322
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-nez v0, :cond_0

    return-void

    .line 323
    :cond_0
    const-string v1, "mLastSrvView"

    const-string v2, "mCurRootView"

    const-string v3, "mServedView"

    const-string v4, "mNextServedView"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    .line 324
    .local v1, "leakViews":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, v1, v3

    .line 326
    .local v4, "leakView":Ljava/lang/String;
    :try_start_0
    const-class v5, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v5, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 327
    .local v5, "leakViewField":Ljava/lang/reflect/Field;
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v6

    if-nez v6, :cond_1

    .line 328
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 330
    :cond_1
    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 331
    .local v6, "obj":Ljava/lang/Object;
    instance-of v7, v6, Landroid/view/View;

    if-nez v7, :cond_2

    goto :goto_1

    .line 332
    :cond_2
    move-object v7, v6

    check-cast v7, Landroid/view/View;

    .line 333
    .local v7, "view":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v9

    if-ne v8, v9, :cond_3

    .line 334
    const/4 v8, 0x0

    invoke-virtual {v5, v0, v8}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 336
    .end local v5    # "leakViewField":Ljava/lang/reflect/Field;
    .end local v6    # "obj":Ljava/lang/Object;
    .end local v7    # "view":Landroid/view/View;
    :catch_0
    move-exception v5

    .line 324
    .end local v4    # "leakView":Ljava/lang/String;
    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 338
    :cond_4
    return-void
.end method

.method private static getContentViewInvisibleHeight(Landroid/view/Window;)I
    .locals 7
    .param p0, "window"    # Landroid/view/Window;

    .line 291
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 292
    .local v0, "contentView":Landroid/view/View;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 293
    :cond_0
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 294
    .local v2, "outRect":Landroid/graphics/Rect;
    invoke-virtual {v0, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 295
    const-string v3, "KeyboardUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getContentViewInvisibleHeight: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v5

    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 295
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 298
    .local v3, "delta":I
    invoke-static {}, Lcom/platform/usercenter/tools/ui/BarUtils;->getStatusBarHeight()I

    move-result v4

    invoke-static {}, Lcom/platform/usercenter/tools/ui/BarUtils;->getNavBarHeight()I

    move-result v5

    add-int/2addr v4, v5

    if-gt v3, v4, :cond_1

    .line 299
    return v1

    .line 301
    :cond_1
    return v3
.end method

.method private static getDecorViewInvisibleHeight(Landroid/view/Window;)I
    .locals 6
    .param p0, "window"    # Landroid/view/Window;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 182
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 183
    .local v0, "decorView":Landroid/view/View;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 184
    .local v1, "outRect":Landroid/graphics/Rect;
    invoke-virtual {v0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 185
    const-string v2, "KeyboardUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDecorViewInvisibleHeight: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v4

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 185
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 188
    .local v2, "delta":I
    invoke-static {}, Lcom/platform/usercenter/tools/ui/BarUtils;->getNavBarHeight()I

    move-result v3

    invoke-static {}, Lcom/platform/usercenter/tools/ui/BarUtils;->getStatusBarHeight()I

    move-result v4

    add-int/2addr v3, v4

    if-gt v2, v3, :cond_0

    .line 189
    sput v2, Lcom/platform/usercenter/tools/ui/KeyboardUtils;->sDecorViewDelta:I

    .line 190
    const/4 v3, 0x0

    return v3

    .line 192
    :cond_0
    sget v3, Lcom/platform/usercenter/tools/ui/KeyboardUtils;->sDecorViewDelta:I

    sub-int v3, v2, v3

    return v3
.end method

.method public static hideSoftInput(Landroid/app/Activity;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;

    .line 368
    const-string v0, "input_method"

    .line 369
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 370
    .local v0, "im":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 371
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v1

    .line 372
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 373
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 376
    .end local v1    # "view":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public static hideSoftKeyboard(Landroid/view/View;)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .line 384
    if-eqz p0, :cond_0

    .line 385
    nop

    .line 386
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    .line 387
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 388
    .local v0, "im":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 389
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 392
    .end local v0    # "im":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method

.method public static isSoftInputVisible(Landroid/app/Activity;)Z
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 178
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/platform/usercenter/tools/ui/KeyboardUtils;->getDecorViewInvisibleHeight(Landroid/view/Window;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static registerSoftInputChangedListener(Landroid/app/Activity;Lcom/platform/usercenter/tools/ui/KeyboardUtils$OnSoftInputChangedListener;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "listener"    # Lcom/platform/usercenter/tools/ui/KeyboardUtils$OnSoftInputChangedListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 203
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/platform/usercenter/tools/ui/KeyboardUtils;->registerSoftInputChangedListener(Landroid/view/Window;Lcom/platform/usercenter/tools/ui/KeyboardUtils$OnSoftInputChangedListener;)V

    .line 204
    return-void
.end method

.method public static registerSoftInputChangedListener(Landroid/view/Window;Lcom/platform/usercenter/tools/ui/KeyboardUtils$OnSoftInputChangedListener;)V
    .locals 5
    .param p0, "window"    # Landroid/view/Window;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "listener"    # Lcom/platform/usercenter/tools/ui/KeyboardUtils$OnSoftInputChangedListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 214
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 215
    .local v0, "flags":I
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_0

    .line 216
    const/16 v1, 0x200

    invoke-virtual {p0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 218
    :cond_0
    const v1, 0x1020002

    invoke-virtual {p0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 219
    .local v1, "contentView":Landroid/widget/FrameLayout;
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    invoke-static {p0}, Lcom/platform/usercenter/tools/ui/KeyboardUtils;->getDecorViewInvisibleHeight(Landroid/view/Window;)I

    move-result v4

    aput v4, v2, v3

    .line 220
    .local v2, "decorViewInvisibleHeightPre":[I
    new-instance v3, Lcom/platform/usercenter/tools/ui/KeyboardUtils$1;

    invoke-direct {v3, p0, v2, p1}, Lcom/platform/usercenter/tools/ui/KeyboardUtils$1;-><init>(Landroid/view/Window;[ILcom/platform/usercenter/tools/ui/KeyboardUtils$OnSoftInputChangedListener;)V

    .line 230
    .local v3, "onGlobalLayoutListener":Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 231
    const/4 v4, -0x8

    invoke-virtual {v1, v4, v3}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    .line 232
    return-void
.end method

.method public static showSoftInput(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 346
    const-string v0, "input_method"

    .line 347
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 348
    .local v0, "im":Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 349
    return-void
.end method

.method public static showSoftInput(Landroid/view/View;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .line 357
    nop

    .line 358
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 359
    .local v0, "im":Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 360
    return-void
.end method

.method public static toggleSoftInput()V
    .locals 2

    .line 163
    sget-object v0, Lcom/platform/usercenter/tools/UCBasicUtils;->sContext:Landroid/content/Context;

    .line 164
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 165
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-nez v0, :cond_0

    return-void

    .line 166
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 167
    return-void
.end method

.method public static unregisterSoftInputChangedListener(Landroid/view/Window;)V
    .locals 4
    .param p0, "window"    # Landroid/view/Window;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 240
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 241
    .local v0, "contentView":Landroid/widget/FrameLayout;
    const/4 v1, -0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 242
    .local v1, "tag":Ljava/lang/Object;
    instance-of v2, v1, Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v2, :cond_0

    .line 243
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_0

    .line 244
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 247
    :cond_0
    return-void
.end method
