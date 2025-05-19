.class synthetic Lcom/oplus/anim/EffectiveAnimationView$4;
.super Ljava/lang/Object;
.source "EffectiveAnimationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/anim/EffectiveAnimationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$oplus$anim$RenderMode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 829
    invoke-static {}, Lcom/oplus/anim/RenderMode;->values()[Lcom/oplus/anim/RenderMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/oplus/anim/EffectiveAnimationView$4;->$SwitchMap$com$oplus$anim$RenderMode:[I

    :try_start_0
    sget-object v0, Lcom/oplus/anim/EffectiveAnimationView$4;->$SwitchMap$com$oplus$anim$RenderMode:[I

    sget-object v1, Lcom/oplus/anim/RenderMode;->HARDWARE:Lcom/oplus/anim/RenderMode;

    invoke-virtual {v1}, Lcom/oplus/anim/RenderMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    :try_start_1
    sget-object v0, Lcom/oplus/anim/EffectiveAnimationView$4;->$SwitchMap$com$oplus$anim$RenderMode:[I

    sget-object v1, Lcom/oplus/anim/RenderMode;->SOFTWARE:Lcom/oplus/anim/RenderMode;

    invoke-virtual {v1}, Lcom/oplus/anim/RenderMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    :try_start_2
    sget-object v0, Lcom/oplus/anim/EffectiveAnimationView$4;->$SwitchMap$com$oplus$anim$RenderMode:[I

    sget-object v1, Lcom/oplus/anim/RenderMode;->NONE:Lcom/oplus/anim/RenderMode;

    invoke-virtual {v1}, Lcom/oplus/anim/RenderMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    :goto_2
    :try_start_3
    sget-object v0, Lcom/oplus/anim/EffectiveAnimationView$4;->$SwitchMap$com$oplus$anim$RenderMode:[I

    sget-object v1, Lcom/oplus/anim/RenderMode;->AUTOMATIC:Lcom/oplus/anim/RenderMode;

    invoke-virtual {v1}, Lcom/oplus/anim/RenderMode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    :goto_3
    return-void
.end method
