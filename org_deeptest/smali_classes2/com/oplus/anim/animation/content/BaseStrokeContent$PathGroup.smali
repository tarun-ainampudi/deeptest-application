.class final Lcom/oplus/anim/animation/content/BaseStrokeContent$PathGroup;
.super Ljava/lang/Object;
.source "BaseStrokeContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/anim/animation/content/BaseStrokeContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PathGroup"
.end annotation


# instance fields
.field private final paths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/anim/animation/content/PathContent;",
            ">;"
        }
    .end annotation
.end field

.field private final trimPath:Lcom/oplus/anim/animation/content/TrimPathContent;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/oplus/anim/animation/content/TrimPathContent;)V
    .locals 1
    .param p1, "trimPath"    # Lcom/oplus/anim/animation/content/TrimPathContent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 335
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent$PathGroup;->paths:Ljava/util/List;

    .line 340
    iput-object p1, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent$PathGroup;->trimPath:Lcom/oplus/anim/animation/content/TrimPathContent;

    .line 341
    return-void
.end method

.method synthetic constructor <init>(Lcom/oplus/anim/animation/content/TrimPathContent;Lcom/oplus/anim/animation/content/BaseStrokeContent$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oplus/anim/animation/content/TrimPathContent;
    .param p2, "x1"    # Lcom/oplus/anim/animation/content/BaseStrokeContent$1;

    .line 334
    invoke-direct {p0, p1}, Lcom/oplus/anim/animation/content/BaseStrokeContent$PathGroup;-><init>(Lcom/oplus/anim/animation/content/TrimPathContent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/oplus/anim/animation/content/BaseStrokeContent$PathGroup;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/oplus/anim/animation/content/BaseStrokeContent$PathGroup;

    .line 334
    iget-object v0, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent$PathGroup;->paths:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oplus/anim/animation/content/BaseStrokeContent$PathGroup;)Lcom/oplus/anim/animation/content/TrimPathContent;
    .locals 1
    .param p0, "x0"    # Lcom/oplus/anim/animation/content/BaseStrokeContent$PathGroup;

    .line 334
    iget-object v0, p0, Lcom/oplus/anim/animation/content/BaseStrokeContent$PathGroup;->trimPath:Lcom/oplus/anim/animation/content/TrimPathContent;

    return-object v0
.end method
