.class public Lcom/oplus/anim/EffectiveAnimationView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "EffectiveAnimationView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/anim/EffectiveAnimationView$SavedState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private animationName:Ljava/lang/String;

.field private animationResId:I
    .annotation build Landroidx/annotation/RawRes;
    .end annotation
.end field

.field private autoPlay:Z

.field private composition:Lcom/oplus/anim/EffectiveAnimationComposition;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private compositionTask:Lcom/oplus/anim/EffectiveAnimationTask;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/anim/EffectiveAnimationTask<",
            "Lcom/oplus/anim/EffectiveAnimationComposition;",
            ">;"
        }
    .end annotation
.end field

.field private final effectiveAnimationDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

.field private final failureListener:Lcom/oplus/anim/EffectiveAnimationListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/anim/EffectiveAnimationListener<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private final loadedListener:Lcom/oplus/anim/EffectiveAnimationListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/anim/EffectiveAnimationListener<",
            "Lcom/oplus/anim/EffectiveAnimationComposition;",
            ">;"
        }
    .end annotation
.end field

.field private onCompositionLoadedListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/oplus/anim/OnCompositionLoadedListener;",
            ">;"
        }
    .end annotation
.end field

.field private renderMode:Lcom/oplus/anim/RenderMode;

.field private wasAnimatingWhenDetached:Z

