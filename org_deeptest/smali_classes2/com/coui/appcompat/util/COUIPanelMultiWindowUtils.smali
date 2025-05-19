.class public Lcom/coui/appcompat/util/COUIPanelMultiWindowUtils;
.super Ljava/lang/Object;
.source "COUIPanelMultiWindowUtils.java"


# static fields
.field private static FULL_SCREEN_PADDING_TOP:I

.field private static NORMAL_PADDING_TOP:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static contextToActivity(Landroid/content/Context;)Landroid/app/Activity;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 166
    :goto_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    .line 167
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 168
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    return-object v0

    .line 170
    :cond_0
    move-object v0, p0

    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_0

    .line 172
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getActivityDecorViewHeight(Landroid/app/Activity;)I
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .line 48
    if-eqz p0, :cond_0

    .line 49
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 50
    .local v0, "decorView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    return v1

    .line 52
    .end local v0    # "decorView":Landroid/view/View;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getCurrentWindowVisibleHeight(Landroid/app/Activity;Landroid/content/res/Configuration;)I
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "configuration"    # Landroid/content/res/Configuration;

    .line 63
    if-eqz p0, :cond_2

    .line 64
    invoke-static {p0}, Lcom/coui/appcompat/util/COUIPanelMultiWindowUtils;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    invoke-static {p0}, Lcom/coui/appcompat/util/COUIPanelMultiWindowUtils;->getCurrentWindowVisibleRect(Landroid/app/Activity;)Landroid/graphics/Rect;

    move-result-object v0

    .line 66
    .local v0, "rect":Landroid/graphics/Rect;
    if-eqz v0, :cond_0

    .line 67
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    return v1

    .line 69
    .end local v0    # "rect":Landroid/graphics/Rect;
    :cond_0
    goto :goto_0

    .line 70
    :cond_1
    invoke-static {p0, p1}, Lcom/coui/appcompat/util/COUIPanelMultiWindowUtils;->getNormalVisibleHeight(Landroid/content/Context;Landroid/content/res/Configuration;)I

    move-result v0

    return v0

    .line 73
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getCurrentWindowVisibleRect(Landroid/app/Activity;)Landroid/graphics/Rect;
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .line 103
    if-eqz p0, :cond_0

    .line 104
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 105
    .local v0, "decorView":Landroid/view/View;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 106
    .local v1, "rect":Landroid/graphics/Rect;
    invoke-virtual {v0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 107
    return-object v1

    .line 109
    .end local v0    # "decorView":Landroid/view/View;
    .end local v1    # "rect":Landroid/graphics/Rect;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getNormalVisibleHeight(Landroid/content/Context;Landroid/content/res/Configuration;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "configuration"    # Landroid/content/res/Configuration;

    .line 83
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 84
    if-nez p1, :cond_0

    .line 85
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 87
    :cond_0
    invoke-static {p0}, Lcom/coui/appcompat/util/COUIPanelMultiWindowUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result v1

    .line 88
    .local v1, "screenHeight":I
    invoke-static {p0}, Lcom/coui/appcompat/util/COUIPanelMultiWindowUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v2

    .line 89
    .local v2, "statusBarHeight":I
    invoke-static {p0}, Lcom/coui/appcompat/util/COUINavigationBarUtil;->isNavigationBarShow(Landroid/content/Context;)Z

    move-result v3

    .line 90
    .local v3, "navigationBarShow":Z
    if-eqz v3, :cond_1

    invoke-static {p1}, Lcom/coui/appcompat/util/COUIPanelMultiWindowUtils;->isPortrait(Landroid/content/res/Configuration;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {p0}, Lcom/coui/appcompat/util/COUINavigationBarUtil;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v0

    nop

    .line 91
    .local v0, "navigationBarHeight":I
    :cond_1
    sub-int v4, v1, v2

    sub-int/2addr v4, v0

    return v4

    .line 93
    .end local v0    # "navigationBarHeight":I
    .end local v1    # "screenHeight":I
    .end local v2    # "statusBarHeight":I
    .end local v3    # "navigationBarShow":Z
    :cond_2
    return v0
.end method

.method public static getPanelMaxHeight(Landroid/content/Context;Landroid/content/res/Configuration;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "configuration"    # Landroid/content/res/Configuration;

    .line 236
    sget v0, Lcom/coui/appcompat/util/COUIPanelMultiWindowUtils;->NORMAL_PADDING_TOP:I

    if-nez v0, :cond_0

    .line 237
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$dimen;->coui_panel_normal_padding_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/coui/appcompat/util/COUIPanelMultiWindowUtils;->NORMAL_PADDING_TOP:I

    .line 239
    :cond_0
    sget v0, Lcom/coui/appcompat/util/COUIPanelMultiWindowUtils;->FULL_SCREEN_PADDING_TOP:I

    if-nez v0, :cond_1

    .line 240
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$dimen;->coui_panel_full_screen_padding_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/coui/appcompat/util/COUIPanelMultiWindowUtils;->FULL_SCREEN_PADDING_TOP:I

    .line 242
    :cond_1
    invoke-static {p0}, Lcom/coui/appcompat/util/COUIPanelMultiWindowUtils;->contextToActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    .line 244
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_2

    .line 245
    invoke-static {v0, p1}, Lcom/coui/appcompat/util/COUIPanelMultiWindowUtils;->getCurrentWindowVisibleHeight(Landroid/app/Activity;Landroid/content/res/Configuration;)I

    move-result v1

    .line 246
    .local v1, "windowViewHeight":I
    invoke-static {v0, v1}, Lcom/coui/appcompat/util/COUIPanelMultiWindowUtils;->getPanelMaxHeightIfActivityExist(Landroid/app/Activity;I)I

    move-result v1

    .line 247
    .local v1, "maxHeight":I
    goto :goto_0

    .line 248
    .end local v1    # "maxHeight":I
    :cond_2
    invoke-static {p0, p1}, Lcom/coui/appcompat/util/COUIPanelMultiWindowUtils;->getNormalVisibleHeight(Landroid/content/Context;Landroid/content/res/Configuration;)I

    move-result v1

    sget v2, Lcom/coui/appcompat/util/COUIPanelMultiWindowUtils;->NORMAL_PADDING_TOP:I

    sub-int/2addr v1, v2

    .line 250
    .restart local v1    # "maxHeight":I
    :goto_0
    return v1
.end method

.method public static getPanelMaxHeightIfActivityExist(Landroid/app/Activity;I)I
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "currentWindowViewHeight"    # I

    .line 263
    invoke-static {p0}, Lcom/coui/appcompat/util/COUIPanelMultiWindowUtils;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/coui/appcompat/util/COUIPanelMultiWindowUtils;->isDisplayInUpperWindow(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 264
    sget v0, Lcom/coui/appcompat/util/COUIPanelMultiWindowUtils;->FULL_SCREEN_PADDING_TOP:I

    if-nez v0, :cond_0

    .line 265
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$dimen;->coui_panel_full_screen_padding_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/coui/appcompat/util/COUIPanelMultiWindowUtils;->FULL_SCREEN_PADDING_TOP:I

    .line 267
    :cond_0
    sget v0, Lcom/coui/appcompat/util/COUIPanelMultiWindowUtils;->FULL_SCREEN_PADDING_TOP:I

    sub-int v0, p1, v0

    goto :goto_0

    .line 269
    :cond_1
    sget v0, Lcom/coui/appcompat/util/COUIPanelMultiWindowUtils;->NORMAL_PADDING_TOP:I

    if-nez v0, :cond_2

    .line 270
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcoui/support/appcompat/R$dimen;->coui_panel_normal_padding_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/coui/appcompat/util/COUIPanelMultiWindowUtils;->NORMAL_PADDING_TOP:I

    .line 272
    :cond_2
    sget v0, Lcom/coui/appcompat/util/COUIPanelMultiWindowUtils;->NORMAL_PADDING_TOP:I

    sub-int v0, p1, v0

    .line 274
    .local v0, "maxHeight":I
    :goto_0
    return v0
.end method

.method public static getScreenHeight(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 182
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 183
    .local v0, "windowManager":Landroid/view/WindowManager;
    if-eqz v0, :cond_1

    .line 184
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 185
    .local v1, "defaultDisplay":Landroid/view/Display;
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 186
    .local v2, "outPoint":Landroid/graphics/Point;
    if-eqz v1, :cond_0

    .line 187
    invoke-virtual {v1, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 189
    :cond_0
    iget v3, v2, Landroid/graphics/Point;->y:I

    return v3

    .line 191
    .end local v1    # "defaultDisplay":Landroid/view/Display;
    .end local v2    # "outPoint":Landroid/graphics/Point;
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public static getScreenWidth(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 202
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 203
    .local v0, "windowManager":Landroid/view/WindowManager;
    if-eqz v0, :cond_1

    .line 204
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 205
    .local v1, "defaultDisplay":Landroid/view/Display;
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 206
    .local v2, "outPoint":Landroid/graphics/Point;
    if-eqz v1, :cond_0

    .line 207
    invoke-virtual {v1, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 209
    :cond_0
    iget v3, v2, Landroid/graphics/Point;->x:I

    return v3

    .line 211
    .end local v1    # "defaultDisplay":Landroid/view/Display;
    .end local v2    # "outPoint":Landroid/graphics/Point;
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public static getStatusBarHeight(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 221
    const/4 v0, 0x0

    .line 222
    .local v0, "height":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "status_bar_height"

    const-string v3, "dimen"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 223
    .local v1, "resourceId":I
    if-lez v1, :cond_0

    .line 224
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 226
    :cond_0
    return v0
.end method

.method public static isDisplayInHorizontal(Landroid/app/Activity;)Z
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;

    .line 131
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 132
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 133
    invoke-static {p0}, Lcom/coui/appcompat/util/COUIPanelMultiWindowUtils;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 134
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 135
    .local v1, "decorView":Landroid/view/View;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 136
    .local v2, "rect":Landroid/graphics/Rect;
    invoke-virtual {v1, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 137
    iget v3, v2, Landroid/graphics/Rect;->right:I

    iget v4, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    .line 138
    .local v3, "windowWidth":I
    invoke-static {p0}, Lcom/coui/appcompat/util/COUIPanelMultiWindowUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v4

    if-ge v3, v4, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0

    .line 140
    .end local v1    # "decorView":Landroid/view/View;
    .end local v2    # "rect":Landroid/graphics/Rect;
    .end local v3    # "windowWidth":I
    :cond_1
    return v0
.end method

.method public static isDisplayInUpperWindow(Landroid/app/Activity;)Z
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;

    .line 150
    const/4 v0, 0x1

    if-eqz p0, :cond_1

    .line 151
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 152
    .local v1, "decorView":Landroid/view/View;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 153
    .local v2, "rect":Landroid/graphics/Rect;
    invoke-virtual {v1, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 154
    iget v3, v2, Landroid/graphics/Rect;->top:I

    invoke-static {p0}, Lcom/coui/appcompat/util/COUIPanelMultiWindowUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v4

    if-gt v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 156
    .end local v1    # "decorView":Landroid/view/View;
    .end local v2    # "rect":Landroid/graphics/Rect;
    :cond_1
    return v0
.end method

.method public static isInMultiWindowMode(Landroid/app/Activity;)Z
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .line 119
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    if-eqz p0, :cond_0

    .line 121
    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isPortrait(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 283
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {v0}, Lcom/coui/appcompat/util/COUIPanelMultiWindowUtils;->isPortrait(Landroid/content/res/Configuration;)Z

    move-result v0

    return v0
.end method

.method public static isPortrait(Landroid/content/res/Configuration;)Z
    .locals 2
    .param p0, "configuration"    # Landroid/content/res/Configuration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 292
    iget v0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
