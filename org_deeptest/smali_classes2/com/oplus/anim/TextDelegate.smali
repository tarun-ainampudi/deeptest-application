.class public Lcom/oplus/anim/TextDelegate;
.super Ljava/lang/Object;
.source "TextDelegate.java"


# instance fields
.field private final animationView:Lcom/oplus/anim/EffectiveAnimationView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private cacheText:Z

.field private final drawable:Lcom/oplus/anim/EffectiveAnimationDrawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final stringMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/TextDelegate;->stringMap:Ljava/util/Map;

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/anim/TextDelegate;->cacheText:Z

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/anim/TextDelegate;->animationView:Lcom/oplus/anim/EffectiveAnimationView;

    .line 30
    iput-object v0, p0, Lcom/oplus/anim/TextDelegate;->drawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    .line 31
    return-void
.end method

.method public constructor <init>(Lcom/oplus/anim/EffectiveAnimationDrawable;)V
    .locals 1
    .param p1, "drawable"    # Lcom/oplus/anim/EffectiveAnimationDrawable;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/TextDelegate;->stringMap:Ljava/util/Map;

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/anim/TextDelegate;->cacheText:Z

    .line 41
    iput-object p1, p0, Lcom/oplus/anim/TextDelegate;->drawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/anim/TextDelegate;->animationView:Lcom/oplus/anim/EffectiveAnimationView;

    .line 43
    return-void
.end method

.method public constructor <init>(Lcom/oplus/anim/EffectiveAnimationView;)V
    .locals 1
    .param p1, "animationView"    # Lcom/oplus/anim/EffectiveAnimationView;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/TextDelegate;->stringMap:Ljava/util/Map;

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/anim/TextDelegate;->cacheText:Z

    .line 35
    iput-object p1, p0, Lcom/oplus/anim/TextDelegate;->animationView:Lcom/oplus/anim/EffectiveAnimationView;

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/anim/TextDelegate;->drawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    .line 37
    return-void
.end method

.method private getText(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "input"    # Ljava/lang/String;

    .line 50
    return-object p1
.end method

.method private invalidate()V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/oplus/anim/TextDelegate;->animationView:Lcom/oplus/anim/EffectiveAnimationView;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/oplus/anim/TextDelegate;->animationView:Lcom/oplus/anim/EffectiveAnimationView;

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationView;->invalidate()V

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/oplus/anim/TextDelegate;->drawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    if-eqz v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/oplus/anim/TextDelegate;->drawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->invalidateSelf()V

    .line 103
    :cond_1
    return-void
.end method


# virtual methods
.method public final getTextInternal(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "input"    # Ljava/lang/String;

    .line 86
    iget-boolean v0, p0, Lcom/oplus/anim/TextDelegate;->cacheText:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/anim/TextDelegate;->stringMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/oplus/anim/TextDelegate;->stringMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 89
    :cond_0
    invoke-direct {p0, p1}, Lcom/oplus/anim/TextDelegate;->getText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "text":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/oplus/anim/TextDelegate;->cacheText:Z

    if-eqz v1, :cond_1

    .line 91
    iget-object v1, p0, Lcom/oplus/anim/TextDelegate;->stringMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    :cond_1
    return-object v0
.end method

.method public invalidateAllText()V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/oplus/anim/TextDelegate;->stringMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 82
    invoke-direct {p0}, Lcom/oplus/anim/TextDelegate;->invalidate()V

    .line 83
    return-void
.end method

.method public invalidateText(Ljava/lang/String;)V
    .locals 1
    .param p1, "input"    # Ljava/lang/String;

    .line 73
    iget-object v0, p0, Lcom/oplus/anim/TextDelegate;->stringMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    invoke-direct {p0}, Lcom/oplus/anim/TextDelegate;->invalidate()V

    .line 75
    return-void
.end method

.method public setCacheText(Z)V
    .locals 0
    .param p1, "cacheText"    # Z

    .line 66
    iput-boolean p1, p0, Lcom/oplus/anim/TextDelegate;->cacheText:Z

    .line 67
    return-void
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "output"    # Ljava/lang/String;

    .line 57
    iget-object v0, p0, Lcom/oplus/anim/TextDelegate;->stringMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    invoke-direct {p0}, Lcom/oplus/anim/TextDelegate;->invalidate()V

    .line 59
    return-void
.end method
