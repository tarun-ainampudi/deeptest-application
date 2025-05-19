.class Lcom/oplus/anim/EffectiveAnimationDrawable$ColorFilterData;
.super Ljava/lang/Object;
.source "EffectiveAnimationDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/anim/EffectiveAnimationDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ColorFilterData"
.end annotation


# instance fields
.field final colorFilter:Landroid/graphics/ColorFilter;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field final contentName:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field final layerName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "layerName"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "contentName"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "colorFilter"    # Landroid/graphics/ColorFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1091
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1092
    iput-object p1, p0, Lcom/oplus/anim/EffectiveAnimationDrawable$ColorFilterData;->layerName:Ljava/lang/String;

    .line 1093
    iput-object p2, p0, Lcom/oplus/anim/EffectiveAnimationDrawable$ColorFilterData;->contentName:Ljava/lang/String;

    .line 1094
    iput-object p3, p0, Lcom/oplus/anim/EffectiveAnimationDrawable$ColorFilterData;->colorFilter:Landroid/graphics/ColorFilter;

    .line 1095
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1112
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 1113
    return v0

    .line 1116
    :cond_0
    instance-of v1, p1, Lcom/oplus/anim/EffectiveAnimationDrawable$ColorFilterData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 1117
    return v2

    .line 1120
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/oplus/anim/EffectiveAnimationDrawable$ColorFilterData;

    .line 1122
    .local v1, "other":Lcom/oplus/anim/EffectiveAnimationDrawable$ColorFilterData;
    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationDrawable$ColorFilterData;->hashCode()I

    move-result v3

    invoke-virtual {v1}, Lcom/oplus/anim/EffectiveAnimationDrawable$ColorFilterData;->hashCode()I

    move-result v4

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/oplus/anim/EffectiveAnimationDrawable$ColorFilterData;->colorFilter:Landroid/graphics/ColorFilter;

    iget-object v4, v1, Lcom/oplus/anim/EffectiveAnimationDrawable$ColorFilterData;->colorFilter:Landroid/graphics/ColorFilter;

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1099
    const/16 v0, 0x11

    .line 1100
    .local v0, "hashCode":I
    iget-object v1, p0, Lcom/oplus/anim/EffectiveAnimationDrawable$ColorFilterData;->layerName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1101
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/oplus/anim/EffectiveAnimationDrawable$ColorFilterData;->layerName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    mul-int v0, v1, v2

    .line 1104
    :cond_0
    iget-object v1, p0, Lcom/oplus/anim/EffectiveAnimationDrawable$ColorFilterData;->contentName:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1105
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/oplus/anim/EffectiveAnimationDrawable$ColorFilterData;->contentName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    mul-int v0, v1, v2

    .line 1107
    :cond_1
    return v0
.end method
