.class public Lcom/oplus/anim/EffectiveAnimationDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "EffectiveAnimationDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/anim/EffectiveAnimationDrawable$ColorFilterData;,
        Lcom/oplus/anim/EffectiveAnimationDrawable$RepeatMode;,
        Lcom/oplus/anim/EffectiveAnimationDrawable$LazyCompositionTask;
    }
.end annotation


# static fields
.field public static final INFINITE:I = -0x1

.field public static final RESTART:I = 0x1

.field public static final REVERSE:I = 0x2

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private alpha:I

.field private final animator:Lcom/oplus/anim/utils/EffectiveValueAnimator;

.field private final colorFilterData:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/oplus/anim/EffectiveAnimationDrawable$ColorFilterData;",
            ">;"
        }
    .end annotation
.end field

.field private composition:Lcom/oplus/anim/EffectiveAnimationComposition;

.field private compositionLayer:Lcom/oplus/anim/model/layer/CompositionLayer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private enableMergePaths:Z

.field fontAssetDelegate:Lcom/oplus/anim/FontAssetDelegate;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private fontAssetManager:Lcom/oplus/anim/manager/FontAssetManager;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private imageAssetDelegate:Lcom/oplus/anim/ImageAssetDelegate;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private imageAssetManager:Lcom/oplus/anim/manager/ImageAssetManager;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private imageAssetsFolder:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private isDirty:Z

.field private final lazyCompositionTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oplus/anim/EffectiveAnimationDrawable$LazyCompositionTask;",
            ">;"
        }
    .end annotation
.end field

.field private final matrix:Landroid/graphics/Matrix;

.field private performanceTrackingEnabled:Z

.field private scale:F

.field textDelegate:Lcom/oplus/anim/TextDelegate;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 70
    const-class v0, Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/anim/EffectiveAnimationDrawable;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 100
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 71
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->matrix:Landroid/graphics/Matrix;

    .line 72
    new-instance v0, Lcom/oplus/anim/utils/EffectiveValueAnimator;

    invoke-direct {v0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->animator:Lcom/oplus/anim/utils/EffectiveValueAnimator;

    .line 73
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->colorFilterData:Ljava/util/Set;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    .line 80
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->scale:F

    .line 92
    const/16 v0, 0xff

    iput v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->alpha:I

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->isDirty:Z

    .line 101
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->animator:Lcom/oplus/anim/utils/EffectiveValueAnimator;

    new-instance v1, Lcom/oplus/anim/EffectiveAnimationDrawable$1;

    invoke-direct {v1, p0}, Lcom/oplus/anim/EffectiveAnimationDrawable$1;-><init>(Lcom/oplus/anim/EffectiveAnimationDrawable;)V

    invoke-virtual {v0, v1}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 109
    return-void
.end method

.method static synthetic access$000(Lcom/oplus/anim/EffectiveAnimationDrawable;)Lcom/oplus/anim/model/layer/CompositionLayer;
    .locals 1
    .param p0, "x0"    # Lcom/oplus/anim/EffectiveAnimationDrawable;

    .line 54
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->compositionLayer:Lcom/oplus/anim/model/layer/CompositionLayer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oplus/anim/EffectiveAnimationDrawable;)Lcom/oplus/anim/utils/EffectiveValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/oplus/anim/EffectiveAnimationDrawable;

    .line 54
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->animator:Lcom/oplus/anim/utils/EffectiveValueAnimator;

    return-object v0
.end method

.method private buildCompositionLayer()V
    .locals 4

    .line 232
    new-instance v0, Lcom/oplus/anim/model/layer/CompositionLayer;

    iget-object v1, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    .line 233
    invoke-static {v1}, Lcom/oplus/anim/parser/LayerParser;->parse(Lcom/oplus/anim/EffectiveAnimationComposition;)Lcom/oplus/anim/model/layer/Layer;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    invoke-virtual {v2}, Lcom/oplus/anim/EffectiveAnimationComposition;->getLayers()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/oplus/anim/model/layer/CompositionLayer;-><init>(Lcom/oplus/anim/EffectiveAnimationDrawable;Lcom/oplus/anim/model/layer/Layer;Ljava/util/List;Lcom/oplus/anim/EffectiveAnimationComposition;)V

    iput-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->compositionLayer:Lcom/oplus/anim/model/layer/CompositionLayer;

    .line 234
    return-void
.end method

.method private getContext()Landroid/content/Context;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 979
    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 980
    .local v0, "callback":Landroid/graphics/drawable/Drawable$Callback;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 981
    return-object v1

    .line 984
    :cond_0
    instance-of v2, v0, Landroid/view/View;

    if-eqz v2, :cond_1

    .line 985
    move-object v1, v0

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    return-object v1

    .line 987
    :cond_1
    return-object v1
.end method

.method private getFontAssetManager()Lcom/oplus/anim/manager/FontAssetManager;
    .locals 3

    .line 965
    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-nez v0, :cond_0

    .line 967
    const/4 v0, 0x0

    return-object v0

    .line 970
    :cond_0
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->fontAssetManager:Lcom/oplus/anim/manager/FontAssetManager;

    if-nez v0, :cond_1

    .line 971
    new-instance v0, Lcom/oplus/anim/manager/FontAssetManager;

    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->fontAssetDelegate:Lcom/oplus/anim/FontAssetDelegate;

    invoke-direct {v0, v1, v2}, Lcom/oplus/anim/manager/FontAssetManager;-><init>(Landroid/graphics/drawable/Drawable$Callback;Lcom/oplus/anim/FontAssetDelegate;)V

    iput-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->fontAssetManager:Lcom/oplus/anim/manager/FontAssetManager;

    .line 974
    :cond_1
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->fontAssetManager:Lcom/oplus/anim/manager/FontAssetManager;

    return-object v0
.end method

