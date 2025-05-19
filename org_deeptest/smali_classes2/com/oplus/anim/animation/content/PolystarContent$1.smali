.class synthetic Lcom/oplus/anim/animation/content/PolystarContent$1;
.super Ljava/lang/Object;
.source "PolystarContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/anim/animation/content/PolystarContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$oplus$anim$model$content$PolystarShape$Type:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 126
    invoke-static {}, Lcom/oplus/anim/model/content/PolystarShape$Type;->values()[Lcom/oplus/anim/model/content/PolystarShape$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/oplus/anim/animation/content/PolystarContent$1;->$SwitchMap$com$oplus$anim$model$content$PolystarShape$Type:[I

    :try_start_0
    sget-object v0, Lcom/oplus/anim/animation/content/PolystarContent$1;->$SwitchMap$com$oplus$anim$model$content$PolystarShape$Type:[I

    sget-object v1, Lcom/oplus/anim/model/content/PolystarShape$Type;->STAR:Lcom/oplus/anim/model/content/PolystarShape$Type;

    invoke-virtual {v1}, Lcom/oplus/anim/model/content/PolystarShape$Type;->ordinal()I

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
    sget-object v0, Lcom/oplus/anim/animation/content/PolystarContent$1;->$SwitchMap$com$oplus$anim$model$content$PolystarShape$Type:[I

    sget-object v1, Lcom/oplus/anim/model/content/PolystarShape$Type;->POLYGON:Lcom/oplus/anim/model/content/PolystarShape$Type;

    invoke-virtual {v1}, Lcom/oplus/anim/model/content/PolystarShape$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    return-void
.end method
