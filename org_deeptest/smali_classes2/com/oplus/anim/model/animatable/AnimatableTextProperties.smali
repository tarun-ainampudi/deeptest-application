.class public Lcom/oplus/anim/model/animatable/AnimatableTextProperties;
.super Ljava/lang/Object;
.source "AnimatableTextProperties.java"


# instance fields
.field public final color:Lcom/oplus/anim/model/animatable/AnimatableColorValue;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final stroke:Lcom/oplus/anim/model/animatable/AnimatableColorValue;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final strokeWidth:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final tracking:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/oplus/anim/model/animatable/AnimatableColorValue;Lcom/oplus/anim/model/animatable/AnimatableColorValue;Lcom/oplus/anim/model/animatable/AnimatableFloatValue;Lcom/oplus/anim/model/animatable/AnimatableFloatValue;)V
    .locals 0
    .param p1, "color"    # Lcom/oplus/anim/model/animatable/AnimatableColorValue;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "stroke"    # Lcom/oplus/anim/model/animatable/AnimatableColorValue;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "strokeWidth"    # Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "tracking"    # Lcom/oplus/anim/model/animatable/AnimatableFloatValue;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/oplus/anim/model/animatable/AnimatableTextProperties;->color:Lcom/oplus/anim/model/animatable/AnimatableColorValue;

    .line 20
    iput-object p2, p0, Lcom/oplus/anim/model/animatable/AnimatableTextProperties;->stroke:Lcom/oplus/anim/model/animatable/AnimatableColorValue;

    .line 21
    iput-object p3, p0, Lcom/oplus/anim/model/animatable/AnimatableTextProperties;->strokeWidth:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    .line 22
    iput-object p4, p0, Lcom/oplus/anim/model/animatable/AnimatableTextProperties;->tracking:Lcom/oplus/anim/model/animatable/AnimatableFloatValue;

    .line 23
    return-void
.end method
