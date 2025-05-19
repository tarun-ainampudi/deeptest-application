.class public Lcom/coui/appcompat/dialog/app/COUIAlertController;
.super Lcom/coui/appcompat/dialog/app/AlertController;
.source "COUIAlertController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIAlertParams;,
        Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIRecyclerListView;,
        Lcom/coui/appcompat/dialog/app/COUIAlertController$FadingScrollView;,
        Lcom/coui/appcompat/dialog/app/COUIAlertController$BottomSpaceHandler;
    }
.end annotation


# static fields
.field private static final DOCKED_INVALID:I = -0x1

.field private static final FULL_SCREEN_FLAG:I = -0x7ffffa00

.field private static final PRIVATE_FLAG_BOTTOM_ALERT_DIALOG:I = 0x1000000

.field private static final PRIVATE_FLAG_NO_MOVE_ANIMATION:I = 0x40

.field private static final TAG:Ljava/lang/String; = "COUIAlertController"

.field private static final TYPE_SYSTEM_LONG_SHOT:I = 0x8ff


# instance fields
.field private mButtonColor:I

.field private mComponentCallbacks:Landroid/content/ComponentCallbacks;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIsValidateNavigationBar:Z

.field private mObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/appcompat/app/AppCompatDialog;Landroid/view/Window;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "di"    # Landroidx/appcompat/app/AppCompatDialog;
    .param p3, "window"    # Landroid/view/Window;

    .line 138
    invoke-direct {p0, p1, p2, p3}, Lcom/coui/appcompat/dialog/app/AlertController;-><init>(Landroid/content/Context;Landroidx/appcompat/app/AppCompatDialog;Landroid/view/Window;)V

    .line 99
    new-instance v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$1;

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/coui/appcompat/dialog/app/COUIAlertController$1;-><init>(Lcom/coui/appcompat/dialog/app/COUIAlertController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->mObserver:Landroid/database/ContentObserver;

    .line 113
    new-instance v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$2;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/dialog/app/COUIAlertController$2;-><init>(Lcom/coui/appcompat/dialog/app/COUIAlertController;)V

    iput-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->mComponentCallbacks:Landroid/content/ComponentCallbacks;

    .line 139
    iput-object p1, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->mContext:Landroid/content/Context;

    .line 140
    new-instance v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$BottomSpaceHandler;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/dialog/app/COUIAlertController$BottomSpaceHandler;-><init>(Lcom/coui/appcompat/dialog/app/COUIAlertController;)V

    iput-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->mHandler:Landroid/os/Handler;

    .line 141
    const/4 v0, 0x1

    new-array v0, v0, [I

    sget v1, Lcoui/support/appcompat/R$attr;->couiCenterAlertDialogButtonTextColor:I

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 142
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->mButtonColor:I

    .line 143
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 144
    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/dialog/app/COUIAlertController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/app/COUIAlertController;

    .line 81
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/coui/appcompat/dialog/app/COUIAlertController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/app/COUIAlertController;

    .line 81
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/coui/appcompat/dialog/app/COUIAlertController;)V
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/app/COUIAlertController;

    .line 81
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/app/COUIAlertController;->updateWindowAttributes()V

    return-void
.end method

.method static synthetic access$300(Lcom/coui/appcompat/dialog/app/COUIAlertController;)V
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/app/COUIAlertController;

    .line 81
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/app/COUIAlertController;->updateSpaceHeight()V

    return-void
.end method

.method static synthetic access$400(Lcom/coui/appcompat/dialog/app/COUIAlertController;)V
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/app/COUIAlertController;

    .line 81
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/app/COUIAlertController;->updateBg()V

    return-void
.end method

.method static synthetic access$500(Lcom/coui/appcompat/dialog/app/COUIAlertController;)V
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/app/COUIAlertController;

    .line 81
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/app/COUIAlertController;->updateForChangeableDialog()V

    return-void
.end method

.method static synthetic access$600(Lcom/coui/appcompat/dialog/app/COUIAlertController;)Landroid/content/ComponentCallbacks;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/app/COUIAlertController;

    .line 81
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->mComponentCallbacks:Landroid/content/ComponentCallbacks;

    return-object v0
.end method

.method static synthetic access$602(Lcom/coui/appcompat/dialog/app/COUIAlertController;Landroid/content/ComponentCallbacks;)Landroid/content/ComponentCallbacks;
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/app/COUIAlertController;
    .param p1, "x1"    # Landroid/content/ComponentCallbacks;

    .line 81
    iput-object p1, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->mComponentCallbacks:Landroid/content/ComponentCallbacks;

    return-object p1
.end method

.method static synthetic access$700(Lcom/coui/appcompat/dialog/app/COUIAlertController;)Landroid/database/ContentObserver;
    .locals 1
    .param p0, "x0"    # Lcom/coui/appcompat/dialog/app/COUIAlertController;

    .line 81
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->mObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method private addBottomSpace()V
    .locals 2

    .line 210
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/app/COUIAlertController;->isCenterDialog()Z

    move-result v0

    if-nez v0, :cond_0

    .line 211
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/app/COUIAlertController;->observeHideNavigationBar()V

    .line 213
    :cond_0
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/app/COUIAlertController;->needAddBottomView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 214
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/app/COUIAlertController;->updateSpaceHeight()V

    .line 215
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 216
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    invoke-direct {p0, v0}, Lcom/coui/appcompat/dialog/app/COUIAlertController;->addPrivateFlag(Landroid/view/WindowManager$LayoutParams;)V

    .line 217
    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 219
    .end local v0    # "params":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    return-void
.end method

.method private addPrivateFlag(Landroid/view/WindowManager$LayoutParams;)V
    .locals 4
    .param p1, "params"    # Landroid/view/WindowManager$LayoutParams;

    .line 331
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 332
    .local v0, "paramsClass":Ljava/lang/Class;
    const-string v1, "privateFlags"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 333
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 334
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    .line 335
    .local v2, "privateFlag":I
    const/high16 v3, 0x1000000

    or-int/2addr v2, v3

    .line 336
    or-int/lit8 v2, v2, 0x40

    .line 337
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    .end local v0    # "paramsClass":Ljava/lang/Class;
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v2    # "privateFlag":I
    goto :goto_0

    .line 338
    :catch_0
    move-exception v0

    .line 339
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "COUIAlertController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addPrivateFlag failed.Fail msg is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private castContextToActivity(Landroid/content/Context;)Landroid/app/Activity;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 308
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 309
    return-object v0

    .line 310
    :cond_0
    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 311
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    return-object v0

    .line 312
    :cond_1
    instance-of v1, p1, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_2

    .line 313
    move-object v0, p1

    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/dialog/app/COUIAlertController;->castContextToActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    return-object v0

    .line 315
    :cond_2
    return-object v0
.end method

.method private getScreenSize()Landroid/graphics/Point;
    .locals 3

    .line 199
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 200
    .local v0, "point":Landroid/graphics/Point;
    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 201
    .local v1, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 202
    return-object v0
.end method

.method private hasMessage()Z
    .locals 1

    .line 510
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->mMessage:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private hasTitle()Z
    .locals 1

    .line 514
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private isCenterDialog()Z
    .locals 1

    .line 206
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/app/COUIAlertController;->getDialogType()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isFullScreen()Z
    .locals 3

    .line 295
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x18

    if-lt v0, v2, :cond_1

    .line 296
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/dialog/app/COUIAlertController;->castContextToActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    .line 297
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 298
    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v2

    xor-int/2addr v1, v2

    return v1

    .line 300
    :cond_0
    return v1

    .line 303
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_1
    return v1
.end method

.method private isGravityCenter()Z
    .locals 2

    .line 286
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isNavigationBarShow()Z
    .locals 5

    .line 252
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/app/COUIAlertController;->supportNavigationBar()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 253
    return v1

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "hide_navigationbar_enable"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 257
    .local v0, "navigationBarStatus":I
    iget-object v2, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "manual_hide_navigationbar"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 259
    .local v2, "navigationBarHideStatus":I
    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eq v0, v3, :cond_1

    if-eq v2, v3, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    iput-boolean v3, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->mIsValidateNavigationBar:Z

    .line 260
    if-eqz v0, :cond_3

    if-ne v0, v4, :cond_2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    goto :goto_2

    :cond_3
    :goto_1
    move v1, v4

    :goto_2
    return v1
.end method

.method private isSystemDialog(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 2
    .param p1, "params"    # Landroid/view/WindowManager$LayoutParams;

    .line 548
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d3

    if-eq v0, v1, :cond_1

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7f6

    if-eq v0, v1, :cond_1

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x8ff

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private navigationBarHeight()I
    .locals 4

    .line 246
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 247
    .local v0, "resources":Landroid/content/res/Resources;
    const-string v1, "navigation_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 248
    .local v1, "resourceId":I
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    return v2
.end method

.method private needAddBottomView()Z
    .locals 1

    .line 290
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/app/COUIAlertController;->isCenterDialog()Z

    move-result v0

    if-nez v0, :cond_0

    .line 291
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/app/COUIAlertController;->isFullScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private needClipListView()Z
    .locals 1

    .line 396
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/app/COUIAlertController;->hasMessage()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/coui/appcompat/dialog/app/COUIAlertController;->hasTitle()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/coui/appcompat/dialog/app/COUIAlertController;->isCenterDialog()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private observeHideNavigationBar()V
    .locals 4

    .line 222
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 223
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "manual_hide_navigationbar"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->mObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 225
    return-void
.end method

.method private relayoutChoiceMessage(Landroid/view/ViewGroup;)V
    .locals 6
    .param p1, "contentPanel"    # Landroid/view/ViewGroup;

    .line 461
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->mScrollView:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcoui/support/appcompat/R$dimen;->center_dialog_scroll_padding_top:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->mScrollView:Landroid/widget/ScrollView;

    .line 463
    invoke-virtual {v3}, Landroid/widget/ScrollView;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcoui/support/appcompat/R$dimen;->center_dialog_scroll_padding_bottom:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 462
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ScrollView;->setPadding(IIII)V

    .line 465
    :cond_0
    const v0, 0x102000b

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 466
    .local v0, "messageView":Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 467
    .local v1, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcoui/support/appcompat/R$dimen;->bottom_choice_dialog_message_margin_start:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 468
    iget-object v2, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcoui/support/appcompat/R$dimen;->bottom_choice_dialog_message_margin_end:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 469
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 470
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcoui/support/appcompat/R$dimen;->TD07:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 471
    iget-object v2, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcoui/support/appcompat/R$color;->coui_alert_dialog_content_text_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 472
    invoke-direct {p0, p1}, Lcom/coui/appcompat/dialog/app/COUIAlertController;->relayoutMessageView(Landroid/view/ViewGroup;)V

    .line 473
    return-void
.end method

.method private relayoutListAndMessage(Landroid/view/ViewGroup;)V
    .locals 4
    .param p1, "listPanel"    # Landroid/view/ViewGroup;

    .line 476
    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->mMessageNeedScroll:Z

    if-eqz v0, :cond_1

    .line 477
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->mScrollView:Landroid/widget/ScrollView;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 479
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 480
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 481
    iget-object v3, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v3, v0}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 483
    .end local v0    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    if-eqz p1, :cond_1

    .line 484
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 485
    .restart local v0    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 486
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 487
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 490
    .end local v0    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    return-void
.end method

.method private relayoutMessageView(Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "contentPanel"    # Landroid/view/ViewGroup;

    .line 493
    const v0, 0x102000b

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 494
    .local v0, "messageView":Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/coui/appcompat/dialog/app/COUIAlertController$5;

    invoke-direct {v2, p0, v0}, Lcom/coui/appcompat/dialog/app/COUIAlertController$5;-><init>(Lcom/coui/appcompat/dialog/app/COUIAlertController;Landroid/widget/TextView;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 507
    return-void
.end method

.method private spaceHeight()I
    .locals 3

    .line 228
    const/4 v0, 0x0

    .line 229
    .local v0, "result":I
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/app/COUIAlertController;->isFullScreen()Z

    move-result v1

    if-nez v1, :cond_0

    .line 230
    const/4 v1, 0x0

    return v1

    .line 232
    :cond_0
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/app/COUIAlertController;->isGravityCenter()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 233
    const/4 v0, 0x0

    goto :goto_0

    .line 234
    :cond_1
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/app/COUIAlertController;->isNavigationBarShow()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 235
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/app/COUIAlertController;->navigationBarHeight()I

    move-result v0

    goto :goto_0

    .line 237
    :cond_2
    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcoui/support/appcompat/R$dimen;->alert_dialog_padding_bottom:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 239
    :goto_0
    iget-boolean v1, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->mIsValidateNavigationBar:Z

    if-nez v1, :cond_3

    .line 240
    const/4 v0, 0x0

    .line 242
    :cond_3
    return v0
.end method

.method private supportNavigationBar()Z
    .locals 9

    .line 264
    const/4 v0, 0x0

    .line 265
    .local v0, "supportNavigationBar":Z
    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 266
    .local v1, "rs":Landroid/content/res/Resources;
    const-string v2, "config_showNavigationBar"

    const-string v3, "bool"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 267
    .local v2, "id":I
    if-lez v2, :cond_0

    .line 268
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 271
    :cond_0
    :try_start_0
    const-string v3, "android.os.SystemProperties"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 272
    .local v3, "systemPropertiesClass":Ljava/lang/Class;
    const-string v4, "get"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 273
    .local v4, "m":Ljava/lang/reflect/Method;
    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "qemu.hw.mainkeys"

    aput-object v6, v5, v8

    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 274
    .local v5, "navBarOverride":Ljava/lang/String;
    const-string v6, "1"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 275
    const/4 v0, 0x0

    goto :goto_0

    .line 276
    :cond_1
    const-string v6, "0"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v6, :cond_2

    .line 277
    const/4 v0, 0x1

    .line 281
    .end local v3    # "systemPropertiesClass":Ljava/lang/Class;
    .end local v4    # "m":Ljava/lang/reflect/Method;
    .end local v5    # "navBarOverride":Ljava/lang/String;
    :cond_2
    :goto_0
    goto :goto_1

    .line 279
    :catch_0
    move-exception v3

    .line 280
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "COUIAlertController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fail to get navigation bar status message is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_1
    return v0
.end method

.method private updateBg()V
    .locals 3

    .line 344
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->mWindow:Landroid/view/Window;

    sget v1, Lcoui/support/appcompat/R$id;->parentPanel:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 345
    .local v0, "parentPanel":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 346
    instance-of v1, v0, Lcom/coui/appcompat/widget/COUIAlertLinearLayout;

    if-eqz v1, :cond_1

    .line 347
    move-object v1, v0

    check-cast v1, Lcom/coui/appcompat/widget/COUIAlertLinearLayout;

    .line 348
    .local v1, "COUIAlertLinearLayout":Lcom/coui/appcompat/widget/COUIAlertLinearLayout;
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/app/COUIAlertController;->isGravityCenter()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 349
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/widget/COUIAlertLinearLayout;->setNeedClip(Z)V

    .line 350
    invoke-virtual {v1, v2}, Lcom/coui/appcompat/widget/COUIAlertLinearLayout;->setHasShadow(Z)V

    goto :goto_0

    .line 352
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/widget/COUIAlertLinearLayout;->setNeedClip(Z)V

    .line 353
    invoke-virtual {v1, v2}, Lcom/coui/appcompat/widget/COUIAlertLinearLayout;->setHasShadow(Z)V

    .line 357
    .end local v1    # "COUIAlertLinearLayout":Lcom/coui/appcompat/widget/COUIAlertLinearLayout;
    :cond_1
    :goto_0
    return-void
.end method

.method private updateForChangeableDialog()V
    .locals 9

    .line 360
    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->mChangeable:Z

    if-eqz v0, :cond_1

    .line 361
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/app/COUIAlertController;->isCenterDialog()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 362
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/app/COUIAlertController;->getScreenSize()Landroid/graphics/Point;

    move-result-object v0

    .line 363
    .local v0, "realSize":Landroid/graphics/Point;
    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 364
    .local v1, "params":Landroid/view/WindowManager$LayoutParams;
    iget-object v2, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->mWindow:Landroid/view/Window;

    sget v3, Lcoui/support/appcompat/R$id;->parentPanel:I

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 365
    .local v2, "parentPanel":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 366
    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v4, v0, Landroid/graphics/Point;->y:I

    if-ge v3, v4, :cond_1

    .line 367
    iget-object v3, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 368
    .local v3, "displayMetrics":Landroid/util/DisplayMetrics;
    iget-object v4, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcoui/support/appcompat/R$dimen;->coui_dialog_max_height:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 369
    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    .line 370
    .local v4, "parentPortMaxHeight":I
    iget-object v5, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcoui/support/appcompat/R$dimen;->coui_dialog_max_height_landscape:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 371
    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    .line 372
    .local v5, "parentLandMaxHeight":I
    iget v6, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v7, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v8, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v7, v8, :cond_0

    move v7, v4

    goto :goto_0

    :cond_0
    move v7, v5

    :goto_0
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 374
    iget-object v6, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v6, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 379
    .end local v0    # "realSize":Landroid/graphics/Point;
    .end local v1    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v2    # "parentPanel":Landroid/view/View;
    .end local v3    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v4    # "parentPortMaxHeight":I
    .end local v5    # "parentLandMaxHeight":I
    :cond_1
    return-void
.end method

.method private updateSpaceHeight()V
    .locals 5

    .line 518
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->mWindow:Landroid/view/Window;

    sget v1, Lcoui/support/appcompat/R$id;->parentPanel:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 519
    .local v0, "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 520
    sget v1, Lcoui/support/appcompat/R$id;->alert_dialog_bottom_space:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 521
    .local v1, "space":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 522
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 523
    .local v2, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/app/COUIAlertController;->spaceHeight()I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 524
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 527
    .end local v1    # "space":Landroid/view/View;
    .end local v2    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/app/COUIAlertController;->updateWindowFlag()V

    .line 528
    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 529
    .local v1, "params":Landroid/view/WindowManager$LayoutParams;
    invoke-direct {p0, v1}, Lcom/coui/appcompat/dialog/app/COUIAlertController;->isSystemDialog(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 530
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/app/COUIAlertController;->isNavigationBarShow()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 531
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/app/COUIAlertController;->isGravityCenter()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 532
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_0

    .line 534
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1e

    if-lt v2, v4, :cond_2

    invoke-direct {p0}, Lcom/coui/appcompat/dialog/app/COUIAlertController;->isFullScreen()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 535
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_0

    .line 537
    :cond_2
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-direct {p0}, Lcom/coui/appcompat/dialog/app/COUIAlertController;->navigationBarHeight()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_0

    .line 541
    :cond_3
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 544
    :cond_4
    :goto_0
    iget-object v2, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 545
    return-void
.end method

.method private updateWindowAttributes()V
    .locals 8

    .line 152
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/app/COUIAlertController;->getScreenSize()Landroid/graphics/Point;

    move-result-object v0

    .line 153
    .local v0, "realSize":Landroid/graphics/Point;
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    const/4 v3, 0x1

    if-ge v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 154
    .local v1, "port":Z
    :goto_0
    iget-object v2, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 155
    .local v2, "displayMetrics":Landroid/util/DisplayMetrics;
    iget-object v4, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 156
    .local v4, "params":Landroid/view/WindowManager$LayoutParams;
    iget-object v5, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->mWindow:Landroid/view/Window;

    const v6, -0x7ffffa00

    invoke-virtual {v5, v6}, Landroid/view/Window;->clearFlags(I)V

    .line 157
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/app/COUIAlertController;->isCenterDialog()Z

    move-result v5

    const/16 v6, 0x11

    const/4 v7, -0x2

    if-eqz v5, :cond_2

    .line 158
    sget v3, Lcoui/support/appcompat/R$style;->Animation_COUI_Dialog_Alpha:I

    iput v3, v4, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 159
    if-eqz v1, :cond_1

    .line 160
    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v5, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 161
    iput v7, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_1

    .line 163
    :cond_1
    iget v3, v0, Landroid/graphics/Point;->y:I

    iget v5, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 164
    iget-object v3, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcoui/support/appcompat/R$dimen;->alert_dialog_central_max_height:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 166
    :goto_1
    iget-object v3, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v3, v6}, Landroid/view/Window;->setGravity(I)V

    .line 167
    iget-object v3, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v3, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_3

    .line 169
    :cond_2
    sget v5, Lcoui/support/appcompat/R$style;->COUIDialogAnimation:I

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 170
    if-eqz v1, :cond_3

    .line 171
    iget-object v5, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->mWindow:Landroid/view/Window;

    const/16 v6, 0x50

    invoke-virtual {v5, v6}, Landroid/view/Window;->setGravity(I)V

    .line 172
    iget v5, v0, Landroid/graphics/Point;->x:I

    iget v6, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 173
    iput v7, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 174
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/app/COUIAlertController;->isFullScreen()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 175
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1e

    if-lt v5, v6, :cond_4

    .line 176
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 177
    invoke-static {}, Landroid/view/WindowInsets$Side;->all()I

    move-result v5

    and-int/lit8 v5, v5, -0x9

    invoke-virtual {v4, v5}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsSides(I)V

    .line 178
    invoke-virtual {v4, v3}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsIgnoringVisibility(Z)V

    .line 179
    iget-object v3, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    new-instance v5, Lcom/coui/appcompat/dialog/app/COUIAlertController$3;

    invoke-direct {v5, p0}, Lcom/coui/appcompat/dialog/app/COUIAlertController$3;-><init>(Lcom/coui/appcompat/dialog/app/COUIAlertController;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    goto :goto_2

    .line 190
    :cond_3
    iget-object v3, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v3, v6}, Landroid/view/Window;->setGravity(I)V

    .line 191
    iget v3, v0, Landroid/graphics/Point;->y:I

    iget v5, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 192
    iget-object v3, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcoui/support/appcompat/R$dimen;->alert_dialog_central_max_height:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 194
    :cond_4
    :goto_2
    iget-object v3, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v3, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 196
    :goto_3
    return-void
.end method

.method private updateWindowFlag()V
    .locals 3

    .line 319
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/app/COUIAlertController;->isGravityCenter()Z

    move-result v0

    const v1, -0x7ffffa00

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0

    .line 321
    :cond_0
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/app/COUIAlertController;->isNavigationBarShow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 322
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->mWindow:Landroid/view/Window;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 323
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->mWindow:Landroid/view/Window;

    const/high16 v2, 0x8000000

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 324
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 325
    iget-object v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 327
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected selectContentView()I
    .locals 1

    .line 148
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/app/COUIAlertController;->isCenterDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/coui/appcompat/dialog/app/AlertController;->selectContentView()I

    move-result v0

    goto :goto_0

    :cond_0
    sget v0, Lcoui/support/appcompat/R$layout;->coui_bottom_alert_dialog:I

    :goto_0
    return v0
.end method

.method protected setupButtons(Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "buttonPanel"    # Landroid/view/ViewGroup;

    .line 401
    invoke-super {p0, p1}, Lcom/coui/appcompat/dialog/app/AlertController;->setupButtons(Landroid/view/ViewGroup;)V

    .line 402
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/app/COUIAlertController;->isCenterDialog()Z

    move-result v0

    if-nez v0, :cond_0

    .line 403
    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->mIsSingleChoice:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->mIsMultiChoice:Z

    if-nez v0, :cond_0

    .line 404
    instance-of v0, p1, Lcom/coui/appcompat/widget/COUIButtonBarLayout;

    if-eqz v0, :cond_0

    .line 405
    move-object v0, p1

    check-cast v0, Lcom/coui/appcompat/widget/COUIButtonBarLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/COUIButtonBarLayout;->setForceVertical(Z)V

    .line 406
    const v0, 0x1020019

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget v1, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->mButtonColor:I

    .line 407
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 408
    const v0, 0x102001a

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget v1, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->mButtonColor:I

    .line 409
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 410
    const v0, 0x102001b

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->mContext:Landroid/content/Context;

    .line 411
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcoui/support/appcompat/R$color;->coui_bottom_alert_dialog_button_warning_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 415
    :cond_0
    return-void
.end method

.method protected setupContent(Landroid/view/ViewGroup;)V
    .locals 4
    .param p1, "contentPanel"    # Landroid/view/ViewGroup;

    .line 419
    invoke-super {p0, p1}, Lcom/coui/appcompat/dialog/app/AlertController;->setupContent(Landroid/view/ViewGroup;)V

    .line 422
    sget v0, Lcoui/support/appcompat/R$id;->listPanel:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 423
    .local v0, "listPanel":Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->mListView:Landroid/widget/ListView;

    if-eqz v1, :cond_0

    .line 424
    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->mListView:Landroid/widget/ListView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 425
    sget v1, Lcoui/support/appcompat/R$id;->coui_alert_dialog_list_divider:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 426
    .local v1, "divider":Landroid/widget/ImageView;
    if-eqz v1, :cond_0

    .line 427
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 431
    .end local v1    # "divider":Landroid/widget/ImageView;
    :cond_0
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/app/COUIAlertController;->isCenterDialog()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 432
    iget-object v1, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v1, :cond_3

    .line 433
    invoke-direct {p0, p1}, Lcom/coui/appcompat/dialog/app/COUIAlertController;->relayoutMessageView(Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 436
    :cond_1
    invoke-direct {p0, v0}, Lcom/coui/appcompat/dialog/app/COUIAlertController;->relayoutListAndMessage(Landroid/view/ViewGroup;)V

    .line 437
    iget-boolean v1, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->mIsSingleChoice:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/coui/appcompat/dialog/app/COUIAlertController;->mIsMultiChoice:Z

    if-eqz v1, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/app/COUIAlertController;->hasMessage()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/coui/appcompat/dialog/app/COUIAlertController;->hasTitle()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 438
    invoke-direct {p0, p1}, Lcom/coui/appcompat/dialog/app/COUIAlertController;->relayoutChoiceMessage(Landroid/view/ViewGroup;)V

    .line 441
    :cond_3
    :goto_0
    new-instance v1, Lcom/coui/appcompat/dialog/app/COUIAlertController$4;

    invoke-direct {v1, p0, p1}, Lcom/coui/appcompat/dialog/app/COUIAlertController$4;-><init>(Lcom/coui/appcompat/dialog/app/COUIAlertController;Landroid/view/ViewGroup;)V

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 458
    return-void
.end method

.method protected setupView()V
    .locals 3

    .line 383
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/app/COUIAlertController;->updateWindowAttributes()V

    .line 384
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/app/COUIAlertController;->addBottomSpace()V

    .line 385
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/app/COUIAlertController;->updateBg()V

    .line 386
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/app/COUIAlertController;->updateForChangeableDialog()V

    .line 387
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/app/COUIAlertController;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 388
    .local v0, "listView":Landroid/widget/ListView;
    instance-of v1, v0, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIRecyclerListView;

    if-eqz v1, :cond_0

    .line 389
    move-object v1, v0

    check-cast v1, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIRecyclerListView;

    .line 390
    .local v1, "COUIRecyclerListView":Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIRecyclerListView;
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/app/COUIAlertController;->needClipListView()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIRecyclerListView;->setNeedClip(Z)V

    .line 392
    .end local v1    # "COUIRecyclerListView":Lcom/coui/appcompat/dialog/app/COUIAlertController$COUIRecyclerListView;
    :cond_0
    invoke-super {p0}, Lcom/coui/appcompat/dialog/app/AlertController;->setupView()V

    .line 393
    return-void
.end method