.method private getImageAssetManager()Lcom/oplus/anim/manager/ImageAssetManager;
    .locals 5

    .line 938
    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 940
    return-object v1

    .line 943
    :cond_0
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->imageAssetManager:Lcom/oplus/anim/manager/ImageAssetManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->imageAssetManager:Lcom/oplus/anim/manager/ImageAssetManager;

    invoke-direct {p0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/oplus/anim/manager/ImageAssetManager;->hasSameContext(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 944
    iput-object v1, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->imageAssetManager:Lcom/oplus/anim/manager/ImageAssetManager;

    .line 947
    :cond_1
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->imageAssetManager:Lcom/oplus/anim/manager/ImageAssetManager;

    if-nez v0, :cond_2

    .line 948
    new-instance v0, Lcom/oplus/anim/manager/ImageAssetManager;

    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->imageAssetsFolder:Ljava/lang/String;

    iget-object v3, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->imageAssetDelegate:Lcom/oplus/anim/ImageAssetDelegate;

    iget-object v4, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    .line 949
    invoke-virtual {v4}, Lcom/oplus/anim/EffectiveAnimationComposition;->getImages()Ljava/util/Map;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oplus/anim/manager/ImageAssetManager;-><init>(Landroid/graphics/drawable/Drawable$Callback;Ljava/lang/String;Lcom/oplus/anim/ImageAssetDelegate;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->imageAssetManager:Lcom/oplus/anim/manager/ImageAssetManager;

    .line 952
    :cond_2
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->imageAssetManager:Lcom/oplus/anim/manager/ImageAssetManager;

    return-object v0
.end method

.method private getMaxScale(Landroid/graphics/Canvas;)F
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1026
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    invoke-virtual {v1}, Lcom/oplus/anim/EffectiveAnimationComposition;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 1027
    .local v0, "maxScaleX":F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    invoke-virtual {v2}, Lcom/oplus/anim/EffectiveAnimationComposition;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 1028
    .local v1, "maxScaleY":F
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    return v2
.end method

.method private updateBounds()V
    .locals 4

    .line 778
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    if-nez v0, :cond_0

    .line 779
    return-void

    .line 781
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->getScale()F

    move-result v0

    .line 782
    .local v0, "scale":F
    iget-object v1, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    invoke-virtual {v1}, Lcom/oplus/anim/EffectiveAnimationComposition;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iget-object v2, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    .line 783
    invoke-virtual {v2}, Lcom/oplus/anim/EffectiveAnimationComposition;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    .line 782
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v3, v1, v2}, Lcom/oplus/anim/EffectiveAnimationDrawable;->setBounds(IIII)V

    .line 784
    return-void
.end method


# virtual methods
.method public addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .line 614
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->animator:Lcom/oplus/anim/utils/EffectiveValueAnimator;

    invoke-virtual {v0, p1}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 615
    return-void
.end method

.method public addAnimatorUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 1
    .param p1, "updateListener"    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 602
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->animator:Lcom/oplus/anim/utils/EffectiveValueAnimator;

    invoke-virtual {v0, p1}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 603
    return-void
.end method

.method public addValueCallback(Lcom/oplus/anim/model/KeyPath;Ljava/lang/Object;Lcom/oplus/anim/value/EffectiveValueCallback;)V
    .locals 4
    .param p1, "keyPath"    # Lcom/oplus/anim/model/KeyPath;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oplus/anim/model/KeyPath;",
            "TT;",
            "Lcom/oplus/anim/value/EffectiveValueCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 851
    .local p2, "property":Ljava/lang/Object;, "TT;"
    .local p3, "callback":Lcom/oplus/anim/value/EffectiveValueCallback;, "Lcom/oplus/anim/value/EffectiveValueCallback<TT;>;"
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->compositionLayer:Lcom/oplus/anim/model/layer/CompositionLayer;

    if-nez v0, :cond_0

    .line 852
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v1, Lcom/oplus/anim/EffectiveAnimationDrawable$15;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/oplus/anim/EffectiveAnimationDrawable$15;-><init>(Lcom/oplus/anim/EffectiveAnimationDrawable;Lcom/oplus/anim/model/KeyPath;Ljava/lang/Object;Lcom/oplus/anim/value/EffectiveValueCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 858
    return-void

    .line 861
    :cond_0
    invoke-virtual {p1}, Lcom/oplus/anim/model/KeyPath;->getResolvedElement()Lcom/oplus/anim/model/KeyPathElement;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 862
    invoke-virtual {p1}, Lcom/oplus/anim/model/KeyPath;->getResolvedElement()Lcom/oplus/anim/model/KeyPathElement;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Lcom/oplus/anim/model/KeyPathElement;->addValueCallback(Ljava/lang/Object;Lcom/oplus/anim/value/EffectiveValueCallback;)V

    .line 863
    const/4 v0, 0x1

    goto :goto_1

    .line 865
    :cond_1
    invoke-virtual {p0, p1}, Lcom/oplus/anim/EffectiveAnimationDrawable;->resolveKeyPath(Lcom/oplus/anim/model/KeyPath;)Ljava/util/List;

    move-result-object v0

    .line 867
    .local v0, "elements":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/KeyPath;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 868
    sget-boolean v2, Lcom/oplus/anim/utils/OplusLog;->DEBUG_KEYPATH:Z

    if-eqz v2, :cond_2

    .line 869
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EffectiveAnimationDrawable::KeyPath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/oplus/anim/utils/OplusLog;->d(Ljava/lang/String;)V

    .line 872
    :cond_2
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/anim/model/KeyPath;

    invoke-virtual {v2}, Lcom/oplus/anim/model/KeyPath;->getResolvedElement()Lcom/oplus/anim/model/KeyPathElement;

    move-result-object v2

    invoke-interface {v2, p2, p3}, Lcom/oplus/anim/model/KeyPathElement;->addValueCallback(Ljava/lang/Object;Lcom/oplus/anim/value/EffectiveValueCallback;)V

    .line 867
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 874
    .end local v1    # "i":I
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    move v0, v1

    .line 876
    .local v0, "invalidate":Z
    :goto_1
    if-eqz v0, :cond_4

    .line 877
    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->invalidateSelf()V

    .line 878
    sget-object v1, Lcom/oplus/anim/EffectiveAnimationProperty;->TIME_REMAP:Ljava/lang/Float;

    if-ne p2, v1, :cond_4

    .line 882
    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->getProgress()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/oplus/anim/EffectiveAnimationDrawable;->setProgress(F)V

    .line 885
    :cond_4
    return-void
.end method

.method public addValueCallback(Lcom/oplus/anim/model/KeyPath;Ljava/lang/Object;Lcom/oplus/anim/value/SimpleValueCallback;)V
    .locals 1
    .param p1, "keyPath"    # Lcom/oplus/anim/model/KeyPath;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oplus/anim/model/KeyPath;",
            "TT;",
            "Lcom/oplus/anim/value/SimpleValueCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 894
    .local p2, "property":Ljava/lang/Object;, "TT;"
    .local p3, "callback":Lcom/oplus/anim/value/SimpleValueCallback;, "Lcom/oplus/anim/value/SimpleValueCallback<TT;>;"
    new-instance v0, Lcom/oplus/anim/EffectiveAnimationDrawable$16;

    invoke-direct {v0, p0, p3}, Lcom/oplus/anim/EffectiveAnimationDrawable$16;-><init>(Lcom/oplus/anim/EffectiveAnimationDrawable;Lcom/oplus/anim/value/SimpleValueCallback;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->addValueCallback(Lcom/oplus/anim/model/KeyPath;Ljava/lang/Object;Lcom/oplus/anim/value/EffectiveValueCallback;)V

    .line 900
    return-void
.end method

.method public cancelAnimation()V
    .locals 1

    .line 787
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 788
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->animator:Lcom/oplus/anim/utils/EffectiveValueAnimator;

    invoke-virtual {v0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->cancel()V

    .line 789
    return-void
.end method

.method public clearComposition()V
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->animator:Lcom/oplus/anim/utils/EffectiveValueAnimator;

    invoke-virtual {v0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->animator:Lcom/oplus/anim/utils/EffectiveValueAnimator;

    invoke-virtual {v0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->cancel()V

    .line 240
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    .line 241
    iput-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->compositionLayer:Lcom/oplus/anim/model/layer/CompositionLayer;

    .line 242
    iput-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->imageAssetManager:Lcom/oplus/anim/manager/ImageAssetManager;

    .line 243
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->animator:Lcom/oplus/anim/utils/EffectiveValueAnimator;

    invoke-virtual {v0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->clearComposition()V

    .line 244
    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->invalidateSelf()V

    .line 245
    return-void
.end method

.method public clearImageAsset()V
    .locals 1

    .line 931
    invoke-direct {p0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->getImageAssetManager()Lcom/oplus/anim/manager/ImageAssetManager;

    move-result-object v0

    .line 932
    .local v0, "bm":Lcom/oplus/anim/manager/ImageAssetManager;
    if-eqz v0, :cond_0

    .line 933
    invoke-virtual {v0}, Lcom/oplus/anim/manager/ImageAssetManager;->clearImageAssets()V

    .line 935
    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 281
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->isDirty:Z

    .line 282
    const-string v0, "Drawable#draw#start"

    invoke-static {v0}, Lcom/oplus/anim/L;->debug(Ljava/lang/String;)V

    .line 283
    const-string v0, "Drawable#draw"

    invoke-static {v0}, Lcom/oplus/anim/L;->beginSection(Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->compositionLayer:Lcom/oplus/anim/model/layer/CompositionLayer;

    if-nez v0, :cond_0

    .line 285
    return-void

    .line 288
    :cond_0
    iget v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->scale:F

    .line 289
    .local v0, "scale":F
    const/high16 v1, 0x3f800000    # 1.0f

    .line 290
    .local v1, "extraScale":F
    invoke-direct {p0, p1}, Lcom/oplus/anim/EffectiveAnimationDrawable;->getMaxScale(Landroid/graphics/Canvas;)F

    move-result v2

    .line 291
    .local v2, "maxScale":F
    cmpl-float v3, v0, v2

    if-lez v3, :cond_1

    .line 292
    move v0, v2

    .line 293
    iget v3, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->scale:F

    div-float v1, v3, v0

    .line 296
    :cond_1
    const/4 v3, -0x1

    .line 297
    .local v3, "saveCount":I
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v1, v4

    if-lez v4, :cond_2

    .line 307
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 308
    iget-object v4, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    invoke-virtual {v4}, Lcom/oplus/anim/EffectiveAnimationComposition;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    .line 309
    .local v4, "halfWidth":F
    iget-object v6, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    invoke-virtual {v6}, Lcom/oplus/anim/EffectiveAnimationComposition;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v5

    .line 310
    .local v6, "halfHeight":F
    mul-float v5, v4, v0

    .line 311
    .local v5, "scaledHalfWidth":F
    mul-float v7, v6, v0

    .line 313
    .local v7, "scaledHalfHeight":F
    nop

    .line 314
    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->getScale()F

    move-result v8

    mul-float/2addr v8, v4

    sub-float/2addr v8, v5

    .line 315
    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->getScale()F

    move-result v9

    mul-float/2addr v9, v6

    sub-float/2addr v9, v7

    .line 313
    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 316
    invoke-virtual {p1, v1, v1, v5, v7}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 319
    .end local v4    # "halfWidth":F
    .end local v5    # "scaledHalfWidth":F
    .end local v6    # "halfHeight":F
    .end local v7    # "scaledHalfHeight":F
    :cond_2
    iget-object v4, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    .line 320
    iget-object v4, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v0, v0}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 321
    iget-object v4, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->compositionLayer:Lcom/oplus/anim/model/layer/CompositionLayer;

    iget-object v5, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->matrix:Landroid/graphics/Matrix;

    iget v6, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->alpha:I

    invoke-virtual {v4, p1, v5, v6}, Lcom/oplus/anim/model/layer/CompositionLayer;->draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 322
    const-string v4, "Drawable#draw"

    invoke-static {v4}, Lcom/oplus/anim/L;->endSection(Ljava/lang/String;)F

    move-result v4

    .line 323
    .local v4, "endtime":F
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Drawable#draw#end time = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/oplus/anim/L;->debug(Ljava/lang/String;)V

    .line 325
    if-lez v3, :cond_3

    .line 326
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 328
    :cond_3
    return-void
.end method

.method public enableBuildLayerDebug()V
    .locals 0

    .line 1070
    invoke-static {}, Lcom/oplus/anim/utils/OplusLog;->enableBuildLayerDebug()V

    .line 1071
    return-void
.end method

.method public enableCompositionDebug()V
    .locals 0

    .line 1062
    invoke-static {}, Lcom/oplus/anim/utils/OplusLog;->enableCompositionDebug()V

    .line 1063
    return-void
.end method

.method public enableDrawDebug()V
    .locals 0

    .line 1066
    invoke-static {}, Lcom/oplus/anim/utils/OplusLog;->enableDrawDebug()V

    .line 1067
    return-void
.end method

.method public enableKeyPathDebug()V
    .locals 0

    .line 1058
    invoke-static {}, Lcom/oplus/anim/utils/OplusLog;->enableKeyPathDebug()V

    .line 1059
    return-void
.end method

.method public enableMergePathsForKitKatAndAbove(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .line 137
    iget-boolean v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->enableMergePaths:Z

    if-ne v0, p1, :cond_0

    .line 138
    return-void

    .line 141
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_1

    .line 142
    sget-object v0, Lcom/oplus/anim/EffectiveAnimationDrawable;->TAG:Ljava/lang/String;

    const-string v1, "Merge paths are not supported pre-Kit Kat."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    return-void

    .line 145
    :cond_1
    iput-boolean p1, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->enableMergePaths:Z

    .line 146
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    if-eqz v0, :cond_2

    .line 147
    invoke-direct {p0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->buildCompositionLayer()V

    .line 149
    :cond_2
    return-void
.end method

.method public enableMergePathsForKitKatAndAbove()Z
    .locals 1

    .line 126
    iget-boolean v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->enableMergePaths:Z

    return v0
.end method

.method public endAnimation()V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 369
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 370
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->animator:Lcom/oplus/anim/utils/EffectiveValueAnimator;

    invoke-virtual {v0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->endAnimation()V

    .line 371
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .line 261
    iget v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->alpha:I

    return v0
.end method

.method public getComposition()Lcom/oplus/anim/EffectiveAnimationComposition;
    .locals 1

    .line 774
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    return-object v0
.end method

.method public getFrame()I
    .locals 1

    .line 629
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->animator:Lcom/oplus/anim/utils/EffectiveValueAnimator;

    invoke-virtual {v0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->getFrame()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getImageAsset(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 923
    invoke-direct {p0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->getImageAssetManager()Lcom/oplus/anim/manager/ImageAssetManager;

    move-result-object v0

    .line 924
    .local v0, "bm":Lcom/oplus/anim/manager/ImageAssetManager;
    if-eqz v0, :cond_0

    .line 925
    invoke-virtual {v0, p1}, Lcom/oplus/anim/manager/ImageAssetManager;->bitmapForId(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    .line 927
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getImageAssetsFolder()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 177
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->imageAssetsFolder:Ljava/lang/String;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 2

    .line 821
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationComposition;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->getScale()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    :goto_0
    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    .line 816
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationComposition;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->getScale()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    :goto_0
    return v0
.end method

.method public getMaxFrame()F
    .locals 1

    .line 472
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->animator:Lcom/oplus/anim/utils/EffectiveValueAnimator;

    invoke-virtual {v0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->getMaxFrame()F

    move-result v0

    return v0
.end method

.method public getMinFrame()F
    .locals 1

    .line 411
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->animator:Lcom/oplus/anim/utils/EffectiveValueAnimator;

    invoke-virtual {v0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->getMinFrame()F

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .line 276
    const/4 v0, -0x3

    return v0
.end method

.method public getPerformanceTracker()Lcom/oplus/anim/PerformanceTracker;
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationComposition;->getPerformanceTracker()Lcom/oplus/anim/PerformanceTracker;

    move-result-object v0

    return-object v0

    .line 228
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getProgress()F
    .locals 1
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    .line 798
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->animator:Lcom/oplus/anim/utils/EffectiveValueAnimator;

    invoke-virtual {v0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->getAnimatedValueAbsolute()F

    move-result v0

    return v0
.end method

.method public getRepeatCount()I
    .locals 1

    .line 687
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->animator:Lcom/oplus/anim/utils/EffectiveValueAnimator;

    invoke-virtual {v0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->getRepeatCount()I

    move-result v0

    return v0
.end method

.method public getRepeatMode()I
    .locals 1

    .line 666
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->animator:Lcom/oplus/anim/utils/EffectiveValueAnimator;

    invoke-virtual {v0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->getRepeatMode()I

    move-result v0

    return v0
.end method

.method public getScale()F
    .locals 1

    .line 753
    iget v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->scale:F

    return v0
.end method

.method public getSpeed()F
    .locals 1

    .line 591
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->animator:Lcom/oplus/anim/utils/EffectiveValueAnimator;

    invoke-virtual {v0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->getSpeed()F

    move-result v0

    return v0
.end method

.method public getTextDelegate()Lcom/oplus/anim/TextDelegate;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 739
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->textDelegate:Lcom/oplus/anim/TextDelegate;

    return-object v0
.end method

.method public getTypeface(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 2
    .param p1, "fontFamily"    # Ljava/lang/String;
    .param p2, "style"    # Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 957
    invoke-direct {p0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->getFontAssetManager()Lcom/oplus/anim/manager/FontAssetManager;

    move-result-object v0

    .line 958
    .local v0, "assetManager":Lcom/oplus/anim/manager/FontAssetManager;
    if-eqz v0, :cond_0

    .line 959
    invoke-virtual {v0, p1, p2}, Lcom/oplus/anim/manager/FontAssetManager;->getTypeface(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    return-object v1

    .line 961
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public hasMasks()Z
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->compositionLayer:Lcom/oplus/anim/model/layer/CompositionLayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->compositionLayer:Lcom/oplus/anim/model/layer/CompositionLayer;

    invoke-virtual {v0}, Lcom/oplus/anim/model/layer/CompositionLayer;->hasMasks()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMatte()Z
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->compositionLayer:Lcom/oplus/anim/model/layer/CompositionLayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->compositionLayer:Lcom/oplus/anim/model/layer/CompositionLayer;

    invoke-virtual {v0}, Lcom/oplus/anim/model/layer/CompositionLayer;->hasMatte()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 996
    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 997
    .local v0, "callback":Landroid/graphics/drawable/Drawable$Callback;
    if-nez v0, :cond_0

    .line 998
    return-void

    .line 1000
    :cond_0
    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1001
    return-void
.end method

.method public invalidateSelf()V
    .locals 1

    .line 249
    iget-boolean v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->isDirty:Z

    if-eqz v0, :cond_0

    .line 250
    return-void

    .line 252
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->isDirty:Z

    .line 253
    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 254
    .local v0, "callback":Landroid/graphics/drawable/Drawable$Callback;
    if-eqz v0, :cond_1

    .line 255
    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 257
    :cond_1
    return-void
.end method

.method public isAnimating()Z
    .locals 1

    .line 707
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->animator:Lcom/oplus/anim/utils/EffectiveValueAnimator;

    invoke-virtual {v0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->isRunning()Z

    move-result v0

    return v0
.end method

.method public isLooping()Z
    .locals 2

    .line 703
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->animator:Lcom/oplus/anim/utils/EffectiveValueAnimator;

    invoke-virtual {v0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->getRepeatCount()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMergePathsEnabledForKitKatAndAbove()Z
    .locals 1

    .line 152
    iget-boolean v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->enableMergePaths:Z

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 346
    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->isAnimating()Z

    move-result v0

    return v0
.end method

.method public loop(Z)V
    .locals 2
    .param p1, "loop"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 656
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->animator:Lcom/oplus/anim/utils/EffectiveValueAnimator;

    if-eqz p1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->setRepeatCount(I)V

    .line 657
    return-void
.end method

.method public pauseAnimation()V
    .locals 1

    .line 792
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 793
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->animator:Lcom/oplus/anim/utils/EffectiveValueAnimator;

    invoke-virtual {v0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->pauseAnimation()V

    .line 794
    return-void
.end method

.method public playAnimation()V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 355
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->compositionLayer:Lcom/oplus/anim/model/layer/CompositionLayer;

    if-nez v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v1, Lcom/oplus/anim/EffectiveAnimationDrawable$2;

    invoke-direct {v1, p0}, Lcom/oplus/anim/EffectiveAnimationDrawable$2;-><init>(Lcom/oplus/anim/EffectiveAnimationDrawable;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    return-void

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->animator:Lcom/oplus/anim/utils/EffectiveValueAnimator;

    invoke-virtual {v0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->playAnimation()V

    .line 365
    return-void
.end method

.method public removeAllAnimatorListeners()V
    .locals 1

    .line 622
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->animator:Lcom/oplus/anim/utils/EffectiveValueAnimator;

    invoke-virtual {v0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->removeAllListeners()V

    .line 623
    return-void
.end method

.method public removeAllUpdateListeners()V
    .locals 1

    .line 610
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->animator:Lcom/oplus/anim/utils/EffectiveValueAnimator;

    invoke-virtual {v0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->removeAllUpdateListeners()V

    .line 611
    return-void
.end method

.method public removeAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .line 618
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->animator:Lcom/oplus/anim/utils/EffectiveValueAnimator;

    invoke-virtual {v0, p1}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 619
    return-void
.end method

.method public removeAnimatorUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 1
    .param p1, "updateListener"    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 606
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->animator:Lcom/oplus/anim/utils/EffectiveValueAnimator;

    invoke-virtual {v0, p1}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 607
    return-void
.end method

.method public resolveKeyPath(Lcom/oplus/anim/model/KeyPath;)Ljava/util/List;
    .locals 5
    .param p1, "keyPath"    # Lcom/oplus/anim/model/KeyPath;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/anim/model/KeyPath;",
            ")",
            "Ljava/util/List<",
            "Lcom/oplus/anim/model/KeyPath;",
            ">;"
        }
    .end annotation

    .line 833
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->compositionLayer:Lcom/oplus/anim/model/layer/CompositionLayer;

    if-nez v0, :cond_0

    .line 834
    const-string v0, "EffectiveAnimation"

    const-string v1, "Cannot resolve KeyPath. Composition is not set yet."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 837
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 838
    .local v0, "keyPaths":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/KeyPath;>;"
    iget-object v1, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->compositionLayer:Lcom/oplus/anim/model/layer/CompositionLayer;

    new-instance v2, Lcom/oplus/anim/model/KeyPath;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/String;

    invoke-direct {v2, v4}, Lcom/oplus/anim/model/KeyPath;-><init>([Ljava/lang/String;)V

    invoke-virtual {v1, p1, v3, v0, v2}, Lcom/oplus/anim/model/layer/CompositionLayer;->resolveKeyPath(Lcom/oplus/anim/model/KeyPath;ILjava/util/List;Lcom/oplus/anim/model/KeyPath;)V

    .line 839
    return-object v0
.end method

.method public resolveLayers()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1032
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->compositionLayer:Lcom/oplus/anim/model/layer/CompositionLayer;

    if-nez v0, :cond_0

    .line 1033
    const-string v0, "EffectiveAnimation"

    const-string v1, "Cannot resolve layers. Composition is not set yet."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1036
    :cond_0
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->compositionLayer:Lcom/oplus/anim/model/layer/CompositionLayer;

    invoke-virtual {v0}, Lcom/oplus/anim/model/layer/CompositionLayer;->getLayers()Ljava/util/List;

    move-result-object v0

    .line 1037
    .local v0, "layers":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/layer/BaseLayer;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1038
    .local v1, "layerNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1039
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oplus/anim/model/layer/BaseLayer;

    invoke-virtual {v3}, Lcom/oplus/anim/model/layer/BaseLayer;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1038
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1041
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method

.method public resumeAnimation()V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 379
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->compositionLayer:Lcom/oplus/anim/model/layer/CompositionLayer;

    if-nez v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v1, Lcom/oplus/anim/EffectiveAnimationDrawable$3;

    invoke-direct {v1, p0}, Lcom/oplus/anim/EffectiveAnimationDrawable$3;-><init>(Lcom/oplus/anim/EffectiveAnimationDrawable;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    return-void

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->animator:Lcom/oplus/anim/utils/EffectiveValueAnimator;

    invoke-virtual {v0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->resumeAnimation()V

    .line 389
    return-void
.end method

.method public reverseAnimationSpeed()V
    .locals 1

    .line 584
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->animator:Lcom/oplus/anim/utils/EffectiveValueAnimator;

    invoke-virtual {v0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->reverseAnimationSpeed()V

    .line 585
    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "what"    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "when"    # J

    .line 1005
    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 1006
    .local v0, "callback":Landroid/graphics/drawable/Drawable$Callback;
    if-nez v0, :cond_0

    .line 1007
    return-void

    .line 1009
    :cond_0
    invoke-interface {v0, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    .line 1010
    return-void
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param

    .line 266
    iput p1, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->alpha:I

    .line 267
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 2
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .line 271
    const-string v0, "EffectiveAnimation"

    const-string v1, "Use addColorFilter instead."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    return-void
.end method

.method public setComposition(Lcom/oplus/anim/EffectiveAnimationComposition;)Z
    .locals 3
    .param p1, "composition"    # Lcom/oplus/anim/EffectiveAnimationComposition;

    .line 186
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    .line 187
    return v1

    .line 189
    :cond_0
    sget-boolean v0, Lcom/oplus/anim/utils/OplusLog;->DEBUG_COMPOSITION:Z

    if-eqz v0, :cond_1

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EffectiveAnimationDrawable::setComposition:composition = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oplus/anim/EffectiveAnimationComposition;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/anim/utils/OplusLog;->i(Ljava/lang/String;)V

    .line 192
    :cond_1
    const-string v0, "EffectiveAnimationDrawable::setComposition"

    invoke-static {v0}, Lcom/oplus/anim/utils/OplusLog;->i(Ljava/lang/String;)V

    .line 193
    iput-boolean v1, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->isDirty:Z

    .line 194
    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->clearComposition()V

    .line 195
    iput-object p1, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    .line 196
    invoke-direct {p0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->buildCompositionLayer()V

    .line 197
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->animator:Lcom/oplus/anim/utils/EffectiveValueAnimator;

    invoke-virtual {v0, p1}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->setComposition(Lcom/oplus/anim/EffectiveAnimationComposition;)V

    .line 198
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->animator:Lcom/oplus/anim/utils/EffectiveValueAnimator;

    invoke-virtual {v0}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->getAnimatedFraction()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->setProgress(F)V

    .line 199
    iget v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->scale:F

    invoke-virtual {p0, v0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->setScale(F)V

    .line 200
    invoke-direct {p0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->updateBounds()V

    .line 204
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 205
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/oplus/anim/EffectiveAnimationDrawable$LazyCompositionTask;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 206
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/anim/EffectiveAnimationDrawable$LazyCompositionTask;

    .line 207
    .local v1, "t":Lcom/oplus/anim/EffectiveAnimationDrawable$LazyCompositionTask;
    invoke-interface {v1, p1}, Lcom/oplus/anim/EffectiveAnimationDrawable$LazyCompositionTask;->run(Lcom/oplus/anim/EffectiveAnimationComposition;)V

    .line 208
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 209
    .end local v1    # "t":Lcom/oplus/anim/EffectiveAnimationDrawable$LazyCompositionTask;
    goto :goto_0

    .line 210
    :cond_2
    iget-object v1, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 212
    iget-boolean v1, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->performanceTrackingEnabled:Z

    invoke-virtual {p1, v1}, Lcom/oplus/anim/EffectiveAnimationComposition;->setPerformanceTrackingEnabled(Z)V

    .line 214
    const/4 v1, 0x1

    return v1
.end method

.method public setDynamicLayerVisibility(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "layerName"    # Ljava/lang/String;
    .param p2, "visible"    # Z

    .line 1045
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1046
    return-void

    .line 1048
    :cond_0
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->compositionLayer:Lcom/oplus/anim/model/layer/CompositionLayer;

    invoke-virtual {v0}, Lcom/oplus/anim/model/layer/CompositionLayer;->getLayers()Ljava/util/List;

    move-result-object v0

    .line 1049
    .local v0, "layers":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/anim/model/layer/BaseLayer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1050
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/anim/model/layer/BaseLayer;

    .line 1051
    .local v2, "baseLayer":Lcom/oplus/anim/model/layer/BaseLayer;
    invoke-virtual {v2}, Lcom/oplus/anim/model/layer/BaseLayer;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1052
    invoke-virtual {v2, p2}, Lcom/oplus/anim/model/layer/BaseLayer;->setVisible(Z)V

    .line 1049
    .end local v2    # "baseLayer":Lcom/oplus/anim/model/layer/BaseLayer;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1055
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method public setFontAssetDelegate(Lcom/oplus/anim/FontAssetDelegate;)V
    .locals 1
    .param p1, "assetDelegate"    # Lcom/oplus/anim/FontAssetDelegate;

    .line 731
    iput-object p1, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->fontAssetDelegate:Lcom/oplus/anim/FontAssetDelegate;

    .line 732
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->fontAssetManager:Lcom/oplus/anim/manager/FontAssetManager;

    if-eqz v0, :cond_0

    .line 733
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->fontAssetManager:Lcom/oplus/anim/manager/FontAssetManager;

    invoke-virtual {v0, p1}, Lcom/oplus/anim/manager/FontAssetManager;->setDelegate(Lcom/oplus/anim/FontAssetDelegate;)V

    .line 735
    :cond_0
    return-void
.end method

.method public setFrame(I)V
    .locals 2
    .param p1, "frame"    # I

    .line 638
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    if-nez v0, :cond_0

    .line 639
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v1, Lcom/oplus/anim/EffectiveAnimationDrawable$13;

    invoke-direct {v1, p0, p1}, Lcom/oplus/anim/EffectiveAnimationDrawable$13;-><init>(Lcom/oplus/anim/EffectiveAnimationDrawable;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 645
    return-void

    .line 648
    :cond_0
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->animator:Lcom/oplus/anim/utils/EffectiveValueAnimator;

    invoke-virtual {v0, p1}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->setFrame(I)V

    .line 649
    return-void
.end method

.method public setImageAssetDelegate(Lcom/oplus/anim/ImageAssetDelegate;)V
    .locals 1
    .param p1, "assetDelegate"    # Lcom/oplus/anim/ImageAssetDelegate;

    .line 720
    iput-object p1, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->imageAssetDelegate:Lcom/oplus/anim/ImageAssetDelegate;

    .line 721
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->imageAssetManager:Lcom/oplus/anim/manager/ImageAssetManager;

    if-eqz v0, :cond_0

    .line 722
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->imageAssetManager:Lcom/oplus/anim/manager/ImageAssetManager;

    invoke-virtual {v0, p1}, Lcom/oplus/anim/manager/ImageAssetManager;->setDelegate(Lcom/oplus/anim/ImageAssetDelegate;)V

    .line 724
    :cond_0
    return-void
.end method

.method public setImagesAssetsFolder(Ljava/lang/String;)V
    .locals 0
    .param p1, "imageAssetsFolder"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 172
    iput-object p1, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->imageAssetsFolder:Ljava/lang/String;

    .line 173
    return-void
.end method

.method public setMaxFrame(I)V
    .locals 3
    .param p1, "maxFrame"    # I

    .line 456
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    if-nez v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v1, Lcom/oplus/anim/EffectiveAnimationDrawable$7;

    invoke-direct {v1, p0, p1}, Lcom/oplus/anim/EffectiveAnimationDrawable$7;-><init>(Lcom/oplus/anim/EffectiveAnimationDrawable;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 463
    return-void

    .line 465
    :cond_0
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->animator:Lcom/oplus/anim/utils/EffectiveValueAnimator;

    int-to-float v1, p1

    const v2, 0x3f7d70a4    # 0.99f

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->setMaxFrame(F)V

    .line 466
    return-void
.end method

.method public setMaxFrame(Ljava/lang/String;)V
    .locals 4
    .param p1, "markerName"    # Ljava/lang/String;

    .line 481
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    if-nez v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v1, Lcom/oplus/anim/EffectiveAnimationDrawable$8;

    invoke-direct {v1, p0, p1}, Lcom/oplus/anim/EffectiveAnimationDrawable$8;-><init>(Lcom/oplus/anim/EffectiveAnimationDrawable;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 488
    return-void

    .line 490
    :cond_0
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    invoke-virtual {v0, p1}, Lcom/oplus/anim/EffectiveAnimationComposition;->getMarker(Ljava/lang/String;)Lcom/oplus/anim/model/Marker;

    move-result-object v0

    .line 491
    .local v0, "marker":Lcom/oplus/anim/model/Marker;
    if-eqz v0, :cond_1

    .line 494
    iget v1, v0, Lcom/oplus/anim/model/Marker;->startFrame:F

    iget v2, v0, Lcom/oplus/anim/model/Marker;->durationFrames:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/oplus/anim/EffectiveAnimationDrawable;->setMaxFrame(I)V

    .line 495
    return-void

    .line 492
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find marker with name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setMaxProgress(F)V
    .locals 2
    .param p1, "maxProgress"    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 501
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    if-nez v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v1, Lcom/oplus/anim/EffectiveAnimationDrawable$9;

    invoke-direct {v1, p0, p1}, Lcom/oplus/anim/EffectiveAnimationDrawable$9;-><init>(Lcom/oplus/anim/EffectiveAnimationDrawable;F)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 508
    return-void

    .line 510
    :cond_0
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationComposition;->getStartFrame()F

    move-result v0

    iget-object v1, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    invoke-virtual {v1}, Lcom/oplus/anim/EffectiveAnimationComposition;->getEndFrame()F

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/oplus/anim/utils/MiscUtils;->lerp(FFF)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->setMaxFrame(I)V

    .line 511
    return-void
.end method

.method public setMinAndMaxFrame(II)V
    .locals 4
    .param p1, "minFrame"    # I
    .param p2, "maxFrame"    # I

    .line 542
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    if-nez v0, :cond_0

    .line 543
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v1, Lcom/oplus/anim/EffectiveAnimationDrawable$11;

    invoke-direct {v1, p0, p1, p2}, Lcom/oplus/anim/EffectiveAnimationDrawable$11;-><init>(Lcom/oplus/anim/EffectiveAnimationDrawable;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 549
    return-void

    .line 552
    :cond_0
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->animator:Lcom/oplus/anim/utils/EffectiveValueAnimator;

    int-to-float v1, p1

    int-to-float v2, p2

    const v3, 0x3f7d70a4    # 0.99f

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->setMinAndMaxFrames(FF)V

    .line 553
    return-void
.end method

.method public setMinAndMaxFrame(Ljava/lang/String;)V
    .locals 4
    .param p1, "markerName"    # Ljava/lang/String;

    .line 520
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    if-nez v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v1, Lcom/oplus/anim/EffectiveAnimationDrawable$10;

    invoke-direct {v1, p0, p1}, Lcom/oplus/anim/EffectiveAnimationDrawable$10;-><init>(Lcom/oplus/anim/EffectiveAnimationDrawable;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 527
    return-void

    .line 529
    :cond_0
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    invoke-virtual {v0, p1}, Lcom/oplus/anim/EffectiveAnimationComposition;->getMarker(Ljava/lang/String;)Lcom/oplus/anim/model/Marker;

    move-result-object v0

    .line 530
    .local v0, "marker":Lcom/oplus/anim/model/Marker;
    if-eqz v0, :cond_1

    .line 533
    iget v1, v0, Lcom/oplus/anim/model/Marker;->startFrame:F

    float-to-int v1, v1

    .line 534
    .local v1, "startFrame":I
    iget v2, v0, Lcom/oplus/anim/model/Marker;->durationFrames:F

    float-to-int v2, v2

    add-int/2addr v2, v1

    invoke-virtual {p0, v1, v2}, Lcom/oplus/anim/EffectiveAnimationDrawable;->setMinAndMaxFrame(II)V

    .line 535
    return-void

    .line 531
    .end local v1    # "startFrame":I
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find marker with name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setMinAndMaxProgress(FF)V
    .locals 3
    .param p1, "minProgress"    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param
    .param p2, "maxProgress"    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 562
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    if-nez v0, :cond_0

    .line 563
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v1, Lcom/oplus/anim/EffectiveAnimationDrawable$12;

    invoke-direct {v1, p0, p1, p2}, Lcom/oplus/anim/EffectiveAnimationDrawable$12;-><init>(Lcom/oplus/anim/EffectiveAnimationDrawable;FF)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 569
    return-void

    .line 572
    :cond_0
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationComposition;->getStartFrame()F

    move-result v0

    iget-object v1, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    invoke-virtual {v1}, Lcom/oplus/anim/EffectiveAnimationComposition;->getEndFrame()F

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/oplus/anim/utils/MiscUtils;->lerp(FFF)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    .line 573
    invoke-virtual {v1}, Lcom/oplus/anim/EffectiveAnimationComposition;->getStartFrame()F

    move-result v1

    iget-object v2, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    invoke-virtual {v2}, Lcom/oplus/anim/EffectiveAnimationComposition;->getEndFrame()F

    move-result v2

    invoke-static {v1, v2, p2}, Lcom/oplus/anim/utils/MiscUtils;->lerp(FFF)F

    move-result v1

    float-to-int v1, v1

    .line 572
    invoke-virtual {p0, v0, v1}, Lcom/oplus/anim/EffectiveAnimationDrawable;->setMinAndMaxFrame(II)V

    .line 574
    return-void
.end method

.method public setMinFrame(I)V
    .locals 2
    .param p1, "minFrame"    # I

    .line 395
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    if-nez v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v1, Lcom/oplus/anim/EffectiveAnimationDrawable$4;

    invoke-direct {v1, p0, p1}, Lcom/oplus/anim/EffectiveAnimationDrawable$4;-><init>(Lcom/oplus/anim/EffectiveAnimationDrawable;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    return-void

    .line 404
    :cond_0
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->animator:Lcom/oplus/anim/utils/EffectiveValueAnimator;

    invoke-virtual {v0, p1}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->setMinFrame(I)V

    .line 405
    return-void
.end method

.method public setMinFrame(Ljava/lang/String;)V
    .locals 4
    .param p1, "markerName"    # Ljava/lang/String;

    .line 420
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    if-nez v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v1, Lcom/oplus/anim/EffectiveAnimationDrawable$5;

    invoke-direct {v1, p0, p1}, Lcom/oplus/anim/EffectiveAnimationDrawable$5;-><init>(Lcom/oplus/anim/EffectiveAnimationDrawable;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 427
    return-void

    .line 429
    :cond_0
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    invoke-virtual {v0, p1}, Lcom/oplus/anim/EffectiveAnimationComposition;->getMarker(Ljava/lang/String;)Lcom/oplus/anim/model/Marker;

    move-result-object v0

    .line 430
    .local v0, "marker":Lcom/oplus/anim/model/Marker;
    if-eqz v0, :cond_1

    .line 433
    iget v1, v0, Lcom/oplus/anim/model/Marker;->startFrame:F

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/oplus/anim/EffectiveAnimationDrawable;->setMinFrame(I)V

    .line 434
    return-void

    .line 431
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find marker with name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setMinProgress(F)V
    .locals 2
    .param p1, "minProgress"    # F

    .line 440
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    if-nez v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v1, Lcom/oplus/anim/EffectiveAnimationDrawable$6;

    invoke-direct {v1, p0, p1}, Lcom/oplus/anim/EffectiveAnimationDrawable$6;-><init>(Lcom/oplus/anim/EffectiveAnimationDrawable;F)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 447
    return-void

    .line 449
    :cond_0
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationComposition;->getStartFrame()F

    move-result v0

    iget-object v1, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    invoke-virtual {v1}, Lcom/oplus/anim/EffectiveAnimationComposition;->getEndFrame()F

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/oplus/anim/utils/MiscUtils;->lerp(FFF)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->setMinFrame(I)V

    .line 450
    return-void
.end method

.method public setPerformanceTrackingEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 218
    iput-boolean p1, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->performanceTrackingEnabled:Z

    .line 219
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    invoke-virtual {v0, p1}, Lcom/oplus/anim/EffectiveAnimationComposition;->setPerformanceTrackingEnabled(Z)V

    .line 222
    :cond_0
    return-void
.end method

.method public setProgress(F)V
    .locals 2
    .param p1, "progress"    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 802
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    if-nez v0, :cond_0

    .line 803
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->lazyCompositionTasks:Ljava/util/ArrayList;

    new-instance v1, Lcom/oplus/anim/EffectiveAnimationDrawable$14;

    invoke-direct {v1, p0, p1}, Lcom/oplus/anim/EffectiveAnimationDrawable$14;-><init>(Lcom/oplus/anim/EffectiveAnimationDrawable;F)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 809
    return-void

    .line 811
    :cond_0
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationComposition;->getStartFrame()F

    move-result v0

    iget-object v1, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    invoke-virtual {v1}, Lcom/oplus/anim/EffectiveAnimationComposition;->getEndFrame()F

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/oplus/anim/utils/MiscUtils;->lerp(FFF)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->setFrame(I)V

    .line 812
    return-void
.end method

.method public setRepeatCount(I)V
    .locals 1
    .param p1, "count"    # I

    .line 699
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->animator:Lcom/oplus/anim/utils/EffectiveValueAnimator;

    invoke-virtual {v0, p1}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->setRepeatCount(I)V

    .line 700
    return-void
.end method

.method public setRepeatMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .line 677
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->animator:Lcom/oplus/anim/utils/EffectiveValueAnimator;

    invoke-virtual {v0, p1}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->setRepeatMode(I)V

    .line 678
    return-void
.end method

.method public setScale(F)V
    .locals 0
    .param p1, "scale"    # F

    .line 769
    iput p1, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->scale:F

    .line 770
    invoke-direct {p0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->updateBounds()V

    .line 771
    return-void
.end method

.method public setSpeed(F)V
    .locals 1
    .param p1, "speed"    # F

    .line 598
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->animator:Lcom/oplus/anim/utils/EffectiveValueAnimator;

    invoke-virtual {v0, p1}, Lcom/oplus/anim/utils/EffectiveValueAnimator;->setSpeed(F)V

    .line 599
    return-void
.end method

.method public setTextDelegate(Lcom/oplus/anim/TextDelegate;)V
    .locals 0
    .param p1, "textDelegate"    # Lcom/oplus/anim/TextDelegate;

    .line 745
    iput-object p1, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->textDelegate:Lcom/oplus/anim/TextDelegate;

    .line 746
    return-void
.end method

.method public start()V
    .locals 0
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 333
    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->playAnimation()V

    .line 334
    return-void
.end method

.method public stop()V
    .locals 0
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 339
    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->endAnimation()V

    .line 340
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "what"    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1014
    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 1015
    .local v0, "callback":Landroid/graphics/drawable/Drawable$Callback;
    if-nez v0, :cond_0

    .line 1016
    return-void

    .line 1018
    :cond_0
    invoke-interface {v0, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    .line 1019
    return-void
.end method

.method public updateBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 910
    invoke-direct {p0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->getImageAssetManager()Lcom/oplus/anim/manager/ImageAssetManager;

    move-result-object v0

    .line 911
    .local v0, "bm":Lcom/oplus/anim/manager/ImageAssetManager;
    if-nez v0, :cond_0

    .line 912
    const-string v1, "EffectiveAnimation"

    const-string v2, "Cannot update bitmap. Most likely the drawable is not added to a View which prevents EffectiveAnimation from getting a Context."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    const/4 v1, 0x0

    return-object v1

    .line 916
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/oplus/anim/manager/ImageAssetManager;->updateBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 917
    .local v1, "ret":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->invalidateSelf()V

    .line 918
    return-object v1
.end method

.method public useTextGlyphs()Z
    .locals 1

    .line 749
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->textDelegate:Lcom/oplus/anim/TextDelegate;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationDrawable;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationComposition;->getCharacters()Landroidx/collection/SparseArrayCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
