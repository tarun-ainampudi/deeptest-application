.class public Lcom/coui/appcompat/util/COUIDarkModeHelper;
.super Ljava/lang/Object;
.source "COUIDarkModeHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/util/COUIDarkModeHelper$Holder;,
        Lcom/coui/appcompat/util/COUIDarkModeHelper$COUIDarkColorObserver;,
        Lcom/coui/appcompat/util/COUIDarkModeHelper$ICOUIDarkColorObserver;
    }
.end annotation


# static fields
.field private static final KEY_BACKGROUNDMAXL:Ljava/lang/String; = "DarkMode_BackgroundMaxL"

.field private static final KEY_DIALOGBGMAXL:Ljava/lang/String; = "DarkMode_DialogBgMaxL"

.field private static final KEY_FOREGROUNDMINL:Ljava/lang/String; = "DarkMode_ForegroundMinL"


# instance fields
.field private mObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coui/appcompat/util/COUIDarkModeHelper$ICOUIDarkColorObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mSystemDarkModeBackgroundMaxL:F

.field private mSystemDarkModeDialogBgMaxL:F

.field private mSystemDarkModeForegroundMinL:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/coui/appcompat/util/COUIDarkModeHelper;->mSystemDarkModeDialogBgMaxL:F

    .line 19
    iput v0, p0, Lcom/coui/appcompat/util/COUIDarkModeHelper;->mSystemDarkModeBackgroundMaxL:F

    .line 20
    iput v0, p0, Lcom/coui/appcompat/util/COUIDarkModeHelper;->mSystemDarkModeForegroundMinL:F

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/util/COUIDarkModeHelper;->mObservers:Ljava/util/List;

    return-void
.end method

.method private COUIDarkModeHelper()V
    .locals 0

    .line 106
    return-void
.end method

.method static synthetic access$002(Lcom/coui/appcompat/util/COUIDarkModeHelper;F)F
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/util/COUIDarkModeHelper;
    .param p1, "x1"    # F

    .line 14
    iput p1, p0, Lcom/coui/appcompat/util/COUIDarkModeHelper;->mSystemDarkModeDialogBgMaxL:F

    return p1
.end method