.field private wasAnimatingWhenVisibilityChanged:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    const-class v0, Lcom/oplus/anim/EffectiveAnimationView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/anim/EffectiveAnimationView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 90
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    .line 60
    new-instance v0, Lcom/oplus/anim/EffectiveAnimationView$1;

    invoke-direct {v0, p0}, Lcom/oplus/anim/EffectiveAnimationView$1;-><init>(Lcom/oplus/anim/EffectiveAnimationView;)V

    iput-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->failureListener:Lcom/oplus/anim/EffectiveAnimationListener;

    .line 66
    new-instance v0, Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-direct {v0}, Lcom/oplus/anim/EffectiveAnimationDrawable;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->wasAnimatingWhenVisibilityChanged:Z

    .line 71
    iput-boolean v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->wasAnimatingWhenDetached:Z

    .line 72
    iput-boolean v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->autoPlay:Z

    .line 73
    sget-object v0, Lcom/oplus/anim/RenderMode;->AUTOMATIC:Lcom/oplus/anim/RenderMode;

    iput-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->renderMode:Lcom/oplus/anim/RenderMode;

    .line 74
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->onCompositionLoadedListeners:Ljava/util/Set;

    .line 82
    new-instance v0, Lcom/oplus/anim/EffectiveAnimationView$2;

    invoke-direct {v0, p0}, Lcom/oplus/anim/EffectiveAnimationView$2;-><init>(Lcom/oplus/anim/EffectiveAnimationView;)V

    iput-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->loadedListener:Lcom/oplus/anim/EffectiveAnimationListener;

    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oplus/anim/EffectiveAnimationView;->init(Landroid/util/AttributeSet;)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 95
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    new-instance v0, Lcom/oplus/anim/EffectiveAnimationView$1;

    invoke-direct {v0, p0}, Lcom/oplus/anim/EffectiveAnimationView$1;-><init>(Lcom/oplus/anim/EffectiveAnimationView;)V

    iput-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->failureListener:Lcom/oplus/anim/EffectiveAnimationListener;

    .line 66
    new-instance v0, Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-direct {v0}, Lcom/oplus/anim/EffectiveAnimationDrawable;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->wasAnimatingWhenVisibilityChanged:Z

    .line 71
    iput-boolean v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->wasAnimatingWhenDetached:Z

    .line 72
    iput-boolean v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->autoPlay:Z

    .line 73
    sget-object v0, Lcom/oplus/anim/RenderMode;->AUTOMATIC:Lcom/oplus/anim/RenderMode;

    iput-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->renderMode:Lcom/oplus/anim/RenderMode;

    .line 74
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->onCompositionLoadedListeners:Ljava/util/Set;

    .line 82
    new-instance v0, Lcom/oplus/anim/EffectiveAnimationView$2;

    invoke-direct {v0, p0}, Lcom/oplus/anim/EffectiveAnimationView$2;-><init>(Lcom/oplus/anim/EffectiveAnimationView;)V

    iput-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->loadedListener:Lcom/oplus/anim/EffectiveAnimationListener;

    .line 96
    invoke-direct {p0, p2}, Lcom/oplus/anim/EffectiveAnimationView;->init(Landroid/util/AttributeSet;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 100
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    new-instance v0, Lcom/oplus/anim/EffectiveAnimationView$1;

    invoke-direct {v0, p0}, Lcom/oplus/anim/EffectiveAnimationView$1;-><init>(Lcom/oplus/anim/EffectiveAnimationView;)V

    iput-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->failureListener:Lcom/oplus/anim/EffectiveAnimationListener;

    .line 66
    new-instance v0, Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-direct {v0}, Lcom/oplus/anim/EffectiveAnimationDrawable;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->wasAnimatingWhenVisibilityChanged:Z

    .line 71
    iput-boolean v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->wasAnimatingWhenDetached:Z

    .line 72
    iput-boolean v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->autoPlay:Z

    .line 73
    sget-object v0, Lcom/oplus/anim/RenderMode;->AUTOMATIC:Lcom/oplus/anim/RenderMode;

    iput-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->renderMode:Lcom/oplus/anim/RenderMode;

    .line 74
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->onCompositionLoadedListeners:Ljava/util/Set;

    .line 82
    new-instance v0, Lcom/oplus/anim/EffectiveAnimationView$2;

    invoke-direct {v0, p0}, Lcom/oplus/anim/EffectiveAnimationView$2;-><init>(Lcom/oplus/anim/EffectiveAnimationView;)V

    iput-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->loadedListener:Lcom/oplus/anim/EffectiveAnimationListener;

    .line 101
    invoke-direct {p0, p2}, Lcom/oplus/anim/EffectiveAnimationView;->init(Landroid/util/AttributeSet;)V

    .line 102
    return-void
.end method

.method private cancelLoaderTask()V
    .locals 2

    .line 362
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->compositionTask:Lcom/oplus/anim/EffectiveAnimationTask;

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->compositionTask:Lcom/oplus/anim/EffectiveAnimationTask;

    iget-object v1, p0, Lcom/oplus/anim/EffectiveAnimationView;->loadedListener:Lcom/oplus/anim/EffectiveAnimationListener;

    invoke-virtual {v0, v1}, Lcom/oplus/anim/EffectiveAnimationTask;->removeListener(Lcom/oplus/anim/EffectiveAnimationListener;)Lcom/oplus/anim/EffectiveAnimationTask;

    .line 364
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->compositionTask:Lcom/oplus/anim/EffectiveAnimationTask;

    iget-object v1, p0, Lcom/oplus/anim/EffectiveAnimationView;->failureListener:Lcom/oplus/anim/EffectiveAnimationListener;

    invoke-virtual {v0, v1}, Lcom/oplus/anim/EffectiveAnimationTask;->removeFailureListener(Lcom/oplus/anim/EffectiveAnimationListener;)Lcom/oplus/anim/EffectiveAnimationTask;

    .line 366
    :cond_0
    return-void
.end method

.method private clearComposition()V
    .locals 1

    .line 802
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    .line 803
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->clearComposition()V

    .line 804
    return-void
.end method

.method private enableOrDisableHardwareLayer()V
    .locals 6

    .line 826
    sget-boolean v0, Lcom/oplus/anim/utils/OplusLog;->DEBUG_COMPOSITION:Z

    if-eqz v0, :cond_0

    .line 827
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Render mode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/anim/EffectiveAnimationView;->renderMode:Lcom/oplus/anim/RenderMode;

    invoke-virtual {v1}, Lcom/oplus/anim/RenderMode;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/anim/utils/OplusLog;->d(Ljava/lang/String;)V

    .line 829
    :cond_0
    sget-object v0, Lcom/oplus/anim/EffectiveAnimationView$4;->$SwitchMap$com$oplus$anim$RenderMode:[I

    iget-object v1, p0, Lcom/oplus/anim/EffectiveAnimationView;->renderMode:Lcom/oplus/anim/RenderMode;

    invoke-virtual {v1}, Lcom/oplus/anim/RenderMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 840
    :pswitch_0
    const/4 v0, 0x1

    .line 841
    .local v0, "useHardwareLayer":Z
    iget-object v4, p0, Lcom/oplus/anim/EffectiveAnimationView;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/oplus/anim/EffectiveAnimationView;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    invoke-virtual {v4}, Lcom/oplus/anim/EffectiveAnimationComposition;->hasDashPattern()Z

    move-result v4

    if-eqz v4, :cond_1

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1c

    if-ge v4, v5, :cond_1

    .line 842
    const/4 v0, 0x0

    goto :goto_0

    .line 843
    :cond_1
    iget-object v4, p0, Lcom/oplus/anim/EffectiveAnimationView;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/oplus/anim/EffectiveAnimationView;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    invoke-virtual {v4}, Lcom/oplus/anim/EffectiveAnimationComposition;->getMaskAndMatteCount()I

    move-result v4

    const/4 v5, 0x4

    if-le v4, v5, :cond_2

    .line 844
    const/4 v0, 0x0

    .line 846
    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    move v1, v2

    nop

    :cond_3
    invoke-virtual {p0, v1, v3}, Lcom/oplus/anim/EffectiveAnimationView;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_1

    .line 837
    .end local v0    # "useHardwareLayer":Z
    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/oplus/anim/EffectiveAnimationView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 838
    goto :goto_1

    .line 834
    :pswitch_2
    invoke-virtual {p0, v1, v3}, Lcom/oplus/anim/EffectiveAnimationView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 835
    goto :goto_1

    .line 831
    :pswitch_3
    invoke-virtual {p0, v2, v3}, Lcom/oplus/anim/EffectiveAnimationView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 832
    nop

    .line 850
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 105
    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/oplus/anim/R$styleable;->EffectiveAnimationView:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 106
    .local v0, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationView;->isInEditMode()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_6

    .line 107
    sget v1, Lcom/oplus/anim/R$styleable;->EffectiveAnimationView_anim_rawRes:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    .line 108
    .local v1, "hasRawRes":Z
    sget v3, Lcom/oplus/anim/R$styleable;->EffectiveAnimationView_anim_fileName:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    .line 109
    .local v3, "hasFileName":Z
    sget v4, Lcom/oplus/anim/R$styleable;->EffectiveAnimationView_anim_url:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    .line 110
    .local v4, "hasUrl":Z
    if-eqz v1, :cond_1

    if-nez v3, :cond_0

    goto :goto_0

    .line 111
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v5, "rawRes and fileName cannot be used at the same time. Please use only one at once."

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 113
    :cond_1
    :goto_0
    if-eqz v1, :cond_3

    .line 114
    sget v5, Lcom/oplus/anim/R$styleable;->EffectiveAnimationView_anim_rawRes:I

    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 115
    .local v5, "rawResId":I
    if-eqz v5, :cond_2

    .line 116
    invoke-virtual {p0, v5}, Lcom/oplus/anim/EffectiveAnimationView;->setAnimation(I)V

    .line 118
    .end local v5    # "rawResId":I
    :cond_2
    goto :goto_1

    :cond_3
    if-eqz v3, :cond_5

    .line 119
    sget v5, Lcom/oplus/anim/R$styleable;->EffectiveAnimationView_anim_fileName:I

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 120
    .local v5, "fileName":Ljava/lang/String;
    if-eqz v5, :cond_4

    .line 121
    invoke-virtual {p0, v5}, Lcom/oplus/anim/EffectiveAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 123
    .end local v5    # "fileName":Ljava/lang/String;
    :cond_4
    goto :goto_1

    :cond_5
    if-eqz v4, :cond_6

    .line 124
    sget v5, Lcom/oplus/anim/R$styleable;->EffectiveAnimationView_anim_url:I

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 125
    .local v5, "url":Ljava/lang/String;
    if-eqz v5, :cond_6

    .line 126
    invoke-virtual {p0, v5}, Lcom/oplus/anim/EffectiveAnimationView;->setAnimationFromUrl(Ljava/lang/String;)V

    .line 130
    .end local v1    # "hasRawRes":Z
    .end local v3    # "hasFileName":Z
    .end local v4    # "hasUrl":Z
    .end local v5    # "url":Ljava/lang/String;
    :cond_6
    :goto_1
    sget v1, Lcom/oplus/anim/R$styleable;->EffectiveAnimationView_anim_autoPlay:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_7

    .line 131
    iput-boolean v3, p0, Lcom/oplus/anim/EffectiveAnimationView;->wasAnimatingWhenDetached:Z

    .line 132
    iput-boolean v3, p0, Lcom/oplus/anim/EffectiveAnimationView;->autoPlay:Z

    .line 135
    :cond_7
    sget v1, Lcom/oplus/anim/R$styleable;->EffectiveAnimationView_anim_loop:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    const/4 v4, -0x1

    if-eqz v1, :cond_8

    .line 136
    iget-object v1, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {v1, v4}, Lcom/oplus/anim/EffectiveAnimationDrawable;->setRepeatCount(I)V

    .line 139
    :cond_8
    sget v1, Lcom/oplus/anim/R$styleable;->EffectiveAnimationView_anim_repeatMode:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 140
    sget v1, Lcom/oplus/anim/R$styleable;->EffectiveAnimationView_anim_repeatMode:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/oplus/anim/EffectiveAnimationView;->setRepeatMode(I)V

    .line 144
    :cond_9
    sget v1, Lcom/oplus/anim/R$styleable;->EffectiveAnimationView_anim_repeatCount:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 145
    sget v1, Lcom/oplus/anim/R$styleable;->EffectiveAnimationView_anim_repeatCount:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/oplus/anim/EffectiveAnimationView;->setRepeatCount(I)V

    .line 149
    :cond_a
    sget v1, Lcom/oplus/anim/R$styleable;->EffectiveAnimationView_anim_speed:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v1, :cond_b

    .line 150
    sget v1, Lcom/oplus/anim/R$styleable;->EffectiveAnimationView_anim_speed:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/oplus/anim/EffectiveAnimationView;->setSpeed(F)V

    .line 153
    :cond_b
    sget v1, Lcom/oplus/anim/R$styleable;->EffectiveAnimationView_anim_imageAssetsFolder:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oplus/anim/EffectiveAnimationView;->setImageAssetsFolder(Ljava/lang/String;)V

    .line 154
    sget v1, Lcom/oplus/anim/R$styleable;->EffectiveAnimationView_anim_progress:I

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/oplus/anim/EffectiveAnimationView;->setProgress(F)V

    .line 155
    sget v1, Lcom/oplus/anim/R$styleable;->EffectiveAnimationView_anim_enableMergePathsForKitKatAndAbove:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/oplus/anim/EffectiveAnimationView;->enableMergePathsForKitKatAndAbove(Z)V

    .line 157
    sget v1, Lcom/oplus/anim/R$styleable;->EffectiveAnimationView_anim_colorFilter:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 158
    new-instance v1, Lcom/oplus/anim/SimpleColorFilter;

    sget v4, Lcom/oplus/anim/R$styleable;->EffectiveAnimationView_anim_colorFilter:I

    .line 159
    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    invoke-direct {v1, v4}, Lcom/oplus/anim/SimpleColorFilter;-><init>(I)V

    .line 160
    .local v1, "filter":Lcom/oplus/anim/SimpleColorFilter;
    new-instance v4, Lcom/oplus/anim/model/KeyPath;

    const-string v5, "**"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/oplus/anim/model/KeyPath;-><init>([Ljava/lang/String;)V

    .line 161
    .local v4, "keyPath":Lcom/oplus/anim/model/KeyPath;
    new-instance v5, Lcom/oplus/anim/value/EffectiveValueCallback;

    invoke-direct {v5, v1}, Lcom/oplus/anim/value/EffectiveValueCallback;-><init>(Ljava/lang/Object;)V

    .line 162
    .local v5, "callback":Lcom/oplus/anim/value/EffectiveValueCallback;, "Lcom/oplus/anim/value/EffectiveValueCallback<Landroid/graphics/ColorFilter;>;"
    sget-object v6, Lcom/oplus/anim/EffectiveAnimationProperty;->COLOR_FILTER:Landroid/graphics/ColorFilter;

    invoke-virtual {p0, v4, v6, v5}, Lcom/oplus/anim/EffectiveAnimationView;->addValueCallback(Lcom/oplus/anim/model/KeyPath;Ljava/lang/Object;Lcom/oplus/anim/value/EffectiveValueCallback;)V

    .line 164
    .end local v1    # "filter":Lcom/oplus/anim/SimpleColorFilter;
    .end local v4    # "keyPath":Lcom/oplus/anim/model/KeyPath;
    .end local v5    # "callback":Lcom/oplus/anim/value/EffectiveValueCallback;, "Lcom/oplus/anim/value/EffectiveValueCallback<Landroid/graphics/ColorFilter;>;"
    :cond_c
    sget v1, Lcom/oplus/anim/R$styleable;->EffectiveAnimationView_anim_scale:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 165
    iget-object v1, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    sget v4, Lcom/oplus/anim/R$styleable;->EffectiveAnimationView_anim_scale:I

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    invoke-virtual {v1, v3}, Lcom/oplus/anim/EffectiveAnimationDrawable;->setScale(F)V

    .line 167
    :cond_d
    sget v1, Lcom/oplus/anim/R$styleable;->EffectiveAnimationView_anim_renderMode:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 168
    invoke-static {}, Lcom/oplus/anim/RenderMode;->values()[Lcom/oplus/anim/RenderMode;

    move-result-object v1

    .line 169
    .local v1, "renderModes":[Lcom/oplus/anim/RenderMode;
    sget v3, Lcom/oplus/anim/R$styleable;->EffectiveAnimationView_anim_renderMode:I

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    aget-object v2, v1, v2

    iput-object v2, p0, Lcom/oplus/anim/EffectiveAnimationView;->renderMode:Lcom/oplus/anim/RenderMode;

    .line 172
    .end local v1    # "renderModes":[Lcom/oplus/anim/RenderMode;
    :cond_e
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 174
    invoke-direct {p0}, Lcom/oplus/anim/EffectiveAnimationView;->enableOrDisableHardwareLayer()V

    .line 175
    return-void
.end method

.method private setCompositionTask(Lcom/oplus/anim/EffectiveAnimationTask;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/anim/EffectiveAnimationTask<",
            "Lcom/oplus/anim/EffectiveAnimationComposition;",
            ">;)V"
        }
    .end annotation

    .line 354
    .local p1, "compositionTask":Lcom/oplus/anim/EffectiveAnimationTask;, "Lcom/oplus/anim/EffectiveAnimationTask<Lcom/oplus/anim/EffectiveAnimationComposition;>;"
    invoke-direct {p0}, Lcom/oplus/anim/EffectiveAnimationView;->clearComposition()V

    .line 355
    invoke-direct {p0}, Lcom/oplus/anim/EffectiveAnimationView;->cancelLoaderTask()V

    .line 356
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->loadedListener:Lcom/oplus/anim/EffectiveAnimationListener;

    .line 357
    invoke-virtual {p1, v0}, Lcom/oplus/anim/EffectiveAnimationTask;->addListener(Lcom/oplus/anim/EffectiveAnimationListener;)Lcom/oplus/anim/EffectiveAnimationTask;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/anim/EffectiveAnimationView;->failureListener:Lcom/oplus/anim/EffectiveAnimationListener;

    .line 358
    invoke-virtual {v0, v1}, Lcom/oplus/anim/EffectiveAnimationTask;->addFailureListener(Lcom/oplus/anim/EffectiveAnimationListener;)Lcom/oplus/anim/EffectiveAnimationTask;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->compositionTask:Lcom/oplus/anim/EffectiveAnimationTask;

    .line 359
    return-void
.end method


# virtual methods
.method public addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .line 564
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {v0, p1}, Lcom/oplus/anim/EffectiveAnimationDrawable;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 565
    return-void
.end method

.method public addAnimatorUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 1
    .param p1, "updateListener"    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 552
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {v0, p1}, Lcom/oplus/anim/EffectiveAnimationDrawable;->addAnimatorUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 553
    return-void
.end method

.method public addOnCompositionLoadedListener(Lcom/oplus/anim/OnCompositionLoadedListener;)Z
    .locals 1
    .param p1, "onCompositionLoadedListener"    # Lcom/oplus/anim/OnCompositionLoadedListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 853
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->onCompositionLoadedListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addValueCallback(Lcom/oplus/anim/model/KeyPath;Ljava/lang/Object;Lcom/oplus/anim/value/EffectiveValueCallback;)V
    .locals 1
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

    .line 709
    .local p2, "property":Ljava/lang/Object;, "TT;"
    .local p3, "callback":Lcom/oplus/anim/value/EffectiveValueCallback;, "Lcom/oplus/anim/value/EffectiveValueCallback<TT;>;"
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oplus/anim/EffectiveAnimationDrawable;->addValueCallback(Lcom/oplus/anim/model/KeyPath;Ljava/lang/Object;Lcom/oplus/anim/value/EffectiveValueCallback;)V

    .line 710
    return-void
.end method

.method public addValueCallback(Lcom/oplus/anim/model/KeyPath;Ljava/lang/Object;Lcom/oplus/anim/value/SimpleValueCallback;)V
    .locals 2
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

    .line 719
    .local p2, "property":Ljava/lang/Object;, "TT;"
    .local p3, "callback":Lcom/oplus/anim/value/SimpleValueCallback;, "Lcom/oplus/anim/value/SimpleValueCallback<TT;>;"
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    new-instance v1, Lcom/oplus/anim/EffectiveAnimationView$3;

    invoke-direct {v1, p0, p3}, Lcom/oplus/anim/EffectiveAnimationView$3;-><init>(Lcom/oplus/anim/EffectiveAnimationView;Lcom/oplus/anim/value/SimpleValueCallback;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/oplus/anim/EffectiveAnimationDrawable;->addValueCallback(Lcom/oplus/anim/model/KeyPath;Ljava/lang/Object;Lcom/oplus/anim/value/EffectiveValueCallback;)V

    .line 725
    return-void
.end method

.method public cancelAnimation()V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 753
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->cancelAnimation()V

    .line 754
    invoke-direct {p0}, Lcom/oplus/anim/EffectiveAnimationView;->enableOrDisableHardwareLayer()V

    .line 755
    return-void
.end method

.method public clearImageAssets()V
    .locals 1

    .line 895
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->clearImageAsset()V

    .line 896
    return-void
.end method

.method public enableBuildLayerDebug()V
    .locals 1

    .line 891
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->enableBuildLayerDebug()V

    .line 892
    return-void
.end method

.method public enableCompositionDebug()V
    .locals 1

    .line 883
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->enableCompositionDebug()V

    .line 884
    return-void
.end method

.method public enableDrawDebug()V
    .locals 1

    .line 887
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->enableDrawDebug()V

    .line 888
    return-void
.end method

.method public enableKeyPathDebug()V
    .locals 1

    .line 879
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->enableKeyPathDebug()V

    .line 880
    return-void
.end method

.method public enableMergePathsForKitKatAndAbove(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 287
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {v0, p1}, Lcom/oplus/anim/EffectiveAnimationDrawable;->enableMergePathsForKitKatAndAbove(Z)V

    .line 288
    return-void
.end method

.method public getComposition()Lcom/oplus/anim/EffectiveAnimationComposition;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 370
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .line 789
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationComposition;->getDuration()F

    move-result v0

    float-to-long v0, v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getFrame()I
    .locals 1

    .line 767
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->getFrame()I

    move-result v0

    return v0
.end method

.method public getImageAssetsFolder()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 632
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->getImageAssetsFolder()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxFrame()F
    .locals 1

    .line 479
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->getMaxFrame()F

    move-result v0

    return v0
.end method

.method public getMinFrame()F
    .locals 1

    .line 449
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->getMinFrame()F

    move-result v0

    return v0
.end method

.method public getPerformanceTracker()Lcom/oplus/anim/PerformanceTracker;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 798
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->getPerformanceTracker()Lcom/oplus/anim/PerformanceTracker;

    move-result-object v0

    return-object v0
.end method

.method public getProgress()F
    .locals 1
    .annotation build Landroidx/annotation/FloatRange;
        from = 0.0
        to = 1.0
    .end annotation

    .line 781
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->getProgress()F

    move-result v0

    return v0
.end method

.method public getRepeatCount()I
    .locals 1

    .line 611
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->getRepeatCount()I

    move-result v0

    return v0
.end method

.method public getRepeatMode()I
    .locals 1

    .line 590
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->getRepeatMode()I

    move-result v0

    return v0
.end method

.method public getScale()F
    .locals 1

    .line 728
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->getScale()F

    move-result v0

    return v0
.end method

.method public getSpeed()F
    .locals 1

    .line 541
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->getSpeed()F

    move-result v0

    return v0
.end method

.method public hasMasks()Z
    .locals 1

    .line 408
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->hasMasks()Z

    move-result v0

    return v0
.end method

.method public hasMatte()Z
    .locals 1

    .line 415
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->hasMatte()Z

    move-result v0

    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 197
    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    if-ne v0, v1, :cond_0

    .line 200
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-super {p0, v0}, Landroidx/appcompat/widget/AppCompatImageView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 203
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 205
    :goto_0
    return-void
.end method

.method public isAnimating()Z
    .locals 1

    .line 627
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->isAnimating()Z

    move-result v0

    return v0
.end method

.method public isMergePathsEnabledForKitKatAndAbove()Z
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->isMergePathsEnabledForKitKatAndAbove()Z

    move-result v0

    return v0
.end method

.method public loop(Z)V
    .locals 2
    .param p1, "loop"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 580
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    if-eqz p1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/oplus/anim/EffectiveAnimationDrawable;->setRepeatCount(I)V

    .line 581
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 264
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->onAttachedToWindow()V

    .line 265
    iget-boolean v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->autoPlay:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->wasAnimatingWhenDetached:Z

    if-eqz v0, :cond_0

    .line 266
    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationView;->playAnimation()V

    .line 268
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 272
    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationView;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationView;->cancelAnimation()V

    .line 274
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->wasAnimatingWhenDetached:Z

    .line 276
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->onDetachedFromWindow()V

    .line 277
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 223
    instance-of v0, p1, Lcom/oplus/anim/EffectiveAnimationView$SavedState;

    if-nez v0, :cond_0

    .line 224
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 225
    return-void

    .line 228
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/oplus/anim/EffectiveAnimationView$SavedState;

    .line 229
    .local v0, "ss":Lcom/oplus/anim/EffectiveAnimationView$SavedState;
    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 230
    iget-object v1, v0, Lcom/oplus/anim/EffectiveAnimationView$SavedState;->animationName:Ljava/lang/String;

    iput-object v1, p0, Lcom/oplus/anim/EffectiveAnimationView;->animationName:Ljava/lang/String;

    .line 231
    iget-object v1, p0, Lcom/oplus/anim/EffectiveAnimationView;->animationName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 232
    iget-object v1, p0, Lcom/oplus/anim/EffectiveAnimationView;->animationName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/oplus/anim/EffectiveAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 234
    :cond_1
    iget v1, v0, Lcom/oplus/anim/EffectiveAnimationView$SavedState;->animationResId:I

    iput v1, p0, Lcom/oplus/anim/EffectiveAnimationView;->animationResId:I

    .line 235
    iget v1, p0, Lcom/oplus/anim/EffectiveAnimationView;->animationResId:I

    if-eqz v1, :cond_2

    .line 236
    iget v1, p0, Lcom/oplus/anim/EffectiveAnimationView;->animationResId:I

    invoke-virtual {p0, v1}, Lcom/oplus/anim/EffectiveAnimationView;->setAnimation(I)V

    .line 238
    :cond_2
    iget v1, v0, Lcom/oplus/anim/EffectiveAnimationView$SavedState;->progress:F

    invoke-virtual {p0, v1}, Lcom/oplus/anim/EffectiveAnimationView;->setProgress(F)V

    .line 239
    iget-boolean v1, v0, Lcom/oplus/anim/EffectiveAnimationView$SavedState;->isAnimating:Z

    if-eqz v1, :cond_3

    .line 240
    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationView;->playAnimation()V

    .line 242
    :cond_3
    iget-object v1, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    iget-object v2, v0, Lcom/oplus/anim/EffectiveAnimationView$SavedState;->imageAssetsFolder:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/oplus/anim/EffectiveAnimationDrawable;->setImagesAssetsFolder(Ljava/lang/String;)V

    .line 243
    iget v1, v0, Lcom/oplus/anim/EffectiveAnimationView$SavedState;->repeatMode:I

    invoke-virtual {p0, v1}, Lcom/oplus/anim/EffectiveAnimationView;->setRepeatMode(I)V

    .line 244
    iget v1, v0, Lcom/oplus/anim/EffectiveAnimationView$SavedState;->repeatCount:I

    invoke-virtual {p0, v1}, Lcom/oplus/anim/EffectiveAnimationView;->setRepeatCount(I)V

    .line 245
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 209
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatImageView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 210
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Lcom/oplus/anim/EffectiveAnimationView$SavedState;

    invoke-direct {v1, v0}, Lcom/oplus/anim/EffectiveAnimationView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 211
    .local v1, "ss":Lcom/oplus/anim/EffectiveAnimationView$SavedState;
    iget-object v2, p0, Lcom/oplus/anim/EffectiveAnimationView;->animationName:Ljava/lang/String;

    iput-object v2, v1, Lcom/oplus/anim/EffectiveAnimationView$SavedState;->animationName:Ljava/lang/String;

    .line 212
    iget v2, p0, Lcom/oplus/anim/EffectiveAnimationView;->animationResId:I

    iput v2, v1, Lcom/oplus/anim/EffectiveAnimationView$SavedState;->animationResId:I

    .line 213
    iget-object v2, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {v2}, Lcom/oplus/anim/EffectiveAnimationDrawable;->getProgress()F

    move-result v2

    iput v2, v1, Lcom/oplus/anim/EffectiveAnimationView$SavedState;->progress:F

    .line 214
    iget-object v2, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {v2}, Lcom/oplus/anim/EffectiveAnimationDrawable;->isAnimating()Z

    move-result v2

    iput-boolean v2, v1, Lcom/oplus/anim/EffectiveAnimationView$SavedState;->isAnimating:Z

    .line 215
    iget-object v2, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {v2}, Lcom/oplus/anim/EffectiveAnimationDrawable;->getImageAssetsFolder()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/oplus/anim/EffectiveAnimationView$SavedState;->imageAssetsFolder:Ljava/lang/String;

    .line 216
    iget-object v2, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {v2}, Lcom/oplus/anim/EffectiveAnimationDrawable;->getRepeatMode()I

    move-result v2

    iput v2, v1, Lcom/oplus/anim/EffectiveAnimationView$SavedState;->repeatMode:I

    .line 217
    iget-object v2, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {v2}, Lcom/oplus/anim/EffectiveAnimationDrawable;->getRepeatCount()I

    move-result v2

    iput v2, v1, Lcom/oplus/anim/EffectiveAnimationView$SavedState;->repeatCount:I

    .line 218
    return-object v1
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1, "changedView"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "visibility"    # I

    .line 249
    if-nez p2, :cond_0

    .line 250
    iget-boolean v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->wasAnimatingWhenVisibilityChanged:Z

    if-eqz v0, :cond_1

    .line 251
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->wasAnimatingWhenVisibilityChanged:Z

    .line 252
    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationView;->resumeAnimation()V

    goto :goto_0

    .line 255
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationView;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 256
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->wasAnimatingWhenVisibilityChanged:Z

    .line 257
    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationView;->pauseAnimation()V

    .line 260
    :cond_1
    :goto_0
    return-void
.end method

.method public pauseAnimation()V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 759
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->pauseAnimation()V

    .line 760
    invoke-direct {p0}, Lcom/oplus/anim/EffectiveAnimationView;->enableOrDisableHardwareLayer()V

    .line 761
    return-void
.end method

.method public playAnimation()V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 424
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->playAnimation()V

    .line 425
    invoke-direct {p0}, Lcom/oplus/anim/EffectiveAnimationView;->enableOrDisableHardwareLayer()V

    .line 426
    return-void
.end method

.method public removeAllAnimatorListeners()V
    .locals 1

    .line 572
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->removeAllAnimatorListeners()V

    .line 573
    return-void
.end method

.method public removeAllOnCompositionLoadedListener()V
    .locals 1

    .line 861
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->onCompositionLoadedListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 862
    return-void
.end method

.method public removeAllUpdateListeners()V
    .locals 1

    .line 560
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->removeAllUpdateListeners()V

    .line 561
    return-void
.end method

.method public removeAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .line 568
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {v0, p1}, Lcom/oplus/anim/EffectiveAnimationDrawable;->removeAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 569
    return-void
.end method

.method public removeOnCompositionLoadedListener(Lcom/oplus/anim/OnCompositionLoadedListener;)Z
    .locals 1
    .param p1, "onCompositionLoadedListener"    # Lcom/oplus/anim/OnCompositionLoadedListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 857
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->onCompositionLoadedListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 1
    .param p1, "updateListener"    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 556
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {v0, p1}, Lcom/oplus/anim/EffectiveAnimationDrawable;->removeAnimatorUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 557
    return-void
.end method

.method public resolveKeyPath(Lcom/oplus/anim/model/KeyPath;)Ljava/util/List;
    .locals 1
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

    .line 698
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {v0, p1}, Lcom/oplus/anim/EffectiveAnimationDrawable;->resolveKeyPath(Lcom/oplus/anim/model/KeyPath;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public resolveLayers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 868
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->resolveLayers()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public resumeAnimation()V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 434
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->resumeAnimation()V

    .line 435
    invoke-direct {p0}, Lcom/oplus/anim/EffectiveAnimationView;->enableOrDisableHardwareLayer()V

    .line 436
    return-void
.end method

.method public reverseAnimationSpeed()V
    .locals 1

    .line 534
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->reverseAnimationSpeed()V

    .line 535
    return-void
.end method

.method public setAnimation(I)V
    .locals 1
    .param p1, "rawRes"    # I
        .annotation build Landroidx/annotation/RawRes;
        .end annotation
    .end param

    .line 302
    iput p1, p0, Lcom/oplus/anim/EffectiveAnimationView;->animationResId:I

    .line 303
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->animationName:Ljava/lang/String;

    .line 304
    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oplus/anim/EffectiveCompositionFactory;->fromRawRes(Landroid/content/Context;I)Lcom/oplus/anim/EffectiveAnimationTask;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oplus/anim/EffectiveAnimationView;->setCompositionTask(Lcom/oplus/anim/EffectiveAnimationTask;)V

    .line 305
    return-void
.end method

.method public setAnimation(Landroid/util/JsonReader;Ljava/lang/String;)V
    .locals 1
    .param p1, "reader"    # Landroid/util/JsonReader;
    .param p2, "cacheKey"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 338
    invoke-static {p1, p2}, Lcom/oplus/anim/EffectiveCompositionFactory;->fromJsonReader(Landroid/util/JsonReader;Ljava/lang/String;)Lcom/oplus/anim/EffectiveAnimationTask;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oplus/anim/EffectiveAnimationView;->setCompositionTask(Lcom/oplus/anim/EffectiveAnimationTask;)V

    .line 339
    return-void
.end method

.method public setAnimation(Ljava/lang/String;)V
    .locals 1
    .param p1, "assetName"    # Ljava/lang/String;

    .line 308
    iput-object p1, p0, Lcom/oplus/anim/EffectiveAnimationView;->animationName:Ljava/lang/String;

    .line 309
    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->animationResId:I

    .line 310
    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oplus/anim/EffectiveCompositionFactory;->fromAsset(Landroid/content/Context;Ljava/lang/String;)Lcom/oplus/anim/EffectiveAnimationTask;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oplus/anim/EffectiveAnimationView;->setCompositionTask(Lcom/oplus/anim/EffectiveAnimationTask;)V

    .line 311
    return-void
.end method

.method public setAnimationFromJson(Ljava/lang/String;)V
    .locals 1
    .param p1, "jsonString"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 318
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oplus/anim/EffectiveAnimationView;->setAnimationFromJson(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    return-void
.end method

.method public setAnimationFromJson(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "jsonString"    # Ljava/lang/String;
    .param p2, "cacheKey"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 327
    new-instance v0, Landroid/util/JsonReader;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {p0, v0, p2}, Lcom/oplus/anim/EffectiveAnimationView;->setAnimation(Landroid/util/JsonReader;Ljava/lang/String;)V

    .line 328
    return-void
.end method

.method public setAnimationFromUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .line 350
    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oplus/anim/EffectiveCompositionFactory;->fromUrl(Landroid/content/Context;Ljava/lang/String;)Lcom/oplus/anim/EffectiveAnimationTask;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oplus/anim/EffectiveAnimationView;->setCompositionTask(Lcom/oplus/anim/EffectiveAnimationTask;)V

    .line 351
    return-void
.end method

.method public setComposition(Lcom/oplus/anim/EffectiveAnimationComposition;)V
    .locals 3
    .param p1, "composition"    # Lcom/oplus/anim/EffectiveAnimationComposition;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 379
    sget-boolean v0, Lcom/oplus/anim/utils/OplusLog;->DEBUG_COMPOSITION:Z

    if-eqz v0, :cond_0

    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set Composition \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/anim/utils/OplusLog;->i(Ljava/lang/String;)V

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {v0, p0}, Lcom/oplus/anim/EffectiveAnimationDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 383
    iput-object p1, p0, Lcom/oplus/anim/EffectiveAnimationView;->composition:Lcom/oplus/anim/EffectiveAnimationComposition;

    .line 384
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {v0, p1}, Lcom/oplus/anim/EffectiveAnimationDrawable;->setComposition(Lcom/oplus/anim/EffectiveAnimationComposition;)Z

    move-result v0

    .line 385
    .local v0, "isNewComposition":Z
    invoke-direct {p0}, Lcom/oplus/anim/EffectiveAnimationView;->enableOrDisableHardwareLayer()V

    .line 386
    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_1

    .line 389
    return-void

    .line 394
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/oplus/anim/EffectiveAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 395
    iget-object v1, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0, v1}, Lcom/oplus/anim/EffectiveAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 397
    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationView;->requestLayout()V

    .line 398
    iget-object v1, p0, Lcom/oplus/anim/EffectiveAnimationView;->onCompositionLoadedListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/anim/OnCompositionLoadedListener;

    .line 399
    .local v2, "onCompositionLoadedListener":Lcom/oplus/anim/OnCompositionLoadedListener;
    invoke-interface {v2, p1}, Lcom/oplus/anim/OnCompositionLoadedListener;->onCompositionLoaded(Lcom/oplus/anim/EffectiveAnimationComposition;)V

    .line 400
    .end local v2    # "onCompositionLoadedListener":Lcom/oplus/anim/OnCompositionLoadedListener;
    goto :goto_0

    .line 402
    :cond_2
    return-void
.end method

.method public setDynamicLayerVisibility(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "layerName"    # Ljava/lang/String;
    .param p2, "visible"    # Z

    .line 872
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {v0, p1, p2}, Lcom/oplus/anim/EffectiveAnimationDrawable;->setDynamicLayerVisibility(Ljava/lang/String;Z)V

    .line 873
    return-void
.end method

.method public setFontAssetDelegate(Lcom/oplus/anim/FontAssetDelegate;)V
    .locals 1
    .param p1, "assetDelegate"    # Lcom/oplus/anim/FontAssetDelegate;

    .line 679
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {v0, p1}, Lcom/oplus/anim/EffectiveAnimationDrawable;->setFontAssetDelegate(Lcom/oplus/anim/FontAssetDelegate;)V

    .line 680
    return-void
.end method

.method public setFrame(I)V
    .locals 1
    .param p1, "frame"    # I

    .line 776
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {v0, p1}, Lcom/oplus/anim/EffectiveAnimationDrawable;->setFrame(I)V

    .line 777
    return-void
.end method

.method public setImageAssetDelegate(Lcom/oplus/anim/ImageAssetDelegate;)V
    .locals 1
    .param p1, "assetDelegate"    # Lcom/oplus/anim/ImageAssetDelegate;

    .line 671
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {v0, p1}, Lcom/oplus/anim/EffectiveAnimationDrawable;->setImageAssetDelegate(Lcom/oplus/anim/ImageAssetDelegate;)V

    .line 672
    return-void
.end method

.method public setImageAssetsFolder(Ljava/lang/String;)V
    .locals 1
    .param p1, "imageAssetsFolder"    # Ljava/lang/String;

    .line 648
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {v0, p1}, Lcom/oplus/anim/EffectiveAnimationDrawable;->setImagesAssetsFolder(Ljava/lang/String;)V

    .line 649
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .line 191
    invoke-direct {p0}, Lcom/oplus/anim/EffectiveAnimationView;->cancelLoaderTask()V

    .line 192
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 193
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 185
    invoke-direct {p0}, Lcom/oplus/anim/EffectiveAnimationView;->cancelLoaderTask()V

    .line 186
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 187
    return-void
.end method

.method public setImageResource(I)V
    .locals 0
    .param p1, "resId"    # I

    .line 179
    invoke-direct {p0}, Lcom/oplus/anim/EffectiveAnimationView;->cancelLoaderTask()V

    .line 180
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 181
    return-void
.end method

.method public setMaxFrame(I)V
    .locals 1
    .param p1, "endFrame"    # I

    .line 472
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {v0, p1}, Lcom/oplus/anim/EffectiveAnimationDrawable;->setMaxFrame(I)V

    .line 473
    return-void
.end method

.method public setMaxFrame(Ljava/lang/String;)V
    .locals 1
    .param p1, "markerName"    # Ljava/lang/String;

    .line 488
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {v0, p1}, Lcom/oplus/anim/EffectiveAnimationDrawable;->setMaxFrame(Ljava/lang/String;)V

    .line 489
    return-void
.end method

.method public setMaxProgress(F)V
    .locals 1
    .param p1, "endProgress"    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 495
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {v0, p1}, Lcom/oplus/anim/EffectiveAnimationDrawable;->setMaxProgress(F)V

    .line 496
    return-void
.end method

.method public setMinAndMaxFrame(II)V
    .locals 1
    .param p1, "minFrame"    # I
    .param p2, "maxFrame"    # I

    .line 513
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {v0, p1, p2}, Lcom/oplus/anim/EffectiveAnimationDrawable;->setMinAndMaxFrame(II)V

    .line 514
    return-void
.end method

.method public setMinAndMaxFrame(Ljava/lang/String;)V
    .locals 1
    .param p1, "markerName"    # Ljava/lang/String;

    .line 505
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {v0, p1}, Lcom/oplus/anim/EffectiveAnimationDrawable;->setMinAndMaxFrame(Ljava/lang/String;)V

    .line 506
    return-void
.end method

.method public setMinAndMaxProgress(FF)V
    .locals 1
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

    .line 523
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {v0, p1, p2}, Lcom/oplus/anim/EffectiveAnimationDrawable;->setMinAndMaxProgress(FF)V

    .line 524
    return-void
.end method

.method public setMinFrame(I)V
    .locals 1
    .param p1, "startFrame"    # I

    .line 442
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {v0, p1}, Lcom/oplus/anim/EffectiveAnimationDrawable;->setMinFrame(I)V

    .line 443
    return-void
.end method

.method public setMinFrame(Ljava/lang/String;)V
    .locals 1
    .param p1, "markerName"    # Ljava/lang/String;

    .line 458
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {v0, p1}, Lcom/oplus/anim/EffectiveAnimationDrawable;->setMinFrame(Ljava/lang/String;)V

    .line 459
    return-void
.end method

.method public setMinProgress(F)V
    .locals 1
    .param p1, "startProgress"    # F

    .line 465
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {v0, p1}, Lcom/oplus/anim/EffectiveAnimationDrawable;->setMinProgress(F)V

    .line 466
    return-void
.end method

.method public setPerformanceTrackingEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 793
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {v0, p1}, Lcom/oplus/anim/EffectiveAnimationDrawable;->setPerformanceTrackingEnabled(Z)V

    .line 794
    return-void
.end method

.method public setProgress(F)V
    .locals 1
    .param p1, "progress"    # F
        .annotation build Landroidx/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .line 785
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {v0, p1}, Lcom/oplus/anim/EffectiveAnimationDrawable;->setProgress(F)V

    .line 786
    return-void
.end method

.method public setRenderMode(Lcom/oplus/anim/RenderMode;)V
    .locals 0
    .param p1, "renderMode"    # Lcom/oplus/anim/RenderMode;

    .line 821
    iput-object p1, p0, Lcom/oplus/anim/EffectiveAnimationView;->renderMode:Lcom/oplus/anim/RenderMode;

    .line 822
    invoke-direct {p0}, Lcom/oplus/anim/EffectiveAnimationView;->enableOrDisableHardwareLayer()V

    .line 823
    return-void
.end method

.method public setRepeatCount(I)V
    .locals 1
    .param p1, "count"    # I

    .line 623
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {v0, p1}, Lcom/oplus/anim/EffectiveAnimationDrawable;->setRepeatCount(I)V

    .line 624
    return-void
.end method

.method public setRepeatMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .line 601
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {v0, p1}, Lcom/oplus/anim/EffectiveAnimationDrawable;->setRepeatMode(I)V

    .line 602
    return-void
.end method

.method public setScale(F)V
    .locals 2
    .param p1, "scale"    # F

    .line 744
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {v0, p1}, Lcom/oplus/anim/EffectiveAnimationDrawable;->setScale(F)V

    .line 745
    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    if-ne v0, v1, :cond_0

    .line 746
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oplus/anim/EffectiveAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 747
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {p0, v0}, Lcom/oplus/anim/EffectiveAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 749
    :cond_0
    return-void
.end method

.method public setSpeed(F)V
    .locals 1
    .param p1, "speed"    # F

    .line 548
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {v0, p1}, Lcom/oplus/anim/EffectiveAnimationDrawable;->setSpeed(F)V

    .line 549
    return-void
.end method

.method public setTextDelegate(Lcom/oplus/anim/TextDelegate;)V
    .locals 1
    .param p1, "textDelegate"    # Lcom/oplus/anim/TextDelegate;

    .line 686
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {v0, p1}, Lcom/oplus/anim/EffectiveAnimationDrawable;->setTextDelegate(Lcom/oplus/anim/TextDelegate;)V

    .line 687
    return-void
.end method

.method public updateBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 659
    iget-object v0, p0, Lcom/oplus/anim/EffectiveAnimationView;->effectiveAnimationDrawable:Lcom/oplus/anim/EffectiveAnimationDrawable;

    invoke-virtual {v0, p1, p2}, Lcom/oplus/anim/EffectiveAnimationDrawable;->updateBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
