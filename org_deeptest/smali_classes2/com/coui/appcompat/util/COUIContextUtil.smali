.class public Lcom/coui/appcompat/util/COUIContextUtil;
.super Ljava/lang/Object;
.source "COUIContextUtil.java"


# static fields
.field private static final METADATA_STYLE_TITLE:Ljava/lang/String; = "coui.appcompat.options"

.field private static final METADATA_STYLE_VALUE:Ljava/lang/String; = "true"

.field private static final TAG:Ljava/lang/String; = "COUIContextUtil"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/util/COUIContextUtil;->mContext:Landroid/content/Context;

    .line 55
    iget-object v0, p0, Lcom/coui/appcompat/util/COUIContextUtil;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 56
    iput-object p1, p0, Lcom/coui/appcompat/util/COUIContextUtil;->mContext:Landroid/content/Context;

    .line 58
    :cond_0
    return-void
.end method

.method public static getAttrColor(Landroid/content/Context;I)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attr"    # I

    .line 146
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/coui/appcompat/util/COUIContextUtil;->getAttrColor(Landroid/content/Context;II)I

    move-result v0

    return v0
.end method

.method public static getAttrColor(Landroid/content/Context;II)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attr"    # I
    .param p2, "defaultColor"    # I

    .line 156
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 157
    .local v0, "colorAttr":[I
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 158
    .local v2, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v2, v1, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 159
    .local v1, "color":I
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 160
    return v1
.end method

.method public static getCOUIThemeContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 101
    invoke-static {p0}, Lcom/coui/appcompat/util/COUIContextUtil;->isCOUITheme(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/view/ContextThemeWrapper;

    sget v1, Lcoui/support/appcompat/R$style;->Theme_COUI:I

    invoke-direct {v0, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    :goto_0
    return-object v0
.end method

.method public static getResId(Landroid/content/Context;I)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .line 114
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 115
    .local v0, "value":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 116
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    return v1
.end method

.method public static isCOUIStyle(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 127
    :try_start_0
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    .line 129
    invoke-virtual {v1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    const/16 v2, 0x80

    .line 128
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 130
    .local v0, "info":Landroid/content/pm/ActivityInfo;
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 131
    const-string v1, "true"

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "coui.appcompat.options"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    .line 132
    const/4 v1, 0x1

    return v1

    .line 138
    .end local v0    # "info":Landroid/content/pm/ActivityInfo;
    :cond_0
    goto :goto_0

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "COUIContextUtil"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/coui/appcompat/util/COUILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-static {p0}, Lcom/coui/appcompat/util/COUIContextUtil;->isCOUITheme(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isCOUITheme(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 85
    const/4 v0, 0x0

    .line 86
    .local v0, "isCOUITheme":Z
    if-eqz p0, :cond_0

    .line 87
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v2, Lcoui/support/appcompat/R$styleable;->COUITheme:[I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 88
    .local v1, "a":Landroid/content/res/TypedArray;
    sget v2, Lcoui/support/appcompat/R$styleable;->COUITheme_isCOUITheme:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 89
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 91
    .end local v1    # "a":Landroid/content/res/TypedArray;
    :cond_0
    return v0
.end method


# virtual methods
.method public isCOUITheme()Z
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/coui/appcompat/util/COUIContextUtil;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coui/appcompat/util/COUIContextUtil;->isCOUITheme(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 66
    if-eqz p1, :cond_0

    .line 67
    iput-object p1, p0, Lcom/coui/appcompat/util/COUIContextUtil;->mContext:Landroid/content/Context;

    .line 69
    :cond_0
    return-void
.end method