.method static synthetic access$100(Lcom/coui/appcompat/util/COUIDarkModeHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/util/COUIDarkModeHelper;

    .line 14
    invoke-direct {p0}, Lcom/coui/appcompat/util/COUIDarkModeHelper;->notifyDialogBackgroundObserver()V

    return-void
.end method

.method static synthetic access$202(Lcom/coui/appcompat/util/COUIDarkModeHelper;F)F
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/util/COUIDarkModeHelper;
    .param p1, "x1"    # F

    .line 14
    iput p1, p0, Lcom/coui/appcompat/util/COUIDarkModeHelper;->mSystemDarkModeBackgroundMaxL:F

    return p1
.end method

.method static synthetic access$300(Lcom/coui/appcompat/util/COUIDarkModeHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/util/COUIDarkModeHelper;

    .line 14
    invoke-direct {p0}, Lcom/coui/appcompat/util/COUIDarkModeHelper;->notifyBackgroundObserver()V

    return-void
.end method

.method static synthetic access$402(Lcom/coui/appcompat/util/COUIDarkModeHelper;F)F
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/util/COUIDarkModeHelper;
    .param p1, "x1"    # F

    .line 14
    iput p1, p0, Lcom/coui/appcompat/util/COUIDarkModeHelper;->mSystemDarkModeForegroundMinL:F

    return p1
.end method

.method static synthetic access$500(Lcom/coui/appcompat/util/COUIDarkModeHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/coui/appcompat/util/COUIDarkModeHelper;

    .line 14
    invoke-direct {p0}, Lcom/coui/appcompat/util/COUIDarkModeHelper;->notifyForegroundObserver()V

    return-void
.end method

.method public static getInstance()Lcom/coui/appcompat/util/COUIDarkModeHelper;
    .locals 1

    .line 109
    sget-object v0, Lcom/coui/appcompat/util/COUIDarkModeHelper$Holder;->INSTANCE:Lcom/coui/appcompat/util/COUIDarkModeHelper;

    return-object v0
.end method

.method private initObserver(Landroid/content/Context;)V
    .locals 5
    .param p1, "mServerContext"    # Landroid/content/Context;

    .line 171
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "DarkMode_DialogBgMaxL"

    const/high16 v2, -0x40800000    # -1.0f

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/util/COUIDarkModeHelper;->mSystemDarkModeDialogBgMaxL:F

    .line 173
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "DarkMode_BackgroundMaxL"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/util/COUIDarkModeHelper;->mSystemDarkModeBackgroundMaxL:F

    .line 175
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "DarkMode_ForegroundMinL"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/util/COUIDarkModeHelper;->mSystemDarkModeForegroundMinL:F

    .line 177
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "DarkMode_DialogBgMaxL"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/coui/appcompat/util/COUIDarkModeHelper$1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3, p1}, Lcom/coui/appcompat/util/COUIDarkModeHelper$1;-><init>(Lcom/coui/appcompat/util/COUIDarkModeHelper;Landroid/os/Handler;Landroid/content/Context;)V

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 187
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "DarkMode_BackgroundMaxL"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/coui/appcompat/util/COUIDarkModeHelper$2;

    invoke-direct {v2, p0, v3, p1}, Lcom/coui/appcompat/util/COUIDarkModeHelper$2;-><init>(Lcom/coui/appcompat/util/COUIDarkModeHelper;Landroid/os/Handler;Landroid/content/Context;)V

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 197
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "DarkMode_ForegroundMinL"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/coui/appcompat/util/COUIDarkModeHelper$3;

    invoke-direct {v2, p0, v3, p1}, Lcom/coui/appcompat/util/COUIDarkModeHelper$3;-><init>(Lcom/coui/appcompat/util/COUIDarkModeHelper;Landroid/os/Handler;Landroid/content/Context;)V

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 207
    return-void
.end method

.method private notifyBackgroundObserver()V
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/coui/appcompat/util/COUIDarkModeHelper;->mObservers:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/util/COUIDarkModeHelper;->mObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/util/COUIDarkModeHelper;->mObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/util/COUIDarkModeHelper$ICOUIDarkColorObserver;

    .line 51
    .local v1, "observer":Lcom/coui/appcompat/util/COUIDarkModeHelper$ICOUIDarkColorObserver;
    invoke-interface {v1}, Lcom/coui/appcompat/util/COUIDarkModeHelper$ICOUIDarkColorObserver;->onBackgroundChange()V

    .line 52
    .end local v1    # "observer":Lcom/coui/appcompat/util/COUIDarkModeHelper$ICOUIDarkColorObserver;
    goto :goto_0

    .line 53
    :cond_1
    return-void

    .line 48
    :cond_2
    :goto_1
    return-void
.end method

.method private notifyDialogBackgroundObserver()V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/coui/appcompat/util/COUIDarkModeHelper;->mObservers:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/util/COUIDarkModeHelper;->mObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/util/COUIDarkModeHelper;->mObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/util/COUIDarkModeHelper$ICOUIDarkColorObserver;

    .line 69
    .local v1, "observer":Lcom/coui/appcompat/util/COUIDarkModeHelper$ICOUIDarkColorObserver;
    invoke-interface {v1}, Lcom/coui/appcompat/util/COUIDarkModeHelper$ICOUIDarkColorObserver;->onDialogBackgroundChange()V

    .line 70
    .end local v1    # "observer":Lcom/coui/appcompat/util/COUIDarkModeHelper$ICOUIDarkColorObserver;
    goto :goto_0

    .line 71
    :cond_1
    return-void

    .line 66
    :cond_2
    :goto_1
    return-void
.end method

.method private notifyForegroundObserver()V
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/coui/appcompat/util/COUIDarkModeHelper;->mObservers:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/util/COUIDarkModeHelper;->mObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/util/COUIDarkModeHelper;->mObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/util/COUIDarkModeHelper$ICOUIDarkColorObserver;

    .line 60
    .local v1, "observer":Lcom/coui/appcompat/util/COUIDarkModeHelper$ICOUIDarkColorObserver;
    invoke-interface {v1}, Lcom/coui/appcompat/util/COUIDarkModeHelper$ICOUIDarkColorObserver;->onForegroundChange()V

    .line 61
    .end local v1    # "observer":Lcom/coui/appcompat/util/COUIDarkModeHelper$ICOUIDarkColorObserver;
    goto :goto_0

    .line 62
    :cond_1
    return-void

    .line 57
    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public addObserver(Lcom/coui/appcompat/util/COUIDarkModeHelper$COUIDarkColorObserver;)V
    .locals 1
    .param p1, "observer"    # Lcom/coui/appcompat/util/COUIDarkModeHelper$COUIDarkColorObserver;

    .line 74
    if-nez p1, :cond_0

    .line 75
    return-void

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/util/COUIDarkModeHelper;->mObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/coui/appcompat/util/COUIDarkModeHelper;->mObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    :cond_1
    return-void
.end method

.method public attach(Landroid/app/Application;)V
    .locals 1
    .param p1, "application"    # Landroid/app/Application;

    .line 113
    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/util/COUIDarkModeHelper;->initObserver(Landroid/content/Context;)V

    .line 114
    return-void
.end method

.method public getBackgroundColor()I
    .locals 1

    .line 90
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/util/COUIDarkModeHelper;->makeDark(I)I

    move-result v0

    return v0
.end method

.method public getDialogBackgroundColor()I
    .locals 1

    .line 94
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/util/COUIDarkModeHelper;->makeDialogDark(I)I

    move-result v0

    return v0
.end method

.method public getForegroundColor()I
    .locals 1

    .line 98
    const/high16 v0, -0x1000000

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/util/COUIDarkModeHelper;->makeLight(I)I

    move-result v0

    return v0
.end method

.method public makeDark(I)I
    .locals 13
    .param p1, "originColor"    # I

    .line 117
    iget v0, p0, Lcom/coui/appcompat/util/COUIDarkModeHelper;->mSystemDarkModeBackgroundMaxL:F

    .line 118
    .local v0, "backgroundMaxL":F
    const/4 v1, 0x3

    new-array v1, v1, [D

    .line 119
    .local v1, "lab":[D
    invoke-static {p1, v1}, Landroidx/core/graphics/ColorUtils;->colorToLAB(I[D)V

    .line 120
    const/4 v2, 0x0

    aget-wide v3, v1, v2

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    sub-double/2addr v5, v3

    .line 121
    .local v5, "invertedL":D
    aget-wide v3, v1, v2

    cmpg-double v3, v5, v3

    if-gez v3, :cond_1

    .line 122
    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v3, v0, v3

    if-eqz v3, :cond_0

    .line 123
    float-to-double v3, v0

    const-wide/high16 v7, 0x4049000000000000L    # 50.0

    div-double v7, v5, v7

    const/high16 v9, 0x42480000    # 50.0f

    sub-float/2addr v9, v0

    float-to-double v9, v9

    mul-double/2addr v7, v9

    add-double v5, v3, v7

    .line 125
    :cond_0
    aput-wide v5, v1, v2

    .line 126
    aget-wide v7, v1, v2

    const/4 v2, 0x1

    aget-wide v9, v1, v2

    const/4 v2, 0x2

    aget-wide v11, v1, v2

    invoke-static/range {v7 .. v12}, Landroidx/core/graphics/ColorUtils;->LABToColor(DDD)I

    move-result v2

    .line 127
    .local v2, "newColor":I
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v7

    .line 128
    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v8

    .line 127
    invoke-static {v3, v4, v7, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    return v3

    .line 130
    .end local v2    # "newColor":I
    :cond_1
    return p1
.end method

.method public makeDialogDark(I)I
    .locals 13
    .param p1, "originColor"    # I

    .line 153
    iget v0, p0, Lcom/coui/appcompat/util/COUIDarkModeHelper;->mSystemDarkModeDialogBgMaxL:F

    .line 154
    .local v0, "dialogBgMaxL":F
    const/4 v1, 0x3

    new-array v1, v1, [D

    .line 155
    .local v1, "lab":[D
    invoke-static {p1, v1}, Landroidx/core/graphics/ColorUtils;->colorToLAB(I[D)V

    .line 156
    const/4 v2, 0x0

    aget-wide v3, v1, v2

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    sub-double/2addr v5, v3

    .line 157
    .local v5, "invertedL":D
    aget-wide v3, v1, v2

    cmpg-double v3, v5, v3

    if-gez v3, :cond_1

    .line 158
    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v3, v0, v3

    if-eqz v3, :cond_0

    .line 159
    float-to-double v3, v0

    const-wide/high16 v7, 0x4049000000000000L    # 50.0

    div-double v7, v5, v7

    const/high16 v9, 0x42480000    # 50.0f

    sub-float/2addr v9, v0

    float-to-double v9, v9

    mul-double/2addr v7, v9

    add-double v5, v3, v7

    .line 161
    :cond_0
    aput-wide v5, v1, v2

    .line 162
    aget-wide v7, v1, v2

    const/4 v2, 0x1

    aget-wide v9, v1, v2

    const/4 v2, 0x2

    aget-wide v11, v1, v2

    invoke-static/range {v7 .. v12}, Landroidx/core/graphics/ColorUtils;->LABToColor(DDD)I

    move-result v2

    .line 163
    .local v2, "newColor":I
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v7

    .line 164
    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v8

    .line 163
    invoke-static {v3, v4, v7, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    return v3

    .line 166
    .end local v2    # "newColor":I
    :cond_1
    return p1
.end method

.method public makeLight(I)I
    .locals 13
    .param p1, "originColor"    # I

    .line 135
    iget v0, p0, Lcom/coui/appcompat/util/COUIDarkModeHelper;->mSystemDarkModeForegroundMinL:F

    .line 136
    .local v0, "foregroundMinL":F
    const/4 v1, 0x3

    new-array v1, v1, [D

    .line 137
    .local v1, "lab":[D
    invoke-static {p1, v1}, Landroidx/core/graphics/ColorUtils;->colorToLAB(I[D)V

    .line 138
    const/4 v2, 0x0

    aget-wide v3, v1, v2

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    sub-double/2addr v5, v3

    .line 139
    .local v5, "invertedL":D
    aget-wide v3, v1, v2

    cmpl-double v3, v5, v3

    if-lez v3, :cond_1

    .line 140
    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v3, v0, v3

    if-eqz v3, :cond_0

    .line 141
    const-wide/high16 v3, 0x4049000000000000L    # 50.0

    sub-double v7, v5, v3

    div-double/2addr v7, v3

    const/high16 v9, 0x42480000    # 50.0f

    sub-float v9, v0, v9

    float-to-double v9, v9

    mul-double/2addr v7, v9

    add-double v5, v7, v3

    .line 143
    :cond_0
    aput-wide v5, v1, v2

    .line 144
    aget-wide v7, v1, v2

    const/4 v2, 0x1

    aget-wide v9, v1, v2

    const/4 v2, 0x2

    aget-wide v11, v1, v2

    invoke-static/range {v7 .. v12}, Landroidx/core/graphics/ColorUtils;->LABToColor(DDD)I

    move-result v2

    .line 145
    .local v2, "newColor":I
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v7

    .line 146
    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v8

    .line 145
    invoke-static {v3, v4, v7, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    return v3

    .line 148
    .end local v2    # "newColor":I
    :cond_1
    return p1
.end method

.method public removeObserver(Lcom/coui/appcompat/util/COUIDarkModeHelper$COUIDarkColorObserver;)V
    .locals 1
    .param p1, "observer"    # Lcom/coui/appcompat/util/COUIDarkModeHelper$COUIDarkColorObserver;

    .line 83
    if-nez p1, :cond_0

    .line 84
    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/util/COUIDarkModeHelper;->mObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 87
    return-void
.end method
