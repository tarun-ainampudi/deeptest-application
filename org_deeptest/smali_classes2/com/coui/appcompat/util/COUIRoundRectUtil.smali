.class public Lcom/coui/appcompat/util/COUIRoundRectUtil;
.super Ljava/lang/Object;
.source "COUIRoundRectUtil.java"


# annotations
.annotation build Landroidx/annotation/MainThread;
.end annotation


# static fields
.field private static sInstance:Lcom/coui/appcompat/util/COUIRoundRectUtil;


# instance fields
.field private mPath:Landroid/graphics/Path;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/util/COUIRoundRectUtil;->mPath:Landroid/graphics/Path;

    .line 38
    return-void
.end method

.method public static getInstance()Lcom/coui/appcompat/util/COUIRoundRectUtil;
    .locals 1

    .line 46
    sget-object v0, Lcom/coui/appcompat/util/COUIRoundRectUtil;->sInstance:Lcom/coui/appcompat/util/COUIRoundRectUtil;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/coui/appcompat/util/COUIRoundRectUtil;

    invoke-direct {v0}, Lcom/coui/appcompat/util/COUIRoundRectUtil;-><init>()V

    sput-object v0, Lcom/coui/appcompat/util/COUIRoundRectUtil;->sInstance:Lcom/coui/appcompat/util/COUIRoundRectUtil;

    .line 49
    :cond_0
    sget-object v0, Lcom/coui/appcompat/util/COUIRoundRectUtil;->sInstance:Lcom/coui/appcompat/util/COUIRoundRectUtil;

    return-object v0
.end method


# virtual methods
.method public getPath(FFFFF)Landroid/graphics/Path;
    .locals 1
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "radius"    # F

    .line 71
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p0, v0, p5}, Lcom/coui/appcompat/util/COUIRoundRectUtil;->getPath(Landroid/graphics/RectF;F)Landroid/graphics/Path;

    move-result-object v0

    return-object v0
.end method

.method public getPath(FFFFFZZZZ)Landroid/graphics/Path;
    .locals 12
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "radius"    # F
    .param p6, "tl"    # Z
    .param p7, "tr"    # Z
    .param p8, "bl"    # Z
    .param p9, "br"    # Z

    .line 90
    move-object v0, p0

    iget-object v1, v0, Lcom/coui/appcompat/util/COUIRoundRectUtil;->mPath:Landroid/graphics/Path;

    new-instance v2, Landroid/graphics/RectF;

    move v8, p1

    move v9, p2

    move v10, p3

    move/from16 v11, p4

    invoke-direct {v2, p1, p2, p3, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    invoke-static/range {v1 .. v7}, Lcom/coui/appcompat/widget/shape/COUIShapePath;->getRoundRectPath(Landroid/graphics/Path;Landroid/graphics/RectF;FZZZZ)Landroid/graphics/Path;

    move-result-object v1

    return-object v1
.end method

.method public getPath(Landroid/graphics/Rect;F)Landroid/graphics/Path;
    .locals 1
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "radius"    # F

    .line 56
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v0, p2}, Lcom/coui/appcompat/util/COUIRoundRectUtil;->getPath(Landroid/graphics/RectF;F)Landroid/graphics/Path;

    move-result-object v0

    return-object v0
.end method

.method public getPath(Landroid/graphics/RectF;F)Landroid/graphics/Path;
    .locals 1
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "radius"    # F

    .line 63
    iget-object v0, p0, Lcom/coui/appcompat/util/COUIRoundRectUtil;->mPath:Landroid/graphics/Path;

    invoke-static {v0, p1, p2}, Lcom/coui/appcompat/widget/shape/COUIShapePath;->getRoundRectPath(Landroid/graphics/Path;Landroid/graphics/RectF;F)Landroid/graphics/Path;

    move-result-object v0

    return-object v0
.end method
